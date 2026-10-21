package com.shilapi.xcertplay

import android.content.Intent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29])
class VendorPhoneBluetoothTest {

    @Test fun newlyConnectedFytPhoneStartsWirelessOnlyFromAnIdleHome() {
        assertTrue(VendorWirelessAutoStartPolicy.shouldStart(
            previousConnected = false,
            currentConnected = true,
            onHomePage = true,
            setupReady = true,
            sessionRunning = false,
            launchPending = false,
            wiredIphoneAttached = false,
        ))
        assertFalse(VendorWirelessAutoStartPolicy.shouldStart(false, true, true, true, true, false, false))
        assertFalse(VendorWirelessAutoStartPolicy.shouldStart(false, true, true, true, false, true, false))
        assertFalse(VendorWirelessAutoStartPolicy.shouldStart(false, true, true, true, false, false, true))
        assertFalse(VendorWirelessAutoStartPolicy.shouldStart(true, true, true, true, false, false, false))
    }
    @Test fun fytPhoneStatesMatchTheStockBluetoothApp() {
        listOf(0, 1, 6).forEach { assertFalse(VendorPhoneBluetoothState(phoneState = it).connected) }
        listOf(2, 3, 4, 5, 7).forEach { assertTrue(VendorPhoneBluetoothState(phoneState = it).connected) }
        assertFalse(VendorPhoneBluetoothState().connected)
    }

    @Test fun pairingRequiresAnExplicitDisconnectedStateFromTheVendorService() {
        assertFalse(VendorPhoneBluetoothState().knownDisconnected)
        assertFalse(VendorPhoneBluetoothState(serviceAvailable = true).knownDisconnected)
        assertFalse(VendorPhoneBluetoothState(phoneState = 0).knownDisconnected)
        assertTrue(VendorPhoneBluetoothState(serviceAvailable = true, phoneState = 0).knownDisconnected)
        assertFalse(VendorPhoneBluetoothState(serviceAvailable = true, phoneState = 2).knownDisconnected)
    }

    @Test fun pairingIntentTargetsTheStockPhoneBluetoothRouter() {
        val intent = VendorPhoneBluetooth.pairingIntent()
        assertEquals("com.syu.bt.act.ActBtPairDevices", intent.action)
        assertEquals("com.syu.bt", intent.`package`)
        assertTrue(intent.hasCategory(Intent.CATEGORY_DEFAULT))
        assertEquals(null, intent.component)
    }

    @Test fun fytPhoneAddressMatchesAndroidBondedDeviceFormat() {
        assertEquals("70:B3:06:16:7B:9A", VendorPhoneBluetooth.normalizePhoneAddress("70B306167B9A"))
        assertEquals("70:B3:06:16:7B:9A", VendorPhoneBluetooth.normalizePhoneAddress("70:b3:06:16:7b:9a"))
        assertEquals(null, VendorPhoneBluetooth.normalizePhoneAddress("not-a-mac"))
    }

    @Test fun nullPlatformServiceCallbackIsIgnored() {
        val states = mutableListOf<VendorPhoneBluetoothState>()
        val observer = VendorPhoneBluetooth(RuntimeEnvironment.getApplication()) { states += it }

        observer.onServiceConnected(null, null)

        assertEquals(VendorPhoneBluetoothState(), states.single())
    }
}
