package com.shilapi.xcertplay

/** Ordered gates before the FYT vendor engine may start a wireless CarPlay session. */
internal object VendorConnectionPreflight {
    enum class Action {
        OPEN_PHONE_PAIRING,
        REQUEST_RUNTIME_PERMISSIONS,
        START_SESSION,
    }

    fun decide(
        phoneConnected: Boolean,
        runtimePermissionsGranted: Boolean,
    ): Action = when {
        !phoneConnected -> Action.OPEN_PHONE_PAIRING
        !runtimePermissionsGranted -> Action.REQUEST_RUNTIME_PERMISSIONS
        else -> Action.START_SESSION
    }
}
