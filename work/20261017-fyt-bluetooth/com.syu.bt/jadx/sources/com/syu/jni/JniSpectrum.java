package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class JniSpectrum {
    public static native int open(String str);

    public static native int read(int i);

    static {
        try {
            System.loadLibrary("jni_spectrum");
        } catch (Throwable th) {
        }
    }
}
