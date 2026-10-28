package com.shilapi.xcertplay.vendor

import android.Manifest
import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothSocket
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.net.wifi.WifiConfiguration
import android.net.wifi.WifiManager
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.ParcelUuid
import android.os.SystemClock
import android.provider.Settings
import com.shilapi.xcertplay.network.WirelessHotspotInfo
import java.util.Locale
import java.util.UUID

internal object VendorWirelessProtocol {
    val PRIMARY_UUID: UUID = UUID.fromString("00000000-deca-fade-deca-deafdecacafe")
    val ALTERNATE_UUID: UUID = UUID.fromString("fecacade-afde-cade-defa-cade00000000")

    fun uuidAnnouncement(uuid: UUID): String =
        "UU" + uuid.toString().replace("-", "").uppercase(Locale.ROOT)

    fun callbackState(serverState: Int): String = "wireless-$serverState"

    fun shouldStartHotspot(wirelessState: Int): Boolean = wirelessState == 1

    /**
     * CarLink keeps announcing the selected phone until the engine reports a live link.
     *
     * Stock CarLink gates `syncBluetoothInfo` on its own link state, which is still idle because
     * it announces the phone *before* command 200. T-link follows the engine's own handshake
     * instead (200 -> callback 109 -> hotspot -> 225), so by the time it announces the phone the
     * engine has already left state 0. Matching the *intent* rather than the raw constant means
     * announcing while the link is not established yet.
     */
    fun shouldSyncBluetooth(serverState: Int): Boolean = !isProjectionActive(serverState)

    /**
     * Stock CarLink debounces repeat hotspot requests with `JobInfo.MIN_BACKOFF_MILLIS`
     * (30 s). Re-arming `startTethering` any sooner restarts the soft AP underneath the iPhone,
     * which is exactly when the Wi-Fi leg of the wireless handshake never completes.
     */
    fun shouldRepeatHotspotRequest(lastRequestMillis: Long, nowMillis: Long): Boolean =
        lastRequestMillis == Long.MIN_VALUE || nowMillis - lastRequestMillis >= 30_000L

    fun isProjectionActive(serverState: Int): Boolean = serverState == 4
}

enum class VendorCarplayAudioChannel {
    MEDIA,
    SECONDARY,
}

data class VendorCarplayAudioEvent(
    val channel: VendorCarplayAudioChannel,
    val active: Boolean,
)

/** Decodes the exact audio flags published by the current CarLink 2.0 callback. */
object VendorCarplayAudioProtocol {
    fun decode(rawState: Int): VendorCarplayAudioEvent? = when (rawState and 0xFFF) {
        0, 1 -> VendorCarplayAudioEvent(
            channel = VendorCarplayAudioChannel.MEDIA,
            active = rawState == 1,
        )
        2048, 2049 -> VendorCarplayAudioEvent(
            channel = VendorCarplayAudioChannel.SECONDARY,
            active = rawState == 2049,
        )
        else -> null
    }
}

internal object VendorBluetoothUuidPolicy {
    fun containsCarplayService(uuids: Collection<UUID>): Boolean = uuids.any {
        it == VendorWirelessProtocol.PRIMARY_UUID || it == VendorWirelessProtocol.ALTERNATE_UUID
    }

    fun shouldRequestSdp(
        uuids: Collection<UUID>,
        refreshInFlight: Boolean,
        nowMillis: Long,
        lastRequestMillis: Long,
        retryIntervalMillis: Long,
    ): Boolean = !containsCarplayService(uuids) &&
        !refreshInFlight &&
        (lastRequestMillis == Long.MIN_VALUE || nowMillis - lastRequestMillis >= retryIntervalMillis)

    fun isSelectedDevice(selectedAddress: String?, receivedAddress: String?): Boolean =
        !selectedAddress.isNullOrBlank() &&
            !receivedAddress.isNullOrBlank() &&
            selectedAddress.equals(receivedAddress, ignoreCase = true)
}

internal data class VendorHotspotConfiguration(
    val ssid: String,
    val password: String,
    val channel: Int,
    val security: Int,
    val band: Int,
) {
    companion object {
        /** Maps the live Android hotspot callback to CarLink 2.0 command 225 fields. */
        fun from(info: WirelessHotspotInfo): VendorHotspotConfiguration = VendorHotspotConfiguration(
            ssid = info.ssid,
            password = info.passphrase,
            channel = info.channel,
            security = info.security.wireValue,
            band = if (info.frequencyMHz in 5_160..5_895 || info.bandLabel == "5 GHz") 1 else 0,
        )
    }
}

internal object VendorHotspotConfigurationReader {
    fun read(context: Context): VendorHotspotConfiguration? = runCatching {
        val wifi = context.applicationContext.getSystemService(WifiManager::class.java)
            ?: return null
        val configuration = WifiManager::class.java.getMethod("getWifiApConfiguration")
            .invoke(wifi) as? WifiConfiguration ?: return null
        fromLegacyConfiguration(configuration)
    }.getOrNull()

    internal fun fromLegacyConfiguration(configuration: WifiConfiguration): VendorHotspotConfiguration? {
        val ssid = unquote(configuration.SSID) ?: return null
        val password = unquote(configuration.preSharedKey).orEmpty()
        val channel = runCatching {
            WifiConfiguration::class.java.getField("apChannel").getInt(configuration)
        }.getOrDefault(0)
        val legacyBand = runCatching {
            WifiConfiguration::class.java.getField("apBand").getInt(configuration)
        }.getOrDefault(0)
        return VendorHotspotConfiguration(
            ssid = ssid,
            password = password,
            channel = channel,
            security = if (configuration.allowedKeyManagement?.get(4) == true) 2 else 0,
            band = if (legacyBand == 1) 1 else 0,
        )
    }

    internal fun unquote(value: String?): String? = value
        ?.takeIf { it.isNotBlank() }
        ?.let { if (it.length >= 2 && it.first() == '"' && it.last() == '"') it.substring(1, it.length - 1) else it }
}

/**
 * Bluetooth SPP bridge used by current Carlink 2.0 builds.
 *
 * CarplayServer owns iAP2, MFi and Wi-Fi negotiation, but the APK still owns the RFCOMM socket.
 * Bytes from callback 111 go to the socket; bytes read from the socket return through command 230.
 */
internal class VendorBluetoothBridge(
    context: Context,
    private val preferredDeviceAddress: () -> String?,
    private val sendIdentity: (name: String, address: String) -> Unit,
    private val sendControl: (String) -> Unit,
    private val sendData: (buffer: ByteArray, count: Int) -> Unit,
    private val onUuidsRefreshed: () -> Unit,
    private val onTransportStateChanged: (connected: Boolean) -> Unit,
    private val diagnostics: (String) -> Unit,
) {
    private val appContext = context.applicationContext
    private val mainHandler = Handler(Looper.getMainLooper())
    private val lock = Any()
    private val writeLock = Any()

    @Volatile private var closed = false
    @Volatile private var connecting = false
    @Volatile private var socket: BluetoothSocket? = null
    @Volatile private var selectedDevice: BluetoothDevice? = null
    @Volatile private var uuidReceiverRegistered = false
    @Volatile private var sdpRefreshAddress: String? = null
    @Volatile private var lastSdpRequestMillis = Long.MIN_VALUE

    /** True when the phone came from FYT's own module, which bypasses Android's UUID cache. */
    @Volatile private var selectedFromPhoneModule = false

    private val sdpTimeout = Runnable {
        val timedOutAddress = synchronized(lock) {
            sdpRefreshAddress.also { sdpRefreshAddress = null }
        }
        if (timedOutAddress != null && !closed) {
            diagnostics("vendor Bluetooth bridge: SDP UUID refresh timed out")
        }
    }

    private val uuidReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (closed || intent?.action != BluetoothDevice.ACTION_UUID) return
            @Suppress("DEPRECATION")
            val device = intent.getParcelableExtra<BluetoothDevice>(BluetoothDevice.EXTRA_DEVICE) ?: return
            val receivedAddress = runCatching { device.address }.getOrNull()
            val selectedAddress = runCatching { selectedDevice?.address }.getOrNull()
            if (!VendorBluetoothUuidPolicy.isSelectedDevice(selectedAddress, receivedAddress)) return

            val announcedUuids = intent.getParcelableArrayExtra(BluetoothDevice.EXTRA_UUID)
                ?.mapNotNull { (it as? ParcelUuid)?.uuid }
                .orEmpty()
            val uuids = announcedUuids.ifEmpty {
                runCatching { device.uuids?.map { it.uuid }.orEmpty() }.getOrDefault(emptyList())
            }
            synchronized(lock) { sdpRefreshAddress = null }
            mainHandler.removeCallbacks(sdpTimeout)
            val hasCarplayService = VendorBluetoothUuidPolicy.containsCarplayService(uuids)
            diagnostics(
                "vendor Bluetooth bridge: SDP UUID refresh completed " +
                    "count=${uuids.size} carplay=$hasCarplayService",
            )
            if (hasCarplayService) onUuidsRefreshed()
        }
    }

    fun advertise(): Boolean {
        val adapter = adapter() ?: run {
            diagnostics("vendor Bluetooth unavailable")
            return false
        }
        val device = findPhone(adapter) ?: run {
            diagnostics("vendor Bluetooth bridge: selected CarPlay phone is not paired")
            return false
        }
        selectedDevice = device
        val uuids = runCatching { device.uuids?.map { it.uuid }.orEmpty() }.getOrDefault(emptyList())
        val announced = when {
            VendorBluetoothUuidPolicy.containsCarplayService(uuids) -> uuids
            selectedFromPhoneModule -> {
                // FYT's BLINK stack owns Bluetooth and never fills Android's UUID cache, so SDP
                // always comes back empty even while the iPhone is connected. CarLink announces the
                // fixed CarPlay service in that case; without it the engine has nothing to dial and
                // the session never leaves "opening CarPlay".
                diagnostics("vendor Bluetooth bridge: no Android UUID cache; announcing the CarPlay service")
                listOf(VendorWirelessProtocol.PRIMARY_UUID)
            }
            else -> {
                requestUuidRefresh(device, uuids)
                return false
            }
        }

        val localName = runCatching { adapter.name }.getOrNull().orEmpty()
            .ifBlank { Settings.Secure.getString(appContext.contentResolver, "bluetooth_name").orEmpty() }
        val localAddress = Settings.Secure.getString(
            appContext.contentResolver,
            "bluetooth_address",
        ).orEmpty().ifBlank { runCatching { adapter.address }.getOrNull().orEmpty() }
        if (localName.isNotBlank() && localAddress.isNotBlank()) {
            sendIdentity(localName, localAddress)
        } else {
            diagnostics("vendor Bluetooth bridge: local Bluetooth identity is incomplete")
        }

        sendControl("IB")
        sendControl("US")
        announced.forEach { sendControl(VendorWirelessProtocol.uuidAnnouncement(it)) }
        sendControl("UE")
        diagnostics("vendor Bluetooth bridge: advertised ${announced.size} phone UUIDs")
        return true
    }

    fun connect() {
        val device = selectedDevice ?: adapter()?.let(::findPhone) ?: run {
            diagnostics("vendor Bluetooth bridge: connect requested without a paired phone")
            return
        }
        synchronized(lock) {
            if (closed || connecting || socket?.isConnected == true) return
            connecting = true
        }
        Thread({ connectAndRead(device) }, "VendorCarplayBluetooth").apply {
            isDaemon = true
            start()
        }
    }

    fun isTransportConnected(): Boolean = socket?.isConnected == true

    fun write(bytes: ByteArray) {
        val current = socket ?: run {
            diagnostics("vendor Bluetooth bridge: dropped ${bytes.size} outbound bytes before RFCOMM connected")
            return
        }
        try {
            synchronized(writeLock) {
                current.outputStream.write(bytes)
                current.outputStream.flush()
            }
        } catch (error: Exception) {
            diagnostics("vendor Bluetooth bridge write failed: ${error.javaClass.simpleName}")
            disconnect(sendStopped = true)
            onTransportStateChanged(false)
        }
    }

    fun disconnect(sendStopped: Boolean) {
        val current = synchronized(lock) {
            connecting = false
            socket.also { socket = null }
        }
        runCatching { current?.close() }
        if (sendStopped && current != null && !closed) sendControl("SS")
    }

    fun shutdown() {
        disconnect(sendStopped = true)
        closed = true
        selectedDevice = null
        synchronized(lock) { sdpRefreshAddress = null }
        mainHandler.removeCallbacks(sdpTimeout)
        if (uuidReceiverRegistered) {
            runCatching { appContext.unregisterReceiver(uuidReceiver) }
            uuidReceiverRegistered = false
        }
    }

    private fun requestUuidRefresh(device: BluetoothDevice, uuids: Collection<UUID>) {
        val address = runCatching { device.address }.getOrNull() ?: return
        val now = SystemClock.elapsedRealtime()
        val shouldRequest = synchronized(lock) {
            VendorBluetoothUuidPolicy.shouldRequestSdp(
                uuids = uuids,
                refreshInFlight = sdpRefreshAddress != null,
                nowMillis = now,
                lastRequestMillis = lastSdpRequestMillis,
                retryIntervalMillis = SDP_RETRY_INTERVAL_MILLIS,
            ).also { request ->
                if (request) {
                    sdpRefreshAddress = address
                    lastSdpRequestMillis = now
                }
            }
        }
        if (!shouldRequest) return
        if (!ensureUuidReceiverRegistered()) {
            synchronized(lock) { sdpRefreshAddress = null }
            diagnostics("vendor Bluetooth bridge: could not register SDP UUID receiver")
            return
        }

        val started = runCatching { device.fetchUuidsWithSdp() }.getOrDefault(false)
        if (!started) {
            synchronized(lock) { sdpRefreshAddress = null }
            diagnostics("vendor Bluetooth bridge: SDP UUID refresh request was rejected")
            return
        }
        mainHandler.removeCallbacks(sdpTimeout)
        mainHandler.postDelayed(sdpTimeout, SDP_TIMEOUT_MILLIS)
        diagnostics("vendor Bluetooth bridge: requested SDP UUID refresh for selected phone")
    }

    private fun ensureUuidReceiverRegistered(): Boolean {
        synchronized(lock) {
            if (uuidReceiverRegistered) return true
            val registered = runCatching {
                val filter = IntentFilter(BluetoothDevice.ACTION_UUID)
                if (Build.VERSION.SDK_INT >= 33) {
                    appContext.registerReceiver(
                        uuidReceiver,
                        filter,
                        null,
                        mainHandler,
                        Context.RECEIVER_EXPORTED,
                    )
                } else {
                    appContext.registerReceiver(uuidReceiver, filter, null, mainHandler)
                }
            }.isSuccess
            uuidReceiverRegistered = registered
            return registered
        }
    }

    private fun connectAndRead(device: BluetoothDevice) {
        var current: BluetoothSocket? = null
        try {
            current = device.createRfcommSocketToServiceRecord(VendorWirelessProtocol.PRIMARY_UUID)
            current.connect()
            synchronized(lock) {
                if (closed) {
                    current.close()
                    return
                }
                socket = current
                connecting = false
            }
            diagnostics("vendor Bluetooth bridge: RFCOMM connected")
            onTransportStateChanged(true)
            sendControl("SV")
            val input = current.inputStream
            while (!closed && socket === current) {
                val buffer = ByteArray(BUFFER_BYTES)
                val count = input.read(buffer)
                if (count < 0) break
                if (count > 0) sendData(buffer, count)
            }
        } catch (error: Exception) {
            if (!closed) diagnostics("vendor Bluetooth bridge connect/read failed: ${error.javaClass.simpleName}")
        } finally {
            val wasCurrent = synchronized(lock) {
                connecting = false
                if (socket === current) {
                    socket = null
                    true
                } else {
                    false
                }
            }
            runCatching { current?.close() }
            if (wasCurrent && !closed) {
                sendControl("SS")
                onTransportStateChanged(false)
            }
        }
    }

    private fun adapter(): BluetoothAdapter? {
        if (Build.VERSION.SDK_INT >= 31 &&
            appContext.checkSelfPermission(Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED
        ) {
            diagnostics("vendor Bluetooth bridge: BLUETOOTH_CONNECT permission missing")
            return null
        }
        return BluetoothAdapter.getDefaultAdapter()?.takeIf { it.isEnabled }
    }

    private fun findPhone(adapter: BluetoothAdapter): BluetoothDevice? {
        val preferred = VendorBluetoothDevicePolicy.validAddress(preferredDeviceAddress())
        if (preferred != null) {
            val device = runCatching { adapter.getRemoteDevice(preferred) }.getOrNull()
            if (device != null) {
                selectedFromPhoneModule = true
                return device
            }
        }
        selectedFromPhoneModule = false
        val devices = runCatching { adapter.bondedDevices.toList() }.getOrDefault(emptyList())
        return devices.firstOrNull { device ->
            runCatching {
                device.uuids?.any {
                    it.uuid == VendorWirelessProtocol.PRIMARY_UUID ||
                        it.uuid == VendorWirelessProtocol.ALTERNATE_UUID
                } == true
            }.getOrDefault(false)
        }
    }

    private companion object {
        const val BUFFER_BYTES = 1_024
        const val SDP_TIMEOUT_MILLIS = 10_000L
        const val SDP_RETRY_INTERVAL_MILLIS = 15_000L
    }
}

internal object VendorBluetoothDevicePolicy {
    fun validAddress(address: String?): String? = address
        ?.trim()
        ?.takeIf { BLUETOOTH_ADDRESS.matches(it) }

    private val BLUETOOTH_ADDRESS = Regex("(?i)^[0-9A-F]{2}(?::[0-9A-F]{2}){5}$")
}
