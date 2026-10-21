package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class SerialNative {
    static {
        System.loadLibrary("sqlserial");
    }

    public static native void native_close(int i2);

    public static native int native_open(String str);

    public static native int native_open_mbx();

    public static native byte[] native_read(int i2, int i3, int i4);

    public static native int native_setup(int i2, int i3, int i4, int i5, int i6);

    public static native void native_write(int i2, byte[] bArr, int i3);
}
