package com.google.android.projection.protocol;

import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
class ReceiverLibJni {
    private static boolean isLoaded = false;

    private ReceiverLibJni() {
    }

    public static synchronized void load() {
        if (!isLoaded && !"robolectric".equals(Build.FINGERPRINT)) {
            System.loadLibrary("galreceiver_jni");
            isLoaded = true;
        }
    }
}
