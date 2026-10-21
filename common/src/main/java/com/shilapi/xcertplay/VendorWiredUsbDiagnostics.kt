package com.shilapi.xcertplay

import android.content.Context
import android.util.Log
import org.json.JSONArray
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/** Small persistent trail for the role-switch period, when switching to USB host drops ADB. */
internal object VendorWiredUsbDiagnostics {
    private const val PREFS = "vendor_wired_usb_diagnostics"
    private const val KEY_EVENTS = "events"
    private const val MAX_EVENTS = 12
    private const val TAG = "Tlink-WiredUsb"

    @Synchronized
    fun record(context: Context, message: String, nowMillis: Long = System.currentTimeMillis()) {
        val safe = DiagnosticRedactor.redact(message) ?: return
        Log.i(TAG, safe)
        val preferences = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val previous = runCatching { JSONArray(preferences.getString(KEY_EVENTS, "[]")) }
            .getOrElse { JSONArray() }
        val retained = JSONArray()
        val first = (previous.length() - (MAX_EVENTS - 1)).coerceAtLeast(0)
        for (index in first until previous.length()) retained.put(previous.optJSONObject(index))
        retained.put(JSONObject().put("time", nowMillis).put("message", safe))
        preferences.edit().putString(KEY_EVENTS, retained.toString()).apply()
    }

    @Synchronized
    fun report(context: Context): String {
        val raw = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getString(KEY_EVENTS, "[]")
        val events = runCatching { JSONArray(raw) }.getOrElse { JSONArray() }
        if (events.length() == 0) return "wiredUsbEvent=none"
        val formatter = SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US)
        return buildString {
            for (index in 0 until events.length()) {
                val event = events.optJSONObject(index) ?: continue
                val message = DiagnosticRedactor.redact(event.optString("message")) ?: continue
                append("wiredUsbEvent=")
                append(formatter.format(Date(event.optLong("time"))))
                append(' ')
                appendLine(message)
            }
        }.trimEnd()
    }
}
