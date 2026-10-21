package com.shilapi.xcertplay

import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import com.shilapi.xcertplay.host.R
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.util.ReflectionHelpers

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29])
class HomeCompactLayoutTest {
    @Config(qualifiers = "en-w900dp-h400dp-land")
    @Test fun compactLandscapeKeepsBothCarplayTransportsVisible() {
        verifyCompactHome()
    }

    @Config(qualifiers = "en-w400dp-h900dp-port")
    @Test fun compactPortraitKeepsBothCarplayTransportsVisible() {
        verifyCompactHome()
    }

    private fun verifyCompactHome() {
        val controller = Robolectric.buildActivity(DiPlayActivity::class.java).setup()
        val activity = controller.get()
        val root = activity.window.decorView
        val metrics = activity.resources.displayMetrics
        val config = activity.resources.configuration
        val width = (config.screenWidthDp * metrics.density).toInt()
        val height = (config.screenHeightDp * metrics.density).toInt()
        root.measure(View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY),
            View.MeasureSpec.makeMeasureSpec(height, View.MeasureSpec.EXACTLY))
        root.layout(0, 0, width, height)
        val visibleText = descendants(root).filterIsInstance<TextView>()
            .filter { it.visibility == View.VISIBLE }.map { it.text.toString() }.toSet()
        assertTrue(visibleText.any { it.contains(activity.getString(R.string.home_wireless_title)) })
        assertTrue(visibleText.any { it.contains(activity.getString(R.string.home_usb_title)) })
        assertTrue(activity.getString(R.string.car_home) in visibleText)
        assertTrue(descendants(root).any {
            it.visibility == View.VISIBLE && it.contentDescription == activity.getString(R.string.settings)
        })
        assertTrue(descendants(root).any {
            it.visibility == View.VISIBLE &&
                it.contentDescription == activity.getString(R.string.language_section_title)
        })
        assertFalse(activity.getString(R.string.home_hero_title) in visibleText)
        assertFalse(activity.getString(R.string.settings) in visibleText)
        assertFalse(visibleText.any { it.contains("public preview", ignoreCase = true) })
        assertFalse(activity.getString(R.string.plug_your_iphone_into_a_usb_data_port_allow_carplay_when_y) in visibleText)
        controller.pause().stop().destroy()
    }

    @Config(qualifiers = "en-w2667dp-h1333dp")
    @Test fun fullSizeMultiWindowKeepsTheFullHome() {
        assertFalse(homeIsCompact(multiWindow = true))
    }

    @Config(qualifiers = "en-w1333dp-h400dp")
    @Test fun shortWindowUsesTheCompactHome() {
        assertTrue(homeIsCompact(multiWindow = true))
    }

    @Config(qualifiers = "en-w500dp-h800dp")
    @Test fun narrowWindowUsesTheCompactHome() {
        assertTrue(homeIsCompact(multiWindow = false))
    }

    private fun homeIsCompact(multiWindow: Boolean): Boolean {
        val activity = Robolectric.buildActivity(DiPlayActivity::class.java).setup().get()
        shadowOf(activity).setInMultiWindowMode(multiWindow)
        ReflectionHelpers.callInstanceMethod<Unit>(activity, "render")
        val hero = activity.getString(R.string.home_hero_title)
        return descendants(activity.window.decorView).filterIsInstance<TextView>().none {
            it.text.toString() == hero
        }
    }

    private fun descendants(view: View): Sequence<View> = sequence {
        yield(view)
        if (view is ViewGroup) for (i in 0 until view.childCount) yieldAll(descendants(view.getChildAt(i)))
    }
}
