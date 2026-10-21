package com.shilapi.xcertplay

import android.content.res.Configuration
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import com.shilapi.xcertplay.host.R
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import java.util.Locale
import kotlin.math.roundToInt
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29], manifest = Config.NONE)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class HomeLayoutScreenshotsTest {
    @After
    fun restoreConfiguration() {
        RuntimeEnvironment.setQualifiers("en")
    }

    @Test
    fun writesChineseLandscapePortraitAndRussianLargeFontScreenshots() {
        capture("zh-rCN", widthDp = 1280, heightDp = 800, fontScale = 1.5f, name = "landscape-1280x800")
        capture("zh-rCN", widthDp = 768, heightDp = 1024, fontScale = 1.5f, name = "portrait-768x1024")
        capture("ru", widthDp = 1280, heightDp = 800, fontScale = 1.5f, name = "russian-1280x800")
    }

    private fun capture(localeQualifier: String, widthDp: Int, heightDp: Int, fontScale: Float, name: String) {
        RuntimeEnvironment.setQualifiers("$localeQualifier-w${widthDp}dp-h${heightDp}dp-mdpi")
        val app = RuntimeEnvironment.getApplication()
        val locale = if (localeQualifier == "zh-rCN") Locale.SIMPLIFIED_CHINESE else Locale(localeQualifier)
        app.resources.updateConfiguration(
            Configuration(app.resources.configuration).apply {
                this.fontScale = fontScale
                setLocale(locale)
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
            val width = widthDp
            val height = heightDp
            root.measure(
                View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(height, View.MeasureSpec.EXACTLY),
            )
            root.layout(0, 0, width, height)
            shadowOf(activity.mainLooper).idle()

            val texts = descendants(root).filterIsInstance<TextView>().map { it.text.toString() }
            assertFalse(texts.any { it.contains(activity.getString(R.string.make_diplay_feel_right_for_your_car)) })
            assertFalse(texts.any { it.contains("public preview", ignoreCase = true) })
            assertTrue(descendants(root).any {
                it.contentDescription == activity.getString(R.string.settings) && it.visibility == View.VISIBLE
            })
            assertTrue(descendants(root).any {
                it.contentDescription == activity.getString(R.string.language_section_title) &&
                    it.visibility == View.VISIBLE
            })
            if (widthDp > heightDp) {
                assertTrue(texts.contains(activity.getString(R.string.home_connection_title)))
                assertTrue(texts.any { it.contains(activity.getString(R.string.home_wireless_title)) })
                assertTrue(texts.any { it.contains(activity.getString(R.string.home_usb_title)) })
            }
            writeScreenshot(root, reportDirectory().resolve("$name-font-1.5.png"))
        } finally {
            controller.pause().stop().destroy()
        }
    }

    private fun writeScreenshot(view: View, output: Path) {
        val bitmap = Bitmap.createBitmap(view.width, view.height, Bitmap.Config.ARGB_8888)
        try {
            view.draw(Canvas(bitmap))
            Files.createDirectories(output.parent)
            Files.newOutputStream(output).use { stream ->
                assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream))
            }
        } finally {
            bitmap.recycle()
        }
    }

    private fun reportDirectory(): Path {
        val workingDirectory = Paths.get(System.getProperty("user.dir")).toAbsolutePath()
        val module = if (workingDirectory.fileName.toString() == "common") workingDirectory
        else workingDirectory.resolve("common")
        return module.resolve("build/reports/home-ui")
    }

    private fun descendants(view: View): List<View> = buildList {
        add(view)
        if (view is ViewGroup) {
            for (index in 0 until view.childCount) addAll(descendants(view.getChildAt(index)))
        }
    }
}
