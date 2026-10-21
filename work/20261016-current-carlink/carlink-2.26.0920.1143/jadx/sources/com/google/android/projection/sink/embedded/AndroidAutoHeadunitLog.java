package com.google.android.projection.sink.embedded;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes3.dex */
public class AndroidAutoHeadunitLog {
    static String TAG_PREFIX = "AHU.";

    public static String getTag(String str) {
        return c.n(new StringBuilder(), TAG_PREFIX, str);
    }
}
