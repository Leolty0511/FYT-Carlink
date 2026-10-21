package com.shilapi.xcertplay

import java.io.File
import com.shilapi.xcertplay.vendor.VendorCarplayTransport
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.assertEquals
import org.junit.Test

class VendorCarplaySessionLifecycleTest {
    @Test fun carplayAudioSourceFollowsForegroundAndDeduplicatesEvents() {
        val policy = VendorAudioSourcePolicy(minimumRequestIntervalMillis = 100L)
        assertFalse(policy.onAudioState(1, 0L))
        assertTrue(policy.onVisibilityChanged(true, 100L))
        assertFalse(policy.onAudioState(1, 200L))
        assertFalse(policy.onAudioState(2049, 300L))
        assertFalse(policy.onAudioState(0, 400L))
        assertFalse(policy.onAudioState(2048, 500L))
        assertTrue(policy.onAudioState(2049, 600L))
        assertFalse(policy.onAudioState(2049, 700L))
        assertFalse(policy.onAudioState(2, 800L))
    }

    @Test fun backgroundAudioDoesNotStealSourceAndResumeRestoresIt() {
        val policy = VendorAudioSourcePolicy(minimumRequestIntervalMillis = 100L)
        assertFalse(policy.onVisibilityChanged(false, 0L))
        assertFalse(policy.onAudioState(1, 100L))
        assertTrue(policy.onVisibilityChanged(true, 200L))
        assertFalse(policy.onVisibilityChanged(true, 300L))
        assertFalse(policy.onVisibilityChanged(false, 400L))
        assertTrue(policy.onVisibilityChanged(true, 500L))
    }

    @Test fun stalledSessionUsesBoundedRecoveryOrder() {
        val policy = VendorSessionRecoveryPolicy(stallTimeoutMillis = 100L)
        assertEquals(VendorSessionRecoveryPolicy.Action.NONE,
            policy.evaluate(1L, true, false, "wireless-0", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.NONE,
            policy.evaluate(100L, true, false, "wireless-0", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.RECONNECT_BINDER,
            policy.evaluate(101L, true, false, "wireless-0", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.RESTART_ENGINE,
            policy.evaluate(201L, true, false, "wireless-0", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.RESTART_VIDEO,
            policy.evaluate(301L, true, false, "wireless-0", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.RECONNECT_BINDER,
            policy.evaluate(401L, true, false, "wireless-0", 0))
    }

    @Test fun observedProgressResetsRecoveryAndStoppedSessionsStayIdle() {
        val policy = VendorSessionRecoveryPolicy(stallTimeoutMillis = 100L)
        policy.evaluate(1L, true, false, "wireless-0", 0)
        assertEquals(VendorSessionRecoveryPolicy.Action.RECONNECT_BINDER,
            policy.evaluate(101L, true, false, "wireless-0", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.NONE,
            policy.evaluate(102L, true, true, "wireless-1", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.RECONNECT_BINDER,
            policy.evaluate(202L, true, true, "wireless-1", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.NONE,
            policy.evaluate(302L, false, true, "wireless-1", 0))
        assertEquals(VendorSessionRecoveryPolicy.Action.NONE,
            policy.evaluate(10_000L, false, true, "wireless-1", 0))
    }

    @Test fun activeSessionNeverRestartsForAStaticVideoFrame() {
        val policy = VendorSessionRecoveryPolicy(stallTimeoutMillis = 100L)
        assertEquals(VendorSessionRecoveryPolicy.Action.NONE,
            policy.evaluate(1L, true, true, VendorSessionRecoveryPolicy.ACTIVE_SESSION_STATE, 1))
        assertEquals(VendorSessionRecoveryPolicy.Action.NONE,
            policy.evaluate(10_000L, true, true, VendorSessionRecoveryPolicy.ACTIVE_SESSION_STATE, 1))
    }

    @Test fun disconnectedPhoneStopsPendingAndEstablishedVendorSessions() {
        assertTrue(VendorCarplaySessionService.shouldStopForDisconnectedPhone(
            sessionRequested = true,
            phoneKnownDisconnected = true,
            sessionState = "wireless-0",
        ))
        assertTrue(VendorCarplaySessionService.shouldStopForDisconnectedPhone(
            sessionRequested = true,
            phoneKnownDisconnected = true,
            sessionState = VendorCarplaySessionService.ACTIVE_SESSION_STATE,
        ))
        assertFalse(VendorCarplaySessionService.shouldStopForDisconnectedPhone(
            sessionRequested = false,
            phoneKnownDisconnected = true,
            sessionState = "wireless-0",
        ))
        assertFalse(VendorCarplaySessionService.shouldStopForDisconnectedPhone(
            sessionRequested = true,
            phoneKnownDisconnected = true,
            sessionState = "wired-0",
            transport = VendorCarplayTransport.WIRED,
        ))
    }

    @Test fun establishedVendorSessionRevealsImmediatelyWhenActivityReturns() {
        assertTrue(vendorProjectionReady(
            framesRendered = 11L,
            directSurfaceCodec = false,
            sessionState = VendorCarplaySessionService.ACTIVE_SESSION_STATE,
            freshFrameAfter = 10L,
        ))
        assertFalse(vendorProjectionReady(
            framesRendered = 10L,
            directSurfaceCodec = false,
            sessionState = VendorCarplaySessionService.ACTIVE_SESSION_STATE,
            freshFrameAfter = 10L,
        ))
        assertFalse(vendorProjectionReady(
            framesRendered = 0L,
            directSurfaceCodec = false,
            sessionState = VendorCarplaySessionService.ACTIVE_SESSION_STATE,
            freshFrameAfter = null,
        ))
    }

    @Test fun activityDoesNotOwnOrStopVendorTransport() {
        val source = File("src/main/java/com/shilapi/xcertplay/VendorCarplayActivity.kt").readText()
        assertFalse(source.contains("VendorCarplayClient("))
        assertFalse(source.contains("VendorVideoReceiver("))
        assertFalse(source.contains("client.stop()"))
        assertFalse(source.contains("sessionService?.disconnect()"))
        assertTrue(source.contains("VendorCarplaySessionService.startSession(this, transport = requestedTransport)"))
        assertTrue(source.contains("if (!VendorCarplaySessionService.isRunning())"))
        assertTrue(source.contains("unbindService(serviceConnection)"))
        assertTrue(source.contains("moveTaskToBack(true)"))
        assertTrue(source.contains("surfaceView.setOnTouchListener"))
        assertTrue(source.contains("VendorDisplayProtocol.mapCoordinate"))
        assertFalse(source.contains("minOf(vw / VendorCarplayClient.DISPLAY_WIDTH"))
        assertTrue(source.contains("waitingView.visibility = if (ready) View.GONE else View.VISIBLE"))
        assertTrue(source.contains("snapshot?.sessionEstablished == true"))
        assertTrue(source.contains("PixelCopy.request(surfaceView"))
        assertTrue(source.contains("setImageResource(R.drawable.ic_carplay)"))
        assertTrue(source.contains("ProgressBar(this@VendorCarplayActivity)"))
    }

    @Test fun stickyPrivateServiceOwnsBothVendorChannels() {
        val source = File("src/main/java/com/shilapi/xcertplay/VendorCarplaySessionService.kt").readText()
        val homeSource = File("src/main/java/com/shilapi/xcertplay/DiPlayActivity.kt").readText()
        val videoSource = File("../shared/src/main/java/com/shilapi/xcertplay/vendor/VendorVideoReceiver.kt").readText()
        val manifest = File("src/main/AndroidManifest.xml").readText()
        assertTrue(source.contains("return START_STICKY"))
        assertTrue(source.contains("client = VendorCarplayClient("))
        assertTrue(source.contains("listener = this"))
        assertTrue(source.contains("vendorPhoneBluetooth = VendorPhoneBluetooth(this)"))
        assertTrue(source.contains("UsbManager.ACTION_USB_DEVICE_ATTACHED"))
        assertTrue(source.contains("main.postDelayed(wiredUsbRecheck, USB_RECHECK_DELAY_MILLIS)"))
        assertTrue(source.contains("client.startSession(sessionTransport)"))
        assertTrue(source.contains("sessionRequested = false"))
        assertFalse(source.contains("getBoolean(KEY_SESSION_REQUESTED, false)"))
        assertTrue(source.contains("vendorPhoneState.phoneAddress ?: DiPlayPreferences.phoneAddress(this)"))
        assertTrue(source.contains("DiPlayPreferences.savePhone(this, address"))
        assertTrue(source.contains("VendorVideoReceiver("))
        assertTrue(source.contains("if (!directSurfaceCodec) videoReceiver = newVideoReceiver()"))
        assertTrue(source.contains("shutdownVideoReceiver()"))
        assertTrue(videoSource.contains("wake.connect(LocalSocketAddress(SOCKET_NAME))"))
        assertTrue(source.contains("if (directSurfaceCodec) surface?.takeIf"))
        assertTrue(manifest.contains("com.shilapi.xcertplay.VendorCarplaySessionService"))
        assertTrue(manifest.contains("android:stopWithTask=\"false\""))
        assertFalse(manifest.substringAfter("VendorCarplaySessionService").substringBefore("/>")
            .contains("android:exported=\"true\""))
        assertTrue(homeSource.contains("VendorCarplaySessionService.isRunning()"))
        assertTrue(homeSource.contains("VendorCarplaySessionService.stopSession(this)"))
        assertTrue(homeSource.contains("openVendorProjectionWhenReady()"))
        assertTrue(homeSource.contains("wiredUsbReceiver"))
        assertTrue(homeSource.contains("attachedIphone()?.let(::startAttachedIphone)"))
        assertTrue(homeSource.contains("connect(false)"))
        assertTrue(homeSource.contains("VendorConnectionPreflight.decide("))
        assertFalse(homeSource.contains("authorizeVendorHotspotControl()"))
        assertFalse(homeSource.substringAfter("private fun connect(wireless: Boolean)")
            .substringBefore("private fun openProjection()")
            .contains("CarHotspotSetup.grant("))
        assertFalse(homeSource.substringAfter("private fun refreshStatus()")
            .substringBefore("private fun authorizeClusterRouting()")
            .contains("DiPlayPreferences.phoneAddress(this)"))
        assertTrue(homeSource.contains("VendorCarplaySessionService.isSessionActive()"))
        assertTrue(homeSource.contains("VendorCarplaySessionService.latestSnapshot()"))
        assertTrue(source.contains("processSnapshot = current"))
        assertTrue(homeSource.contains("restoreRunningVendorProjection(intent)"))
        assertTrue(homeSource.contains("vendorProjectionRestoreInFlight"))
        assertTrue(homeSource.contains("Intent.FLAG_ACTIVITY_REORDER_TO_FRONT"))
        assertTrue(videoSource.contains("private var activeClient: LocalSocket?"))
        assertTrue(videoSource.contains("activeClient?.close()"))
    }

    @Test fun vendorClientUsesCurrentEmbeddedWirelessContract() {
        val source = File("../shared/src/main/java/com/shilapi/xcertplay/vendor/VendorCarplayClient.kt").readText()
        assertTrue(source.contains("CMD_BLUETOOTH_IDENTITY = 226"))
        assertTrue(source.contains("CMD_BLUETOOTH_CONTROL = 229"))
        assertTrue(source.contains("CMD_BLUETOOTH_DATA = 230"))
        assertTrue(source.contains("CMD_HOTSPOT_CONFIGURATION = 225"))
        assertTrue(source.contains("CarHotspotTethering.enable("))
        assertTrue(source.contains("VendorHotspotConfigurationReader.read(context)"))
        assertTrue(source.contains("VendorHotspotConfigurationShellReader.read(context)"))
        assertFalse(source.contains("VendorHotspotConfigurationBridge.read(context)"))
        assertTrue(source.contains(
            "intArrayOf(configuration.channel, configuration.security, configuration.band)",
        ))
        assertTrue(source.contains("handleWirelessState(state)"))
        assertTrue(source.substringAfter("fun startSession(").substringBefore("fun stopSession()")
            .contains("startCarHotspot()"))
        assertTrue(source.contains("command(CMD_AUDIO, intArrayOf(transport.audioMode))"))
        assertTrue(source.substringAfter("fun startSession(").substringBefore("fun stopSession()")
            .contains("vendor wired session requested"))
        assertFalse(source.substringAfter("fun startSession(").substringBefore("fun stopSession()")
            .contains("CMD_SESSION"))
        assertTrue(source.contains("101 -> listener?.let"))
    }

    @Test fun vendorExitUsesTheStockFytHostCommand() {
        val bluetoothSource = File("src/main/java/com/shilapi/xcertplay/VendorPhoneBluetooth.kt").readText()
        val serviceSource = File("src/main/java/com/shilapi/xcertplay/VendorCarplaySessionService.kt").readText()
        val clientSource = File("../shared/src/main/java/com/shilapi/xcertplay/vendor/VendorCarplayClient.kt").readText()
        assertTrue(bluetoothSource.contains("HOST_MODULE = 0"))
        assertTrue(bluetoothSource.contains("HOST_UI_COMMAND = 133"))
        assertTrue(bluetoothSource.contains("HOST_UI_EXIT = 3"))
        assertTrue(bluetoothSource.contains(
            "remote.cmd(HOST_UI_COMMAND, intArrayOf(HOST_UI_EXIT), null, null)",
        ))
        assertTrue(serviceSource.contains("vendorPhoneBluetooth.requestHostUiExit()"))
        // On the tested FYT firmware module 2 / command 13 disconnects the phone Bluetooth link.
        // Call and microphone ownership are synchronized by the stock 156/159 host commands.
        assertFalse(bluetoothSource.contains("PHONE_LINK_CUT_COMMAND"))
        assertFalse(serviceSource.contains("releaseVendorPhoneLink"))
        assertFalse(serviceSource.contains("restoreVendorPhoneLink"))
        assertTrue(bluetoothSource.contains("HOST_CARPLAY_VOICE_COMMAND = 156"))
        assertTrue(bluetoothSource.contains("HOST_CARPLAY_CALL_COMMAND = 159"))
        assertTrue(clientSource.contains("107 ->"))
        assertTrue(clientSource.contains("target.onPhoneStateChanged(state)"))
        assertTrue(clientSource.contains("108 ->"))
        assertTrue(clientSource.contains("target.onVoiceStateChanged(state)"))
        assertTrue(serviceSource.contains("AudioManager.STREAM_VOICE_CALL"))
        assertTrue(serviceSource.contains("AudioManager.AUDIOFOCUS_GAIN_TRANSIENT"))
        assertTrue(serviceSource.contains("vendorPhoneBluetooth.notifyCarPlayVoiceActive(active)"))
        assertTrue(serviceSource.contains("vendorPhoneBluetooth.notifyCarPlayCalling(active)"))
        assertTrue(serviceSource.contains("if (state == ACTIVE_SESSION_STATE)"))
    }
}
