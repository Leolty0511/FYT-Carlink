package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class JniSpectrum {
    static {
        System.loadLibrary("jni_spectrum");
    }

    public static native int open(String str);

    public static native int read(int i2);
}
