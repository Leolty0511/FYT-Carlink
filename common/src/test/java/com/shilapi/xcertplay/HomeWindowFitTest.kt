package com.shilapi.xcertplay

import android.content.res.Configuration
import android.view.View
import android.view.ViewGroup
import android.widget.ScrollView
import android.widget.TextView
import com.shilapi.xcertplay.host.R
import java.util.Locale
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config

/**
 * Landscape head units are short. The home page has to stay inside the window: a 1280x800 unit with
 * the large system font needs roughly 880dp of height when the introduction is stacked above the
 * connection card, which leaves the footer note and the setup error under the fold. Nothing on the
 * page may be clipped, and nothing may need scrolling to be read.
 */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29], manifest = Config.NONE)
class HomeWindowFitTest {

    @Test
    fun theWholeHomePageFitsEveryWindow() {
        listOf(1280 to 800, 1280 to 720, 1024 to 600, 768 to 1024).forEach { (w, h) ->
            assertPageFits(w, h)
        }
    }

    private fun assertPageFits(widthDp: Int, heightDp: Int) {
        RuntimeEnvironment.setQualifiers("zh-rCN-w${widthDp}dp-h${heightDp}dp-mdpi")
        val app = RuntimeEnvironment.getApplication()
        app.resources.updateConfiguration(
            Configuration(app.resources.configuration).apply {
                setLocale(Locale.SIMPLIFIED_CHINESE)
                screenWidthDp = widthDp
                screenHeightDp = heightDp
                orientation = if (widthDp > heightDp) Configuration.ORIENTATION_LANDSCAPE
                else Configuration.ORIENTATION_PORTRAIT
            },
            app.resources.displayMetrics,
        )
        val controller = Robolectric.buildActivity(DiPlayActivity::class.java).setup()
        try {
            val activity = controller.get()
            val root = activity.window.decorView
            root.measure(
                View.MeasureSpec.makeMeasureSpec(widthDp, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(heightDp, View.MeasureSpec.EXACTLY),
            )
            root.layout(0, 0, widthDp, heightDp)
            shadowOf(activity.mainLooper).idle()
            val setupError = activity.getString(R.string.setup_error_auth)
            val texts = descendants(root).filterIsInstance<TextView>()
                .filter { it.visibility == View.VISIBLE && it.height > 0 && it.text.isNotEmpty() }
                .map { it to topOf(it, root) }
            assertTrue(
                "$widthDp x $heightDp: no connection card on the home page",
                texts.any { it.first.text.toString() == activity.getString(R.string.home_connection_note) },
            )
            // The missing-authentication warning is an installation fault, not part of the product
            // page; it only has to stay reachable by scrolling.
            val page = texts.filterNot { (v, _) -> v.text.toString() == setupError }
            val unreachable = page.filter { (v, top) -> top < 0 || top + v.height > heightDp }
                .map { (v, top) -> "'${v.text.toString().take(18)}' $top..${top + v.height}" }
            assertTrue("$widthDp x $heightDp: home page needs scrolling for: $unreachable", unreachable.isEmpty())
        } finally {
            controller.pause().stop().destroy()
        }
    }

    private fun topOf(view: View, root: View): Int {
        var y = 0
        var v = view
        while (v !== root) {
            y += v.top
            v = v.parent as View
        }
        return y
    }

    private fun descendants(view: View): List<View> {
        val out = mutableListOf<View>()
        fun walk(v: View) {
            out.add(v)
            if (v is ViewGroup) for (i in 0 until v.childCount) walk(v.getChildAt(i))
        }
        walk(view)
        return out
    }
}
