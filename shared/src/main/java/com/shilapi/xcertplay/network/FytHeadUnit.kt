package com.shilapi.xcertplay.network

import android.content.Context
import android.net.ConnectivityManager
import android.os.Build

/**
 * Identifies the FYT / Unisoc UIS8581A aftermarket head unit (`uis8581a2h10_Automotive`, FYT `lsec`
 * firmware) that this deployment targets.
 *
 * Measured on the car (2026-10-12):
 * - `Build.PRODUCT` / `Build.MODEL` = `uis8581a2h10_Automotive`, `Build.DEVICE` = `uis8581a2h10`,
 *   `Build.MANUFACTURER` = `sprd`.
 * - Wi-Fi is Unisoc Marlin3 (`sprdwl`, interface `wlan0`). There is **no `p2p0` interface** and
 *   `ro.wifi.sup_sprd.wlan_plus` is `false`, so station/AP concurrency is unavailable and
 *   `WifiP2pManager.createGroup` has no interface to bind to.
 * - `ro.softap.sup_sprd` is `true` and `persist.lsec.wifiap` is `true`, so an app-owned
 *   `LocalOnlyHotspot` is still available.
 * - The unit additionally ships a vendor CarPlay stack (`/system/bin/CarplayService` running as
 *   root, plus `com.syu.carlink` "Car Link 2.0"), which owns the single Type-C port.
 *
 * Every use is gated by [detected], so other head units keep the stock behaviour, and unit tests
 * (where `Build` reports Robolectric) never take this path.
 */
object FytHeadUnit {

    private val identifiers: List<String>
        get() = runCatching {
            listOf(Build.PRODUCT, Build.DEVICE, Build.MODEL, Build.MANUFACTURER, Build.BRAND)
                .map { it.lowercase() }
        }.getOrDefault(emptyList())

    /** Product code reported by the head unit. */
    private const val PRODUCT = "uis8581a2h10"

    /** Unisoc SoC family shared by the FYT units covered by this firmware branch. */
    private const val SOC = "uis8581"

    val detected: Boolean = identifiers.any { id ->
        id.contains(PRODUCT) || id.contains(SOC)
    }

    /**
     * This unit publishes no `p2p0` interface, so Wi-Fi Direct group creation cannot succeed and
     * an app-owned LocalOnlyHotspot remains technically available. The vendor CarPlay path does
     * not use it: CarLink 2.0 starts the saved tethered hotspot and sends that same configuration.
     * This flag remains for persistence normalisation outside the vendor path.
     */
    val usesLocalOnlyHotspot: Boolean = detected

    /**
     * Wi-Fi Direct is the stock default; it is unavailable on this unit and must not be
     * preselected, otherwise wireless start-up fails before any hotspot is attempted.
     */
    val wifiDirectAvailable: Boolean = !detected

    /**
     * The stock build offers "car hotspot" and "app-owned hotspot" as two separate links. On this
     * unit they are merged into one automatic option because Wi-Fi Direct is unavailable. The FYT
     * vendor path always uses the saved car hotspot, matching CarLink 2.0; it never substitutes a
     * LocalOnlyHotspot with unrelated credentials.
     */
    val mergesHotspotModes: Boolean = detected

    /**
     * True while the head unit's own Wi-Fi tethering is running. Android's `WifiService` refuses to
     * start an app-owned LocalOnlyHotspot at the same time ("Cannot start localOnlyHotspot when
     * WiFi Tethering is active"), so the car hotspot has to be used instead while this is true.
     *
     * The hidden `getTetheredIfaces` API is the same one [ManualHotspotInterfaces] uses, and it is
     * observable on this firmware even without root.
     */
    fun carHotspotActive(context: Context): Boolean = runCatching {
        val manager = context.applicationContext.getSystemService(ConnectivityManager::class.java)
            ?: return@runCatching false
        val tethered = ConnectivityManager::class.java.getMethod("getTetheredIfaces")
            .invoke(manager) as? Array<*> ?: return@runCatching false
        tethered.filterIsInstance<String>().any {
            it.startsWith("wlan") || it.startsWith("ap") || it.startsWith("softap")
        }
    }.getOrDefault(false)
}
