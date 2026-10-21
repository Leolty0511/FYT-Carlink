package android.preference;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface PreferenceDataStore {
    boolean getBoolean(String str, boolean z2);

    float getFloat(String str, float f2);

    int getInt(String str, int i2);

    long getLong(String str, long j2);

    String getString(String str, String str2);

    Set<String> getStringSet(String str, Set<String> set);

    void putBoolean(String str, boolean z2);

    void putFloat(String str, float f2);

    void putInt(String str, int i2);

    void putLong(String str, long j2);

    void putString(String str, String str2);

    void putStringSet(String str, Set<String> set);
}
