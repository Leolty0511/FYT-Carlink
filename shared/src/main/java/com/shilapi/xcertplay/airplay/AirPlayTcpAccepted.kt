package com.shilapi.xcertplay.airplay

import com.shilapi.xcertplay.network.InterfaceInventory
import java.net.InetAddress
import java.util.concurrent.atomic.AtomicLong

/** 每次绑定生成独立身份，防止旧 accept 和旧清理作用于新 listener。 */
class AirPlayListenerIdentity(val generation: Int) {
    val id: Long = nextId.incrementAndGet()
    private companion object { val nextId = AtomicLong() }
}

data class AirPlayTcpAccepted(
    val listener: AirPlayListenerIdentity,
    val internal: Boolean,
    val acceptedAtNanos: Long,
)

/**
 * Whether this connection came from the device itself rather than from a phone.
 *
 * "Cannot tell" must mean external. An unproven peer is a real CarPlay session, and reporting it as
 * internal would suppress the session-active callback for every phone that ever connects — which is
 * what `getifaddrs`-based interface lookup does on units that deny it (see [InterfaceInventory]).
 */
internal fun isInternalAirPlayPeer(peer: InetAddress, local: InetAddress): Boolean =
    peer.isLoopbackAddress || peer == local || InterfaceInventory.owns(peer)
