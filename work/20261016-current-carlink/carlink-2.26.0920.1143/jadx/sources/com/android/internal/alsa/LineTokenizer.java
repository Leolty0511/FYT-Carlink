package com.android.internal.alsa;

/* JADX INFO: loaded from: classes2.dex */
public class LineTokenizer {
    public static final int kTokenNotFound = -1;
    private final String mDelimiters;

    public LineTokenizer(String str) {
        this.mDelimiters = str;
    }

    public int nextDelimiter(String str, int i2) {
        int length = str.length();
        while (i2 < length && this.mDelimiters.indexOf(str.charAt(i2)) == -1) {
            i2++;
        }
        if (i2 < length) {
            return i2;
        }
        return -1;
    }

    public int nextToken(String str, int i2) {
        int length = str.length();
        while (i2 < length && this.mDelimiters.indexOf(str.charAt(i2)) != -1) {
            i2++;
        }
        if (i2 < length) {
            return i2;
        }
        return -1;
    }
}
