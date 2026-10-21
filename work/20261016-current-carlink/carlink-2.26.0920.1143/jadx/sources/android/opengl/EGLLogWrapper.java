package android.opengl;

import android.accessibilityservice.c;
import android.app.m;
import android.content.Context;
import java.io.IOException;
import java.io.Writer;
import q.a;
import q.b;

/* JADX INFO: loaded from: classes.dex */
class EGLLogWrapper implements a {
    private int mArgCount;
    boolean mCheckError;
    private a mEgl10;
    Writer mLog;
    boolean mLogArgumentNames;

    public EGLLogWrapper(b bVar, int i2, Writer writer) {
        this.mEgl10 = (a) bVar;
        this.mLog = writer;
        this.mLogArgumentNames = (i2 & 4) != 0;
        this.mCheckError = (i2 & 1) != 0;
    }

    private void arg(String str, String str2) {
        int i2 = this.mArgCount;
        this.mArgCount = i2 + 1;
        if (i2 > 0) {
            log(", ");
        }
        if (this.mLogArgumentNames) {
            log(c.D(str, "="));
        }
        log(str2);
    }

    private void begin(String str) {
        log(str + '(');
        this.mArgCount = 0;
    }

    private void checkError() {
        int iEglGetError = this.mEgl10.eglGetError();
        if (iEglGetError != 12288) {
            String str = "eglError: " + getErrorString(iEglGetError);
            logLine(str);
            if (this.mCheckError) {
                throw new GLException(iEglGetError, str);
            }
        }
    }

    private void end() {
        log(");\n");
        flush();
    }

    private void flush() {
        try {
            this.mLog.flush();
        } catch (IOException unused) {
            this.mLog = null;
        }
    }

    public static String getErrorString(int i2) {
        switch (i2) {
            case 12288:
                return "EGL_SUCCESS";
            case 12289:
                return "EGL_NOT_INITIALIZED";
            case 12290:
                return "EGL_BAD_ACCESS";
            case 12291:
                return "EGL_BAD_ALLOC";
            case 12292:
                return "EGL_BAD_ATTRIBUTE";
            case 12293:
                return "EGL_BAD_CONFIG";
            case 12294:
                return "EGL_BAD_CONTEXT";
            case 12295:
                return "EGL_BAD_CURRENT_SURFACE";
            case 12296:
                return "EGL_BAD_DISPLAY";
            case 12297:
                return "EGL_BAD_MATCH";
            case 12298:
                return "EGL_BAD_NATIVE_PIXMAP";
            case 12299:
                return "EGL_BAD_NATIVE_WINDOW";
            case 12300:
                return "EGL_BAD_PARAMETER";
            case EGL14.EGL_BAD_SURFACE /* 12301 */:
                return "EGL_BAD_SURFACE";
            case EGL14.EGL_CONTEXT_LOST /* 12302 */:
                return "EGL_CONTEXT_LOST";
            default:
                return getHex(i2);
        }
    }

    private static String getHex(int i2) {
        return m.d(i2, new StringBuilder("0x"));
    }

    private void log(String str) {
        try {
            this.mLog.write(str);
        } catch (IOException unused) {
        }
    }

    private void logLine(String str) {
        log(str + '\n');
    }

    private void returns(String str) {
        log(c.k(" returns ", str, ";\n"));
        flush();
    }

    private String toString(Object obj) {
        return obj == null ? "null" : obj.toString();
    }

    @Override // q.a
    public boolean eglChooseConfig(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, int[] iArr, javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr, int i2, int[] iArr2) {
        begin("eglChooseConfig");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("attrib_list", iArr);
        arg("config_size", i2);
        end();
        boolean zEglChooseConfig = this.mEgl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i2, iArr2);
        arg("configs", (Object[]) eGLConfigArr);
        arg("num_config", iArr2);
        returns(zEglChooseConfig);
        checkError();
        return zEglChooseConfig;
    }

    @Override // q.a
    public boolean eglCopyBuffers(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLSurface eGLSurface, Object obj) {
        begin("eglCopyBuffers");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("surface", eGLSurface);
        arg("native_pixmap", obj);
        end();
        boolean zEglCopyBuffers = this.mEgl10.eglCopyBuffers(eGLDisplay, eGLSurface, obj);
        returns(zEglCopyBuffers);
        checkError();
        return zEglCopyBuffers;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLContext eglCreateContext(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, javax.microedition.khronos.egl.EGLContext eGLContext, int[] iArr) {
        begin("eglCreateContext");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("config", eGLConfig);
        arg("share_context", eGLContext);
        arg("attrib_list", iArr);
        end();
        javax.microedition.khronos.egl.EGLContext eGLContextEglCreateContext = this.mEgl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        returns(eGLContextEglCreateContext);
        checkError();
        return eGLContextEglCreateContext;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLSurface eglCreatePbufferSurface(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, int[] iArr) {
        begin("eglCreatePbufferSurface");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("config", eGLConfig);
        arg("attrib_list", iArr);
        end();
        javax.microedition.khronos.egl.EGLSurface eGLSurfaceEglCreatePbufferSurface = this.mEgl10.eglCreatePbufferSurface(eGLDisplay, eGLConfig, iArr);
        returns(eGLSurfaceEglCreatePbufferSurface);
        checkError();
        return eGLSurfaceEglCreatePbufferSurface;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLSurface eglCreatePixmapSurface(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, Object obj, int[] iArr) {
        begin("eglCreatePixmapSurface");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("config", eGLConfig);
        arg("native_pixmap", obj);
        arg("attrib_list", iArr);
        end();
        javax.microedition.khronos.egl.EGLSurface eGLSurfaceEglCreatePixmapSurface = this.mEgl10.eglCreatePixmapSurface(eGLDisplay, eGLConfig, obj, iArr);
        returns(eGLSurfaceEglCreatePixmapSurface);
        checkError();
        return eGLSurfaceEglCreatePixmapSurface;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLSurface eglCreateWindowSurface(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, Object obj, int[] iArr) {
        begin("eglCreateWindowSurface");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("config", eGLConfig);
        arg("native_window", obj);
        arg("attrib_list", iArr);
        end();
        javax.microedition.khronos.egl.EGLSurface eGLSurfaceEglCreateWindowSurface = this.mEgl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, iArr);
        returns(eGLSurfaceEglCreateWindowSurface);
        checkError();
        return eGLSurfaceEglCreateWindowSurface;
    }

    @Override // q.a
    public boolean eglDestroyContext(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLContext eGLContext) {
        begin("eglDestroyContext");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("context", eGLContext);
        end();
        boolean zEglDestroyContext = this.mEgl10.eglDestroyContext(eGLDisplay, eGLContext);
        returns(zEglDestroyContext);
        checkError();
        return zEglDestroyContext;
    }

    @Override // q.a
    public boolean eglDestroySurface(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLSurface eGLSurface) {
        begin("eglDestroySurface");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("surface", eGLSurface);
        end();
        boolean zEglDestroySurface = this.mEgl10.eglDestroySurface(eGLDisplay, eGLSurface);
        returns(zEglDestroySurface);
        checkError();
        return zEglDestroySurface;
    }

    @Override // q.a
    public boolean eglGetConfigAttrib(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, int i2, int[] iArr) {
        begin("eglGetConfigAttrib");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("config", eGLConfig);
        arg("attribute", i2);
        end();
        boolean zEglGetConfigAttrib = this.mEgl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, iArr);
        arg("value", iArr);
        returns(zEglGetConfigAttrib);
        checkError();
        return false;
    }

    @Override // q.a
    public boolean eglGetConfigs(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr, int i2, int[] iArr) {
        begin("eglGetConfigs");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("config_size", i2);
        end();
        boolean zEglGetConfigs = this.mEgl10.eglGetConfigs(eGLDisplay, eGLConfigArr, i2, iArr);
        arg("configs", (Object[]) eGLConfigArr);
        arg("num_config", iArr);
        returns(zEglGetConfigs);
        checkError();
        return zEglGetConfigs;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLContext eglGetCurrentContext() {
        begin("eglGetCurrentContext");
        end();
        javax.microedition.khronos.egl.EGLContext eGLContextEglGetCurrentContext = this.mEgl10.eglGetCurrentContext();
        returns(eGLContextEglGetCurrentContext);
        checkError();
        return eGLContextEglGetCurrentContext;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLDisplay eglGetCurrentDisplay() {
        begin("eglGetCurrentDisplay");
        end();
        javax.microedition.khronos.egl.EGLDisplay eGLDisplayEglGetCurrentDisplay = this.mEgl10.eglGetCurrentDisplay();
        returns(eGLDisplayEglGetCurrentDisplay);
        checkError();
        return eGLDisplayEglGetCurrentDisplay;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLSurface eglGetCurrentSurface(int i2) {
        begin("eglGetCurrentSurface");
        arg("readdraw", i2);
        end();
        javax.microedition.khronos.egl.EGLSurface eGLSurfaceEglGetCurrentSurface = this.mEgl10.eglGetCurrentSurface(i2);
        returns(eGLSurfaceEglGetCurrentSurface);
        checkError();
        return eGLSurfaceEglGetCurrentSurface;
    }

    @Override // q.a
    public javax.microedition.khronos.egl.EGLDisplay eglGetDisplay(Object obj) {
        begin("eglGetDisplay");
        arg("native_display", obj);
        end();
        javax.microedition.khronos.egl.EGLDisplay eGLDisplayEglGetDisplay = this.mEgl10.eglGetDisplay(obj);
        returns(eGLDisplayEglGetDisplay);
        checkError();
        return eGLDisplayEglGetDisplay;
    }

    @Override // q.a
    public int eglGetError() {
        begin("eglGetError");
        end();
        int iEglGetError = this.mEgl10.eglGetError();
        returns(getErrorString(iEglGetError));
        return iEglGetError;
    }

    @Override // q.a
    public boolean eglInitialize(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, int[] iArr) {
        begin("eglInitialize");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        end();
        boolean zEglInitialize = this.mEgl10.eglInitialize(eGLDisplay, iArr);
        returns(zEglInitialize);
        arg("major_minor", iArr);
        checkError();
        return zEglInitialize;
    }

    @Override // q.a
    public boolean eglMakeCurrent(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLSurface eGLSurface, javax.microedition.khronos.egl.EGLSurface eGLSurface2, javax.microedition.khronos.egl.EGLContext eGLContext) {
        begin("eglMakeCurrent");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("draw", eGLSurface);
        arg("read", eGLSurface2);
        arg("context", eGLContext);
        end();
        boolean zEglMakeCurrent = this.mEgl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface2, eGLContext);
        returns(zEglMakeCurrent);
        checkError();
        return zEglMakeCurrent;
    }

    @Override // q.a
    public boolean eglQueryContext(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLContext eGLContext, int i2, int[] iArr) {
        begin("eglQueryContext");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("context", eGLContext);
        arg("attribute", i2);
        end();
        boolean zEglQueryContext = this.mEgl10.eglQueryContext(eGLDisplay, eGLContext, i2, iArr);
        returns(iArr[0]);
        returns(zEglQueryContext);
        checkError();
        return zEglQueryContext;
    }

    @Override // q.a
    public String eglQueryString(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, int i2) {
        begin("eglQueryString");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("name", i2);
        end();
        String strEglQueryString = this.mEgl10.eglQueryString(eGLDisplay, i2);
        returns(strEglQueryString);
        checkError();
        return strEglQueryString;
    }

    @Override // q.a
    public boolean eglQuerySurface(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLSurface eGLSurface, int i2, int[] iArr) {
        begin("eglQuerySurface");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("surface", eGLSurface);
        arg("attribute", i2);
        end();
        boolean zEglQuerySurface = this.mEgl10.eglQuerySurface(eGLDisplay, eGLSurface, i2, iArr);
        returns(iArr[0]);
        returns(zEglQuerySurface);
        checkError();
        return zEglQuerySurface;
    }

    @Override // q.a
    public boolean eglReleaseThread() {
        begin("eglReleaseThread");
        end();
        boolean zEglReleaseThread = this.mEgl10.eglReleaseThread();
        returns(zEglReleaseThread);
        checkError();
        return zEglReleaseThread;
    }

    @Override // q.a
    public boolean eglSwapBuffers(javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLSurface eGLSurface) {
        begin("eglSwapBuffers");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        arg("surface", eGLSurface);
        end();
        boolean zEglSwapBuffers = this.mEgl10.eglSwapBuffers(eGLDisplay, eGLSurface);
        returns(zEglSwapBuffers);
        checkError();
        return zEglSwapBuffers;
    }

    @Override // q.a
    public boolean eglTerminate(javax.microedition.khronos.egl.EGLDisplay eGLDisplay) {
        begin("eglTerminate");
        arg(Context.DISPLAY_SERVICE, eGLDisplay);
        end();
        boolean zEglTerminate = this.mEgl10.eglTerminate(eGLDisplay);
        returns(zEglTerminate);
        checkError();
        return zEglTerminate;
    }

    @Override // q.a
    public boolean eglWaitGL() {
        begin("eglWaitGL");
        end();
        boolean zEglWaitGL = this.mEgl10.eglWaitGL();
        returns(zEglWaitGL);
        checkError();
        return zEglWaitGL;
    }

    @Override // q.a
    public boolean eglWaitNative(int i2, Object obj) {
        begin("eglWaitNative");
        arg("engine", i2);
        arg("bindTarget", obj);
        end();
        boolean zEglWaitNative = this.mEgl10.eglWaitNative(i2, obj);
        returns(zEglWaitNative);
        checkError();
        return zEglWaitNative;
    }

    private String toString(int i2, int[] iArr, int i3) {
        StringBuilder sb = new StringBuilder("{\n");
        int length = iArr.length;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i3 + i4;
            sb.append(" [" + i5 + "] = ");
            if (i5 < 0 || i5 >= length) {
                sb.append("out of bounds");
            } else {
                sb.append(iArr[i5]);
            }
            sb.append('\n');
        }
        sb.append("}");
        return sb.toString();
    }

    private void returns(int i2) {
        returns(Integer.toString(i2));
    }

    private void returns(boolean z2) {
        returns(Boolean.toString(z2));
    }

    private String toString(int i2, Object[] objArr, int i3) {
        StringBuilder sb = new StringBuilder("{\n");
        int length = objArr.length;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i3 + i4;
            sb.append(" [" + i5 + "] = ");
            if (i5 >= 0 && i5 < length) {
                sb.append(objArr[i5]);
            } else {
                sb.append("out of bounds");
            }
            sb.append('\n');
        }
        sb.append("}");
        return sb.toString();
    }

    private void returns(Object obj) {
        returns(toString(obj));
    }

    private void arg(String str, int i2) {
        arg(str, Integer.toString(i2));
    }

    private void arg(String str, Object obj) {
        arg(str, toString(obj));
    }

    private void arg(String str, javax.microedition.khronos.egl.EGLDisplay eGLDisplay) {
        if (eGLDisplay == null) {
            arg(str, "EGL10.EGL_DEFAULT_DISPLAY");
        } else if (eGLDisplay == a.f1103a) {
            arg(str, "EGL10.EGL_NO_DISPLAY");
        } else {
            arg(str, toString(eGLDisplay));
        }
    }

    private void arg(String str, javax.microedition.khronos.egl.EGLContext eGLContext) {
        if (eGLContext == a.f1104b) {
            arg(str, "EGL10.EGL_NO_CONTEXT");
        } else {
            arg(str, toString(eGLContext));
        }
    }

    private void arg(String str, javax.microedition.khronos.egl.EGLSurface eGLSurface) {
        if (eGLSurface == a.c) {
            arg(str, "EGL10.EGL_NO_SURFACE");
        } else {
            arg(str, toString(eGLSurface));
        }
    }

    private void arg(String str, int[] iArr) {
        if (iArr == null) {
            arg(str, "null");
        } else {
            arg(str, toString(iArr.length, iArr, 0));
        }
    }

    private void arg(String str, Object[] objArr) {
        if (objArr == null) {
            arg(str, "null");
        } else {
            arg(str, toString(objArr.length, objArr, 0));
        }
    }
}
