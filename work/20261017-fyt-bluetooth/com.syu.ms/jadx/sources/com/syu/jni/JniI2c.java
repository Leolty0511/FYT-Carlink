package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class JniI2c {
    static {
        System.loadLibrary("jni_i2c");
    }

    public static native int open(String str);

    public static native int readNormalStopHave(int i2, int i3, byte[] bArr, int i4, byte[] bArr2, int i5);

    public static native int readNormalStopNo(int i2, int i3, byte[] bArr, int i4, byte[] bArr2, int i5);

    public static native int readRk(int i2, int i3, int i4);

    public static native int write(int i2, int i3, int i4, int i5);

    public static native int writeNormal(int i2, int i3, byte[] bArr, int i4, byte[] bArr2, int i5);

    public static native int writeRk(int i2, int i3, int i4, int i5);
}
