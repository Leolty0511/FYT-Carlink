package com.shilapi.xcertplay

import org.json.JSONObject
import java.net.HttpURLConnection
import java.net.URL

internal data class GitHubRelease(
    val version: String,
    val title: String,
    val notes: String,
    val pageUrl: String,
    val apkUrl: String?,
)

internal object GitHubReleaseUpdater {
    const val RELEASES_URL = "https://github.com/Leolty0511/FYT-Carlink/releases"
    private const val LATEST_RELEASE_API =
        "https://api.github.com/repos/Leolty0511/FYT-Carlink/releases/latest"

    fun fetchLatest(): GitHubRelease {
        val connection = URL(LATEST_RELEASE_API).openConnection() as HttpURLConnection
        connection.connectTimeout = 8_000
        connection.readTimeout = 12_000
        connection.setRequestProperty("Accept", "application/vnd.github+json")
        connection.setRequestProperty("User-Agent", "T-Link-Android")
        return try {
            val code = connection.responseCode
            check(code == HttpURLConnection.HTTP_OK) { "GitHub HTTP $code" }
            connection.inputStream.bufferedReader().use { parse(it.readText()) }
        } finally {
            connection.disconnect()
        }
    }

    internal fun parse(json: String): GitHubRelease {
        val root = JSONObject(json)
        val tag = root.getString("tag_name")
        val assets = root.optJSONArray("assets")
        var firstApk: String? = null
        var namedApk: String? = null
        if (assets != null) {
            for (index in 0 until assets.length()) {
                val asset = assets.getJSONObject(index)
                val name = asset.optString("name")
                if (!name.endsWith(".apk", ignoreCase = true)) continue
                val url = asset.optString("browser_download_url").takeIf(String::isNotBlank)
                if (firstApk == null) firstApk = url
                if (name.startsWith("T-Link", ignoreCase = true)) namedApk = url
            }
        }
        return GitHubRelease(
            version = tag.removePrefix("v").removePrefix("V"),
            title = root.optString("name").ifBlank { tag },
            notes = root.optString("body"),
            pageUrl = root.optString("html_url").ifBlank { RELEASES_URL },
            apkUrl = namedApk ?: firstApk,
        )
    }

    internal fun isNewer(latest: String, current: String): Boolean {
        val left = versionParts(latest)
        val right = versionParts(current)
        for (index in 0 until maxOf(left.size, right.size)) {
            val comparison = left.getOrElse(index) { 0 }.compareTo(right.getOrElse(index) { 0 })
            if (comparison != 0) return comparison > 0
        }
        return false
    }

    private fun versionParts(version: String): List<Int> = version
        .trim()
        .removePrefix("v")
        .removePrefix("V")
        .substringBefore('-')
        .split('.')
        .map { component -> component.takeWhile(Char::isDigit).toIntOrNull() ?: 0 }
}
