package com.google.android.gles_jni;

import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes.dex */
public class EGLDisplayImpl extends EGLDisplay {
    public int mEGLDisplay;

    public EGLDisplayImpl(int i2) {
        this.mEGLDisplay = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mEGLDisplay == ((EGLDisplayImpl) obj).mEGLDisplay;
    }

    public int hashCode() {
        return this.mEGLDisplay;
    }
}
