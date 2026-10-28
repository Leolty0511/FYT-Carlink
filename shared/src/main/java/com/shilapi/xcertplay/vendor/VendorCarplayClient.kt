package com.shilapi.xcertplay.vendor

import android.content.Context
import android.os.Binder
import android.os.Handler
import android.os.HandlerThread
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import android.os.PersistableBundle
import android.os.SystemClock
import android.view.Surface
import com.shilapi.xcertplay.network.CarHotspotTethering
import com.shilapi.xcertplay.network.FytHeadUnit

enum class VendorCarplayTransport(val audioMode: Int) {
    WIRED(0),
    WIRELESS(1),
}

/**
 * Client for the head unit's vendor CarPlay service (`CarplayServer` binder).
 *
 * This reproduces the wire contract extracted from the decompiled vendor CarLink 2.0 app
 * (`h/c.java` / `h/e.java`):
 *
 *  - service handle:  `ServiceManager.getService("CarplayServer")`
 *  - interface token: `CarplayServer.ICarplayService`
 *  - transact 3:          register the callback binder (server then pushes status events)
 *  - transact 4:          hand a [Surface] to the service (zero-copy video render)
 *  - transact (cmd<<8)|2: command channel — payload is raw ints (+ optional strings), reply int
 *
 * Known command codes (from CarLink usage):
 *  - 200 audio {x}
 *  - 201 {0}                 full link stop
 *  - 202 {x,y,down,x2,y2,down2}  touch, coordinates in the negotiated display space
 *  - 203 {2,1}/{2,0}/{3,±1}/{0,1}/{0,0}  misc button presses
 *  - 205 {0|1}               voice/Siri toggle
 *  - 207 {1..5}              hard-key equivalents
 *  - 208 {1},{0}/{3},{0}     CarPlay phone-button press/release sequences
 *  - 210 {2|3|4}             projection end/start/video resynchronization
 *  - 216 {0|1}               music play/pause
 *  - 218 {...}                display negotiation
 *
 * If the service is missing (engine never started), the client bounces
 * `sys.fyt.carplay` 0→1 exactly like CarLink does and retries every 800 ms, so it
 * works even when the vendor CarLink app has been disabled.
 */
class VendorCarplayClient(
    context: Context? = null,
    private val phoneAddress: () -> String? = { null },
    private val listener: Listener? = null,
    private val diagnostics: ((String) -> Unit)? = null,
) : IBinder.DeathRecipient {

    interface Listener {
        /** Server accepted the callback registration. */
        fun onRegistered(success: Boolean)

        /** The CarplayServer binder died; a reconnect is scheduled. */
        fun onServiceDied()

        /** A session appears active (`sys.lsec.cp.state` no longer idle). */
        fun onSessionStateChanged(state: String)

        /** CarPlay's on-screen exit control requested the FYT host UI. */
        fun onHostUiExitRequested()

        /** Raw `$CarPlay.AudioState` value from the vendor Bluetooth control callback. */
        fun onAudioStateChanged(state: Int)

        /** CarPlay call state from stock callback 107; values above zero mean a call is active. */
        fun onPhoneStateChanged(state: Int)

        /** CarPlay voice/microphone state from stock callback 108; value 1 means active. */
        fun onVoiceStateChanged(state: Int)
    }

    companion object {
        const val SERVICE_NAME = "CarplayServer"
        const val INTERFACE_TOKEN = "CarplayServer.ICarplayService"

        const val CMD_AUDIO = 200
        const val CMD_LINK_STOP = 201
        const val CMD_TOUCH = 202
        const val CMD_BUTTON = 203
        const val CMD_VOICE = 205
        const val CMD_HARD_KEY = 207
        const val CMD_SESSION = 208
        const val CMD_PROJECTION = 210
        const val CMD_MUSIC_PLAY = 216
        const val CMD_DISPLAY_CONFIGURATION = 218
        const val CMD_DISPLAY_COMMIT = 219
        const val CMD_HOTSPOT_CONFIGURATION = 225
        const val CMD_BLUETOOTH_IDENTITY = 226
        const val CMD_BLUETOOTH_CONTROL = 229
        const val CMD_BLUETOOTH_DATA = 230

        /** Touch/video coordinate space used by the vendor service (matches CarLink defaults). */
        const val DISPLAY_WIDTH = 1024
        const val DISPLAY_HEIGHT = 600

        /** Stock CarLink hard-codes `h/c.f917f = 331` for the physical display hint. */
        private const val PHYSICAL_DISPLAY_WIDTH_MILLIMETRES = 331
        // Stock CarLink defaults to its 25 fps medium setting (20/25/60 are selectable there).
        private const val DEFAULT_FRAME_RATE = 25
        private const val DISPLAY_PIXEL_FORMAT = 1_399_222_387

        private const val PROP_CARPLAY_ENABLE = "sys.fyt.carplay"
        private const val PROP_CP_STATE = "sys.lsec.cp.state"
        private const val RECONNECT_DELAY_MILLIS = 800L
        private const val ENGINE_PROPERTY_EDGE_MILLIS = 20L
        private const val BLUETOOTH_SYNC_DELAY_MILLIS = 800L
        private const val BLUETOOTH_RETRY_MILLIS = 5_000L
        private const val CALLBACK_TOKEN = "CarplayServer.ICarplayListener"
    }

    @Volatile
    var connected: Boolean = false
        private set

    @Volatile
    var linkActive: Boolean = false
        private set

    @Volatile
    var displayWidth: Int = DISPLAY_WIDTH
        private set

    @Volatile
    var displayHeight: Int = DISPLAY_HEIGHT
        private set

    private val thread = HandlerThread("VendorCarplayClient").apply { start() }
    private val handler = Handler(thread.looper)
    private val main = Handler(Looper.getMainLooper())

    @Volatile
    private var service: IBinder? = null

    @Volatile
    private var reconnectScheduled = false

    @Volatile
    private var closed = false

    @Volatile
    private var callbackState = ""

    @Volatile
    private var serverState = -1

    @Volatile
    private var lastHotspotRequestMillis = Long.MIN_VALUE

    @Volatile
    private var hotspotStarting = false

    @Volatile
    private var bluetoothServerRequestedStop = false

    private val appContext = context?.applicationContext
    private val bluetoothBridge = appContext?.let { safeContext ->
        VendorBluetoothBridge(
            context = safeContext,
            preferredDeviceAddress = phoneAddress,
            sendIdentity = { name, address ->
                command(CMD_BLUETOOTH_IDENTITY, strings = arrayOf(name, address))
            },
            sendControl = ::sendBluetoothControl,
            sendData = ::sendBluetoothData,
            onUuidsRefreshed = ::refreshBluetooth,
            onTransportStateChanged = ::handleBluetoothTransportState,
            diagnostics = ::diagnose,
        )
    }

    private val bluetoothSync = Runnable {
        maintainBluetoothBridge()
    }

    /** Callback binder implemented by Carlink 2.0's `h/e.java`. */
    private val callback = object : Binder() {
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            val channel = code and 0xff
            if (channel != 1 && channel != 2) return super.onTransact(code, data, reply, flags)
            return runCatching {
                data.enforceInterface(CALLBACK_TOKEN)
                when (val event = code ushr 8) {
                    100 -> handleServerState(data.readInt())
                    101 -> listener?.let { target ->
                        main.post { target.onHostUiExitRequested() }
                    }
                    107 -> {
                        val state = data.readInt()
                        diagnose("vendor CarPlay phone state=$state")
                        listener?.let { target -> main.post { target.onPhoneStateChanged(state) } }
                    }
                    108 -> {
                        val state = data.readInt()
                        diagnose("vendor CarPlay voice state=$state")
                        listener?.let { target -> main.post { target.onVoiceStateChanged(state) } }
                    }
                    109 -> {
                        val state = data.readInt()
                        handler.post { handleWirelessState(state) }
                    }
                    110 -> {
                        val bundle = if (data.readInt() != 0) {
                            PersistableBundle.CREATOR.createFromParcel(data)
                        } else {
                            null
                        }
                        handler.post { handleBluetoothControl(bundle) }
                    }
                    111 -> {
                        val count = data.readInt().coerceAtLeast(0)
                        val bytes = ByteArray(count)
                        if (count > 0) data.readByteArray(bytes)
                        handler.post { bluetoothBridge?.write(bytes) }
                    }
                    else -> diagnose("vendor event=$event")
                }
                true
            }.getOrElse { error ->
                diagnose("vendor callback $code failed: ${error.javaClass.simpleName}")
                false
            }
        }
    }

    // ---------------------------------------------------------------- properties

    private fun systemPropGet(key: String, def: String = ""): String = runCatching {
        val clazz = Class.forName("android.os.SystemProperties")
        clazz.getDeclaredMethod("get", String::class.java, String::class.java)
            .invoke(null, key, def) as String
    }.getOrElse {
        runCatching {
            val p = Runtime.getRuntime().exec(arrayOf("getprop", key))
            p.inputStream.bufferedReader().useLines { lines -> lines.firstOrNull() ?: def }
                .also { p.waitFor() }
        }.getOrDefault(def)
    }

    private fun systemPropSet(key: String, value: String) {
        val viaReflection = runCatching {
            val clazz = Class.forName("android.os.SystemProperties")
            clazz.getDeclaredMethod("set", String::class.java, String::class.java)
                .invoke(null, key, value)
            true
        }.getOrDefault(false)
        if (!viaReflection) {
            runCatching { Runtime.getRuntime().exec(arrayOf("setprop", key, value)).waitFor() }
        }
    }

    // ---------------------------------------------------------------- lifecycle

    /** Starts (or restarts) connection attempts; safe to call repeatedly. */
    fun start() {
        if (closed) return
        handler.post {
            if (connected && service?.isBinderAlive == true) return@post
            connectLoop()
        }
    }

    /** Drop and reacquire the Binder without ending the phone-side CarPlay session. */
    fun reconnect() {
        if (closed) return
        handler.post {
            clearBinder()
            connectLoop()
        }
    }

    /** Restart the vendor native engine using the same property edge CarLink 2.0 uses. */
    fun recoverEngine() {
        if (closed) return
        handler.post {
            clearBinder()
            bounceEngine {
                if (!closed) connectLoop()
            }
        }
    }

    fun stop() = shutdown(stopLink = true)

    /** Release this client. System-driven service teardown can preserve the native session. */
    fun shutdown(stopLink: Boolean) {
        if (closed) return
        closed = true
        handler.removeCallbacksAndMessages(null)
        handler.post {
            detachSurface()
            bluetoothBridge?.shutdown()
            if (stopLink && linkActive) {
                stopSession()
                linkStop()
            }
            clearBinder()
            thread.quitSafely()
        }
    }

    private fun getServiceBinder(): IBinder? = runCatching {
        val clazz = Class.forName("android.os.ServiceManager")
        val method = clazz.getDeclaredMethod("getService", String::class.java)
        method.isAccessible = true
        method.invoke(null, SERVICE_NAME) as? IBinder
    }.getOrNull()

    private fun connectLoop() {
        if (closed || connected && service?.isBinderAlive == true) return
        val binder = getServiceBinder()
        if (binder == null) {
            // Engine not running. The init rule only fires on a property CHANGE, so a stale
            // "1" (service crashed earlier) would never restart it — always bounce 0 -> 1.
            diagnostics?.invoke("vendor engine binder missing (sys.fyt.carplay=${systemPropGet(PROP_CARPLAY_ENABLE)}); bouncing")
            bounceEngine { scheduleReconnect() }
            return
        }
        clearBinder()
        service = binder
        runCatching { binder.linkToDeath(this, 0) }
        val registered = registerCallback(binder)
        connected = registered
        diagnostics?.invoke("vendor CarplayServer registered=$registered")
        listener?.let { main.post { it.onRegistered(registered) } }
        if (!registered) {
            clearBinder()
            scheduleReconnect()
        }
    }

    private fun scheduleReconnect() {
        if (closed || reconnectScheduled) return
        reconnectScheduled = true
        handler.postDelayed({
            reconnectScheduled = false
            if (!closed) connectLoop()
        }, RECONNECT_DELAY_MILLIS)
    }

    override fun binderDied() {
        if (closed) return
        diagnostics?.invoke("vendor CarplayServer binder died; reconnecting")
        connected = false
        service = null
        listener?.let { main.post { it.onServiceDied() } }
        scheduleReconnect()
    }

    private fun clearBinder() {
        runCatching { service?.unlinkToDeath(this, 0) }
        service = null
        connected = false
    }

    private fun bounceEngine(after: () -> Unit) {
        systemPropSet(PROP_CARPLAY_ENABLE, "0")
        handler.postDelayed({
            systemPropSet(PROP_CARPLAY_ENABLE, "1")
            after()
        }, ENGINE_PROPERTY_EDGE_MILLIS)
    }

    // ---------------------------------------------------------------- transacts

    private fun registerCallback(binder: IBinder): Boolean {
        val data = Parcel.obtain()
        val reply = Parcel.obtain()
        return try {
            data.writeInterfaceToken(INTERFACE_TOKEN)
            data.writeStrongBinder(callback)
            binder.transact(3, data, reply, 0)
            val ok = reply.readInt() != 0
            reply.readException()
            ok
        } catch (error: Throwable) {
            diagnostics?.invoke("vendor register failed: $error")
            false
        } finally {
            data.recycle()
            reply.recycle()
        }
    }

    /** transact 4 — hand the video Surface to the service (zero-copy render). Pass null to release. */
    fun attachSurface(surface: Surface?) {
        val binder = service ?: return
        val data = Parcel.obtain()
        val reply = Parcel.obtain()
        try {
            data.writeInterfaceToken(INTERFACE_TOKEN)
            if (surface != null) {
                data.writeInt(1)
                surface.writeToParcel(data, 0)
            } else {
                data.writeInt(0)
            }
            binder.transact(4, data, reply, 0)
            reply.readInt()
            reply.readException()
            diagnostics?.invoke("vendor surface ${if (surface != null) "attached" else "detached"}")
        } catch (error: Throwable) {
            diagnostics?.invoke("vendor surface transact failed: $error")
        } finally {
            data.recycle()
            reply.recycle()
        }
    }

    fun detachSurface() = attachSurface(null)

    /** Mirrors CarLink's `defSurfaceCodec`: system-decoded FYT platforms use /proc/mysocket. */
    fun usesDirectSurfaceCodec(): Boolean = VendorDisplayProtocol.usesDirectSurfaceCodec(
        platform = systemPropGet("sys.fyt.platform"),
        nativeCodecProperty = systemPropGet("persist.lsec.cp.nativecodec").ifBlank { null },
        buildDateUtcSeconds = systemPropGet("ro.build.date.utc", "-1").toLongOrNull() ?: -1L,
    )

    /**
     * Command channel (`(cmd<<8)|2`). Payload is raw ints followed by optional strings,
     * exactly as CarLink's `n(cmd, strings, ints)` builds it.
     */
    fun command(cmd: Int, ints: IntArray = IntArray(0), strings: Array<String>? = null): Int {
        val binder = service ?: return -1
        val data = Parcel.obtain()
        val reply = Parcel.obtain()
        return try {
            data.writeInterfaceToken(INTERFACE_TOKEN)
            for (value in ints) data.writeInt(value)
            strings?.forEach { data.writeString(it) }
            val sent = binder.transact((cmd shl 8) or 2, data, reply, 0)
            if (sent) reply.readInt() else -1
        } catch (error: Throwable) {
            diagnostics?.invoke("vendor cmd $cmd failed: $error")
            -1
        } finally {
            data.recycle()
            reply.recycle()
        }
    }

    // ---------------------------------------------------------------- typed commands

    /** Ask the engine to open the requested CarPlay transport (CarLink `linkMode(0|1)`). */
    fun startSession(transport: VendorCarplayTransport = VendorCarplayTransport.WIRELESS) {
        linkActive = true
        bluetoothServerRequestedStop = false
        handler.post {
            if (transport == VendorCarplayTransport.WIRELESS) {
                // Stock CarLink sends linkMode(1) first. The engine then requests the hotspot
                // through callback 109; command 225 completion schedules another Bluetooth sync.
                command(CMD_AUDIO, intArrayOf(transport.audioMode))
                handler.removeCallbacks(bluetoothSync)
                handler.postDelayed(bluetoothSync, BLUETOOTH_SYNC_DELAY_MILLIS)
                diagnose("vendor wireless session requested")
            } else {
                handler.removeCallbacks(bluetoothSync)
                bluetoothBridge?.disconnect(sendStopped = false)
                command(CMD_AUDIO, intArrayOf(transport.audioMode))
                diagnose("vendor wired session requested")
            }
        }
    }

    /** Re-checks FYT's phone pairing after its vendor Bluetooth module publishes a new state. */
    fun refreshBluetooth() {
        if (closed || !linkActive) return
        bluetoothServerRequestedStop = false
        handler.post {
            maintainBluetoothBridge()
        }
    }

    /** Mirrors stock CarLink's `IA` notification when FYT phone Bluetooth disconnects. */
    fun notifyPhoneBluetoothDisconnected() {
        if (closed || !linkActive) return
        handler.post {
            bluetoothServerRequestedStop = true
            handler.removeCallbacks(bluetoothSync)
            sendBluetoothControl("IA")
            diagnose("vendor Bluetooth bridge: FYT phone Bluetooth disconnected")
        }
    }

    /** Stop the APK-owned Bluetooth bridge. Full session teardown is command 201 in [linkStop]. */
    fun stopSession() {
        handler.removeCallbacks(bluetoothSync)
        bluetoothServerRequestedStop = true
        bluetoothBridge?.disconnect(sendStopped = true)
        linkActive = false
        diagnose("vendor wireless session stopped")
    }

    /** Full link stop (CarLink `linkStop`). */
    fun linkStop() {
        command(CMD_LINK_STOP, intArrayOf(0))
        linkActive = false
    }

    /** Projection start/end (CarLink `p(start)` → 210 {2|3}). */
    fun projection(start: Boolean) {
        command(CMD_PROJECTION, intArrayOf(if (start) 3 else 2))
    }

    /** Requests the same clean video boundary CarLink asks for when its frame parser loses sync. */
    fun requestVideoSync() {
        command(CMD_PROJECTION, intArrayOf(4))
    }

    fun musicPlay(play: Boolean) = command(CMD_MUSIC_PLAY, intArrayOf(if (play) 1 else 0))

    fun voice(enabled: Boolean) = command(CMD_VOICE, intArrayOf(if (enabled) 1 else 0))

    fun audio(value: Int) = command(CMD_AUDIO, intArrayOf(value))

    fun hardKey(key: Int) = command(CMD_HARD_KEY, intArrayOf(key))

    fun button(action: Int, value: Int) = command(CMD_BUTTON, intArrayOf(action, value))

    /** Mirrors the display payload assembled by CarLink 2.0 `e.k.a`. */
    fun configureDisplay(viewportWidth: Int, viewportHeight: Int): Boolean {
        val display = VendorDisplayProtocol.negotiateDisplaySize(viewportWidth, viewportHeight)
        if (display.width <= 0 || display.height <= 0) return false
        val physicalHeight = (
            viewportHeight.toFloat() / viewportWidth * PHYSICAL_DISPLAY_WIDTH_MILLIMETRES + 0.5f
        ).toInt().coerceAtLeast(1)
        val result = command(
            CMD_DISPLAY_CONFIGURATION,
            intArrayOf(
                0,
                0,
                display.width,
                display.height,
                display.width,
                display.height,
                PHYSICAL_DISPLAY_WIDTH_MILLIMETRES,
                physicalHeight,
                0,
                DISPLAY_PIXEL_FORMAT,
                DEFAULT_FRAME_RATE,
            ),
        )
        if (result < 0) {
            diagnose("vendor display negotiation failed result=$result")
            return false
        }
        // Stock CarLink follows command 218 with an empty command 219 in the same link setup
        // block (`e/k.a`), so the engine sees the same "display committed" edge.
        val commit = command(CMD_DISPLAY_COMMIT, intArrayOf())
        diagnose("vendor display commit result=$commit")
        displayWidth = display.width
        displayHeight = display.height
        diagnose(
            "vendor display negotiated viewport=${viewportWidth}x$viewportHeight " +
                "canvas=${display.width}x${display.height} physical=" +
                "${PHYSICAL_DISPLAY_WIDTH_MILLIMETRES}x$physicalHeight fps=$DEFAULT_FRAME_RATE",
        )
        return true
    }

    /**
     * Touch injection in the display coordinate space. Single-pointer path of CarLink's
     * `CarplayFragment` (202 carries x,y,pressed and a second reserved pointer slot).
     */
    fun touch(x: Int, y: Int, pressed: Boolean) {
        val cx = x.coerceIn(0, displayWidth)
        val cy = y.coerceIn(0, displayHeight)
        touch(intArrayOf(cx, cy, if (pressed) 1 else 0, cx, cy, 0))
    }

    fun touch(coordinates: IntArray) {
        if (coordinates.size != 6) return
        val normalized = coordinates.copyOf()
        normalized[0] = normalized[0].coerceIn(0, displayWidth)
        normalized[1] = normalized[1].coerceIn(0, displayHeight)
        normalized[2] = if (normalized[2] == 0) 0 else 1
        normalized[3] = normalized[3].coerceIn(0, displayWidth)
        normalized[4] = normalized[4].coerceIn(0, displayHeight)
        normalized[5] = if (normalized[5] == 0) 0 else 1
        command(CMD_TOUCH, normalized)
    }

    fun currentSessionState(): String = callbackState.ifBlank { systemPropGet(PROP_CP_STATE) }

    /** Snapshot for diagnostics pages. */
    fun report(): String {
        val state = StringBuilder()
        state.appendLine("vendor engine: service=${if (connected) "bound" else "unbound"} link=$linkActive")
        state.appendLine("sys.fyt.carplay=${systemPropGet(PROP_CARPLAY_ENABLE)}")
        state.appendLine("sys.lsec.cp.state=${systemPropGet(PROP_CP_STATE)}")
        state.appendLine("sys.lsec.ap.state=${systemPropGet("sys.lsec.ap.state")}")
        return state.toString()
    }

    private fun handleServerState(serverState: Int) {
        this.serverState = serverState
        callbackState = VendorWirelessProtocol.callbackState(serverState)
        diagnose("vendor server state=$serverState")
        listener?.let { target -> main.post { target.onSessionStateChanged(callbackState) } }
    }

    private fun handleWirelessState(wirelessState: Int) {
        diagnose("vendor wireless state=$wirelessState")
        if (!VendorWirelessProtocol.shouldStartHotspot(wirelessState)) return
        val now = SystemClock.elapsedRealtime()
        if (!VendorWirelessProtocol.shouldRepeatHotspotRequest(lastHotspotRequestMillis, now)) {
            diagnose("vendor hotspot request debounced")
            return
        }
        lastHotspotRequestMillis = now
        startCarHotspot()
    }

    private fun handleBluetoothControl(bundle: PersistableBundle?) {
        if (bundle == null) return
        bundle.getString("_btcmd")?.let { command ->
            when {
                command.startsWith("AT#SP") -> {
                    bluetoothServerRequestedStop = false
                    bluetoothBridge?.connect()
                }
                command.startsWith("AT#SH") -> {
                    bluetoothServerRequestedStop = true
                    handler.removeCallbacks(bluetoothSync)
                    bluetoothBridge?.disconnect(sendStopped = true)
                }
                command.startsWith("AT#CD") -> {
                    bluetoothServerRequestedStop = false
                    diagnose("vendor Bluetooth disconnect requested")
                    maintainBluetoothBridge()
                }
            }
        }
        when (bundle.getInt("\$CarPlay.WifiApCtl", -1)) {
            1 -> startCarHotspot()
            0 -> diagnose("vendor requested hotspot close; DiPlay preserves the car hotspot")
        }
        val connectState = bundle.getInt("\$CarPlay.ConnectState", -1)
        if (connectState >= 0) diagnose("vendor CarPlay connect state=$connectState")
        val audioState = bundle.getInt("\$CarPlay.AudioState", -1)
        if (audioState >= 0) {
            diagnose("vendor CarPlay audio state=$audioState")
            listener?.let { target -> main.post { target.onAudioStateChanged(audioState) } }
        }
    }

    private fun maintainBluetoothBridge(): Boolean {
        handler.removeCallbacks(bluetoothSync)
        val bridge = bluetoothBridge ?: return false
        if (!linkActive || closed || bluetoothServerRequestedStop || bridge.isTransportConnected()) {
            return bridge.isTransportConnected()
        }
        if (!VendorWirelessProtocol.shouldSyncBluetooth(serverState)) {
            diagnose("vendor Bluetooth bridge: link already established; sync stopped")
            return bridge.isTransportConnected()
        }
        val advertised = bridge.advertise()
        if (!bridge.isTransportConnected()) {
            // Stock CarLink re-runs syncBluetoothInfo on every Bluetooth event until the engine
            // answers with AT#SP and the RFCOMM leg comes up, so keep offering the phone.
            handler.postDelayed(bluetoothSync, BLUETOOTH_RETRY_MILLIS)
            diagnose("vendor Bluetooth bridge: announced=$advertised; waiting for AT#SP")
        }
        return advertised
    }

    private fun handleBluetoothTransportState(connected: Boolean) {
        handler.post {
            handler.removeCallbacks(bluetoothSync)
            if (connected) {
                diagnose("vendor Bluetooth bridge: control transport ready")
            } else {
                diagnose("vendor Bluetooth bridge: control transport lost; waiting for engine request")
                if (linkActive && !closed && !bluetoothServerRequestedStop) {
                    handler.removeCallbacks(bluetoothSync)
                    handler.postDelayed(bluetoothSync, BLUETOOTH_RETRY_MILLIS)
                }
            }
        }
    }

    private fun sendBluetoothControl(value: String) {
        val bundle = PersistableBundle().apply { putString("_btcmd", value) }
        val binder = service ?: return
        val data = Parcel.obtain()
        val reply = Parcel.obtain()
        try {
            data.writeInterfaceToken(INTERFACE_TOKEN)
            data.writeInt(1)
            bundle.writeToParcel(data, 1)
            if (binder.transact((CMD_BLUETOOTH_CONTROL shl 8) or 2, data, reply, 0)) reply.readInt()
        } catch (error: Throwable) {
            diagnose("vendor Bluetooth control failed: ${error.javaClass.simpleName}")
        } finally {
            data.recycle()
            reply.recycle()
        }
    }

    private fun sendBluetoothData(buffer: ByteArray, count: Int) {
        val binder = service ?: return
        val data = Parcel.obtain()
        val reply = Parcel.obtain()
        try {
            data.writeInterfaceToken(INTERFACE_TOKEN)
            data.writeInt(count)
            data.writeByteArray(buffer)
            if (binder.transact((CMD_BLUETOOTH_DATA shl 8) or 2, data, reply, 0)) reply.readInt()
        } catch (error: Throwable) {
            diagnose("vendor Bluetooth data failed: ${error.javaClass.simpleName}")
        } finally {
            data.recycle()
            reply.recycle()
        }
    }

    private fun startCarHotspot() {
        val context = appContext ?: return
        if (hotspotStarting) return
        hotspotStarting = true
        Thread({
            try {
                val result = CarHotspotTethering.enable(
                    context = context,
                    isCancelled = { closed || !linkActive },
                    log = ::diagnose,
                )
                diagnose("vendor hotspot request result=${result.name}")
                if (result == CarHotspotTethering.Result.READY) syncHotspotConfiguration(context)
            } finally {
                hotspotStarting = false
            }
        }, "VendorCarplayHotspot").apply {
            isDaemon = true
            start()
        }
    }

    private fun syncHotspotConfiguration(context: Context) {
        val direct = VendorHotspotConfigurationReader.read(context)
        val configuration = direct ?: if (FytHeadUnit.detected) {
            VendorHotspotConfigurationShellReader.read(context)
        } else {
            null
        }
        if (configuration == null) {
            diagnose("vendor hotspot configuration unavailable")
            return
        }
        diagnose(
            "vendor saved hotspot read via ${if (direct != null) "platform" else "embedded FYT shell"} " +
                "ssid=${configuration.ssid} channel=${configuration.channel} " +
                "security=${configuration.security} band=${configuration.band}",
        )
        syncHotspotConfiguration(configuration)
    }

    private fun syncHotspotConfiguration(configuration: VendorHotspotConfiguration) {
        val result = command(
            CMD_HOTSPOT_CONFIGURATION,
            intArrayOf(configuration.channel, configuration.security, configuration.band),
            arrayOf(configuration.ssid, configuration.password),
        )
        diagnose(
            "vendor hotspot configuration synced result=$result " +
                "channel=${configuration.channel} security=${configuration.security} band=${configuration.band}",
        )
        if (result >= 0) {
            handler.removeCallbacks(bluetoothSync)
            handler.postDelayed(bluetoothSync, BLUETOOTH_SYNC_DELAY_MILLIS)
        }
    }

    private fun diagnose(message: String) {
        diagnostics?.invoke(message)
    }

}
