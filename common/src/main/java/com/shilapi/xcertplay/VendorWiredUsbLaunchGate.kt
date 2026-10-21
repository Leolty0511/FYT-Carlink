package com.shilapi.xcertplay

/** Serializes the FYT USB role switch with Apple-device enumeration. */
internal class VendorWiredUsbLaunchGate {
    enum class HostSwitchAction {
        WAIT_FOR_IPHONE,
        KEEP_HOST,
        REPORT_FAILURE,
        RESTORE_STALE_SWITCH,
    }

    private enum class Phase { IDLE, SWITCHING_ROLE, WAITING_FOR_IPHONE, SESSION_STARTED }

    private var phase = Phase.IDLE
    private var generation = 0L
    private var startedDeviceKey: String? = null

    @Synchronized
    fun begin(): Long? {
        if (phase == Phase.SWITCHING_ROLE || phase == Phase.WAITING_FOR_IPHONE) return null
        generation++
        phase = Phase.SWITCHING_ROLE
        return generation
    }

    @Synchronized
    fun hostSwitchCompleted(token: Long, switched: Boolean): HostSwitchAction {
        if (token != generation) {
            return if (switched) HostSwitchAction.RESTORE_STALE_SWITCH
            else HostSwitchAction.REPORT_FAILURE
        }
        if (phase == Phase.SESSION_STARTED) return HostSwitchAction.KEEP_HOST
        if (phase != Phase.SWITCHING_ROLE) {
            return if (switched) HostSwitchAction.RESTORE_STALE_SWITCH
            else HostSwitchAction.REPORT_FAILURE
        }
        phase = if (switched) Phase.WAITING_FOR_IPHONE else Phase.IDLE
        return if (switched) HostSwitchAction.WAIT_FOR_IPHONE
        else HostSwitchAction.REPORT_FAILURE
    }

    @Synchronized
    fun onAppleAttached(deviceKey: String): Boolean {
        if (startedDeviceKey == deviceKey) return false
        startedDeviceKey = deviceKey
        phase = Phase.SESSION_STARTED
        return true
    }

    @Synchronized
    fun onAppleDetached(deviceKey: String) {
        if (startedDeviceKey != deviceKey) return
        startedDeviceKey = null
        if (phase == Phase.SESSION_STARTED) phase = Phase.IDLE
    }

    @Synchronized
    fun cancelPending(): Boolean {
        if (phase != Phase.SWITCHING_ROLE && phase != Phase.WAITING_FOR_IPHONE) return false
        generation++
        phase = Phase.IDLE
        return true
    }

    @get:Synchronized
    val pending: Boolean
        get() = phase == Phase.SWITCHING_ROLE || phase == Phase.WAITING_FOR_IPHONE
}
