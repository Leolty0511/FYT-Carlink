package com.google.android.gles_jni;

import javax.microedition.khronos.egl.EGLConfig;

/* JADX INFO: loaded from: classes3.dex */
public class EGLConfigImpl extends EGLConfig {
    private long mEGLConfig;

    public EGLConfigImpl(long j2) {
        this.mEGLConfig = j2;
    }

    public long get() {
        return this.mEGLConfig;
    }
}
