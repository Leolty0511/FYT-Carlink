package com.shilapi.xcertplay.vendor

import android.content.Context
import android.net.wifi.WifiConfiguration
import android.os.IBinder
import android.os.Process
import com.shilapi.xcertplay.hud.BydAdbShell
import java.io.ByteArrayOutputStream
import java.lang.reflect.InvocationTargetException
import kotlin.system.exitProcess

/** Reads FYT's saved SoftAP configuration from this APK under the already-approved shell UID. */
internal object VendorHotspotConfigurationShellReader {
    private const val TAG = "TlinkHotspotConfig"
    private const val HELPER_TIMEOUT_MILLIS = 15_000
    private val shell = BydAdbShell(TAG)

    fun read(context: Context): VendorHotspotConfiguration? {
        val app = context.applicationContext
        val output = shell.run(app, command(app.packageCodePath), HELPER_TIMEOUT_MILLIS)
        return VendorHotspotConfigurationProtocol.parse(output)
    }

    internal fun command(apk: String): String {
        val quoted = "'" + apk.replace("'", "'\"'\"'") + "'"
        return "CLASSPATH=$quoted app_process /system/bin ${VendorHotspotConfigurationMain::class.java.name}"
    }
}

/** Fixed, line-oriented protocol between the app process and its one-shot shell helper. */
internal object VendorHotspotConfigurationProtocol {
    internal const val HEADER = "TLINK_FYT_HOTSPOT_V1"
    private const val OK = "OK"

    fun encode(configuration: VendorHotspotConfiguration): String = listOf(
        HEADER,
        OK,
        encodeHex(configuration.ssid),
        encodeHex(configuration.password),
        configuration.channel.toString(),
        configuration.security.toString(),
        configuration.band.toString(),
    ).joinToString("|")

    fun parse(output: String?): VendorHotspotConfiguration? {
        val prefix = "$HEADER|$OK|"
        val fields = output?.lineSequence()
            ?.map(String::trim)
            ?.lastOrNull { it.startsWith(prefix) }
            ?.split('|')
            ?: return null
        if (fields.size != 7 || fields[0] != HEADER || fields[1] != OK) return null
        return fromFields(
            ssid = decodeHex(fields[2]) ?: return null,
            password = decodeHex(fields[3]) ?: return null,
            channel = fields[4].toIntOrNull() ?: return null,
            security = fields[5].toIntOrNull() ?: return null,
            band = fields[6].toIntOrNull() ?: return null,
        )
    }

    internal fun fromFields(
        ssid: String?,
        password: String?,
        channel: Int,
        security: Int,
        band: Int,
    ): VendorHotspotConfiguration? {
        val savedSsid = ssid.orEmpty().takeIf { value ->
            value.isNotBlank() && value.toByteArray(Charsets.UTF_8).size <= 256
        } ?: return null
        if (channel !in 0..196 || security !in setOf(0, 2) || band !in setOf(0, 1)) return null
        val savedPassword = password.orEmpty()
        if (savedPassword.toByteArray(Charsets.UTF_8).size > 256) return null
        if (security != 0 && savedPassword.isBlank()) return null
        return VendorHotspotConfiguration(savedSsid, savedPassword, channel, security, band)
    }

    private fun encodeHex(value: String): String = value.toByteArray(Charsets.UTF_8).joinToString("") {
        "%02x".format(it.toInt() and 0xff)
    }

    private fun decodeHex(value: String): String? {
        if (value.length % 2 != 0 || value.length > 512 || value.any { it.digitToIntOrNull(16) == null }) return null
        val bytes = ByteArrayOutputStream(value.length / 2)
        for (index in value.indices step 2) {
            val high = value[index].digitToInt(16)
            val low = value[index + 1].digitToInt(16)
            bytes.write((high shl 4) or low)
        }
        return bytes.toByteArray().toString(Charsets.UTF_8)
    }
}

/** One-shot entry point launched from the installed T-link APK through app_process. */
object VendorHotspotConfigurationMain {
    private const val ROOT_UID = 0
    private const val SHELL_UID = 2000
    @Volatile private var stage = "START"

    @JvmStatic
    fun main(args: Array<String>) {
        val line = try {
            read(args)?.let(VendorHotspotConfigurationProtocol::encode)
                ?: "${VendorHotspotConfigurationProtocol.HEADER}|UNAVAILABLE|EMPTY"
        } catch (error: Throwable) {
            val cause = (error as? InvocationTargetException)?.targetException ?: error
            "${VendorHotspotConfigurationProtocol.HEADER}|UNAVAILABLE|${stage}_${cause.javaClass.simpleName}"
        }
        println(line)
        exitProcess(0)
    }

    private fun read(args: Array<String>): VendorHotspotConfiguration? {
        stage = "ARGUMENTS"
        require(args.isEmpty())
        require(Process.myUid() == SHELL_UID || Process.myUid() == ROOT_UID)
        stage = "SERVICE"
        val service = Class.forName("android.os.ServiceManager")
            .getMethod("getService", String::class.java)
            .invoke(null, "wifi") as? IBinder ?: return null
        stage = "INTERFACE"
        val interfaceType = Class.forName("android.net.wifi.IWifiManager")
        val wifi = Class.forName("android.net.wifi.IWifiManager\$Stub")
            .getMethod("asInterface", IBinder::class.java)
            .invoke(null, service) ?: return null
        stage = "METHOD"
        val method = interfaceType.getMethod("getWifiApConfiguration")
        stage = "INVOKE"
        val configuration = method.invoke(wifi) as? WifiConfiguration ?: return null
        stage = "VALIDATE"
        return VendorHotspotConfigurationReader.fromLegacyConfiguration(configuration)
            ?.let { VendorHotspotConfigurationProtocol.fromFields(it.ssid, it.password, it.channel, it.security, it.band) }
    }
}
