package com.google.android.gles_jni;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import q.a;

/* JADX INFO: loaded from: classes3.dex */
public class EGLImpl implements a {
    private EGLContextImpl mContext = new EGLContextImpl(-1);
    private EGLDisplayImpl mDisplay = new EGLDisplayImpl(-1);
    private EGLSurfaceImpl mSurface = new EGLSurfaceImpl(-1);

    static {
        _nativeClassInit();
    }

    private native long _eglCreateContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int[] iArr);

    private native long _eglCreatePbufferSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int[] iArr);

    private native void _eglCreatePixmapSurface(EGLSurface eGLSurface, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    private native long _eglCreateWindowSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    private native long _eglCreateWindowSurfaceTexture(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    private native long _eglGetCurrentContext();

    private native long _eglGetCurrentDisplay();

    private native long _eglGetCurrentSurface(int i2);

    private native long _eglGetDisplay(Object obj);

    private static native void _nativeClassInit();

    public static native int getInitCount(EGLDisplay eGLDisplay);

    @Override // q.a
    public native boolean eglChooseConfig(EGLDisplay eGLDisplay, int[] iArr, EGLConfig[] eGLConfigArr, int i2, int[] iArr2);

    @Override // q.a
    public native boolean eglCopyBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface, Object obj);

    @Override // q.a
    public EGLContext eglCreateContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int[] iArr) {
        long j_eglCreateContext = _eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        return j_eglCreateContext == 0 ? a.f1104b : new EGLContextImpl(j_eglCreateContext);
    }

    @Override // q.a
    public EGLSurface eglCreatePbufferSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int[] iArr) {
        long j_eglCreatePbufferSurface = _eglCreatePbufferSurface(eGLDisplay, eGLConfig, iArr);
        return j_eglCreatePbufferSurface == 0 ? a.c : new EGLSurfaceImpl(j_eglCreatePbufferSurface);
    }

    @Override // q.a
    public EGLSurface eglCreatePixmapSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr) {
        EGLSurfaceImpl eGLSurfaceImpl = new EGLSurfaceImpl();
        _eglCreatePixmapSurface(eGLSurfaceImpl, eGLDisplay, eGLConfig, obj, iArr);
        return eGLSurfaceImpl.mEGLSurface == 0 ? a.c : eGLSurfaceImpl;
    }

    @Override // q.a
    public EGLSurface eglCreateWindowSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr) {
        Surface surface;
        long j_eglCreateWindowSurfaceTexture;
        if (obj instanceof SurfaceView) {
            surface = ((SurfaceView) obj).getHolder().getSurface();
        } else if (obj instanceof SurfaceHolder) {
            surface = ((SurfaceHolder) obj).getSurface();
        } else {
            surface = obj instanceof Surface ? (Surface) obj : null;
        }
        if (surface != null) {
            j_eglCreateWindowSurfaceTexture = _eglCreateWindowSurface(eGLDisplay, eGLConfig, surface, iArr);
        } else {
            if (!(obj instanceof SurfaceTexture)) {
                throw new UnsupportedOperationException("eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment.");
            }
            j_eglCreateWindowSurfaceTexture = _eglCreateWindowSurfaceTexture(eGLDisplay, eGLConfig, obj, iArr);
        }
        return j_eglCreateWindowSurfaceTexture == 0 ? a.c : new EGLSurfaceImpl(j_eglCreateWindowSurfaceTexture);
    }

    @Override // q.a
    public native boolean eglDestroyContext(EGLDisplay eGLDisplay, EGLContext eGLContext);

    @Override // q.a
    public native boolean eglDestroySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface);

    @Override // q.a
    public native boolean eglGetConfigAttrib(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2, int[] iArr);

    @Override // q.a
    public native boolean eglGetConfigs(EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr, int i2, int[] iArr);

    @Override // q.a
    public synchronized EGLContext eglGetCurrentContext() {
        long j_eglGetCurrentContext = _eglGetCurrentContext();
        if (j_eglGetCurrentContext == 0) {
            return a.f1104b;
        }
        if (this.mContext.mEGLContext != j_eglGetCurrentContext) {
            this.mContext = new EGLContextImpl(j_eglGetCurrentContext);
        }
        return this.mContext;
    }

    @Override // q.a
    public synchronized EGLDisplay eglGetCurrentDisplay() {
        long j_eglGetCurrentDisplay = _eglGetCurrentDisplay();
        if (j_eglGetCurrentDisplay == 0) {
            return a.f1103a;
        }
        if (this.mDisplay.mEGLDisplay != j_eglGetCurrentDisplay) {
            this.mDisplay = new EGLDisplayImpl(j_eglGetCurrentDisplay);
        }
        return this.mDisplay;
    }

    @Override // q.a
    public synchronized EGLSurface eglGetCurrentSurface(int i2) {
        long j_eglGetCurrentSurface = _eglGetCurrentSurface(i2);
        if (j_eglGetCurrentSurface == 0) {
            return a.c;
        }
        if (this.mSurface.mEGLSurface != j_eglGetCurrentSurface) {
            this.mSurface = new EGLSurfaceImpl(j_eglGetCurrentSurface);
        }
        return this.mSurface;
    }

    @Override // q.a
    public synchronized EGLDisplay eglGetDisplay(Object obj) {
        long j_eglGetDisplay = _eglGetDisplay(obj);
        if (j_eglGetDisplay == 0) {
            return a.f1103a;
        }
        if (this.mDisplay.mEGLDisplay != j_eglGetDisplay) {
            this.mDisplay = new EGLDisplayImpl(j_eglGetDisplay);
        }
        return this.mDisplay;
    }

    @Override // q.a
    public native int eglGetError();

    @Override // q.a
    public native boolean eglInitialize(EGLDisplay eGLDisplay, int[] iArr);

    @Override // q.a
    public native boolean eglMakeCurrent(EGLDisplay eGLDisplay, EGLSurface eGLSurface, EGLSurface eGLSurface2, EGLContext eGLContext);

    @Override // q.a
    public native boolean eglQueryContext(EGLDisplay eGLDisplay, EGLContext eGLContext, int i2, int[] iArr);

    @Override // q.a
    public native String eglQueryString(EGLDisplay eGLDisplay, int i2);

    @Override // q.a
    public native boolean eglQuerySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface, int i2, int[] iArr);

    @Override // q.a
    public native boolean eglReleaseThread();

    @Override // q.a
    public native boolean eglSwapBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface);

    @Override // q.a
    public native boolean eglTerminate(EGLDisplay eGLDisplay);

    @Override // q.a
    public native boolean eglWaitGL();

    @Override // q.a
    public native boolean eglWaitNative(int i2, Object obj);
}
