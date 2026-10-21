package com.shilapi.xcertplay.transport

/**
 * Tells a real RFCOMM link from one a head unit only claims.
 *
 * Reaching a phone takes a page, a service search and a channel setup: hundreds of milliseconds at
 * best. Some head units keep calls and music on the maker's own Bluetooth module and leave Android
 * an adapter whose sockets "connect" at once and never carry a byte. Waiting for iAP2 there tells
 * the driver nothing, and no retry can change it.
 */
object BluetoothLinkCheck {
    /** True for a connect that returned at once and has delivered nothing since. */
    fun looksUnreal(connectMillis: Long, bytesReceived: Long): Boolean =
        connectMillis < INSTANT_CONNECT_MILLIS && bytesReceived == 0L

    /**
     * The control experiment's answer. A real stack has to find a service on the phone before it
     * can connect to it, so a connect to a service no phone offers cannot succeed; where it does,
     * and at once, the adapter is accepting connections that go nowhere.
     */
    fun controlProvesUnreal(controlConnected: Boolean, controlMillis: Long): Boolean =
        controlConnected && controlMillis < INSTANT_CONNECT_MILLIS

    /**
     * A connect that returns sooner than this did not reach a phone. Units whose links are not
     * real answered in 4 to 17 ms; a unit with working Bluetooth never took less than 100 ms.
     */
    const val INSTANT_CONNECT_MILLIS = 50L

    /**
     * True for a connect the framework refused before the radio was reached.
     *
     * A stack that keeps its Bluetooth module to itself answers [BluetoothSocket.connect] with no
     * file descriptor at all, so the framework reports [SOCKET_REFUSED_MARK] in the first
     * milliseconds, without a page or a service search. The phone is never asked, and no retry can
     * reach it: the refusal is made above the radio.
     */
    fun refusedBeforeRadio(failure: Throwable?, connectMillis: Long): Boolean =
        connectMillis < INSTANT_CONNECT_MILLIS && describesRefusedSocket(failure)

    /** True when any cause in the chain carries the framework's own words for a socket it never opened. */
    fun describesRefusedSocket(failure: Throwable?): Boolean =
        generateSequence(failure) { it.cause }.take(MAX_CAUSE_DEPTH)
            .any { it.message?.contains(SOCKET_REFUSED_MARK) == true }

    /** What BlueDroid throws when `connectSocket` hands back no file descriptor. */
    const val SOCKET_REFUSED_MARK = "bt socket connect failed"

    private const val MAX_CAUSE_DEPTH = 8

    /**
     * How long an instant link may stay silent before the claim is put to a test. A link that
     * fails or ends sooner without a byte is tested at that moment instead.
     */
    const val SILENCE_MILLIS = 12_000L

    /** The words of the failure that reports it; the host screen matches on them. */
    const val UNREAL_MARK = "connections that are not real"
}
