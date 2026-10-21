package com.shilapi.xcertplay.vendor

import org.junit.Assert.assertEquals
import org.junit.Test

class VendorCarplayTransportTest {
    @Test fun stockLinkModesMapToTheVendorAudioCommand() {
        assertEquals(0, VendorCarplayTransport.WIRED.audioMode)
        assertEquals(1, VendorCarplayTransport.WIRELESS.audioMode)
    }
}
