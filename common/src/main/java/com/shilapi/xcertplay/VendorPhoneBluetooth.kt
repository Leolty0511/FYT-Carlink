package com.shilapi.xcertplay

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.util.Log
import com.syu.ipc.IModuleCallback
import com.syu.ipc.IRemoteModule
import com.syu.ipc.IRemoteToolkit
import java.util.Locale

internal data class VendorPhoneBluetoothState(
    val serviceAvailable: Boolean = false,
    val phoneState: Int? = null,
    val phoneAddress: String? = null,
    val phoneName: String? = null,
) {
    // FYT's own Ipc_New.isDisConnect() treats LINK and PAIR as not connected too.
    val connected: Boolean get() = phoneState != null && phoneState !in DISCONNECTED_STATES
    val knownDisconnected: Boolean get() = serviceAvailable && phoneState != null && !connected

    val displayName: String?
        get() = phoneName?.trim()?.takeIf { it.isNotEmpty() }

    companion object {
        private val DISCONNECTED_STATES = setOf(0, 1, 6)
    }
}

internal object VendorWirelessAutoStartPolicy {
    fun shouldStart(
        previousConnected: Boolean,
        currentConnected: Boolean,
        onHomePage: Boolean,
        setupReady: Boolean,
        sessionRunning: Boolean,
        launchPending: Boolean,
        wiredIphoneAttached: Boolean,
    ): Boolean = !previousConnected && currentConnected && onHomePage && setupReady &&
        !sessionRunning && !launchPending && !wiredIphoneAttached
}

/** Read-only observer for the phone Bluetooth module used by the stock FYT Bluetooth app. */
internal class VendorPhoneBluetooth(
    context: Context,
    private val onStateChanged: (VendorPhoneBluetoothState) -> Unit,
) : ServiceConnection {
    private val app = context.applicationContext
    private val main = Handler(Looper.getMainLooper())
    private var started = false
    private var bound = false
    private var module: IRemoteModule? = null
    private var hostModule: IRemoteModule? = null
    private var state = VendorPhoneBluetoothState()

    private val callback = object : IModuleCallback.Stub() {
        override fun update(updateCode: Int, ints: IntArray?, flts: FloatArray?, strs: Array<out String>?) {
            main.post {
                val next = when (updateCode) {
                    UPDATE_PHONE_STATE -> state.copy(phoneState = ints?.firstOrNull())
                    UPDATE_PHONE_ADDRESS -> state.copy(phoneAddress = normalizePhoneAddress(strs?.firstOrNull()))
                    UPDATE_PHONE_NAME -> state.copy(phoneName = strs?.firstOrNull())
                    else -> state
                }
                state = next
                Log.i(TAG, "phone update code=$updateCode state=${next.phoneState} " +
                    "connected=${next.connected} nameAvailable=${next.displayName != null}")
                onStateChanged(state)
            }
        }
    }

    private val rebind = Runnable { if (started && !bound) bind() }

    fun start() {
        if (started) return
        started = true
        bind()
    }

    fun stop() {
        started = false
        main.removeCallbacks(rebind)
        unregister()
        if (bound) runCatching { app.unbindService(this) }
        bound = false
        module = null
        hostModule = null
    }

    private fun bind() {
        main.removeCallbacks(rebind)
        val intent = Intent(SERVICE_ACTION).setPackage(SERVICE_PACKAGE)
        bound = runCatching { app.bindService(intent, this, Context.BIND_AUTO_CREATE) }
            .onFailure { Log.w(TAG, "Unable to bind FYT phone Bluetooth service", it) }
            .getOrDefault(false)
        if (!bound && started) main.postDelayed(rebind, REBIND_DELAY_MILLIS)
    }

    override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
        if (service == null) {
            Log.w(TAG, "FYT Bluetooth service connected without a binder")
            disconnected(unbind = false)
            return
        }
        val toolkit = IRemoteToolkit.Stub.asInterface(service)
        val remote = runCatching { toolkit.getRemoteModule(BLUETOOTH_MODULE) }
            .onFailure { Log.w(TAG, "FYT Bluetooth module unavailable", it) }
            .getOrNull()
        hostModule = runCatching { toolkit.getRemoteModule(HOST_MODULE) }
            .onFailure { Log.w(TAG, "FYT host UI module unavailable", it) }
            .getOrNull()
        module = remote
        state = state.copy(serviceAvailable = remote != null)
        Log.i(
            TAG,
            "service connected moduleAvailable=${remote != null} " +
                "hostModuleAvailable=${hostModule != null}",
        )
        onStateChanged(state)
        if (remote == null) {
            scheduleRebind()
            return
        }
        runCatching {
            OBSERVED_UPDATES.forEach { remote.register(callback, it, 1) }
        }.onFailure {
            Log.w(TAG, "Unable to observe FYT phone Bluetooth state", it)
            scheduleRebind()
        }
    }

    override fun onServiceDisconnected(name: ComponentName?) {
        disconnected(unbind = false)
    }

    override fun onBindingDied(name: ComponentName?) {
        disconnected(unbind = true)
    }

    override fun onNullBinding(name: ComponentName?) {
        disconnected(unbind = true)
    }

    private fun disconnected(unbind: Boolean) {
        module = null
        hostModule = null
        state = state.copy(serviceAvailable = false)
        onStateChanged(state)
        if (unbind && bound) runCatching { app.unbindService(this) }
        bound = false
        if (started) {
            main.removeCallbacks(rebind)
            main.postDelayed(rebind, REBIND_DELAY_MILLIS)
        }
    }

    private fun unregister() {
        val remote = module ?: return
        OBSERVED_UPDATES.forEach { updateCode ->
            runCatching { remote.unregister(callback, updateCode) }
        }
    }

    private fun scheduleRebind() {
        unregister()
        if (bound) runCatching { app.unbindService(this) }
        bound = false
        module = null
        hostModule = null
        if (started) {
            main.removeCallbacks(rebind)
            main.postDelayed(rebind, REBIND_DELAY_MILLIS)
        }
    }

    /** Mirrors CarLink 2.0's in-projection exit command: module 0, command 133, value 3. */
    fun requestHostUiExit(): Boolean {
        val remote = hostModule ?: run {
            Log.w(TAG, "FYT host UI exit skipped: module unavailable")
            return false
        }
        return runCatching {
            remote.cmd(HOST_UI_COMMAND, intArrayOf(HOST_UI_EXIT), null, null)
            true
        }.onFailure {
            Log.w(TAG, "FYT host UI exit command failed", it)
        }.getOrDefault(false)
    }

    /** Mirrors CarLink 2.0's FYT source selection: module 0, command 0, APP_ID 10. */
    fun requestCarPlayAudioSource(): Boolean {
        val remote = hostModule ?: run {
            Log.w(TAG, "FYT CarPlay audio source skipped: module unavailable")
            return false
        }
        return runCatching {
            remote.cmd(HOST_SOURCE_COMMAND, intArrayOf(CARPLAY_APP_ID), null, null)
            true
        }.onFailure {
            Log.w(TAG, "FYT CarPlay audio source command failed", it)
        }.getOrDefault(false)
    }

    /** Mirrors CarLink 2.0's module-0 command 159 call-state handoff. */
    fun notifyCarPlayCalling(active: Boolean): Boolean = sendHostState(
        command = HOST_CARPLAY_CALL_COMMAND,
        active = active,
        label = "call",
    )

    /** Mirrors CarLink 2.0's module-0 command 156 voice/microphone handoff. */
    fun notifyCarPlayVoiceActive(active: Boolean): Boolean = sendHostState(
        command = HOST_CARPLAY_VOICE_COMMAND,
        active = active,
        label = "voice",
    )

    private fun sendHostState(command: Int, active: Boolean, label: String): Boolean {
        val remote = hostModule ?: run {
            Log.w(TAG, "FYT CarPlay $label state skipped: module unavailable")
            return false
        }
        return runCatching {
            remote.cmd(command, intArrayOf(if (active) 1 else 0), null, null)
            true
        }.onFailure {
            Log.w(TAG, "FYT CarPlay $label state command failed", it)
        }.getOrDefault(false)
    }

    companion object {
        private const val TAG = "DiPlayFytBluetooth"
        private const val SERVICE_ACTION = "com.syu.ms.toolkit"
        private const val SERVICE_PACKAGE = "com.syu.ms"
        private const val HOST_MODULE = 0
        private const val BLUETOOTH_MODULE = 2
        private const val HOST_UI_COMMAND = 133
        private const val HOST_UI_EXIT = 3
        private const val HOST_SOURCE_COMMAND = 0
        private const val CARPLAY_APP_ID = 10
        private const val HOST_CARPLAY_VOICE_COMMAND = 156
        private const val HOST_CARPLAY_CALL_COMMAND = 159
        private const val UPDATE_PHONE_ADDRESS = 6
        private const val UPDATE_PHONE_NAME = 7
        private const val UPDATE_PHONE_STATE = 9
        private const val REBIND_DELAY_MILLIS = 1_500L
        private val OBSERVED_UPDATES = intArrayOf(
            UPDATE_PHONE_STATE,
            UPDATE_PHONE_ADDRESS,
            UPDATE_PHONE_NAME,
        )

        internal const val PAIRING_ACTION = "com.syu.bt.act.ActBtPairDevices"
        internal const val BLUETOOTH_PACKAGE = "com.syu.bt"

        /** FYT reports phone MACs both with and without separators; Android only accepts the latter. */
        internal fun normalizePhoneAddress(value: String?): String? {
            val compact = value?.trim()
                ?.replace(":", "")
                ?.replace("-", "")
                ?.uppercase(Locale.ROOT)
                ?: return null
            if (compact.length != 12 || compact.any { it !in '0'..'9' && it !in 'A'..'F' }) return null
            return compact.chunked(2).joinToString(":")
        }

        internal fun pairingIntent(): Intent = Intent(PAIRING_ACTION)
            .setPackage(BLUETOOTH_PACKAGE)
            .addCategory(Intent.CATEGORY_DEFAULT)

        /** Returns false on non-FYT devices so callers can retain their normal connection path. */
        internal fun openPairing(context: Context): Boolean = runCatching {
            context.startActivity(pairingIntent())
            true
        }.onFailure {
            Log.w(TAG, "FYT phone pairing screen unavailable", it)
        }.getOrDefault(false)
    }
}
