package com.shilapi.xcertplay

/** Bounded recovery sequence for a requested vendor-engine session that stops making progress. */
internal class VendorSessionRecoveryPolicy(
    private val stallTimeoutMillis: Long = DEFAULT_STALL_TIMEOUT_MILLIS,
) {
    enum class Action {
        NONE,
        RECONNECT_BINDER,
        RESTART_ENGINE,
        RESTART_VIDEO,
    }

    private var lastProgressAtMillis = 0L
    private var lastConnected = false
    private var lastState = ""
    private var lastFramesRendered = 0L
    private var recoveryStep = 0

    fun evaluate(
        nowMillis: Long,
        sessionRequested: Boolean,
        connected: Boolean,
        state: String,
        framesRendered: Long,
    ): Action {
        if (!sessionRequested) {
            reset(nowMillis, connected, state, framesRendered)
            return Action.NONE
        }

        if (lastProgressAtMillis == 0L) {
            reset(nowMillis, connected, state, framesRendered)
            return Action.NONE
        }

        // CarLink's active callback is authoritative. A static CarPlay screen may legitimately
        // produce no new decoder frames and must not trigger a binder/engine restart.
        if (connected && state == ACTIVE_SESSION_STATE) {
            reset(nowMillis, connected, state, framesRendered)
            return Action.NONE
        }

        val progressed = connected != lastConnected || state != lastState ||
            framesRendered > lastFramesRendered
        lastConnected = connected
        lastState = state
        lastFramesRendered = framesRendered
        if (progressed) {
            lastProgressAtMillis = nowMillis
            recoveryStep = 0
            return Action.NONE
        }
        if (nowMillis - lastProgressAtMillis < stallTimeoutMillis) return Action.NONE

        lastProgressAtMillis = nowMillis
        val action = when (recoveryStep % RECOVERY_ACTIONS) {
            0 -> Action.RECONNECT_BINDER
            1 -> Action.RESTART_ENGINE
            else -> Action.RESTART_VIDEO
        }
        recoveryStep++
        return action
    }

    private fun reset(nowMillis: Long, connected: Boolean, state: String, framesRendered: Long) {
        lastProgressAtMillis = nowMillis
        lastConnected = connected
        lastState = state
        lastFramesRendered = framesRendered
        recoveryStep = 0
    }

    companion object {
        const val DEFAULT_STALL_TIMEOUT_MILLIS = 30_000L
        const val ACTIVE_SESSION_STATE = "wireless-4"
        private const val RECOVERY_ACTIONS = 3
    }
}
