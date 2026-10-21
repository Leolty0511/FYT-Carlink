package com.shilapi.xcertplay

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.bluetooth.BluetoothAdapter
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.ServiceInfo
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbManager
import android.media.AudioManager
import android.os.Binder
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.os.IBinder
import android.os.SystemClock
import android.util.Log
import android.view.Surface
import androidx.core.content.ContextCompat
import com.shilapi.xcertplay.host.R
import com.shilapi.xcertplay.transport.UsbHostRoleSwitch
import com.shilapi.xcertplay.vendor.VendorCarplayClient
import com.shilapi.xcertplay.vendor.VendorCarplayAudioChannel
import com.shilapi.xcertplay.vendor.VendorCarplayAudioProtocol
import com.shilapi.xcertplay.vendor.VendorCarplayTransport
import com.shilapi.xcertplay.vendor.VendorDisplayProtocol
import com.shilapi.xcertplay.vendor.VendorVideoReceiver
import java.util.concurrent.CopyOnWriteArraySet

internal class VendorAudioSourcePolicy(
    private val minimumRequestIntervalMillis: Long = 750L,
) {
    private var visible = false
    private var mediaActive = false
    private var secondaryActive = false
    private var lastRequestMillis = Long.MIN_VALUE

    fun onAudioState(rawState: Int, nowMillis: Long): Boolean {
        val event = VendorCarplayAudioProtocol.decode(rawState) ?: return false
        val wasActive = mediaActive || secondaryActive
        when (event.channel) {
            VendorCarplayAudioChannel.MEDIA -> mediaActive = event.active
            VendorCarplayAudioChannel.SECONDARY -> secondaryActive = event.active
        }
        return visible && !wasActive && (mediaActive || secondaryActive) && canRequest(nowMillis)
    }

    fun onVisibilityChanged(nextVisible: Boolean, nowMillis: Long): Boolean {
        val becameVisible = nextVisible && !visible
        visible = nextVisible
        return becameVisible && (mediaActive || secondaryActive) && canRequest(nowMillis)
    }

    private fun canRequest(nowMillis: Long): Boolean {
        if (lastRequestMillis != Long.MIN_VALUE &&
            nowMillis - lastRequestMillis < minimumRequestIntervalMillis
        ) return false
        lastRequestMillis = nowMillis
        return true
    }
}

/**
 * Process owner for the head unit's Carlink 2.0 engine session.
 *
 * The vendor app keeps Binder registration and `/proc/mysocket` in a sticky service. Keeping
 * those resources out of the Activity means rotation, launcher changes and temporary overlays do
 * not tear down the phone link. Only [ACTION_STOP] ends the engine session.
 */
class VendorCarplaySessionService : Service(), VendorCarplayClient.Listener {
    data class Snapshot(
        val connected: Boolean,
        val sessionRequested: Boolean,
        val sessionEstablished: Boolean,
        val state: String,
        val framesRendered: Long,
        val directSurfaceCodec: Boolean,
        val displayWidth: Int,
        val displayHeight: Int,
        val videoWidth: Int,
        val videoHeight: Int,
        val diagnostics: List<String>,
    )

    interface Observer {
        fun onVendorSessionUpdated(snapshot: Snapshot)
        fun onVendorSessionStopped()
    }

    inner class LocalBinder : Binder() {
        val session: VendorCarplaySessionService
            get() = this@VendorCarplaySessionService
    }

    private val binder = LocalBinder()
    private val observers = CopyOnWriteArraySet<Observer>()
    private val diagnosticsLock = Any()
    private val recentDiagnostics = ArrayDeque<String>()

    private lateinit var client: VendorCarplayClient
    private lateinit var vendorPhoneBluetooth: VendorPhoneBluetooth
    @Volatile private var vendorPhoneState = VendorPhoneBluetoothState()
    private var videoReceiver: VendorVideoReceiver? = null
    private var directSurfaceCodec = false
    private val monitorThread = HandlerThread("VendorCarplayMonitor")
    private lateinit var monitor: Handler
    private val main = Handler(android.os.Looper.getMainLooper())
    private val recovery = VendorSessionRecoveryPolicy()
    private val audioSourcePolicy = VendorAudioSourcePolicy()
    private val disconnectedPhoneStop = Runnable {
        if (shouldStopForDisconnectedPhone(
                sessionRequested = sessionRequested,
                phoneKnownDisconnected = vendorPhoneState.knownDisconnected,
                sessionState = client.currentSessionState(),
            transport = sessionTransport,
            )) {
            record("vendor pending session stopped: phone Bluetooth disconnected")
            stopSessionExplicitly()
        }
    }

    @Volatile
    private var surface: Surface? = null

    @Volatile
    private var sessionRequested = false

    @Volatile
    private var registered = false

    private var sessionCommandSent = false
    private var projectionStarted = false
    private var explicitlyStopped = false
    private var displayConfigured = false
    private var carPlayCalling = false
    private var carPlayVoiceActive = false
    private var voiceFocusHeld = false
    private val voiceFocusListener = AudioManager.OnAudioFocusChangeListener { }
    private var sessionTransport = VendorCarplayTransport.WIRELESS
    private var viewportWidth = 0
    private var viewportHeight = 0

    private val wiredUsbRecheck = Runnable {
        if (sessionRequested && sessionTransport == VendorCarplayTransport.WIRED && !vendorIphoneAttached()) {
            record("vendor wired session stopped: iPhone USB detached")
            stopSessionExplicitly()
        }
    }
    private val usbReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            val device = intent.usbDevice() ?: return
            if (!device.isVendorIphone()) return
            when (intent.action) {
                UsbManager.ACTION_USB_DEVICE_ATTACHED -> {
                    main.removeCallbacks(wiredUsbRecheck)
                    record(
                        "vendor USB attach vid=0x${device.vendorId.toString(16)} " +
                            "pid=0x${device.productId.toString(16)}",
                    )
                    requestSession(
                        requireFreshState = sessionTransport != VendorCarplayTransport.WIRED,
                        transport = VendorCarplayTransport.WIRED,
                    )
                }
                UsbManager.ACTION_USB_DEVICE_DETACHED -> {
                    // An iPhone mode change briefly detaches the same physical device.
                    record("vendor USB detach; scheduling device-list recheck")
                    main.removeCallbacks(wiredUsbRecheck)
                    main.postDelayed(wiredUsbRecheck, USB_RECHECK_DELAY_MILLIS)
                }
            }
        }
    }

    @Volatile
    private var videoWidth = 0

    @Volatile
    private var videoHeight = 0

    private val healthCheck = object : Runnable {
        override fun run() {
            val state = client.currentSessionState()
            val receiverFrames = videoReceiver?.framesRendered ?: 0L
            val framesForRecovery = if (directSurfaceCodec && state == ACTIVE_SESSION_STATE) {
                SystemClock.elapsedRealtime()
            } else {
                receiverFrames
            }
            when (recovery.evaluate(
                nowMillis = SystemClock.elapsedRealtime(),
                sessionRequested = sessionRequested,
                connected = client.connected,
                state = state,
                framesRendered = framesForRecovery,
            )) {
                VendorSessionRecoveryPolicy.Action.RECONNECT_BINDER -> {
                    record("vendor recovery: reconnecting CarplayServer")
                    client.reconnect()
                }
                VendorSessionRecoveryPolicy.Action.RESTART_ENGINE -> {
                    record("vendor recovery: restarting CarplayServer engine")
                    client.recoverEngine()
                }
                VendorSessionRecoveryPolicy.Action.RESTART_VIDEO -> {
                    record("vendor recovery: rebuilding video listener")
                    restartVideoReceiver()
                }
                VendorSessionRecoveryPolicy.Action.NONE -> Unit
            }
            publishSnapshot(state, receiverFrames)
            if (!explicitlyStopped) monitor.postDelayed(this, HEALTH_CHECK_MILLIS)
        }
    }

    override fun onCreate() {
        super.onCreate()
        // A request is process-local. A persisted true value becomes stale when the iPhone forgets
        // the car or Android restarts this sticky service, and must not reopen an old projection.
        getSharedPreferences(PREFS, MODE_PRIVATE).edit().remove(KEY_SESSION_REQUESTED).apply()
        sessionRequested = false
        processSessionRunning = false
        processSessionTransport = VendorCarplayTransport.WIRELESS
        monitorThread.start()
        monitor = Handler(monitorThread.looper)
        vendorPhoneBluetooth = VendorPhoneBluetooth(this) { next ->
            val previous = vendorPhoneState
            vendorPhoneState = next
            val address = next.phoneAddress?.takeIf(BluetoothAdapter::checkBluetoothAddress)
            if (address != null) {
                DiPlayPreferences.savePhone(this, address, next.displayName ?: DiPlayPreferences.phoneName(this))
            }
            if (::client.isInitialized && sessionRequested) {
                if (sessionTransport == VendorCarplayTransport.WIRELESS) {
                    when {
                        next.connected -> client.refreshBluetooth()
                        previous.connected && !next.connected ->
                            client.notifyPhoneBluetoothDisconnected()
                    }
                }
            }
            main.removeCallbacks(disconnectedPhoneStop)
            if (next.knownDisconnected && sessionRequested &&
                sessionTransport == VendorCarplayTransport.WIRELESS
            ) {
                main.postDelayed(disconnectedPhoneStop, PHONE_DISCONNECT_GRACE_MILLIS)
            }
        }
        vendorPhoneBluetooth.start()
        client = VendorCarplayClient(
            context = this,
            phoneAddress = { vendorPhoneState.phoneAddress ?: DiPlayPreferences.phoneAddress(this) },
            listener = this,
            diagnostics = ::record,
        )
        resources.displayMetrics.let { metrics ->
            viewportWidth = metrics.widthPixels
            viewportHeight = metrics.heightPixels
        }
        directSurfaceCodec = client.usesDirectSurfaceCodec()
        record("vendor video path=${if (directSurfaceCodec) "direct-surface" else "local-decoder"}")
        if (!directSurfaceCodec) videoReceiver = newVideoReceiver().also { it.start() }
        val usbFilter = IntentFilter().apply {
            addAction(UsbManager.ACTION_USB_DEVICE_ATTACHED)
            addAction(UsbManager.ACTION_USB_DEVICE_DETACHED)
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(usbReceiver, usbFilter, RECEIVER_NOT_EXPORTED)
        } else {
            @Suppress("DEPRECATION")
            registerReceiver(usbReceiver, usbFilter)
        }
        client.start()
        monitor.post(healthCheck)
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        startInForeground()
        when (intent?.action) {
            ACTION_STOP -> {
                stopSessionExplicitly()
                return START_NOT_STICKY
            }
            ACTION_GUARD -> client.start()
            ACTION_START_SESSION -> requestSession(
                requireFreshState = intent.getBooleanExtra(EXTRA_REQUIRE_FRESH_STATE, false),
                transport = intent.vendorTransport(),
            )
            null -> if (sessionRequested) requestSession() else client.start()
            else -> requestSession()
        }
        return START_STICKY
    }

    fun registerObserver(observer: Observer) {
        observers += observer
        observer.onVendorSessionUpdated(snapshot())
    }

    fun unregisterObserver(observer: Observer) {
        observers -= observer
    }

    fun requestSession(
        requireFreshState: Boolean = false,
        transport: VendorCarplayTransport = sessionTransport,
    ) {
        if (explicitlyStopped) return
        if (requireFreshState) processSessionLaunchReady = false
        if (sessionRequested && sessionTransport != transport) {
            client.stopSession()
            client.linkStop()
            sessionCommandSent = false
            projectionStarted = false
        }
        sessionTransport = transport
        processSessionTransport = transport
        if (!sessionRequested) {
            sessionRequested = true
            processSessionRunning = true
        }
        client.start()
        applyDesiredState()
        publishSnapshot()
    }

    fun attachSurface(candidate: Surface) {
        if (!candidate.isValid || explicitlyStopped) return
        surface = candidate
        videoReceiver?.surfaceChanged()
        applyDesiredState()
    }

    /** Supplies the actual projection window; CarLink uses this before negotiating command 218. */
    fun configureViewport(width: Int, height: Int) {
        if (width <= 0 || height <= 0 || explicitlyStopped) return
        val next = VendorDisplayProtocol.negotiateDisplaySize(width, height)
        val current = VendorDisplayProtocol.negotiateDisplaySize(viewportWidth, viewportHeight)
        viewportWidth = width
        viewportHeight = height
        if (next != current && !sessionCommandSent) displayConfigured = false
        applyDesiredState()
        publishSnapshot()
    }

    fun detachSurface(candidate: Surface?) {
        val current = surface
        if (candidate != null && current !== candidate) return
        surface = null
        if (registered && projectionStarted) client.projection(start = false)
        projectionStarted = false
        if (registered && directSurfaceCodec) client.detachSurface()
        videoReceiver?.surfaceChanged()
    }

    fun touch(coordinates: IntArray) {
        if (sessionRequested) client.touch(coordinates)
    }

    fun setProjectionVisible(visible: Boolean) {
        if (audioSourcePolicy.onVisibilityChanged(visible, SystemClock.elapsedRealtime())) {
            requestCarPlayAudioSource("projection visible")
        }
    }

    /** User-initiated disconnect. Activity destruction alone must never call this. */
    fun disconnect() {
        stopSessionExplicitly()
    }

    fun snapshot(): Snapshot = Snapshot(
        connected = client.connected,
        sessionRequested = sessionRequested,
        sessionEstablished = processSessionLaunchReady,
        state = client.currentSessionState(),
        framesRendered = videoReceiver?.framesRendered ?: 0L,
        directSurfaceCodec = directSurfaceCodec,
        displayWidth = client.displayWidth,
        displayHeight = client.displayHeight,
        videoWidth = videoWidth,
        videoHeight = videoHeight,
        diagnostics = synchronized(diagnosticsLock) { recentDiagnostics.toList() },
    )

    override fun onRegistered(success: Boolean) {
        registered = success
        sessionCommandSent = false
        projectionStarted = false
        displayConfigured = false
        if (success) applyDesiredState()
        publishSnapshot()
    }

    override fun onServiceDied() {
        registered = false
        sessionCommandSent = false
        projectionStarted = false
        displayConfigured = false
        publishSnapshot()
    }

    override fun onSessionStateChanged(state: String) {
        if (state == ACTIVE_SESSION_STATE) {
            processSessionLaunchReady = true
            main.removeCallbacks(disconnectedPhoneStop)
        } else if (vendorPhoneState.knownDisconnected && sessionRequested &&
            sessionTransport == VendorCarplayTransport.WIRELESS
        ) {
            main.removeCallbacks(disconnectedPhoneStop)
            main.postDelayed(disconnectedPhoneStop, PHONE_DISCONNECT_GRACE_MILLIS)
        }
        publishSnapshot()
    }

    override fun onHostUiExitRequested() {
        val sent = vendorPhoneBluetooth.requestHostUiExit()
        record("vendor host UI exit requested sent=$sent")
    }

    override fun onAudioStateChanged(state: Int) {
        if (audioSourcePolicy.onAudioState(state, SystemClock.elapsedRealtime())) {
            requestCarPlayAudioSource("audio active")
        }
    }

    override fun onPhoneStateChanged(state: Int) {
        val active = state > 0
        if (carPlayCalling == active) return
        carPlayCalling = active
        val sent = vendorPhoneBluetooth.notifyCarPlayCalling(active)
        record("vendor CarPlay call state active=$active sent=$sent")
    }

    override fun onVoiceStateChanged(state: Int) {
        val active = state == 1
        if (carPlayVoiceActive == active) return
        carPlayVoiceActive = active
        updateVoiceAudioFocus(active)
        val sent = vendorPhoneBluetooth.notifyCarPlayVoiceActive(active)
        record("vendor CarPlay voice route active=$active focus=$voiceFocusHeld sent=$sent")
    }

    override fun onDestroy() {
        explicitlyStopped = true
        main.removeCallbacks(disconnectedPhoneStop)
        main.removeCallbacks(wiredUsbRecheck)
        monitor.removeCallbacksAndMessages(null)
        monitorThread.quitSafely()
        shutdownVideoReceiver()
        clearCarPlayCallRouting()
        vendorPhoneBluetooth.stop()
        runCatching { unregisterReceiver(usbReceiver) }
        client.shutdown(stopLink = false)
        surface = null
        observers.clear()
        super.onDestroy()
    }

    private fun Intent.vendorTransport(): VendorCarplayTransport =
        getStringExtra(EXTRA_TRANSPORT)
            ?.let { runCatching { VendorCarplayTransport.valueOf(it) }.getOrNull() }
            ?: VendorCarplayTransport.WIRELESS

    @Suppress("DEPRECATION")
    private fun Intent.usbDevice(): UsbDevice? =
        getParcelableExtra(UsbManager.EXTRA_DEVICE)

    private fun UsbDevice.isVendorIphone(): Boolean = vendorId == APPLE_VENDOR_ID

    private fun vendorIphoneAttached(): Boolean =
        (getSystemService(Context.USB_SERVICE) as? UsbManager)
            ?.deviceList
            ?.values
            ?.any { it.isVendorIphone() } == true

    private fun applyDesiredState() {
        if (!registered || explicitlyStopped) return
        if (!displayConfigured) {
            displayConfigured = client.configureDisplay(viewportWidth, viewportHeight)
            if (!displayConfigured) return
        }
        if (directSurfaceCodec) surface?.takeIf { it.isValid }?.let(client::attachSurface)
        if (sessionRequested && !sessionCommandSent) {
            client.startSession(sessionTransport)
            sessionCommandSent = true
        }
        val shouldProject = sessionRequested && surface?.isValid == true
        if (projectionStarted != shouldProject) {
            client.projection(shouldProject)
            projectionStarted = shouldProject
        }
    }

    private fun stopSessionExplicitly() {
        if (explicitlyStopped) return
        explicitlyStopped = true
        sessionRequested = false
        processSessionRunning = false
        processSessionActive = false
        processServiceConnected = false
        processSessionLaunchReady = false
        processSessionTransport = VendorCarplayTransport.WIRELESS
        clearCarPlayCallRouting()
        getSharedPreferences(PREFS, MODE_PRIVATE).edit().remove(KEY_SESSION_REQUESTED).apply()
        monitor.removeCallbacksAndMessages(null)
        if (registered && projectionStarted) client.projection(start = false)
        projectionStarted = false
        surface = null
        shutdownVideoReceiver()
        client.shutdown(stopLink = true)
        if (sessionTransport == VendorCarplayTransport.WIRED) {
            UsbHostRoleSwitch.restoreDeviceMode(onDiagnostic = { line ->
                record(line)
                VendorWiredUsbDiagnostics.record(this, line)
            })
        }
        observers.forEach { observer -> main.post { observer.onVendorSessionStopped() } }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            stopForeground(STOP_FOREGROUND_REMOVE)
        } else {
            @Suppress("DEPRECATION")
            stopForeground(true)
        }
        stopSelf()
    }

    private fun restartVideoReceiver() {
        if (directSurfaceCodec) return
        shutdownVideoReceiver()
        videoReceiver = newVideoReceiver().also { it.start() }
    }

    private fun shutdownVideoReceiver() {
        val receiver = videoReceiver ?: return
        receiver.shutdown()
        runCatching { receiver.join(VIDEO_SHUTDOWN_WAIT_MILLIS) }
        videoReceiver = null
    }

    private fun newVideoReceiver() = VendorVideoReceiver(
        surfaceProvider = { surface?.takeIf { it.isValid } },
        requestVideoSync = client::requestVideoSync,
        onVideoSizeChanged = { width, height ->
            videoWidth = width
            videoHeight = height
            publishSnapshot()
        },
        diagnostics = ::record,
    )

    private fun record(line: String) {
        Log.d(LOG_TAG, line)
        synchronized(diagnosticsLock) {
            if (recentDiagnostics.size == MAX_DIAGNOSTIC_LINES) recentDiagnostics.removeFirst()
            recentDiagnostics.addLast(line)
        }
        publishSnapshot()
    }

    private fun requestCarPlayAudioSource(reason: String) {
        val sent = vendorPhoneBluetooth.requestCarPlayAudioSource()
        record("vendor CarPlay audio source requested reason=$reason sent=$sent")
    }

    @Suppress("DEPRECATION")
    private fun updateVoiceAudioFocus(active: Boolean) {
        val audio = getSystemService(Context.AUDIO_SERVICE) as? AudioManager ?: return
        if (active && !voiceFocusHeld) {
            voiceFocusHeld = audio.requestAudioFocus(
                voiceFocusListener,
                AudioManager.STREAM_VOICE_CALL,
                AudioManager.AUDIOFOCUS_GAIN_TRANSIENT,
            ) == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        } else if (!active && voiceFocusHeld) {
            audio.abandonAudioFocus(voiceFocusListener)
            voiceFocusHeld = false
        }
    }

    private fun clearCarPlayCallRouting() {
        if (carPlayVoiceActive) vendorPhoneBluetooth.notifyCarPlayVoiceActive(false)
        if (carPlayCalling) vendorPhoneBluetooth.notifyCarPlayCalling(false)
        carPlayVoiceActive = false
        carPlayCalling = false
        updateVoiceAudioFocus(false)
    }

    private fun publishSnapshot(
        state: String = client.currentSessionState(),
        framesRendered: Long = videoReceiver?.framesRendered ?: 0L,
    ) {
        val current = Snapshot(
            connected = client.connected,
            sessionRequested = sessionRequested,
            sessionEstablished = processSessionLaunchReady,
            state = state,
            framesRendered = framesRendered,
            directSurfaceCodec = directSurfaceCodec,
            displayWidth = client.displayWidth,
            displayHeight = client.displayHeight,
            videoWidth = videoWidth,
            videoHeight = videoHeight,
            diagnostics = synchronized(diagnosticsLock) { recentDiagnostics.toList() },
        )
        processSessionRunning = current.sessionRequested
        processServiceConnected = current.connected
        processSessionActive = current.state == ACTIVE_SESSION_STATE
        processSnapshot = current
        observers.forEach { observer -> main.post { observer.onVendorSessionUpdated(current) } }
    }

    private fun startInForeground() {
        val builder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val manager = getSystemService(NotificationManager::class.java)
            manager.createNotificationChannel(
                NotificationChannel(CHANNEL, "CarPlay connection", NotificationManager.IMPORTANCE_LOW),
            )
            Notification.Builder(this, CHANNEL)
        } else {
            @Suppress("DEPRECATION")
            Notification.Builder(this).setPriority(Notification.PRIORITY_LOW)
        }
        val open = PendingIntent.getActivity(
            this,
            REQUEST_OPEN,
            Intent(this, VendorCarplayActivity::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
        val stop = PendingIntent.getService(
            this,
            REQUEST_STOP,
            Intent(this, VendorCarplaySessionService::class.java).setAction(ACTION_STOP),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
        val notification = builder
            .setSmallIcon(R.drawable.ic_diplay_notification)
            .setContentTitle(getString(R.string.app_name))
            .setContentText("CarPlay connection running")
            .setContentIntent(open)
            .setOngoing(true)
            .addAction(Notification.Action.Builder(null, "Disconnect", stop).build())
            .build()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(
                NOTIFICATION_ID,
                notification,
                ServiceInfo.FOREGROUND_SERVICE_TYPE_CONNECTED_DEVICE,
            )
        } else {
            startForeground(NOTIFICATION_ID, notification)
        }
    }

    companion object {
        const val ACTION_START_SESSION = "FYT.Tlink.vendor.START_SESSION"
        const val ACTION_GUARD = "FYT.Tlink.vendor.GUARD"
        const val ACTION_STOP = "FYT.Tlink.vendor.DISCONNECT"
        private const val EXTRA_REQUIRE_FRESH_STATE = "require_fresh_state"
        const val EXTRA_TRANSPORT = "vendor_transport"

        private const val PREFS = "vendor_carplay_session"
        private const val KEY_SESSION_REQUESTED = "session_requested"
        private const val CHANNEL = "diplay_connection"
        private const val NOTIFICATION_ID = 2
        private const val REQUEST_OPEN = 20
        private const val REQUEST_STOP = 21
        private const val HEALTH_CHECK_MILLIS = 2_000L
        private const val VIDEO_SHUTDOWN_WAIT_MILLIS = 1_000L
        private const val PHONE_DISCONNECT_GRACE_MILLIS = 2_000L
        private const val USB_RECHECK_DELAY_MILLIS = 1_500L
        private const val MAX_DIAGNOSTIC_LINES = 6
        private const val LOG_TAG = "VendorCarplaySession"
        private const val APPLE_VENDOR_ID = 0x05ac
        internal const val ACTIVE_SESSION_STATE = "wireless-4"

        @Volatile
        private var processSessionRunning = false

        @Volatile
        private var processServiceConnected = false

        @Volatile
        private var processSessionActive = false

        @Volatile
        private var processSessionLaunchReady = false

        @Volatile
        private var processSessionTransport = VendorCarplayTransport.WIRELESS

        @Volatile
        private var processSnapshot: Snapshot? = null

        fun isRunning(): Boolean = processSessionRunning

        fun isServiceConnected(): Boolean = processServiceConnected

        fun isSessionActive(): Boolean = processSessionActive

        fun isSessionLaunchReady(): Boolean = processSessionLaunchReady

        fun currentTransport(): VendorCarplayTransport = processSessionTransport

        fun latestSnapshot(): Snapshot? = processSnapshot

        internal fun shouldStopForDisconnectedPhone(
            sessionRequested: Boolean,
            phoneKnownDisconnected: Boolean,
            @Suppress("UNUSED_PARAMETER") sessionState: String,
            transport: VendorCarplayTransport = VendorCarplayTransport.WIRELESS,
        ): Boolean = transport == VendorCarplayTransport.WIRELESS &&
            sessionRequested && phoneKnownDisconnected

        fun startSession(
            context: Context,
            requireFreshState: Boolean = false,
            transport: VendorCarplayTransport = VendorCarplayTransport.WIRELESS,
        ) {
            if (requireFreshState) processSessionLaunchReady = false
            ContextCompat.startForegroundService(
                context,
                Intent(context, VendorCarplaySessionService::class.java)
                    .setAction(ACTION_START_SESSION)
                    .putExtra(EXTRA_REQUIRE_FRESH_STATE, requireFreshState)
                    .putExtra(EXTRA_TRANSPORT, transport.name),
            )
        }

        fun stopSession(context: Context) {
            ContextCompat.startForegroundService(
                context,
                Intent(context, VendorCarplaySessionService::class.java).setAction(ACTION_STOP),
            )
        }
    }
}
