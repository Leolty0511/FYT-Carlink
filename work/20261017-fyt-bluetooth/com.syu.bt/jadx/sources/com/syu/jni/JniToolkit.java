package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class JniToolkit {
    public static native int openQst();

    public static native int setBrightness(int i);

    static {
        try {
            System.loadLibrary("jni_toolkit");
        } catch (Throwable th) {
        }
    }
}
