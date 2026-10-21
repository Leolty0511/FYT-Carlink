package com.shilapi.xcertplay

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29], manifest = Config.NONE)
class GitHubReleaseUpdaterTest {
    @Test fun prefersTheNamedTLinkApk() {
        val release = GitHubReleaseUpdater.parse(
            """{
                "tag_name":"v1.2.0",
                "name":"T-Link 1.2.0",
                "body":"Changes",
                "html_url":"https://github.com/Leolty0511/FYT-Carlink/releases/tag/v1.2.0",
                "assets":[
                    {"name":"other.apk","browser_download_url":"https://example.com/other.apk"},
                    {"name":"T-Link-1.2.0.apk","browser_download_url":"https://example.com/T-Link.apk"}
                ]
            }""".trimIndent(),
        )
        assertEquals("1.2.0", release.version)
        assertEquals("https://example.com/T-Link.apk", release.apkUrl)
    }

    @Test fun comparesNumericReleaseVersions() {
        assertTrue(GitHubReleaseUpdater.isNewer("v1.0.1", "1.0.0"))
        assertTrue(GitHubReleaseUpdater.isNewer("1.10.0", "1.9.9"))
        assertFalse(GitHubReleaseUpdater.isNewer("v1.0.0", "1.0.0"))
        assertFalse(GitHubReleaseUpdater.isNewer("0.9.9", "1.0.0"))
    }
}
