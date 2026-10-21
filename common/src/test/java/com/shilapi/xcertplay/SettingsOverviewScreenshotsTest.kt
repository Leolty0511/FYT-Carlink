package com.shilapi.xcertplay

import android.content.Intent
import android.content.res.Configuration
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Looper
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import com.shilapi.xcertplay.host.R
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.Paths
import kotlin.math.roundToInt
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29], qualifiers = "en", manifest = Config.NONE)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class SettingsOverviewScreenshotsTest {
    private var previousFontScale = 1f

    @Before fun rememberConfiguration() {
        previousFontScale = RuntimeEnvironment.getApplication().resources.configuration.fontScale
    }

    @After fun restoreConfiguration() {
        RuntimeEnvironment.setQualifiers("en")
        val app = RuntimeEnvironment.getApplication()
        app.resources.updateConfiguration(
            Configuration(app.resources.configuration).apply { fontScale = previousFontScale },
            app.resources.displayMetrics,
        )
    }

    @Test fun writesCompactAndFullLargeFontScreenshotsWithoutLegacyConnectionUi() {
        for ((widthDp, fontScale, name) in listOf(
            Triple(480, 1.3f, "compact-480dp-font-1.3.png"),
            Triple(1280, 1.5f, "full-1280dp-font-1.5.png"),
        )) {
            RuntimeEnvironment.setQualifiers("en-w${widthDp}dp-h960dp-mdpi")
            val app = RuntimeEnvironment.getApplication()
            app.resources.updateConfiguration(
                Configuration(app.resources.configuration).apply {
                    this.fontScale = fontScale
                    screenWidthDp = widthDp
                    screenHeightDp = 960
                },
                app.resources.displayMetrics,
            )
            val activity = Robolectric.buildActivity(
                DiPlayActivity::class.java,
                Intent(app, DiPlayActivity::class.java).putExtra("page", "settings"),
            ).setup().get()
            try {
                val decor = activity.window.decorView
                layout(decor, widthDp, 960, app.resources.displayMetrics.density)
                val labels = descendants(decor).filterIsInstance<TextView>().map { it.text.toString() }
                assertTrue(labels.contains(activity.getString(R.string.settings_overview)))
                assertFalse(labels.contains(activity.getString(R.string.connection)))
                assertFalse(labels.contains(activity.getString(R.string.setup_guide)))
                writeScreenshot(decor, reportDirectory().resolve(name))
            } finally {
                activity.finish()
                shadowOf(Looper.getMainLooper()).idle()
            }
        }
    }

    private fun layout(view: View, widthDp: Int, heightDp: Int, density: Float) {
        val width = (widthDp * density).roundToInt()
        val height = (heightDp * density).roundToInt()
        view.measure(
            View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY),
            View.MeasureSpec.makeMeasureSpec(height, View.MeasureSpec.EXACTLY),
        )
        view.layout(0, 0, width, height)
        assertTrue(view.width > 0 && view.height > 0)
    }

    private fun reportDirectory(): Path {
        val workingDirectory = Paths.get(System.getProperty("user.dir")).toAbsolutePath()
        val module = if (workingDirectory.fileName.toString() == "common") workingDirectory else workingDirectory.resolve("common")
        return module.resolve("build/reports/settings-overview-ui")
    }

    private fun writeScreenshot(view: View, output: Path) {
        shadowOf(Looper.getMainLooper()).idle()
        descendants(view).forEach(View::invalidate)
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

    private fun descendants(view: View): List<View> = buildList {
        add(view)
        if (view is ViewGroup) {
            for (index in 0 until view.childCount) addAll(descendants(view.getChildAt(index)))
        }
    }
}
