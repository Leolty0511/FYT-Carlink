package com.shilapi.xcertplay.vendor

import android.media.MediaCodec
import android.media.MediaFormat
import android.net.LocalServerSocket
import android.net.LocalSocket
import android.net.LocalSocketAddress
import android.os.SystemClock
import android.view.Surface

/**
 * The vendor engine's video channel, reproduced from decompiled CarLink 2.0 (`h/i.java`,
 * `h/h.java`, `com.syu.carlink.carplay.b`): the engine connects to a LocalServerSocket at
 * `/proc/mysocket` and pushes a raw H.264 elementary stream (start code 00 00 00 01, frames
 * up to 2 MiB, 1024x600@60). CarLink decodes it with MediaCodec onto its SurfaceView.
 *
 * DiPlay listens from launch, accepts the engine whenever it dials in and decodes onto the
 * surface behind [surfaceProvider]. On units where the engine renders directly (transact 4
 * Surface) this listener simply stays unused.
 */
class VendorVideoReceiver(
    private val surfaceProvider: () -> Surface?,
    private val requestVideoSync: () -> Unit,
    private val onVideoSizeChanged: ((width: Int, height: Int) -> Unit)? = null,
    private val diagnostics: ((String) -> Unit)? = null,
) : Thread("VendorVideoReceiver") {

    companion object {
        const val SOCKET_NAME = "/proc/mysocket"
        const val WIDTH = 1024
        const val HEIGHT = 600
        private const val MAX_INPUT_SIZE = 2 * 1024 * 1024
        private const val SYNC_REQUEST_INTERVAL_MILLIS = 1_000L
        private const val INPUT_BUFFER_TIMEOUT_MICROS = 100_000L
        private const val INPUT_BUFFER_ATTEMPTS = 10
    }

    @Volatile
    private var running = true

    @Volatile
    private var server: LocalServerSocket? = null

    @Volatile
    private var activeClient: LocalSocket? = null
    private val codecLock = Any()
    private var codec: MediaCodec? = null
    private var codecSurface: Surface? = null
    private val syncGate = VendorH264SyncGate()
    private var lastSyncRequestAt = -SYNC_REQUEST_INTERVAL_MILLIS
    private var cachedSps: ByteArray? = null
    private var cachedPps: ByteArray? = null

    @Volatile
    var framesRendered: Long = 0
        private set

    @Volatile
    var videoWidth: Int = 0
        private set

    @Volatile
    var videoHeight: Int = 0
        private set

    override fun run() {
        // The video socket is a singleton: while CarLink (or a previous DiPlay run) is alive it
        // holds the bind, so keep retrying until the port frees up instead of giving up.
        val server = bindLoop() ?: return
        this.server = server
        diagnostics?.invoke("video listener ready on $SOCKET_NAME")
        while (running && !isInterrupted) {
            val client = try {
                server.accept()
            } catch (error: Exception) {
                if (running) diagnostics?.invoke("video accept failed: $error")
                break
            }
            if (!running || isInterrupted) {
                runCatching { client.close() }
                break
            }
            diagnostics?.invoke("video socket connected")
            activeClient = client
            try {
                pump(client)
            } catch (error: Exception) {
                diagnostics?.invoke("video stream ended: $error")
            } finally {
                releaseCodec()
                runCatching { client.close() }
                if (activeClient === client) activeClient = null
            }
        }
    }

    /** Tries to claim the video socket until it succeeds or [shutdown] wins; null when aborted. */
    private fun bindLoop(): LocalServerSocket? {
        var attempt = 0
        while (running && !isInterrupted) {
            try {
                return LocalServerSocket(SOCKET_NAME)
            } catch (error: Exception) {
                attempt++
                if (attempt == 1 || attempt % 10 == 0) {
                    diagnostics?.invoke("video listener busy (attempt $attempt): $error")
                }
                try {
                    sleep(2000)
                } catch (_: InterruptedException) {
                    return null
                }
            }
        }
        return null
    }

    /** Shut the listener down and drop the decoder. */
    fun shutdown() {
        running = false
        interrupt()
        runCatching { activeClient?.close() }
        activeClient = null
        runCatching { server?.close() }
        // Some FYT Android 10 builds leave accept() blocked after LocalServerSocket.close().
        // Wake that exact local endpoint so the old receiver cannot steal the next engine socket.
        runCatching {
            val wake = LocalSocket()
            try {
                wake.connect(LocalSocketAddress(SOCKET_NAME))
            } finally {
                wake.close()
            }
        }
        server = null
        releaseCodec()
    }

    /** Drop a decoder tied to an Activity Surface; the next NAL recreates it on the new one. */
    fun surfaceChanged() {
        synchronized(codecLock) {
            val next = surfaceProvider()
            if (codecSurface !== next || next?.isValid != true) releaseCodecLocked()
        }
    }

    // ---------------------------------------------------------------- stream pump

    private fun pump(client: LocalSocket) {
        val input = client.inputStream
        val buffer = ByteArray(64 * 1024)
        val framer = VendorVideoFramer(
            maxFrameSize = MAX_INPUT_SIZE,
            onFrame = ::feedAccessUnit,
            onDesync = {
                diagnostics?.invoke("video framing lost; requesting a clean frame")
                requestSyncThrottled()
            },
        )

        while (running && !isInterrupted) {
            val count = input.read(buffer)
            if (count < 0) break
            framer.append(buffer, count)
        }
    }

    // ---------------------------------------------------------------- decoder

    private fun ensureCodecLocked(): Boolean {
        val surface = surfaceProvider() ?: return false
        if (!surface.isValid) return false
        if (codec != null && codecSurface === surface) return true
        releaseCodecLocked()
        return try {
            val format = MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC, WIDTH, HEIGHT).apply {
                setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, MAX_INPUT_SIZE)
            }
            val newCodec = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_AVC)
            newCodec.configure(format, surface, null, 0)
            newCodec.setVideoScalingMode(MediaCodec.VIDEO_SCALING_MODE_SCALE_TO_FIT)
            newCodec.start()
            codec = newCodec
            codecSurface = surface
            syncGate.reset()
            framesRendered = 0
            diagnostics?.invoke("video decoder started")
            feedCachedConfigurationLocked(newCodec)
            requestSyncThrottled(force = true)
            true
        } catch (error: Exception) {
            diagnostics?.invoke("video decoder init failed: $error")
            releaseCodecLocked()
            false
        }
    }

    private fun feedAccessUnit(data: ByteArray, offset: Int, size: Int) {
        if (size <= 4) return
        synchronized(codecLock) {
            cacheCodecConfiguration(data, offset, size)
            if (!ensureCodecLocked()) return
            val active = codec ?: return
            val decision = syncGate.evaluate(data, offset, size)
            if (decision.requestSync) requestSyncThrottled()
            if (!decision.feed) return
            try {
                var index = -1
                for (attempt in 0 until INPUT_BUFFER_ATTEMPTS) {
                    index = active.dequeueInputBuffer(INPUT_BUFFER_TIMEOUT_MICROS)
                    if (index >= 0) break
                    drain(active)
                }
                if (index < 0) {
                    diagnostics?.invoke("video decoder input remained busy; requesting a clean frame")
                    syncGate.reset()
                    requestSyncThrottled()
                    return
                }
                val input = active.getInputBuffer(index) ?: return
                if (size > input.capacity()) {
                    active.queueInputBuffer(index, 0, 0, System.nanoTime() / 1000, 0)
                    diagnostics?.invoke(
                        "video access unit exceeds decoder input size=$size capacity=${input.capacity()}",
                    )
                    syncGate.reset()
                    requestSyncThrottled()
                    return
                }
                input.clear()
                input.put(data, offset, size)
                val flags = when {
                    decision.codecConfig -> MediaCodec.BUFFER_FLAG_CODEC_CONFIG
                    decision.keyFrame -> MediaCodec.BUFFER_FLAG_KEY_FRAME
                    else -> 0
                }
                active.queueInputBuffer(index, 0, size, System.nanoTime() / 1000, flags)
                drain(active)
            } catch (error: Exception) {
                diagnostics?.invoke("video decode error: $error")
                releaseCodecLocked()
            }
        }
    }

    private fun drain(active: MediaCodec) {
        val info = MediaCodec.BufferInfo()
        while (running) {
            val index = active.dequeueOutputBuffer(info, 0)
            when {
                index >= 0 -> {
                    if (info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) return
                    active.releaseOutputBuffer(index, true)
                    if (framesRendered == 0L) diagnostics?.invoke("first video frame rendered")
                    framesRendered++
                }
                index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> updateVideoSize(active.outputFormat)
                index == MediaCodec.INFO_TRY_AGAIN_LATER -> return
                else -> continue
            }
        }
    }

    private fun updateVideoSize(format: MediaFormat) {
        fun value(key: String): Int = if (format.containsKey(key)) format.getInteger(key) else -1
        val size = VendorDisplayProtocol.decodedVideoSize(
            width = value(MediaFormat.KEY_WIDTH),
            height = value(MediaFormat.KEY_HEIGHT),
            cropLeft = value("crop-left"),
            cropTop = value("crop-top"),
            cropRight = value("crop-right"),
            cropBottom = value("crop-bottom"),
        )
        if (size.width <= 0 || size.height <= 0 ||
            size.width == videoWidth && size.height == videoHeight
        ) return
        videoWidth = size.width
        videoHeight = size.height
        diagnostics?.invoke("video output size=${size.width}x${size.height}")
        onVideoSizeChanged?.invoke(size.width, size.height)
    }

    private fun cacheCodecConfiguration(data: ByteArray, offset: Int, size: Int) {
        val types = syncGate.nalTypes(data, offset, size)
        if (VendorH264SyncGate.NAL_SPS !in types && VendorH264SyncGate.NAL_PPS !in types) return
        val copy = data.copyOfRange(offset, offset + size)
        if (VendorH264SyncGate.NAL_SPS in types) cachedSps = copy
        if (VendorH264SyncGate.NAL_PPS in types) cachedPps = copy
    }

    private fun feedCachedConfigurationLocked(active: MediaCodec) {
        val units = ArrayList<ByteArray>(2)
        cachedSps?.let(units::add)
        cachedPps?.takeUnless { pps -> units.any { it.contentEquals(pps) } }?.let(units::add)
        for (unit in units) {
            val index = active.dequeueInputBuffer(100_000)
            if (index < 0) break
            val input = active.getInputBuffer(index) ?: break
            input.clear()
            input.put(unit)
            active.queueInputBuffer(
                index,
                0,
                unit.size,
                System.nanoTime() / 1000,
                MediaCodec.BUFFER_FLAG_CODEC_CONFIG,
            )
            syncGate.evaluate(unit, 0, unit.size)
        }
        diagnostics?.invoke("video cached configuration supplied units=${units.size}")
    }

    private fun releaseCodec() = synchronized(codecLock) { releaseCodecLocked() }

    private fun releaseCodecLocked() {
        try {
            codec?.stop()
        } catch (_: Exception) {
        }
        try {
            codec?.release()
        } catch (_: Exception) {
        }
        codec = null
        codecSurface = null
        syncGate.reset()
        framesRendered = 0
    }

    private fun requestSyncThrottled(force: Boolean = false) {
        val now = SystemClock.elapsedRealtime()
        if (!force && now - lastSyncRequestAt < SYNC_REQUEST_INTERVAL_MILLIS) return
        lastSyncRequestAt = now
        requestVideoSync()
        diagnostics?.invoke("video synchronization requested")
    }
}
