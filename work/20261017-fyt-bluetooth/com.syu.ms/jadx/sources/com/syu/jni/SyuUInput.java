package com.syu.jni;

/* JADX INFO: loaded from: classes.dex */
public class SyuUInput {
    static {
        System.loadLibrary("syu_uinput");
    }

    public native void keyEvent(int i2, int i3);

    public native void move(int i2, int i3);

    public native int openDev();
}
