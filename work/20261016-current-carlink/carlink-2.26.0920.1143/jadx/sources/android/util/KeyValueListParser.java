package android.util;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class KeyValueListParser {
    private final TextUtils.StringSplitter mSplitter;
    private final ArrayMap<String, String> mValues = new ArrayMap<>();

    public KeyValueListParser(char c) {
        this.mSplitter = new TextUtils.SimpleStringSplitter(c);
    }

    public boolean getBoolean(String str, boolean z2) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Boolean.parseBoolean(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return z2;
    }

    public float getFloat(String str, float f2) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Float.parseFloat(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return f2;
    }

    public int getInt(String str, int i2) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    public long getLong(String str, long j2) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Long.parseLong(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return j2;
    }

    public String getString(String str, String str2) {
        String str3 = this.mValues.get(str);
        return str3 != null ? str3 : str2;
    }

    public void setString(String str) {
        this.mValues.clear();
        if (str != null) {
            this.mSplitter.setString(str);
            for (String str2 : this.mSplitter) {
                int iIndexOf = str2.indexOf(61);
                if (iIndexOf < 0) {
                    this.mValues.clear();
                    throw new IllegalArgumentException("'" + str2 + "' in '" + str + "' is not a valid key-value pair");
                }
                this.mValues.put(str2.substring(0, iIndexOf).trim(), str2.substring(iIndexOf + 1).trim());
            }
        }
    }
}
