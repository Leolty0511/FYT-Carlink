package com.shilapi.xcertplay.transport

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import java.io.File

class UsbHostRoleSwitchTest {
    @get:Rule
    val folder = TemporaryFolder()

    private val lines = mutableListOf<String>()
    private val diagnostics: (String) -> Unit = { lines.add(it) }

    @Test
    fun `enter host mode writes and verifies both nodes`() {
        val root = folder.newFolder("usb")
        val role = File(root, "host_dev").apply { writeText("device") }
        val carplay = File(root, "ls_carplay").apply { writeText("0") }

        val switched = UsbHostRoleSwitch.enterHostMode(diagnostics, root.absolutePath)

        assertTrue(switched)
        assertEquals("host", role.readText())
        assertEquals("1", carplay.readText())
        assertTrue(lines.single().contains("host_dev=host"))
        assertTrue(lines.single().contains("ls_carplay=1"))
    }

    @Test
    fun `missing nodes report unavailable without throwing`() {
        val root = folder.newFolder("usb")

        val switched = UsbHostRoleSwitch.enterHostMode(diagnostics, root.absolutePath)

        assertFalse(switched)
        assertTrue(lines.single().contains("host_dev=unavailable"))
        assertTrue(lines.single().contains("ls_carplay=unavailable"))
    }

    @Test
    fun `restore writes device mode back`() {
        val root = folder.newFolder("usb")
        val role = File(root, "host_dev").apply { writeText("host") }
        val carplay = File(root, "ls_carplay").apply { writeText("1") }

        UsbHostRoleSwitch.restoreDeviceMode(diagnostics, root.absolutePath)

        assertEquals("device", role.readText())
        assertEquals("0", carplay.readText())
        assertTrue(lines.single().contains("host_dev=device"))
        assertTrue(lines.single().contains("ls_carplay=0"))
    }

    @Test
    fun `snapshot reads nodes without writing them`() {
        val root = folder.newFolder("usb")
        File(root, "host_dev").writeText("host")
        File(root, "ls_carplay").writeText("0")

        val snapshot = UsbHostRoleSwitch.diagnosticSnapshot(root.absolutePath)

        assertEquals("usb role nodes: host_dev=host ls_carplay=0", snapshot)
    }
}
