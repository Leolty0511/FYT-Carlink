package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class I2c6225VideoJni {
    public static final int CSI_2815 = 1;
    public static final int CSI_9963 = 2;

    static {
        System.loadLibrary("jni_6225video_i2c");
    }

    public native int lsecVideoI2cRead(byte b2, byte[] bArr, int i2);

    public native int lsecVideoI2cWrite(byte b2, byte b3, int i2);
}
