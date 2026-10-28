package com.shilapi.xcertplay.vendor

import android.media.MediaCodec
import android.media.MediaFormat
import android.net.LocalServerSocket
import android.net.LocalSocket
import android.net.LocalSocketAddress
import android.os.Process
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
        private const val LATENCY_WINDOW_MILLIS = 6_000L
        private const val MAX_TRACKED_LATENCY_MICROS = 5_000_000L
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
    /** False while the window's Surface is gone: the decoder keeps running, frames are dropped. */
    @Volatile
    private var renderFrames = true
    private val syncGate = VendorH264SyncGate()
    private var lastSyncRequestAt = -SYNC_REQUEST_INTERVAL_MILLIS
    private var cachedSps: ByteArray? = null
    private var cachedPps: ByteArray? = null
    private var latencyTotalMicros = 0L
    private var latencySamples = 0
    private var latencyMaxMicros = 0L
    private var latencyWindowStartedAt = 0L

    @Volatile
    private var outputRunning = true
    private val outputThread = Thread({ drainOutputLoop() }, "VendorVideoOutput").apply {
        isDaemon = true
        start()
    }

    @Volatile
    var framesRendered: Long = 0
        private set

    /** Access units handed to MediaCodec; compare with [framesRendered] to spot decode backlog. */
    @Volatile
    var framesSubmitted: Long = 0
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
        outputRunning = false
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
        runCatching { outputThread.join(500) }
    }

    /**
     * The Activity Surface is recreated every time the driver switches away and back. Hand the
     * running decoder the new Surface instead of rebuilding it: a rebuilt decoder has to wait for a
     * fresh key frame, and the iPhone's encoder restarts at a low bitrate and ramps up over several
     * seconds, which is what makes a newly switched screen look soft before it settles.
     */
    fun surfaceChanged() {
        synchronized(codecLock) { migrateCodecLocked(surfaceProvider()) }
    }

    private fun migrateCodecLocked(next: Surface?) {
        if (next == null || next.isValid != true) {
            // No window to draw into right now: keep decoding so the stream stays warm, but stop
            // rendering until a Surface comes back.
            renderFrames = false
            return
        }
        val active: MediaCodec = codec ?: run {
            renderFrames = true
            return
        }
        if (codecSurface === next) {
            // Same window, possibly after an Activity resume without a new Surface.
            renderFrames = true
            return
        }
        val moved: Boolean = try {
            active.setOutputSurface(next)
            true
        } catch (error: Exception) {
            diagnostics?.invoke("video decoder surface move failed: $error")
            false
        }
        if (moved) {
            codecSurface = next
            renderFrames = true
            diagnostics?.invoke("video decoder surface moved")
            return
        }
        diagnostics?.invoke("video decoder surface move failed; rebuilding")
        renderFrames = true
        releaseCodecLocked()
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
            framesSubmitted = 0
            resetLatencySamples()
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
                    // Never drain the output from the feeder. Stock CarLink runs a dedicated
                    // output thread; sharing this thread with socket reads and input waits made
                    // rendered frames arrive in bursts even though the decoder had them ready.
                    Thread.sleep(2)
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
                if (flags != MediaCodec.BUFFER_FLAG_CODEC_CONFIG) framesSubmitted++
            } catch (error: Exception) {
                diagnostics?.invoke("video decode error: $error")
                releaseCodecLocked()
            }
        }
    }

    /**
     * Stock CarLink drains MediaCodec on its own thread (`h/g.java`). Keeping the release loop
     * independent from socket reads lets the compositor receive every decoded frame immediately.
     */
    private fun drainOutputLoop() {
        Process.setThreadPriority(Process.THREAD_PRIORITY_DISPLAY)
        val info = MediaCodec.BufferInfo()
        while (outputRunning && running) {
            val active = synchronized(codecLock) { codec }
            if (active == null) {
                sleepQuietly(8)
                continue
            }
            val index = try {
                active.dequeueOutputBuffer(info, 0)
            } catch (_: IllegalStateException) {
                sleepQuietly(8)
                continue
            } catch (_: Exception) {
                sleepQuietly(8)
                continue
            }
            if (index >= 0) {
                synchronized(codecLock) {
                    if (codec !== active) return@synchronized
                    if (info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM == 0) {
                        val render = renderFrames && codecSurface?.isValid != false
                        val rendered = try {
                            active.releaseOutputBuffer(index, render)
                            true
                        } catch (error: Exception) {
                            diagnostics?.invoke("video frame dropped: $error")
                            false
                        }
                        if (!rendered) return@synchronized
                        if (render) {
                            if (framesRendered == 0L) diagnostics?.invoke("first video frame rendered")
                            framesRendered++
                        }
                        val latency = System.nanoTime() / 1000 - info.presentationTimeUs
                        if (latency in 0..MAX_TRACKED_LATENCY_MICROS) {
                            latencyTotalMicros += latency
                            latencySamples++
                            if (latency > latencyMaxMicros) latencyMaxMicros = latency
                        }
                        reportLatencyIfDue()
                    }
                }
            } else if (index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                synchronized(codecLock) {
                    if (codec === active) updateVideoSize(active.outputFormat)
                }
            } else {
                sleepQuietly(4)
            }
        }
    }

    /** Input-to-render delay shows decoder backlog; a healthy stream stays well below a frame. */
    private fun reportLatencyIfDue() {
        val now = SystemClock.elapsedRealtime()
        if (latencyWindowStartedAt == 0L) latencyWindowStartedAt = now
        if (now - latencyWindowStartedAt < LATENCY_WINDOW_MILLIS || latencySamples == 0) return
        val average = latencyTotalMicros / latencySamples / 1000.0
        diagnostics?.invoke(
            "video codec latency avg=${"%.1f".format(java.util.Locale.US, average)}ms " +
                "max=${latencyMaxMicros / 1000}ms samples=$latencySamples",
        )
        latencyWindowStartedAt = now
        latencyTotalMicros = 0
        latencySamples = 0
        latencyMaxMicros = 0
    }

    private fun sleepQuietly(millis: Long) {
        try {
            sleep(millis)
        } catch (_: InterruptedException) {
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
        framesSubmitted = 0
        resetLatencySamples()
    }

    private fun resetLatencySamples() {
        latencyTotalMicros = 0
        latencySamples = 0
        latencyMaxMicros = 0
        latencyWindowStartedAt = SystemClock.elapsedRealtime()
    }

    private fun requestSyncThrottled(force: Boolean = false) {
        val now = SystemClock.elapsedRealtime()
        if (!force && now - lastSyncRequestAt < SYNC_REQUEST_INTERVAL_MILLIS) return
        lastSyncRequestAt = now
        requestVideoSync()
        diagnostics?.invoke("video synchronization requested")
    }
}
