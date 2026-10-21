package com.shilapi.xcertplay.network

import android.annotation.SuppressLint
import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.TetheringInterface
import android.net.TetheringManager
import android.os.Build
import androidx.annotation.RequiresApi
import java.io.Closeable
import java.io.File
import java.net.NetworkInterface

internal class ManualHotspotInterfaces(
    private val context: Context,
    private val onDiagnostic: (String) -> Unit = {},
) : Closeable {
    private val connectivity = context.getSystemService(ConnectivityManager::class.java)
    private val publicTethering = if (Build.VERSION.SDK_INT >= 36) PublicTethering(context) else null
    private var lastLegacyDiagnostic: String? = null

    fun sample(): HotspotNetworkSnapshot {
        val ap = publicTethering?.interfaces ?: legacyApInterfaces()
        val before = runCatching { connectivity?.activeNetwork }
        val upstreams = runCatching {
            checkNotNull(connectivity)
            connectivity.allNetworks.mapNotNull { network ->
                val caps = checkNotNull(connectivity.getNetworkCapabilities(network))
                val links = checkNotNull(connectivity.getLinkProperties(network))
                links.interfaceName?.takeIf { caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) }
            }.toSet()
        }.getOrNull()
        val defaultName = runCatching {
            before.getOrNull()?.let { connectivity?.getLinkProperties(it)?.interfaceName }
        }.getOrNull()
        val interfaces = InterfaceInventory.read(
            onDiagnostic,
            InterfaceInventory.frameworkAddresses(connectivity),
        )
            .filterNot { it.loopback }
            .map { record ->
                HotspotInterfaceSnapshot(
                    record.name, record.index, record.up, record.addresses, record.wireless,
                )
            }
        val after = runCatching { connectivity?.activeNetwork }
        return HotspotNetworkSnapshot(
            interfaces, ap, upstreams, defaultName,
            consistent = before.isSuccess && after.isSuccess && before.getOrNull() == after.getOrNull(),
            apEnabled = CarHotspotStatus.isEnabled(context),
        )
    }

    // 旧平台只使用允许读取的结果；接口归属读不到时保持 unknown，不放宽普通网卡资格。
    @SuppressLint("PrivateApi")
    private fun legacyApInterfaces(): Set<String>? = runCatching {
        val manager = checkNotNull(connectivity)
        val tethered = ConnectivityManager::class.java.getMethod("getTetheredIfaces")
            .invoke(manager) as Array<*>
        val regexes = ConnectivityManager::class.java.getMethod("getTetherableWifiRegexs")
            .invoke(manager) as Array<*>
        val names = tethered.filterIsInstance<String>()
        val patterns = regexes.filterIsInstance<String>()
        val ap = legacyHotspotInterfaces(names, patterns)
        val diagnostic = "legacy hotspot ownership=${if (ap == null) "unobservable" else "observed"} " +
            "tethered=$names wifiRegexes=$patterns matched=$ap"
        if (diagnostic != lastLegacyDiagnostic) {
            lastLegacyDiagnostic = diagnostic
            onDiagnostic(diagnostic)
        }
        ap
    }.getOrNull()

    override fun close() { publicTethering?.close() }

    @RequiresApi(36)
    private class PublicTethering(context: Context) : Closeable {
        @Volatile var interfaces: Set<String>? = null
            private set
        private val manager = context.getSystemService(TetheringManager::class.java)
        private val callback = object : TetheringManager.TetheringEventCallback {
            override fun onTetheredInterfacesChanged(interfaces: Set<TetheringInterface>) {
                this@PublicTethering.interfaces = interfaces.filter { it.type == TetheringManager.TETHERING_WIFI }
                    .map { it.getInterface() }.toSet()
            }
        }
        private val registered = runCatching {
            checkNotNull(manager).registerTetheringEventCallback(context.mainExecutor, callback)
        }.isSuccess

        override fun close() {
            if (registered) runCatching { manager?.unregisterTetheringEventCallback(callback) }
        }
    }
}

internal fun legacyHotspotInterfaces(tethered: List<String>, wifiRegexes: List<String>): Set<String>? {
    if (wifiRegexes.isEmpty()) return null
    val patterns = wifiRegexes.map(::Regex)
    val matched = tethered.filter { name -> patterns.any { it.matches(name) } }.toSet()
    // 厂商可能动态使用 wlan0，而静态配置仍写 softap0；匹配失败不能证明没有热点。
    return matched.takeUnless { tethered.isNotEmpty() && it.isEmpty() }
}

internal fun wirelessInterfaceName(name: String): Boolean =
    name.startsWith("wlan") || name.startsWith("swlan") || name.startsWith("ap") ||
        name.contains("softap", ignoreCase = true) || name.startsWith("wifi") || name.startsWith("p2p")

/** Linux `IFF_UP` (bit 0 of `/sys/class/net/<iface>/flags`). */
private const val IFF_UP = 0x1

/**
 * Whether an interface counts as up for hotspot discovery.
 *
 * The stock check is the Java view (`NetworkInterface.isUp`). On the FYT / Unisoc unit the SoftAP
 * netdev is fully operational — `hostapd` runs, `SoftApManager` reports `StartedState` and `wlan0`
 * holds `192.168.43.1/24` — yet the Java view reports it down until a station associates, because
 * this FullMAC driver reports `NO-CARRIER` / `operstate=down` in AP mode with no clients. The
 * kernel administrative flag `IFF_UP` is set (`/sys/class/net/<name>/flags`, e.g. `0x1003`), which
 * is the correct signal here, so it is used as a fallback on this unit only.
 */
internal fun hotspotInterfaceIsUp(iface: NetworkInterface): Boolean {
    val javaSaysUp = runCatching { iface.isUp }.getOrDefault(false)
    if (javaSaysUp) return true
    if (!FytHeadUnit.detected) return false
    return runCatching {
        val raw = File("/sys/class/net/${iface.name}/flags").readText().trim()
        raw.removePrefix("0x").toInt(16) and IFF_UP != 0
    }.getOrDefault(false)
}
