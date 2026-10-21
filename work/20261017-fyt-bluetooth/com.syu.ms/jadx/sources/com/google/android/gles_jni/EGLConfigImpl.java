package com.google.android.gles_jni;

import javax.microedition.khronos.egl.EGLConfig;

/* JADX INFO: loaded from: classes.dex */
public class EGLConfigImpl extends EGLConfig {
    private int mEGLConfig;

    public EGLConfigImpl(int i2) {
        this.mEGLConfig = i2;
    }

    public int get() {
        return this.mEGLConfig;
    }
}
