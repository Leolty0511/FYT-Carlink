package com.shilapi.xcertplay.vendor

import com.shilapi.xcertplay.network.WirelessHotspotBackend
import com.shilapi.xcertplay.network.WirelessHotspotInfo
import com.shilapi.xcertplay.transport.Iap2WirelessSecurity
import java.util.UUID
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class VendorWirelessProtocolTest {
    @Test fun missingCarplayUuidRequestsBoundedSdpRefresh() {
        val ordinaryBluetoothUuids = listOf(
            UUID.fromString("0000110a-0000-1000-8000-00805f9b34fb"),
        )

        assertTrue(
            VendorBluetoothUuidPolicy.shouldRequestSdp(
                uuids = ordinaryBluetoothUuids,
                refreshInFlight = false,
                nowMillis = 0L,
                lastRequestMillis = Long.MIN_VALUE,
                retryIntervalMillis = 15_000L,
            ),
        )
        assertTrue(
            VendorBluetoothUuidPolicy.shouldRequestSdp(
                uuids = ordinaryBluetoothUuids,
                refreshInFlight = false,
                nowMillis = 20_000L,
                lastRequestMillis = 0L,
                retryIntervalMillis = 15_000L,
            ),
        )
        assertFalse(
            VendorBluetoothUuidPolicy.shouldRequestSdp(
                uuids = ordinaryBluetoothUuids,
                refreshInFlight = true,
                nowMillis = 20_000L,
                lastRequestMillis = 0L,
                retryIntervalMillis = 15_000L,
            ),
        )
        assertFalse(
            VendorBluetoothUuidPolicy.shouldRequestSdp(
                uuids = ordinaryBluetoothUuids,
                refreshInFlight = false,
                nowMillis = 10_000L,
                lastRequestMillis = 0L,
                retryIntervalMillis = 15_000L,
            ),
        )
    }

    @Test fun cachedCarplayUuidSkipsSdpRefresh() {
        assertFalse(
            VendorBluetoothUuidPolicy.shouldRequestSdp(
                uuids = listOf(VendorWirelessProtocol.PRIMARY_UUID),
                refreshInFlight = false,
                nowMillis = 20_000L,
                lastRequestMillis = 0L,
                retryIntervalMillis = 15_000L,
            ),
        )
    }

    @Test fun uuidBroadcastOnlyMatchesTheSelectedPhone() {
        assertTrue(VendorBluetoothUuidPolicy.isSelectedDevice("70:B3:06:16:7B:9A", "70:b3:06:16:7b:9a"))
        assertFalse(VendorBluetoothUuidPolicy.isSelectedDevice("70:B3:06:16:7B:9A", "11:22:33:44:55:66"))
        assertFalse(VendorBluetoothUuidPolicy.isSelectedDevice(null, "70:B3:06:16:7B:9A"))
    }

    @Test fun fytPhoneAddressDoesNotRequireAnAndroidBondRecord() {
        assertEquals(
            "70:B3:06:16:7B:9A",
            VendorBluetoothDevicePolicy.validAddress(" 70:B3:06:16:7B:9A "),
        )
        assertEquals(null, VendorBluetoothDevicePolicy.validAddress("70:B3:06:16:7B"))
        assertEquals(null, VendorBluetoothDevicePolicy.validAddress(null))
    }

    @Test fun carplayUuidAnnouncementMatchesCurrentVendorApk() {
        assertEquals(
            "UU00000000DECAFADEDECADEAFDECACAFE",
            VendorWirelessProtocol.uuidAnnouncement(
                UUID.fromString("00000000-deca-fade-deca-deafdecacafe"),
            ),
        )
    }

    @Test fun callbackStateUsesNativeServerValue() {
        assertEquals("wireless-0", VendorWirelessProtocol.callbackState(0))
        assertEquals("wireless-4", VendorWirelessProtocol.callbackState(4))
        assertFalse(VendorWirelessProtocol.isProjectionActive(3))
        assertTrue(VendorWirelessProtocol.isProjectionActive(4))
    }

    @Test fun stockAudioFlagsDecodeWithoutTreatingUnknownValuesAsActive() {
        assertEquals(
            VendorCarplayAudioEvent(VendorCarplayAudioChannel.MEDIA, true),
            VendorCarplayAudioProtocol.decode(1),
        )
        assertEquals(
            VendorCarplayAudioEvent(VendorCarplayAudioChannel.SECONDARY, true),
            VendorCarplayAudioProtocol.decode(2049),
        )
        assertEquals(false, VendorCarplayAudioProtocol.decode(0)?.active)
        assertEquals(false, VendorCarplayAudioProtocol.decode(2048)?.active)
        assertEquals(null, VendorCarplayAudioProtocol.decode(2))
        assertEquals(false, VendorCarplayAudioProtocol.decode(4097)?.active)
    }

    @Test fun bluetoothSyncStopsOnlyOnceTheNativeEngineReportsAnEstablishedLink() {
        assertTrue(VendorWirelessProtocol.shouldSyncBluetooth(-1))
        assertTrue(VendorWirelessProtocol.shouldSyncBluetooth(0))
        assertTrue(VendorWirelessProtocol.shouldSyncBluetooth(1))
        assertTrue(VendorWirelessProtocol.shouldSyncBluetooth(2))
        assertTrue(VendorWirelessProtocol.shouldSyncBluetooth(3))
        assertFalse(VendorWirelessProtocol.shouldSyncBluetooth(4))
    }

    @Test fun repeatedWirelessCallbacksDebounceHotspotRequestsLikeStockCarLink() {
        assertTrue(VendorWirelessProtocol.shouldRepeatHotspotRequest(Long.MIN_VALUE, 1_000L))
        assertFalse(VendorWirelessProtocol.shouldRepeatHotspotRequest(1_000L, 29_999L))
        assertTrue(VendorWirelessProtocol.shouldRepeatHotspotRequest(1_000L, 31_000L))
    }

    @Test fun wirelessStartingStateRequestsTheCarHotspot() {
        assertEquals(false, VendorWirelessProtocol.shouldStartHotspot(0))
        assertEquals(true, VendorWirelessProtocol.shouldStartHotspot(1))
        assertEquals(false, VendorWirelessProtocol.shouldStartHotspot(2))
    }

    @Test fun quotedHotspotValuesAreNormalizedForTheVendorCommand() {
        assertEquals("AndroidAP_1917", VendorHotspotConfigurationReader.unquote("\"AndroidAP_1917\""))
        assertEquals("bea899e1c6e8", VendorHotspotConfigurationReader.unquote("bea899e1c6e8"))
    }

    @Test fun liveHotspotConfigurationMapsToVendorCommand225WithoutHardcodedCredentials() {
        val info = WirelessHotspotInfo(
            ssid = "AndroidAP_dynamic",
            passphrase = "dynamic-password",
            security = Iap2WirelessSecurity.WPA_WPA2,
            channel = 149,
            frequencyMHz = 5745,
            bssid = null,
            interfaceName = "wlan0",
            hostAddress = null,
            bandLabel = "5 GHz",
            backend = WirelessHotspotBackend.LOCAL_ONLY_HOTSPOT,
        )

        assertEquals(
            VendorHotspotConfiguration("AndroidAP_dynamic", "dynamic-password", 149, 2, 1),
            VendorHotspotConfiguration.from(info),
        )
    }

    @Test fun embeddedFytReaderAcceptsOnlyCompleteSavedHotspotConfigurations() {
        assertEquals(
            VendorHotspotConfiguration("AndroidAP_4062", "host-password", 149, 2, 1),
            VendorHotspotConfigurationProtocol.fromFields(
                "AndroidAP_4062", "host-password", 149, 2, 1,
            ),
        )
        assertEquals(null, VendorHotspotConfigurationProtocol.fromFields("", "password", 149, 2, 1))
        assertEquals(null, VendorHotspotConfigurationProtocol.fromFields("AndroidAP", "", 149, 2, 1))
        assertEquals(null, VendorHotspotConfigurationProtocol.fromFields("AndroidAP", "password", 197, 2, 1))
        assertEquals(null, VendorHotspotConfigurationProtocol.fromFields("AndroidAP", "password", 149, 3, 1))
        assertEquals(null, VendorHotspotConfigurationProtocol.fromFields("AndroidAP", "password", 149, 2, 3))
    }

    @Test fun embeddedFytReaderRoundTripsEncodedCredentialsAndIgnoresOtherOutput() {
        val configuration = VendorHotspotConfiguration("AndroidAP_4062", "p@ss|word", 149, 2, 1)
        val output = "runtime warning\n${VendorHotspotConfigurationProtocol.encode(configuration)}\n"

        assertEquals(configuration, VendorHotspotConfigurationProtocol.parse(output))
        assertEquals(null, VendorHotspotConfigurationProtocol.parse("${VendorHotspotConfigurationProtocol.HEADER}|OK|zz||149|2|1"))
    }

    @Test fun embeddedFytReaderLaunchesTheHelperFromTheInstalledMainApk() {
        val command = VendorHotspotConfigurationShellReader.command("/data/app/FYT.Tlink/base.apk")

        assertTrue(command.contains("CLASSPATH='/data/app/FYT.Tlink/base.apk'"))
        assertTrue(command.contains("app_process"))
        assertTrue(command.contains(VendorHotspotConfigurationMain::class.java.name))
    }

    @Test fun firmwareSelectedTwoPointFourGhzMapsToTheStockVendorFields() {
        val info = WirelessHotspotInfo(
            ssid = "AndroidShare_dynamic",
            passphrase = "another-dynamic-password",
            security = Iap2WirelessSecurity.WPA_WPA2,
            channel = 0,
            frequencyMHz = null,
            bssid = null,
            interfaceName = "wlan0",
            hostAddress = null,
            bandLabel = "2.4 GHz",
            backend = WirelessHotspotBackend.LOCAL_ONLY_HOTSPOT,
        )

        assertEquals(
            VendorHotspotConfiguration("AndroidShare_dynamic", "another-dynamic-password", 0, 2, 0),
            VendorHotspotConfiguration.from(info),
        )
    }

    @Test fun renderingPathMatchesCurrentVendorPlatformRules() {
        assertEquals(false, VendorDisplayProtocol.usesDirectSurfaceCodec("6523", null))
        assertEquals(false, VendorDisplayProtocol.usesDirectSurfaceCodec("6523", "0"))
        assertEquals(true, VendorDisplayProtocol.usesDirectSurfaceCodec("6523", "1"))
        assertEquals(true, VendorDisplayProtocol.usesDirectSurfaceCodec("9863", null))
    }

    @Test fun touchCoordinatesScaleAcrossTheWholeVendorViewport() {
        assertEquals(0, VendorDisplayProtocol.mapCoordinate(0f, 768, 1024))
        assertEquals(512, VendorDisplayProtocol.mapCoordinate(384f, 768, 1024))
        assertEquals(1024, VendorDisplayProtocol.mapCoordinate(768f, 768, 1024))
        assertEquals(300, VendorDisplayProtocol.mapCoordinate(337.5f, 675, 600))
        assertEquals(600, VendorDisplayProtocol.mapCoordinate(900f, 675, 600))
    }

    @Test fun videoCanvasFitsPortraitAndLandscapeWindowsWithoutCroppingOrStretching() {
        assertEquals(
            VendorDisplayProtocol.Viewport(768, 450),
            VendorDisplayProtocol.fitViewport(768, 675, 1024, 600),
        )
        assertEquals(
            VendorDisplayProtocol.Viewport(1280, 750),
            VendorDisplayProtocol.fitViewport(1280, 800, 1024, 600),
        )
        assertEquals(
            VendorDisplayProtocol.Viewport(592, 675),
            VendorDisplayProtocol.fitViewport(768, 675, 1080, 1232),
        )
    }

    @Test fun displayNegotiationMatchesCurrentVendorCarlink() {
        assertEquals(
            VendorDisplayProtocol.Viewport(1920, 1080),
            VendorDisplayProtocol.negotiateDisplaySize(1920, 1080),
        )
        assertEquals(
            VendorDisplayProtocol.Viewport(1280, 800),
            VendorDisplayProtocol.fitViewport(1280, 800, 1280, 800),
        )
        // The vendor algorithm also enlarges a small window instead of keeping its pixel size.
        assertEquals(
            VendorDisplayProtocol.Viewport(1728, 1080),
            VendorDisplayProtocol.negotiateDisplaySize(1280, 800),
        )
        assertEquals(
            VendorDisplayProtocol.Viewport(1080, 1440),
            VendorDisplayProtocol.negotiateDisplaySize(768, 1024),
        )
        assertEquals(
            VendorDisplayProtocol.Viewport(1080, 1232),
            VendorDisplayProtocol.negotiateDisplaySize(768, 880),
        )
        assertEquals(
            VendorDisplayProtocol.Viewport(1920, 1080),
            VendorDisplayProtocol.negotiateDisplaySize(2560, 1440),
        )
    }

    @Test fun decoderCropExcludesCodecStridePadding() {
        assertEquals(
            VendorDisplayProtocol.Viewport(1280, 800),
            VendorDisplayProtocol.decodedVideoSize(
                width = 1280,
                height = 816,
                cropLeft = 0,
                cropTop = 0,
                cropRight = 1279,
                cropBottom = 799,
            ),
        )
    }

    @Test fun vendorVideoFramingRemovesTheLittleEndianLengthPrefix() {
        val first = byteArrayOf(0, 0, 0, 1, 0x67, 1, 2)
        val second = byteArrayOf(0, 0, 0, 1, 0x68, 3)
        fun packet(frame: ByteArray) = byteArrayOf(
            frame.size.toByte(), 0, 0, 0,
        ) + frame
        val wire = packet(first) + packet(second)
        val frames = mutableListOf<ByteArray>()
        val framer = VendorVideoFramer(1024, { data, offset, size ->
            frames += data.copyOfRange(offset, offset + size)
        }, {})

        framer.append(wire, 5)
        framer.append(wire.copyOfRange(5, wire.size), wire.size - 5)

        assertEquals(listOf(first.toList(), second.toList()), frames.map { it.toList() })
    }

    @Test fun decoderWaitsForSpsPpsAndIdrAfterARebuild() {
        fun nal(type: Int) = byteArrayOf(0, 0, 0, 1, type.toByte(), 1)
        val gate = VendorH264SyncGate()

        assertEquals(false, gate.evaluate(nal(1), 0, 6).feed)
        assertEquals(true, gate.evaluate(nal(7), 0, 6).codecConfig)
        assertEquals(true, gate.evaluate(nal(8), 0, 6).codecConfig)
        assertEquals(false, gate.evaluate(nal(1), 0, 6).feed)
        assertEquals(true, gate.evaluate(nal(5), 0, 6).keyFrame)
        assertEquals(true, gate.evaluate(nal(1), 0, 6).feed)
    }
}
