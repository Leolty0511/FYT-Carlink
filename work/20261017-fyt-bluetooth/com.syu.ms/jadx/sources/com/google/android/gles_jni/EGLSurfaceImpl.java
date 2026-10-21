package com.google.android.gles_jni;

import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public class EGLSurfaceImpl extends EGLSurface {
    public int mEGLSurface;
    private int mNativePixelRef;

    public EGLSurfaceImpl() {
        this.mEGLSurface = 0;
        this.mNativePixelRef = 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mEGLSurface == ((EGLSurfaceImpl) obj).mEGLSurface;
    }

    public int hashCode() {
        return this.mEGLSurface;
    }

    public EGLSurfaceImpl(int i2) {
        this.mEGLSurface = i2;
        this.mNativePixelRef = 0;
    }
}
