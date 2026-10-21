package com.google.android.projection.sink.settings;

import android.content.SharedPreferences;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceManager;

/* JADX INFO: loaded from: classes3.dex */
public class SettingsUtils {
    private SettingsUtils() {
    }

    public static void bindPreferenceSummaryToValue(Preference preference, Preference.OnPreferenceChangeListener onPreferenceChangeListener) {
        preference.setOnPreferenceChangeListener(onPreferenceChangeListener);
        syncSummaryToValue(preference);
    }

    public static void syncSummaryToValue(Preference preference) {
        String string;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(preference.getContext());
        try {
            string = defaultSharedPreferences.getString(preference.getKey(), "");
        } catch (ClassCastException unused) {
            string = "" + defaultSharedPreferences.getInt(preference.getKey(), 0);
        }
        updatePreferenceSummary(preference, string);
    }

    public static boolean updatePreferenceSummary(Preference preference, Object obj) {
        if (obj == null) {
            return false;
        }
        String string = obj.toString();
        if (!(preference instanceof ListPreference)) {
            preference.setSummary(string);
            return true;
        }
        ListPreference listPreference = (ListPreference) preference;
        int iFindIndexOfValue = listPreference.findIndexOfValue(string);
        preference.setSummary(iFindIndexOfValue >= 0 ? listPreference.getEntries()[iFindIndexOfValue] : null);
        return true;
    }
}
