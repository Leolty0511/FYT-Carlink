package com.syu.jni;

/* JADX INFO: loaded from: classes4.dex */
public class SyuJniNative {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SyuJniNative f746a = new SyuJniNative();

    static {
        System.loadLibrary("syu_jni");
    }

    public native int syu_jni_command(int i2, Object obj, Object obj2);
}
