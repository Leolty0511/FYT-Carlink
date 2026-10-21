package com.shilapi.xcertplay

import android.widget.TextView
import com.shilapi.xcertplay.host.R
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.util.ReflectionHelpers

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29], qualifiers = "zh-rCN", manifest = Config.NONE)
class VendorHomeStatusTest {
    private val app get() = RuntimeEnvironment.getApplication()

    @Before fun reset() {
        app.getSharedPreferences("diplay", 0).edit().clear().commit()
        CarPlayBackgroundSession.clear()
        ReflectionHelpers.setStaticField(
            VendorCarplaySessionService::class.java,
            "processSessionRunning",
            false,
        )
    }

    @After fun cleanup() {
        CarPlayBackgroundSession.clear()
        ReflectionHelpers.setStaticField(
            VendorCarplaySessionService::class.java,
            "processSessionRunning",
            false,
        )
    }

    @Test fun staleSavedPhoneNameIsHiddenUntilFytReportsCurrentConnection() {
        DiPlayPreferences.savePhone(app, "00:11:22:33:44:55", "iPhone41")
        val activity = Robolectric.buildActivity(DiPlayActivity::class.java).get()
        val status = TextView(activity)
        ReflectionHelpers.setField(activity, "status", status)
        ReflectionHelpers.setField(activity, "setupError", null)
        ReflectionHelpers.setField(
            activity,
            "vendorPhoneBluetoothState",
            VendorPhoneBluetoothState(
                serviceAvailable = true,
                phoneState = 0,
                phoneName = "iPhone41",
            ),
        )

        refreshStatus(activity)
        assertEquals(activity.getString(R.string.ready_when_you_are), status.text.toString())

        ReflectionHelpers.setField(
            activity,
            "vendorPhoneBluetoothState",
            VendorPhoneBluetoothState(
                serviceAvailable = true,
                phoneState = 2,
                phoneName = "Current iPhone",
            ),
        )
        refreshStatus(activity)
        assertEquals(
            activity.getString(R.string.status_ready_for_prefix) + "Current iPhone",
            status.text.toString(),
        )
    }

    private fun refreshStatus(activity: DiPlayActivity) {
        ReflectionHelpers.callInstanceMethod<Unit>(activity, "refreshStatus")
    }
}
