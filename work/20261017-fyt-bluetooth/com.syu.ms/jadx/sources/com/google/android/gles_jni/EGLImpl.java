package com.google.android.gles_jni;

import a0.a;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public class EGLImpl implements a {
    private EGLContextImpl mContext = new EGLContextImpl(-1);
    private EGLDisplayImpl mDisplay = new EGLDisplayImpl(-1);
    private EGLSurfaceImpl mSurface = new EGLSurfaceImpl(-1);

    static {
        _nativeClassInit();
    }

    private native int _eglCreateContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int[] iArr);

    private native int _eglCreatePbufferSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int[] iArr);

    private native void _eglCreatePixmapSurface(EGLSurface eGLSurface, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    private native int _eglCreateWindowSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    private native int _eglCreateWindowSurfaceTexture(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    private native int _eglGetCurrentContext();

    private native int _eglGetCurrentDisplay();

    private native int _eglGetCurrentSurface(int i2);

    private native int _eglGetDisplay(Object obj);

    private static native void _nativeClassInit();

    public static native int getInitCount(EGLDisplay eGLDisplay);

    @Override // a0.a
    public native boolean eglChooseConfig(EGLDisplay eGLDisplay, int[] iArr, EGLConfig[] eGLConfigArr, int i2, int[] iArr2);

    @Override // a0.a
    public native boolean eglCopyBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface, Object obj);

    @Override // a0.a
    public EGLContext eglCreateContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int[] iArr) {
        int i_eglCreateContext = _eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        return i_eglCreateContext == 0 ? a.f89c : new EGLContextImpl(i_eglCreateContext);
    }

    @Override // a0.a
    public EGLSurface eglCreatePbufferSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int[] iArr) {
        int i_eglCreatePbufferSurface = _eglCreatePbufferSurface(eGLDisplay, eGLConfig, iArr);
        return i_eglCreatePbufferSurface == 0 ? a.f90d : new EGLSurfaceImpl(i_eglCreatePbufferSurface);
    }

    @Override // a0.a
    public EGLSurface eglCreatePixmapSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr) {
        EGLSurfaceImpl eGLSurfaceImpl = new EGLSurfaceImpl();
        _eglCreatePixmapSurface(eGLSurfaceImpl, eGLDisplay, eGLConfig, obj, iArr);
        return eGLSurfaceImpl.mEGLSurface == 0 ? a.f90d : eGLSurfaceImpl;
    }

    @Override // a0.a
    public EGLSurface eglCreateWindowSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr) {
        Surface surface;
        int i_eglCreateWindowSurfaceTexture;
        if (obj instanceof SurfaceView) {
            surface = ((SurfaceView) obj).getHolder().getSurface();
        } else if (obj instanceof SurfaceHolder) {
            surface = ((SurfaceHolder) obj).getSurface();
        } else {
            surface = obj instanceof Surface ? (Surface) obj : null;
        }
        if (surface != null) {
            i_eglCreateWindowSurfaceTexture = _eglCreateWindowSurface(eGLDisplay, eGLConfig, surface, iArr);
        } else {
            if (!(obj instanceof SurfaceTexture)) {
                throw new UnsupportedOperationException("eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment.");
            }
            i_eglCreateWindowSurfaceTexture = _eglCreateWindowSurfaceTexture(eGLDisplay, eGLConfig, obj, iArr);
        }
        return i_eglCreateWindowSurfaceTexture == 0 ? a.f90d : new EGLSurfaceImpl(i_eglCreateWindowSurfaceTexture);
    }

    @Override // a0.a
    public native boolean eglDestroyContext(EGLDisplay eGLDisplay, EGLContext eGLContext);

    @Override // a0.a
    public native boolean eglDestroySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface);

    @Override // a0.a
    public native boolean eglGetConfigAttrib(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2, int[] iArr);

    @Override // a0.a
    public native boolean eglGetConfigs(EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr, int i2, int[] iArr);

    @Override // a0.a
    public synchronized EGLContext eglGetCurrentContext() {
        int i_eglGetCurrentContext = _eglGetCurrentContext();
        if (i_eglGetCurrentContext == 0) {
            return a.f89c;
        }
        if (this.mContext.mEGLContext != i_eglGetCurrentContext) {
            this.mContext = new EGLContextImpl(i_eglGetCurrentContext);
        }
        return this.mContext;
    }

    @Override // a0.a
    public synchronized EGLDisplay eglGetCurrentDisplay() {
        int i_eglGetCurrentDisplay = _eglGetCurrentDisplay();
        if (i_eglGetCurrentDisplay == 0) {
            return a.f88b;
        }
        if (this.mDisplay.mEGLDisplay != i_eglGetCurrentDisplay) {
            this.mDisplay = new EGLDisplayImpl(i_eglGetCurrentDisplay);
        }
        return this.mDisplay;
    }

    @Override // a0.a
    public synchronized EGLSurface eglGetCurrentSurface(int i2) {
        int i_eglGetCurrentSurface = _eglGetCurrentSurface(i2);
        if (i_eglGetCurrentSurface == 0) {
            return a.f90d;
        }
        if (this.mSurface.mEGLSurface != i_eglGetCurrentSurface) {
            this.mSurface = new EGLSurfaceImpl(i_eglGetCurrentSurface);
        }
        return this.mSurface;
    }

    @Override // a0.a
    public synchronized EGLDisplay eglGetDisplay(Object obj) {
        int i_eglGetDisplay = _eglGetDisplay(obj);
        if (i_eglGetDisplay == 0) {
            return a.f88b;
        }
        if (this.mDisplay.mEGLDisplay != i_eglGetDisplay) {
            this.mDisplay = new EGLDisplayImpl(i_eglGetDisplay);
        }
        return this.mDisplay;
    }

    @Override // a0.a
    public native int eglGetError();

    @Override // a0.a
    public native boolean eglInitialize(EGLDisplay eGLDisplay, int[] iArr);

    @Override // a0.a
    public native boolean eglMakeCurrent(EGLDisplay eGLDisplay, EGLSurface eGLSurface, EGLSurface eGLSurface2, EGLContext eGLContext);

    @Override // a0.a
    public native boolean eglQueryContext(EGLDisplay eGLDisplay, EGLContext eGLContext, int i2, int[] iArr);

    @Override // a0.a
    public native String eglQueryString(EGLDisplay eGLDisplay, int i2);

    @Override // a0.a
    public native boolean eglQuerySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface, int i2, int[] iArr);

    @Override // a0.a
    public native boolean eglReleaseThread();

    @Override // a0.a
    public native boolean eglSwapBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface);

    @Override // a0.a
    public native boolean eglTerminate(EGLDisplay eGLDisplay);

    @Override // a0.a
    public native boolean eglWaitGL();

    @Override // a0.a
    public native boolean eglWaitNative(int i2, Object obj);
}
