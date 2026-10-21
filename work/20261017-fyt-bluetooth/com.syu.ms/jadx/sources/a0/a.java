package a0;

import com.google.android.gles_jni.EGLContextImpl;
import com.google.android.gles_jni.EGLDisplayImpl;
import com.google.android.gles_jni.EGLSurfaceImpl;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public interface a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f87a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final EGLDisplay f88b = new EGLDisplayImpl(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EGLContext f89c = new EGLContextImpl(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final EGLSurface f90d = new EGLSurfaceImpl(0);

    boolean eglChooseConfig(EGLDisplay eGLDisplay, int[] iArr, EGLConfig[] eGLConfigArr, int i2, int[] iArr2);

    boolean eglCopyBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface, Object obj);

    EGLContext eglCreateContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int[] iArr);

    EGLSurface eglCreatePbufferSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int[] iArr);

    EGLSurface eglCreatePixmapSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    EGLSurface eglCreateWindowSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr);

    boolean eglDestroyContext(EGLDisplay eGLDisplay, EGLContext eGLContext);

    boolean eglDestroySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface);

    boolean eglGetConfigAttrib(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i2, int[] iArr);

    boolean eglGetConfigs(EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr, int i2, int[] iArr);

    EGLContext eglGetCurrentContext();

    EGLDisplay eglGetCurrentDisplay();

    EGLSurface eglGetCurrentSurface(int i2);

    EGLDisplay eglGetDisplay(Object obj);

    int eglGetError();

    boolean eglInitialize(EGLDisplay eGLDisplay, int[] iArr);

    boolean eglMakeCurrent(EGLDisplay eGLDisplay, EGLSurface eGLSurface, EGLSurface eGLSurface2, EGLContext eGLContext);

    boolean eglQueryContext(EGLDisplay eGLDisplay, EGLContext eGLContext, int i2, int[] iArr);

    String eglQueryString(EGLDisplay eGLDisplay, int i2);

    boolean eglQuerySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface, int i2, int[] iArr);

    boolean eglReleaseThread();

    boolean eglSwapBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface);

    boolean eglTerminate(EGLDisplay eGLDisplay);

    boolean eglWaitGL();

    boolean eglWaitNative(int i2, Object obj);
}
