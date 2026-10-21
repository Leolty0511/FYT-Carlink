package com.shilapi.xcertplay.network

import org.junit.Assert.*
import org.junit.Test

class LocalOnlyHotspotInterfacePolicyTest {
    private fun net(name: String, ip: String? = null, mac: String? = null) =
        LocalOnlyHotspotInterfacePolicy.Candidate(name, setOfNotNull(ip), mac)

    private fun net(name: String, ips: Set<String>, mac: String? = null) =
        LocalOnlyHotspotInterfacePolicy.Candidate(name, ips, mac)

    @Test fun waitsForApAddressInsteadOfAdvertisingEthernetOrStation() {
        val existing = listOf(net("eth0", "192.168.5.1"), net("wlan0", "192.168.31.73"))
        val before = existing.flatMap { it.addresses }.toSet()
        assertNull(LocalOnlyHotspotInterfacePolicy.select(existing + net("ap0"), before, setOf("wlan0"), null))
        val ap = net("ap0", "192.168.43.1")
        assertEquals(ap, LocalOnlyHotspotInterfacePolicy.select(existing + ap, before, setOf("wlan0"), null))
    }

    @Test fun excludesNewStationAddressAndForeignNetworks() {
        val networks = listOf(net("wlan0", "192.168.31.74"), net("p2p0", "192.168.49.1"),
            net("ccmni0", "10.0.0.1"), net("eth0", "192.168.5.1"), net("apcli0", "192.168.6.1"))
        assertNull(LocalOnlyHotspotInterfacePolicy.select(networks, emptySet(), setOf("wlan0"), null))
    }

    @Test fun refusesAmbiguityOrUnprovenExistingAp() {
        val ap = net("ap0", "192.168.43.1")
        assertNull(LocalOnlyHotspotInterfacePolicy.select(listOf(ap, net("wlan1", "192.168.44.1")), emptySet(), emptySet(), null))
        assertNull(LocalOnlyHotspotInterfacePolicy.select(listOf(ap), ap.addresses, emptySet(), null))
    }

    @Test fun configuredIdentityCanResolveAnExistingSharedApButNeverAnotherBssid() {
        val ap = net("ap0", "192.168.43.1", "00:11:22:33:44:55")
        assertEquals(ap, LocalOnlyHotspotInterfacePolicy.select(listOf(ap), ap.addresses, emptySet(), ap.bssid))
        assertNull(LocalOnlyHotspotInterfacePolicy.select(listOf(ap), emptySet(), emptySet(), "00:11:22:33:44:66"))
    }

    /**
     * On a unit where `getifaddrs` is refused (see [InterfaceInventory]) the AP may only be visible
     * through the IPv6 link-local address. That must still be enough to pick it.
     */
    @Test fun acceptsAnApThatIsOnlyVisibleThroughItsIpv6Address() {
        val ap = net("wlan0", setOf("fe80:0000:0000:0000:8c2e:ceff:fea1:b15d"))
        val stale = net("wlan0", setOf("fe80:0000:0000:0000:0000:0000:0000:0001"))
        assertEquals(
            ap,
            LocalOnlyHotspotInterfacePolicy.select(
                listOf(stale, ap), stale.addresses, emptySet(), null,
            ),
        )
        assertNull(LocalOnlyHotspotInterfacePolicy.select(listOf(stale), stale.addresses, emptySet(), null))
    }

    /**
     * The FYT / Unisoc unit keeps the station link and the local hotspot on the same `wlan0`, which
     * the framework also reports as the upstream interface name. The AP must still be found, because
     * it is the interface that gained the AP address.
     */
    @Test fun acceptsTheSharedNetdevThatGainedTheApAddress() {
        val baseline = setOf("192.168.6.57", "fe80:0000:0000:0000:0000:0000:0000:0001")
        val station = net("wlan0", baseline)
        val shared = net("wlan0", baseline + "192.168.43.1")
        assertEquals(
            shared,
            LocalOnlyHotspotInterfacePolicy.select(
                listOf(station, shared), baseline, setOf("wlan0"), null,
            ),
        )
        // Without a baseline the upstream name still cannot be proven to be the AP.
        assertNull(
            LocalOnlyHotspotInterfacePolicy.select(
                listOf(shared), emptySet(), setOf("wlan0"), null,
            ),
        )
    }
}
