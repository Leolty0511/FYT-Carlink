package com.shilapi.xcertplay.transport

import java.io.File

/**
 * Drives the Unisoc OTG role switch the vendor CarPlay stack uses on UIS8581A head units.
 *
 * The unit's only OTG controller (`musb-hdrc.0.auto`, `sys.usb.controller`) powers on in
 * peripheral (`device`) role and stays there unless something writes the vendor role nodes.
 * The vendor's `libcps` writes `host_dev` and `ls_carplay` on StartCarPlay and reverts them on
 * stop; without that switch the port holds host mode for well under a second, every iPhone
 * re-enumeration bounces, and wired CarPlay never reaches the data phase. `host_dev` is writable
 * by applications on the tested firmware. Some releases expose `ls_carplay` as read-only, so that
 * vendor hint remains best-effort and does not decide whether the role switch succeeded.
 */
object UsbHostRoleSwitch {
    const val DEFAULT_CONTROLLER_ROOT = "/sys/devices/platform/soc/soc:ap-ahb/20200000.usb"
    private const val ROLE_NODE_NAME = "host_dev"
    private const val CARPLAY_NODE_NAME = "ls_carplay"
    private const val HOST = "host"
    private const val DEVICE = "device"
    private const val CARPLAY_ENABLE = "1"
    private const val CARPLAY_DISABLE = "0"

    /**
     * Writes the role nodes to host mode and verifies each with a read-back. Returns true only
     * when the role node itself was switched; the CarPlay node is best-effort.
     */
    fun enterHostMode(
        onDiagnostic: (String) -> Unit,
        controllerRoot: String = DEFAULT_CONTROLLER_ROOT,
    ): Boolean {
        val role = writeVerified(File(controllerRoot, ROLE_NODE_NAME), HOST)
        val carplay = writeVerified(File(controllerRoot, CARPLAY_NODE_NAME), CARPLAY_ENABLE)
        onDiagnostic(
            "usb role switch to host: host_dev=${role ?: "unavailable"} " +
                "ls_carplay=${carplay ?: "unavailable"}",
        )
        return role == HOST
    }

    /**
     * Restores peripheral role so the port can serve a host computer (ADB) again once the
     * CarPlay session is over.
     */
    fun restoreDeviceMode(
        onDiagnostic: (String) -> Unit,
        controllerRoot: String = DEFAULT_CONTROLLER_ROOT,
    ) {
        val role = writeVerified(File(controllerRoot, ROLE_NODE_NAME), DEVICE)
        val carplay = writeVerified(File(controllerRoot, CARPLAY_NODE_NAME), CARPLAY_DISABLE)
        onDiagnostic(
            "usb role switch restore: host_dev=${role ?: "unavailable"} " +
                "ls_carplay=${carplay ?: "unavailable"}",
        )
    }

    fun diagnosticSnapshot(controllerRoot: String = DEFAULT_CONTROLLER_ROOT): String {
        val role = read(File(controllerRoot, ROLE_NODE_NAME))
        val carplay = read(File(controllerRoot, CARPLAY_NODE_NAME))
        return "usb role nodes: host_dev=${role ?: "unavailable"} " +
            "ls_carplay=${carplay ?: "unavailable"}"
    }

    /** Returns the trimmed content after the write, or null when the node is absent or unwritable. */
    private fun writeVerified(node: File, value: String): String? {
        if (!node.exists()) return null
        return try {
            node.writeText(value)
            node.readText().trim()
        } catch (_: Exception) {
            null
        }
    }

    private fun read(node: File): String? = try {
        node.takeIf { it.exists() }?.readText()?.trim()
    } catch (_: Exception) {
        null
    }
}
