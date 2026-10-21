package com.shilapi.xcertplay

import android.app.LocaleManager
import android.content.Context
import android.os.LocaleList
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import java.util.Locale

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [33], manifest = Config.NONE)
class AppLocaleTest {
    private val context get() = RuntimeEnvironment.getApplication()
    private val manager get() = context.getSystemService(LocaleManager::class.java)

    @Test fun pickerAndSystemSettingsShareTheSamePreference() {
        AppLocale.save(context, AppLocale.RUSSIAN)
        assertEquals("ru", manager.applicationLocales.toLanguageTags())
        manager.applicationLocales = LocaleList.forLanguageTags("es")
        assertEquals(AppLocale.SPANISH, AppLocale.preference(context))
        assertSame(context, AppLocale.wrap(context))
        AppLocale.save(context, AppLocale.SYSTEM)
        assertTrue(manager.applicationLocales.isEmpty)
        assertEquals(AppLocale.SYSTEM, AppLocale.preference(context))
    }

    @Test fun oldSupportedPreferenceMigratesOnceAndCannotOverrideLaterSystemChanges() {
        context.getSharedPreferences("diplay", Context.MODE_PRIVATE).edit()
            .putString("app_language", "ru").commit()
        AppLocale.wrap(context)
        assertEquals("ru", manager.applicationLocales.toLanguageTags())
        manager.applicationLocales = LocaleList.getEmptyLocaleList()
        AppLocale.wrap(context)
        assertEquals(AppLocale.SYSTEM, AppLocale.preference(context))
    }

    @Test fun removedLanguagePreferencesFallBackToTheSystemLanguage() {
        context.getSharedPreferences("diplay", Context.MODE_PRIVATE).edit()
            .putString("app_language", "ar").commit()
        AppLocale.wrap(context)
        assertTrue(manager.applicationLocales.isEmpty)
        assertEquals(AppLocale.SYSTEM, AppLocale.preference(context))
    }

    @Test fun existingSystemChoiceWinsOverLegacyPreference() {
        context.getSharedPreferences("diplay", Context.MODE_PRIVATE).edit()
            .putString("app_language", "ru").commit()
        manager.applicationLocales = LocaleList.forLanguageTags("zh-CN")
        AppLocale.wrap(context)
        assertEquals(AppLocale.SIMPLIFIED_CHINESE, AppLocale.preference(context))
        assertEquals("zh-CN", manager.applicationLocales.toLanguageTags())
    }

    @Test fun staleTraditionalChineseChoiceIsNormalizedToSimplifiedChinese() {
        manager.applicationLocales = LocaleList.forLanguageTags("zh-TW")
        AppLocale.wrap(context)
        assertEquals("zh-CN", manager.applicationLocales.toLanguageTags())
        assertEquals(AppLocale.SIMPLIFIED_CHINESE, AppLocale.preference(context))
    }

    @Test @Config(sdk = [28, 32])
    fun olderAndroidWrapsRussianAndReturnsToSystemWithoutChangingGlobalResources() {
        val original = context.resources.configuration.locales.toLanguageTags()
        AppLocale.save(context, AppLocale.RUSSIAN)
        val wrapped = AppLocale.wrap(context)
        assertEquals(Locale("ru"), wrapped.resources.configuration.locales[0])
        assertEquals(original, context.resources.configuration.locales.toLanguageTags())
        AppLocale.save(context, AppLocale.SYSTEM)
        assertSame(context, AppLocale.wrap(context))
    }

    @Test fun onlyRequestedLanguagesAreOffered() {
        assertEquals(
            listOf(
                AppLocale.SYSTEM,
                AppLocale.ENGLISH,
                AppLocale.SIMPLIFIED_CHINESE,
                AppLocale.SPANISH,
                AppLocale.RUSSIAN,
            ),
            AppLocale.ALL,
        )
    }
}
