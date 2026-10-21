package com.google.android.gles_jni;

import b0.f;
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes.dex */
public class EGLContextImpl extends EGLContext {
    public int mEGLContext;
    private GLImpl mGLContext = new GLImpl();

    public EGLContextImpl(int i2) {
        this.mEGLContext = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mEGLContext == ((EGLContextImpl) obj).mEGLContext;
    }

    @Override // javax.microedition.khronos.egl.EGLContext
    public f getGL() {
        return this.mGLContext;
    }

    public int hashCode() {
        return this.mEGLContext;
    }
}
