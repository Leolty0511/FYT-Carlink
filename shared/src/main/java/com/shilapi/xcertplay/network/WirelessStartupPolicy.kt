package com.shilapi.xcertplay.network

import java.io.IOException

object WirelessStartupPolicy {
    const val HOTSPOT_READY_MILLIS = 15_000L
    const val INTERFACE_POLL_MILLIS = 250L
    const val STABLE_SAMPLES = 3
    const val FIRST_TCP_MILLIS = 30_000L
    const val MAX_STARTUP_RETRIES = 5
    const val STABLE_SESSION_MILLIS = 60_000L
}

enum class WirelessStartupFailure {
    HOTSPOT_NOT_READY, FIRST_TCP_TIMEOUT, HOTSPOT_CONFIGURATION,

    /** The head unit's Android Bluetooth accepts connections that reach no phone. */
    BLUETOOTH_UNUSABLE,

    /**
     * The head unit's Bluetooth stack hands apps no RFCOMM socket at all: the framework refuses the
     * connect before the radio is reached. Wireless CarPlay cannot run there, whatever the app does.
     */
    BLUETOOTH_SOCKET_REFUSED;

    /** False when no further attempt can change what went wrong. */
    val retryable: Boolean
        get() = this != HOTSPOT_CONFIGURATION && this != BLUETOOTH_UNUSABLE &&
            this != BLUETOOTH_SOCKET_REFUSED
}

class WirelessStartupException(val reason: WirelessStartupFailure, message: String) : IOException(message)
