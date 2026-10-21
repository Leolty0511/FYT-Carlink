package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class JniSerial {
    static {
        System.loadLibrary("jni_serial");
    }

    public static native void close(int i2);

    public static native int open(String str);

    public static native byte[] read(int i2, int i3, int i4);

    public static native int setup(int i2, int i3, int i4, int i5, int i6);

    public static native void write(int i2, byte[] bArr, int i3, int i4);
}
