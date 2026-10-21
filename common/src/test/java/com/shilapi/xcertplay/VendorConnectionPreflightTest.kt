package com.shilapi.xcertplay

import org.junit.Assert.assertEquals
import org.junit.Test

class VendorConnectionPreflightTest {
    @Test fun requiresCurrentPhoneConnectionBeforeAnySavedSessionCanStart() {
        assertEquals(
            VendorConnectionPreflight.Action.OPEN_PHONE_PAIRING,
            VendorConnectionPreflight.decide(
                phoneConnected = false,
                runtimePermissionsGranted = true,
            ),
        )
    }

    @Test fun startsVendorSessionWithoutRequestingAdbAuthorization() {
        assertEquals(
            VendorConnectionPreflight.Action.START_SESSION,
            VendorConnectionPreflight.decide(
                phoneConnected = true,
                runtimePermissionsGranted = true,
            ),
        )
    }

    @Test fun runtimePermissionsRemainAheadOfSessionStartup() {
        assertEquals(
            VendorConnectionPreflight.Action.REQUEST_RUNTIME_PERMISSIONS,
            VendorConnectionPreflight.decide(
                phoneConnected = true,
                runtimePermissionsGranted = false,
            ),
        )
    }
}
