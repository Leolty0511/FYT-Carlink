package com.shilapi.xcertplay

import android.content.ComponentName
import android.content.pm.PackageManager
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbManager
import com.shilapi.xcertplay.transport.IphoneUsbMatcher
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.xmlpull.v1.XmlPullParser

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29])
class UsbDeviceFilterTest {
    @Test
    fun vendorActivityMatchesTheStockCarlinkIphoneClassifier() {
        assertTrue(matchesAttachFilter(
            DiPlayActivity::class.java,
            IphoneUsbMatcher.APPLE_VENDOR_ID,
            0x12a8,
        ))
        assertFalse(matchesAttachFilter(
            DiPlayActivity::class.java,
            IphoneUsbMatcher.APPLE_VENDOR_ID,
            0x12a9,
        ))
        assertFalse(matchesAttachFilter(
            DiPlayActivity::class.java,
            IphoneUsbMatcher.APPLE_VENDOR_ID,
            0xffff,
        ))
    }

    @Test
    fun ch341StillMatchesOnlyItsConfiguredProduct() {
        assertTrue(matchesAttachFilter(CarPlayHostActivity::class.java, 0x1a86, 0x5512))
        assertFalse(matchesAttachFilter(CarPlayHostActivity::class.java, 0x1a86, 0x5513))
        assertFalse(matchesAttachFilter(DiPlayActivity::class.java, 0x1a86, 0x5512))
        assertFalse(matchesAttachFilter(CarPlayHostActivity::class.java, IphoneUsbMatcher.APPLE_VENDOR_ID, 0x12a8))
    }

    @Test
    fun unrelatedUsbVendorsDoNotMatch() {
        assertFalse(matchesAttachFilter(DiPlayActivity::class.java, 0x1234, 0x12a8))
        assertFalse(matchesAttachFilter(CarPlayHostActivity::class.java, 0x1234, 0x5512))
    }

    private fun matchesAttachFilter(activityClass: Class<*>, vendorId: Int, productId: Int): Boolean {
        val context = RuntimeEnvironment.getApplication()
        val activity = context.packageManager.getActivityInfo(
            ComponentName(context, activityClass),
            PackageManager.GET_META_DATA,
        )
        val device = Mockito.mock(UsbDevice::class.java)
        Mockito.`when`(device.vendorId).thenReturn(vendorId)
        Mockito.`when`(device.productId).thenReturn(productId)
        val filterClass = Class.forName("android.hardware.usb.DeviceFilter")
        val read = filterClass.getMethod("read", XmlPullParser::class.java)
        val matches = filterClass.getMethod("matches", UsbDevice::class.java)
        activity.loadXmlMetaData(context.packageManager, UsbManager.ACTION_USB_DEVICE_ATTACHED)
            .use { parser ->
                requireNotNull(parser)
                while (parser.eventType != XmlPullParser.END_DOCUMENT) {
                    if (parser.eventType == XmlPullParser.START_TAG && parser.name == "usb-device") {
                        val filter = read.invoke(null, parser)
                        if (matches.invoke(filter, device) as Boolean) return true
                    }
                    parser.next()
                }
            }
        return false
    }
}
