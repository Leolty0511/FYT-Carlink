package com.shilapi.xcertplay.network

/**
 * onStarted can precede AP address assignment. Never fill that gap with another network.
 *
 * Addresses are compared as text and may be IPv4 or IPv6: on a unit where `getifaddrs` cannot be
 * used (see [InterfaceInventory]) only IPv6 addresses are readable, and the AP must still be found.
 *
 * An AP and the station link can share one netdev. The FYT / Unisoc UIS8581A unit puts both on
 * `wlan0` (STA+AP concurrency on a single interface; `dumpsys connectivity` reports the local-only
 * network as `InterfaceName: wlan0`), which is also the interface name the framework reports for the
 * station. Excluding a candidate by name alone would therefore exclude the AP itself, so an upstream
 * interface is only refused while it has not gained an address — that shape is the link the device
 * already had, not the AP that was just created.
 */
internal object LocalOnlyHotspotInterfacePolicy {
    private val NAME_PATTERN = Regex("(?:ap|wlan|swlan|softap)[0-9]+")

    data class Candidate(val name: String, val addresses: Set<String>, val bssid: String?)

    fun select(
        candidates: List<Candidate>,
        previousAddresses: Set<String>,
        upstreamInterfaces: Set<String>,
        configuredBssid: String?,
    ): Candidate? {
        val possible = candidates.filter { candidate ->
            candidate.addresses.isNotEmpty() &&
                candidate.name.matches(NAME_PATTERN) &&
                isNotAnUnchangedUpstream(candidate, previousAddresses, upstreamInterfaces)
        }
        if (configuredBssid != null) {
            return possible.singleOrNull { it.bssid.equals(configuredBssid, ignoreCase = true) }
        }
        return possible.filter { candidate ->
            candidate.addresses.any { it !in previousAddresses }
        }.singleOrNull()
    }

    /**
     * An upstream interface that gained nothing since the baseline is the station or ethernet link.
     *
     * A missing baseline proves nothing, so upstream names stay refused; that keeps the check
     * fail-closed when the pre-start sample could not be taken.
     */
    private fun isNotAnUnchangedUpstream(
        candidate: Candidate,
        previousAddresses: Set<String>,
        upstreamInterfaces: Set<String>,
    ): Boolean {
        if (candidate.name !in upstreamInterfaces) return true
        if (previousAddresses.isEmpty()) return false
        return candidate.addresses.any { it !in previousAddresses }
    }
}
