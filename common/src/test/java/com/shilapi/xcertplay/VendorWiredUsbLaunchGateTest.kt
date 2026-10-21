package com.shilapi.xcertplay

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class VendorWiredUsbLaunchGateTest {
    @Test
    fun `host switch waits and Apple enumeration starts exactly once`() {
        val gate = VendorWiredUsbLaunchGate()
        val token = gate.begin()!!

        assertNull(gate.begin())
        assertEquals(
            VendorWiredUsbLaunchGate.HostSwitchAction.WAIT_FOR_IPHONE,
            gate.hostSwitchCompleted(token, switched = true),
        )
        assertTrue(gate.pending)
        assertTrue(gate.onAppleAttached("iphone"))
        assertFalse(gate.onAppleAttached("iphone"))
        assertFalse(gate.pending)
    }

    @Test
    fun `Apple enumeration during role write keeps host mode`() {
        val gate = VendorWiredUsbLaunchGate()
        val token = gate.begin()!!

        assertTrue(gate.onAppleAttached("iphone"))
        assertEquals(
            VendorWiredUsbLaunchGate.HostSwitchAction.KEEP_HOST,
            gate.hostSwitchCompleted(token, switched = true),
        )
    }

    @Test
    fun `cancelled in-flight switch is restored when its write completes`() {
        val gate = VendorWiredUsbLaunchGate()
        val token = gate.begin()!!

        assertTrue(gate.cancelPending())
        assertEquals(
            VendorWiredUsbLaunchGate.HostSwitchAction.RESTORE_STALE_SWITCH,
            gate.hostSwitchCompleted(token, switched = true),
        )
    }

    @Test
    fun `failed role switch never enters pending state`() {
        val gate = VendorWiredUsbLaunchGate()
        val token = gate.begin()!!

        assertEquals(
            VendorWiredUsbLaunchGate.HostSwitchAction.REPORT_FAILURE,
            gate.hostSwitchCompleted(token, switched = false),
        )
        assertFalse(gate.pending)
    }
}
