package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class JniToolkit {
    static {
        System.loadLibrary("jni_toolkit");
    }

    public static native int openQst();

    public static native int setBrightness(int i2);
}
