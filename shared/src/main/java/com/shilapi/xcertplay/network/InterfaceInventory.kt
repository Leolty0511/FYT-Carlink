package com.shilapi.xcertplay.network

import android.content.Context
import android.net.ConnectivityManager
import java.io.File
import java.net.Inet4Address
import java.net.Inet6Address
import java.net.InetAddress
import java.net.NetworkInterface
import java.util.Collections

/**
 * One interface, read without `java.net.NetworkInterface` when that API cannot be used.
 *
 * [up] already carries the per-unit correction applied by [hotspotInterfaceIsUp]; callers must not
 * re-derive it.
 */
internal class InterfaceRecord(
    val name: String,
    val index: Int,
    val up: Boolean,
    val loopback: Boolean,
    val multicast: Boolean,
    val hardwareAddress: ByteArray?,
    val addresses: List<InetAddress>,
    val wireless: Boolean,
) {
    fun siteLocalIpv4Addresses(): Set<String> =
        addresses.filterIsInstance<Inet4Address>().filter { it.isSiteLocalAddress }
            .mapNotNull { it.hostAddress }.toSet()

    /** Every address as text, for "did this interface gain an address" comparisons. */
    fun addressStrings(): Set<String> = addresses.mapNotNull { it.hostAddress }.toSet()

    /** The MAC, or the EUI-64 MAC carried by an IPv6 link-local address when the MAC is masked. */
    fun interfaceBssid(): String? =
        hardwareAddress?.toMacAddressString()
            ?.takeUnless { it == "02:00:00:00:00:00" || it == "00:00:00:00:00:00" }
            ?: addresses.filterIsInstance<Inet6Address>()
                .firstNotNullOfOrNull { it.toEui64MacAddress() }

    /** IPv4 first, then the scoped link-local IPv6, matching [HotspotAddressPolicy]. */
    fun hotspotAddress(): InetAddress? {
        val address = HotspotAddressPolicy.select(addresses) ?: return null
        if (address !is Inet6Address || address.scopeId == index) return address
        return runCatching { Inet6Address.getByAddress(null, address.address, index) }
            .getOrDefault(address)
    }
}

/**
 * Reads the interface table the way this kernel allows.
 *
 * `java.net.NetworkInterface.getNetworkInterfaces()` calls `getifaddrs()`, which asks the kernel
 * for `RTM_GETLINK` before `RTM_GETADDR`. AOSP only permits `RTM_GETLINK` for uid < 10000 (bionic
 * `libc/bionic/ifaddrs.cpp`: "SELinux policy only allows RTM_GETLINK messages to be sent by system
 * apps"), so on an ordinary application the request is refused, `getifaddrs()` reports failure and
 * *every* interface disappears — even though the AP is up and holds an address. Measured on the
 * FYT / Unisoc UIS8581A unit: `ifaddrs: Failed to send RTM_GETLINK request` at ~10 Hz from the
 * app's own uid 10127, while `/sys/class/net/wlan0/{flags,address,ifindex}` and
 * `/proc/net/if_inet6` stay readable.
 *
 * The Java API is still tried first, so a healthy platform keeps its previous behaviour exactly.
 */
internal object InterfaceInventory {
    private const val IFF_UP = 0x1
    private const val IFF_LOOPBACK = 0x8
    private const val IFF_MULTICAST = 0x1000

    /** Every interface this process can see, preferring the platform API. */
    fun read(
        log: (String) -> Unit = {},
        supplement: Map<String, List<InetAddress>> = emptyMap(),
    ): List<InterfaceRecord> {
        javaRecords()?.takeIf { it.isNotEmpty() }?.let { return it }
        val records = procRecords(supplement)
        val described = records.joinToString(", ") { record ->
            "${record.name}#${record.index}${if (record.addresses.isEmpty()) "(no-address)" else "(address)"}"
        }.ifEmpty { "none" }
        log(
            "interface inventory: java.net.NetworkInterface reported no interface " +
                "(`getifaddrs` needs the app-denied RTM_GETLINK); sysfs + /proc give [$described]",
        )
        return records
    }

    /** One interface by name, or null when it is not present. */
    fun find(
        name: String?,
        supplement: Map<String, List<InetAddress>> = emptyMap(),
    ): InterfaceRecord? =
        name?.takeIf { it.isNotBlank() }?.let { wanted ->
            runCatching { NetworkInterface.getByName(wanted) }.getOrNull()?.let(::javaRecord)
                ?: read(supplement = supplement).firstOrNull { it.name == wanted }
        }

    /**
     * The addresses the framework reports per interface.
     *
     * `/proc/net/if_inet6` lists IPv6 only, so IPv4 has to come from somewhere else: this kernel
     * refuses `getifaddrs` and `/proc/net/fib_trie` is root-only. `LinkProperties` of the app's own
     * Wi-Fi networks — which includes the local-only hotspot the app itself requested — is readable
     * and carries the addressed prefix, so it is what restores IPv4 in the fallback.
     */
    fun frameworkAddresses(connectivity: ConnectivityManager?): Map<String, List<InetAddress>> =
        runCatching {
            connectivity?.allNetworks.orEmpty()
                .mapNotNull { network ->
                    val properties = runCatching { connectivity?.getLinkProperties(network) }.getOrNull()
                    val name = properties?.interfaceName ?: return@mapNotNull null
                    name to properties.linkAddresses.map { link -> link.address }
                }
                .groupBy({ it.first }, { it.second })
                .mapValues { (_, groups) -> groups.flatten().distinct() }
        }.getOrDefault(emptyMap())

    /** [frameworkAddresses] for a caller that holds a [Context] instead of the manager. */
    fun frameworkAddresses(context: Context): Map<String, List<InetAddress>> =
        frameworkAddresses(context.applicationContext.getSystemService(ConnectivityManager::class.java))

    /** Whether [address] is carried by one of this device's own interfaces. */
    fun owns(address: InetAddress): Boolean =
        read().any { record -> record.addresses.any { it == address } }

    private fun javaRecords(): List<InterfaceRecord>? = runCatching {
        Collections.list(NetworkInterface.getNetworkInterfaces()).map(::javaRecord)
    }.getOrNull()

    private fun javaRecord(iface: NetworkInterface) = InterfaceRecord(
        name = iface.name,
        index = runCatching { iface.index }.getOrDefault(0),
        up = hotspotInterfaceIsUp(iface),
        loopback = runCatching { iface.isLoopback }.getOrDefault(false),
        multicast = runCatching { iface.supportsMulticast() }.getOrDefault(false),
        hardwareAddress = runCatching { iface.hardwareAddress }.getOrNull(),
        addresses = runCatching { Collections.list(iface.inetAddresses) }.getOrDefault(emptyList()),
        wireless = wirelessInterfaceName(iface.name) || wirelessDirectory(iface.name),
    )

    /** `/sys/class/net` for identity and flags, `/proc/net/if_inet6` + [supplement] for addresses. */
    private fun procRecords(supplement: Map<String, List<InetAddress>>): List<InterfaceRecord> {
        val root = File("/sys/class/net")
        val names = runCatching { root.list() }.getOrNull().orEmpty()
        if (names.isEmpty()) return emptyList()
        val addressesByName = ipv6AddressesByName()
        return names.sorted().map { name ->
            val directory = File(root, name)
            val flags = runCatching { directory.resolve("flags").readText().trim().toInt(16) }
                .getOrDefault(0)
            InterfaceRecord(
                name = name,
                index = runCatching { directory.resolve("ifindex").readText().trim().toInt() }
                    .getOrDefault(0),
                up = flags and IFF_UP != 0,
                loopback = flags and IFF_LOOPBACK != 0,
                multicast = flags and IFF_MULTICAST != 0,
                hardwareAddress = runCatching { directory.resolve("address").readText() }
                    .getOrNull()?.trim()?.let(::parseMacAddress),
                addresses = (supplement[name].orEmpty() + addressesByName[name].orEmpty()).distinct(),
                wireless = wirelessDirectory(name),
            )
        }
    }

    private fun wirelessDirectory(name: String): Boolean =
        runCatching { File("/sys/class/net/$name/wireless").isDirectory }.getOrDefault(false)

    /**
     * `/proc/net/if_inet6` is world-readable and lists every IPv6 address with its interface index:
     * `<32 hex address> <ifindex> <prefixlen> <scope> <flags> <name>`. Link-local addresses carry
     * the interface scope, which `CarPlayController` requires before it will bind IPv6.
     */
    private fun ipv6AddressesByName(): Map<String, List<InetAddress>> {
        val lines = runCatching { File("/proc/net/if_inet6").readLines() }.getOrNull().orEmpty()
        val byName = mutableMapOf<String, MutableList<InetAddress>>()
        for (line in lines) {
            val fields = line.trim().split(Regex("\\s+"))
            if (fields.size < 6) continue
            val address = parseIpv6(fields[0], fields[1].toIntOrNull(16) ?: 0) ?: continue
            byName.getOrPut(fields[5]) { mutableListOf() }.add(address)
        }
        return byName
    }

    private fun parseIpv6(hex: String, index: Int): InetAddress? {
        if (hex.length != 32) return null
        val bytes = ByteArray(16) { offset ->
            hex.substring(offset * 2, offset * 2 + 2).toIntOrNull(16)?.toByte() ?: return null
        }
        val linkLocal = (bytes[0].toInt() and 0xff) == 0xfe && (bytes[1].toInt() and 0xc0) == 0x80
        return runCatching {
            if (linkLocal && index > 0) Inet6Address.getByAddress(null, bytes, index)
            else Inet6Address.getByAddress(null, bytes, 0)
        }.getOrNull()
    }

    private fun parseMacAddress(value: String): ByteArray? {
        val parts = value.split(':')
        if (parts.size != 6 || parts.any { it.length != 2 }) return null
        return ByteArray(6) { offset -> parts[offset].toIntOrNull(16)?.toByte() ?: return null }
    }
}

private fun ByteArray.toMacAddressString(): String =
    joinToString(":") { byte -> "%02x".format(byte.toInt() and 0xff) }

/**
 * The MAC an IPv6 link-local address was built from (`fe80::/64` + EUI-64), used when the hardware
 * address is masked but the BSSID still has to be reported.
 */
private fun Inet6Address.toEui64MacAddress(): String? {
    val bytes = address
    if (!isLinkLocalAddress || bytes.size != 16 || bytes[11] != 0xff.toByte() ||
        bytes[12] != 0xfe.toByte()
    ) {
        return null
    }
    return byteArrayOf(
        (bytes[8].toInt() xor 0x02).toByte(),
        bytes[9],
        bytes[10],
        bytes[13],
        bytes[14],
        bytes[15],
    ).toMacAddressString()
}
