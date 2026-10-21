package android.opengl;

import android.accessibilityservice.c;
import android.content.Context;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.google.android.gles_jni.EGLContextImpl;
import com.google.android.gles_jni.EGLDisplayImpl;
import com.google.android.gles_jni.EGLSurfaceImpl;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import q.a;
import r.f;

/* JADX INFO: loaded from: classes.dex */
public class GLSurfaceView extends SurfaceView implements SurfaceHolder.Callback2 {
    public static final int DEBUG_CHECK_GL_ERROR = 1;
    public static final int DEBUG_LOG_GL_CALLS = 2;
    private static final boolean LOG_ATTACH_DETACH = false;
    private static final boolean LOG_EGL = false;
    private static final boolean LOG_PAUSE_RESUME = false;
    private static final boolean LOG_RENDERER = false;
    private static final boolean LOG_RENDERER_DRAW_FRAME = false;
    private static final boolean LOG_SURFACE = false;
    private static final boolean LOG_THREADS = false;
    public static final int RENDERMODE_CONTINUOUSLY = 1;
    public static final int RENDERMODE_WHEN_DIRTY = 0;
    private static final String TAG = "GLSurfaceView";
    private static final GLThreadManager sGLThreadManager = new GLThreadManager();
    private int mDebugFlags;
    private boolean mDetached;
    private EGLConfigChooser mEGLConfigChooser;
    private int mEGLContextClientVersion;
    private EGLContextFactory mEGLContextFactory;
    private EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
    private GLThread mGLThread;
    private GLWrapper mGLWrapper;
    private boolean mPreserveEGLContextOnPause;
    private Renderer mRenderer;
    private final WeakReference<GLSurfaceView> mThisWeakRef;

    public abstract class BaseConfigChooser implements EGLConfigChooser {
        protected int[] mConfigSpec;

        public BaseConfigChooser(int[] iArr) {
            this.mConfigSpec = filterConfigSpec(iArr);
        }

        private int[] filterConfigSpec(int[] iArr) {
            if (GLSurfaceView.this.mEGLContextClientVersion != 2 && GLSurfaceView.this.mEGLContextClientVersion != 3) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[length + 2];
            int i2 = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            iArr2[i2] = 12352;
            if (GLSurfaceView.this.mEGLContextClientVersion == 2) {
                iArr2[length] = 4;
            } else {
                iArr2[length] = 64;
            }
            iArr2[length + 1] = 12344;
            return iArr2;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public javax.microedition.khronos.egl.EGLConfig chooseConfig(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            if (!aVar.eglChooseConfig(eGLDisplay, this.mConfigSpec, null, 0, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i2 = iArr[0];
            if (i2 <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr = new javax.microedition.khronos.egl.EGLConfig[i2];
            if (!aVar.eglChooseConfig(eGLDisplay, this.mConfigSpec, eGLConfigArr, i2, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            javax.microedition.khronos.egl.EGLConfig eGLConfigChooseConfig = chooseConfig(aVar, eGLDisplay, eGLConfigArr);
            if (eGLConfigChooseConfig != null) {
                return eGLConfigChooseConfig;
            }
            throw new IllegalArgumentException("No config chosen");
        }

        public abstract javax.microedition.khronos.egl.EGLConfig chooseConfig(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr);
    }

    public class ComponentSizeChooser extends BaseConfigChooser {
        protected int mAlphaSize;
        protected int mBlueSize;
        protected int mDepthSize;
        protected int mGreenSize;
        protected int mRedSize;
        protected int mStencilSize;
        private int[] mValue;

        public ComponentSizeChooser(int i2, int i3, int i4, int i5, int i6, int i7) {
            super(new int[]{EGL14.EGL_RED_SIZE, i2, EGL14.EGL_GREEN_SIZE, i3, EGL14.EGL_BLUE_SIZE, i4, EGL14.EGL_ALPHA_SIZE, i5, EGL14.EGL_DEPTH_SIZE, i6, EGL14.EGL_STENCIL_SIZE, i7, EGL14.EGL_NONE});
            this.mValue = new int[1];
            this.mRedSize = i2;
            this.mGreenSize = i3;
            this.mBlueSize = i4;
            this.mAlphaSize = i5;
            this.mDepthSize = i6;
            this.mStencilSize = i7;
        }

        private int findConfigAttrib(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, int i2, int i3) {
            return aVar.eglGetConfigAttrib(eGLDisplay, eGLConfig, i2, this.mValue) ? this.mValue[0] : i3;
        }

        @Override // android.opengl.GLSurfaceView.BaseConfigChooser
        public javax.microedition.khronos.egl.EGLConfig chooseConfig(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr) {
            for (javax.microedition.khronos.egl.EGLConfig eGLConfig : eGLConfigArr) {
                int iFindConfigAttrib = findConfigAttrib(aVar, eGLDisplay, eGLConfig, EGL14.EGL_DEPTH_SIZE, 0);
                int iFindConfigAttrib2 = findConfigAttrib(aVar, eGLDisplay, eGLConfig, EGL14.EGL_STENCIL_SIZE, 0);
                if (iFindConfigAttrib >= this.mDepthSize && iFindConfigAttrib2 >= this.mStencilSize) {
                    int iFindConfigAttrib3 = findConfigAttrib(aVar, eGLDisplay, eGLConfig, EGL14.EGL_RED_SIZE, 0);
                    int iFindConfigAttrib4 = findConfigAttrib(aVar, eGLDisplay, eGLConfig, EGL14.EGL_GREEN_SIZE, 0);
                    int iFindConfigAttrib5 = findConfigAttrib(aVar, eGLDisplay, eGLConfig, EGL14.EGL_BLUE_SIZE, 0);
                    int iFindConfigAttrib6 = findConfigAttrib(aVar, eGLDisplay, eGLConfig, EGL14.EGL_ALPHA_SIZE, 0);
                    if (iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }
    }

    public class DefaultContextFactory implements EGLContextFactory {
        private int EGL_CONTEXT_CLIENT_VERSION;

        private DefaultContextFactory() {
            this.EGL_CONTEXT_CLIENT_VERSION = 12440;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public javax.microedition.khronos.egl.EGLContext createContext(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig) {
            int[] iArr = {this.EGL_CONTEXT_CLIENT_VERSION, GLSurfaceView.this.mEGLContextClientVersion, EGL14.EGL_NONE};
            EGLContextImpl eGLContextImpl = a.f1104b;
            if (GLSurfaceView.this.mEGLContextClientVersion == 0) {
                iArr = null;
            }
            return aVar.eglCreateContext(eGLDisplay, eGLConfig, eGLContextImpl, iArr);
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLContext eGLContext) {
            if (aVar.eglDestroyContext(eGLDisplay, eGLContext)) {
                return;
            }
            Log.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
            EglHelper.throwEglException("eglDestroyContex", aVar.eglGetError());
        }
    }

    public static class DefaultWindowSurfaceFactory implements EGLWindowSurfaceFactory {
        private DefaultWindowSurfaceFactory() {
        }

        @Override // android.opengl.GLSurfaceView.EGLWindowSurfaceFactory
        public javax.microedition.khronos.egl.EGLSurface createWindowSurface(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, Object obj) {
            try {
                return aVar.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, null);
            } catch (IllegalArgumentException e2) {
                Log.e(GLSurfaceView.TAG, "eglCreateWindowSurface", e2);
                return null;
            }
        }

        @Override // android.opengl.GLSurfaceView.EGLWindowSurfaceFactory
        public void destroySurface(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLSurface eGLSurface) {
            aVar.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    public interface EGLConfigChooser {
        javax.microedition.khronos.egl.EGLConfig chooseConfig(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay);
    }

    public interface EGLContextFactory {
        javax.microedition.khronos.egl.EGLContext createContext(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig);

        void destroyContext(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLContext eGLContext);
    }

    public interface EGLWindowSurfaceFactory {
        javax.microedition.khronos.egl.EGLSurface createWindowSurface(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, Object obj);

        void destroySurface(a aVar, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLSurface eGLSurface);
    }

    public static class EglHelper {
        a mEgl;
        javax.microedition.khronos.egl.EGLConfig mEglConfig;
        javax.microedition.khronos.egl.EGLContext mEglContext;
        javax.microedition.khronos.egl.EGLDisplay mEglDisplay;
        javax.microedition.khronos.egl.EGLSurface mEglSurface;
        private WeakReference<GLSurfaceView> mGLSurfaceViewWeakRef;

        public EglHelper(WeakReference<GLSurfaceView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        private void destroySurfaceImp() {
            EGLSurfaceImpl eGLSurfaceImpl;
            javax.microedition.khronos.egl.EGLSurface eGLSurface = this.mEglSurface;
            if (eGLSurface == null || eGLSurface == (eGLSurfaceImpl = a.c)) {
                return;
            }
            this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurfaceImpl, eGLSurfaceImpl, a.f1104b);
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView != null) {
                gLSurfaceView.mEGLWindowSurfaceFactory.destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
            }
            this.mEglSurface = null;
        }

        public static String formatEglError(String str, int i2) {
            StringBuilder sbU = c.u(str, " failed: ");
            sbU.append(EGLLogWrapper.getErrorString(i2));
            return sbU.toString();
        }

        public static void logEglErrorAsWarning(String str, String str2, int i2) {
            Log.w(str, formatEglError(str2, i2));
        }

        private void throwEglException(String str) {
            throwEglException(str, this.mEgl.eglGetError());
        }

        public f createGL() {
            f gl = this.mEglContext.getGL();
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView == null) {
                return gl;
            }
            if (gLSurfaceView.mGLWrapper != null) {
                gl = gLSurfaceView.mGLWrapper.wrap(gl);
            }
            if ((gLSurfaceView.mDebugFlags & 3) != 0) {
                return GLDebugHelper.wrap(gl, (gLSurfaceView.mDebugFlags & 1) == 0 ? 0 : 1, (gLSurfaceView.mDebugFlags & 2) != 0 ? new LogWriter() : null);
            }
            return gl;
        }

        public boolean createSurface() {
            if (this.mEgl == null) {
                throw new RuntimeException("egl not initialized");
            }
            if (this.mEglDisplay == null) {
                throw new RuntimeException("eglDisplay not initialized");
            }
            if (this.mEglConfig == null) {
                throw new RuntimeException("mEglConfig not initialized");
            }
            destroySurfaceImp();
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView != null) {
                this.mEglSurface = gLSurfaceView.mEGLWindowSurfaceFactory.createWindowSurface(this.mEgl, this.mEglDisplay, this.mEglConfig, gLSurfaceView.getHolder());
            } else {
                this.mEglSurface = null;
            }
            javax.microedition.khronos.egl.EGLSurface eGLSurface = this.mEglSurface;
            if (eGLSurface == null || eGLSurface == a.c) {
                if (this.mEgl.eglGetError() == 12299) {
                    Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                }
                return false;
            }
            if (this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
                return true;
            }
            logEglErrorAsWarning("EGLHelper", "eglMakeCurrent", this.mEgl.eglGetError());
            return false;
        }

        public void destroySurface() {
            destroySurfaceImp();
        }

        public void finish() {
            if (this.mEglContext != null) {
                GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
                if (gLSurfaceView != null) {
                    gLSurfaceView.mEGLContextFactory.destroyContext(this.mEgl, this.mEglDisplay, this.mEglContext);
                }
                this.mEglContext = null;
            }
            javax.microedition.khronos.egl.EGLDisplay eGLDisplay = this.mEglDisplay;
            if (eGLDisplay != null) {
                this.mEgl.eglTerminate(eGLDisplay);
                this.mEglDisplay = null;
            }
        }

        public void start() {
            a aVar = (a) javax.microedition.khronos.egl.EGLContext.getEGL();
            this.mEgl = aVar;
            EGLDisplayImpl eGLDisplayImpl = a.f1103a;
            javax.microedition.khronos.egl.EGLDisplay eGLDisplayEglGetDisplay = aVar.eglGetDisplay(null);
            this.mEglDisplay = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay == a.f1103a) {
                throw new RuntimeException("eglGetDisplay failed");
            }
            if (!this.mEgl.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                throw new RuntimeException("eglInitialize failed");
            }
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView == null) {
                this.mEglConfig = null;
                this.mEglContext = null;
            } else {
                this.mEglConfig = gLSurfaceView.mEGLConfigChooser.chooseConfig(this.mEgl, this.mEglDisplay);
                this.mEglContext = gLSurfaceView.mEGLContextFactory.createContext(this.mEgl, this.mEglDisplay, this.mEglConfig);
            }
            javax.microedition.khronos.egl.EGLContext eGLContext = this.mEglContext;
            if (eGLContext == null || eGLContext == a.f1104b) {
                this.mEglContext = null;
                throwEglException("createContext");
            }
            this.mEglSurface = null;
        }

        public int swap() {
            if (this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface)) {
                return 12288;
            }
            return this.mEgl.eglGetError();
        }

        public static void throwEglException(String str, int i2) {
            throw new RuntimeException(formatEglError(str, i2));
        }
    }

    public static class GLThread extends Thread {
        private EglHelper mEglHelper;
        private boolean mExited;
        private boolean mFinishedCreatingEglSurface;
        private WeakReference<GLSurfaceView> mGLSurfaceViewWeakRef;
        private boolean mHasSurface;
        private boolean mHaveEglContext;
        private boolean mHaveEglSurface;
        private boolean mPaused;
        private boolean mRenderComplete;
        private boolean mRequestPaused;
        private boolean mShouldExit;
        private boolean mShouldReleaseEglContext;
        private boolean mSurfaceIsBad;
        private boolean mWaitingForSurface;
        private ArrayList<Runnable> mEventQueue = new ArrayList<>();
        private boolean mSizeChanged = true;
        private Runnable mFinishDrawingRunnable = null;
        private int mWidth = 0;
        private int mHeight = 0;
        private boolean mRequestRender = true;
        private int mRenderMode = 1;
        private boolean mWantRenderNotification = false;

        public GLThread(WeakReference<GLSurfaceView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        /* JADX WARN: Code duplicated, block: B:111:0x017c A[Catch: all -> 0x0259, TryCatch #6 {all -> 0x0259, blocks: (B:3:0x001f, B:4:0x0023, B:87:0x013e, B:90:0x0147, B:92:0x014f, B:93:0x0153, B:100:0x0163, B:101:0x0164, B:102:0x0168, B:109:0x0179, B:111:0x017c, B:115:0x018d, B:119:0x01aa, B:127:0x01bb, B:130:0x01d2, B:132:0x01d7, B:133:0x01da, B:135:0x01dc, B:142:0x01fb, B:147:0x0206, B:151:0x0214, B:152:0x021f, B:159:0x022e, B:144:0x0200, B:145:0x0203, B:121:0x01af, B:122:0x01b2, B:171:0x0258, B:95:0x0155, B:96:0x015e, B:129:0x01c5, B:5:0x0024, B:7:0x0028, B:16:0x0039, B:18:0x0041, B:85:0x013b, B:19:0x004e, B:21:0x0054, B:23:0x005f, B:25:0x0063, B:27:0x006f, B:29:0x0078, B:31:0x007c, B:33:0x0081, B:35:0x0085, B:40:0x0097, B:38:0x0091, B:41:0x009a, B:43:0x009e, B:45:0x00a2, B:47:0x00a6, B:48:0x00a9, B:49:0x00b6, B:51:0x00ba, B:53:0x00be, B:55:0x00ca, B:56:0x00d8, B:58:0x00dd, B:59:0x00e0, B:61:0x00e6, B:65:0x00ee, B:67:0x00f4, B:69:0x0100, B:70:0x0107, B:71:0x0108, B:73:0x010c, B:75:0x0110, B:76:0x0116, B:78:0x011a, B:80:0x011e, B:82:0x012d, B:168:0x024c, B:167:0x0241, B:104:0x016a, B:105:0x0175, B:154:0x0221, B:155:0x022a, B:118:0x0199, B:138:0x01e8, B:140:0x01f7), top: B:192:0x001f, inners: #0, #1, #3, #5, #8, #9, #10 }] */
        /* JADX WARN: Code duplicated, block: B:112:0x0188  */
        /* JADX WARN: Code duplicated, block: B:115:0x018d A[Catch: all -> 0x0259, TRY_LEAVE, TryCatch #6 {all -> 0x0259, blocks: (B:3:0x001f, B:4:0x0023, B:87:0x013e, B:90:0x0147, B:92:0x014f, B:93:0x0153, B:100:0x0163, B:101:0x0164, B:102:0x0168, B:109:0x0179, B:111:0x017c, B:115:0x018d, B:119:0x01aa, B:127:0x01bb, B:130:0x01d2, B:132:0x01d7, B:133:0x01da, B:135:0x01dc, B:142:0x01fb, B:147:0x0206, B:151:0x0214, B:152:0x021f, B:159:0x022e, B:144:0x0200, B:145:0x0203, B:121:0x01af, B:122:0x01b2, B:171:0x0258, B:95:0x0155, B:96:0x015e, B:129:0x01c5, B:5:0x0024, B:7:0x0028, B:16:0x0039, B:18:0x0041, B:85:0x013b, B:19:0x004e, B:21:0x0054, B:23:0x005f, B:25:0x0063, B:27:0x006f, B:29:0x0078, B:31:0x007c, B:33:0x0081, B:35:0x0085, B:40:0x0097, B:38:0x0091, B:41:0x009a, B:43:0x009e, B:45:0x00a2, B:47:0x00a6, B:48:0x00a9, B:49:0x00b6, B:51:0x00ba, B:53:0x00be, B:55:0x00ca, B:56:0x00d8, B:58:0x00dd, B:59:0x00e0, B:61:0x00e6, B:65:0x00ee, B:67:0x00f4, B:69:0x0100, B:70:0x0107, B:71:0x0108, B:73:0x010c, B:75:0x0110, B:76:0x0116, B:78:0x011a, B:80:0x011e, B:82:0x012d, B:168:0x024c, B:167:0x0241, B:104:0x016a, B:105:0x0175, B:154:0x0221, B:155:0x022a, B:118:0x0199, B:138:0x01e8, B:140:0x01f7), top: B:192:0x001f, inners: #0, #1, #3, #5, #8, #9, #10 }] */
        /* JADX WARN: Code duplicated, block: B:117:0x0197  */
        /* JADX WARN: Code duplicated, block: B:123:0x01b3  */
        /* JADX WARN: Code duplicated, block: B:125:0x01b7  */
        /* JADX WARN: Code duplicated, block: B:127:0x01bb A[Catch: all -> 0x0259, TRY_LEAVE, TryCatch #6 {all -> 0x0259, blocks: (B:3:0x001f, B:4:0x0023, B:87:0x013e, B:90:0x0147, B:92:0x014f, B:93:0x0153, B:100:0x0163, B:101:0x0164, B:102:0x0168, B:109:0x0179, B:111:0x017c, B:115:0x018d, B:119:0x01aa, B:127:0x01bb, B:130:0x01d2, B:132:0x01d7, B:133:0x01da, B:135:0x01dc, B:142:0x01fb, B:147:0x0206, B:151:0x0214, B:152:0x021f, B:159:0x022e, B:144:0x0200, B:145:0x0203, B:121:0x01af, B:122:0x01b2, B:171:0x0258, B:95:0x0155, B:96:0x015e, B:129:0x01c5, B:5:0x0024, B:7:0x0028, B:16:0x0039, B:18:0x0041, B:85:0x013b, B:19:0x004e, B:21:0x0054, B:23:0x005f, B:25:0x0063, B:27:0x006f, B:29:0x0078, B:31:0x007c, B:33:0x0081, B:35:0x0085, B:40:0x0097, B:38:0x0091, B:41:0x009a, B:43:0x009e, B:45:0x00a2, B:47:0x00a6, B:48:0x00a9, B:49:0x00b6, B:51:0x00ba, B:53:0x00be, B:55:0x00ca, B:56:0x00d8, B:58:0x00dd, B:59:0x00e0, B:61:0x00e6, B:65:0x00ee, B:67:0x00f4, B:69:0x0100, B:70:0x0107, B:71:0x0108, B:73:0x010c, B:75:0x0110, B:76:0x0116, B:78:0x011a, B:80:0x011e, B:82:0x012d, B:168:0x024c, B:167:0x0241, B:104:0x016a, B:105:0x0175, B:154:0x0221, B:155:0x022a, B:118:0x0199, B:138:0x01e8, B:140:0x01f7), top: B:192:0x001f, inners: #0, #1, #3, #5, #8, #9, #10 }] */
        /* JADX WARN: Code duplicated, block: B:137:0x01e6  */
        /* JADX WARN: Code duplicated, block: B:140:0x01f7 A[Catch: all -> 0x01ff, TRY_LEAVE, TryCatch #10 {all -> 0x01ff, blocks: (B:138:0x01e8, B:140:0x01f7), top: B:199:0x01e8, outer: #6 }] */
        /* JADX WARN: Code duplicated, block: B:146:0x0204  */
        /* JADX WARN: Code duplicated, block: B:149:0x0210  */
        /* JADX WARN: Code duplicated, block: B:151:0x0214 A[Catch: all -> 0x0259, TryCatch #6 {all -> 0x0259, blocks: (B:3:0x001f, B:4:0x0023, B:87:0x013e, B:90:0x0147, B:92:0x014f, B:93:0x0153, B:100:0x0163, B:101:0x0164, B:102:0x0168, B:109:0x0179, B:111:0x017c, B:115:0x018d, B:119:0x01aa, B:127:0x01bb, B:130:0x01d2, B:132:0x01d7, B:133:0x01da, B:135:0x01dc, B:142:0x01fb, B:147:0x0206, B:151:0x0214, B:152:0x021f, B:159:0x022e, B:144:0x0200, B:145:0x0203, B:121:0x01af, B:122:0x01b2, B:171:0x0258, B:95:0x0155, B:96:0x015e, B:129:0x01c5, B:5:0x0024, B:7:0x0028, B:16:0x0039, B:18:0x0041, B:85:0x013b, B:19:0x004e, B:21:0x0054, B:23:0x005f, B:25:0x0063, B:27:0x006f, B:29:0x0078, B:31:0x007c, B:33:0x0081, B:35:0x0085, B:40:0x0097, B:38:0x0091, B:41:0x009a, B:43:0x009e, B:45:0x00a2, B:47:0x00a6, B:48:0x00a9, B:49:0x00b6, B:51:0x00ba, B:53:0x00be, B:55:0x00ca, B:56:0x00d8, B:58:0x00dd, B:59:0x00e0, B:61:0x00e6, B:65:0x00ee, B:67:0x00f4, B:69:0x0100, B:70:0x0107, B:71:0x0108, B:73:0x010c, B:75:0x0110, B:76:0x0116, B:78:0x011a, B:80:0x011e, B:82:0x012d, B:168:0x024c, B:167:0x0241, B:104:0x016a, B:105:0x0175, B:154:0x0221, B:155:0x022a, B:118:0x0199, B:138:0x01e8, B:140:0x01f7), top: B:192:0x001f, inners: #0, #1, #3, #5, #8, #9, #10 }] */
        /* JADX WARN: Code duplicated, block: B:153:0x0220  */
        /* JADX WARN: Code duplicated, block: B:160:0x022f  */
        /* JADX WARN: Code duplicated, block: B:161:0x0232  */
        /* JADX WARN: Code duplicated, block: B:164:0x0237  */
        /* JADX WARN: Code duplicated, block: B:165:0x023b  */
        /* JADX WARN: Code duplicated, block: B:183:0x01c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:188:0x025f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        private void guardedRun() {
            Runnable runnable;
            GLSurfaceView gLSurfaceView;
            int iSwap;
            boolean z2;
            GLSurfaceView gLSurfaceView2;
            GLSurfaceView gLSurfaceView3;
            boolean z3;
            this.mEglHelper = new EglHelper(this.mGLSurfaceViewWeakRef);
            this.mHaveEglContext = false;
            this.mHaveEglSurface = false;
            this.mWantRenderNotification = false;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            boolean z11 = false;
            int i2 = 0;
            int i3 = 0;
            Runnable runnable2 = null;
            r.a aVar = null;
            Runnable runnableRemove = null;
            while (true) {
                try {
                    synchronized (GLSurfaceView.sGLThreadManager) {
                        while (true) {
                            if (this.mShouldExit) {
                                synchronized (GLSurfaceView.sGLThreadManager) {
                                    stopEglSurfaceLocked();
                                    stopEglContextLocked();
                                }
                                return;
                            }
                            if (!this.mEventQueue.isEmpty()) {
                                runnableRemove = this.mEventQueue.remove(0);
                                runnable = null;
                                break;
                            }
                            boolean z12 = this.mPaused;
                            boolean z13 = this.mRequestPaused;
                            if (z12 != z13) {
                                this.mPaused = z13;
                                GLSurfaceView.sGLThreadManager.notifyAll();
                            } else {
                                z13 = false;
                            }
                            if (this.mShouldReleaseEglContext) {
                                stopEglSurfaceLocked();
                                stopEglContextLocked();
                                this.mShouldReleaseEglContext = false;
                                z6 = true;
                            }
                            if (z4) {
                                stopEglSurfaceLocked();
                                stopEglContextLocked();
                                z4 = false;
                            }
                            if (z13 && this.mHaveEglSurface) {
                                stopEglSurfaceLocked();
                            }
                            if (z13 && this.mHaveEglContext) {
                                GLSurfaceView gLSurfaceView4 = this.mGLSurfaceViewWeakRef.get();
                                if (!(gLSurfaceView4 == null ? false : gLSurfaceView4.mPreserveEGLContextOnPause)) {
                                    stopEglContextLocked();
                                }
                            }
                            if (!this.mHasSurface && !this.mWaitingForSurface) {
                                if (this.mHaveEglSurface) {
                                    stopEglSurfaceLocked();
                                }
                                this.mWaitingForSurface = true;
                                this.mSurfaceIsBad = false;
                                GLSurfaceView.sGLThreadManager.notifyAll();
                            }
                            if (this.mHasSurface && this.mWaitingForSurface) {
                                this.mWaitingForSurface = false;
                                GLSurfaceView.sGLThreadManager.notifyAll();
                            }
                            if (z5) {
                                this.mWantRenderNotification = false;
                                this.mRenderComplete = true;
                                GLSurfaceView.sGLThreadManager.notifyAll();
                                z5 = false;
                            }
                            Runnable runnable3 = this.mFinishDrawingRunnable;
                            runnable = null;
                            if (runnable3 != null) {
                                this.mFinishDrawingRunnable = null;
                                runnable2 = runnable3;
                            }
                            if (readyToDraw()) {
                                if (!this.mHaveEglContext) {
                                    if (z6) {
                                        z6 = false;
                                    } else {
                                        try {
                                            this.mEglHelper.start();
                                            this.mHaveEglContext = true;
                                            GLSurfaceView.sGLThreadManager.notifyAll();
                                            z7 = true;
                                        } catch (RuntimeException e2) {
                                            GLSurfaceView.sGLThreadManager.releaseEglContextLocked(this);
                                            throw e2;
                                        }
                                    }
                                }
                                if (this.mHaveEglContext && !this.mHaveEglSurface) {
                                    this.mHaveEglSurface = true;
                                    z8 = true;
                                    z9 = true;
                                    z10 = true;
                                }
                                if (this.mHaveEglSurface) {
                                    if (this.mSizeChanged) {
                                        i2 = this.mWidth;
                                        i3 = this.mHeight;
                                        this.mWantRenderNotification = true;
                                        this.mSizeChanged = false;
                                        z3 = false;
                                        z8 = true;
                                        z10 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    this.mRequestRender = z3;
                                    GLSurfaceView.sGLThreadManager.notifyAll();
                                    if (!this.mWantRenderNotification) {
                                        break;
                                    }
                                    z11 = true;
                                    break;
                                }
                            } else if (runnable2 != null) {
                                Log.w(GLSurfaceView.TAG, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished.");
                                runnable2.run();
                                runnable2 = null;
                            }
                            GLSurfaceView.sGLThreadManager.wait();
                        }
                    }
                    if (runnableRemove != null) {
                        runnableRemove.run();
                        runnableRemove = runnable;
                    } else {
                        if (z8) {
                            if (this.mEglHelper.createSurface()) {
                                synchronized (GLSurfaceView.sGLThreadManager) {
                                    this.mFinishedCreatingEglSurface = true;
                                    GLSurfaceView.sGLThreadManager.notifyAll();
                                }
                                z8 = false;
                                if (z9) {
                                    aVar = (r.a) this.mEglHelper.createGL();
                                    z9 = false;
                                }
                                if (z7) {
                                    gLSurfaceView3 = this.mGLSurfaceViewWeakRef.get();
                                    if (gLSurfaceView3 != null) {
                                        Trace.traceBegin(8L, "onSurfaceCreated");
                                        gLSurfaceView3.mRenderer.onSurfaceCreated(aVar, this.mEglHelper.mEglConfig);
                                        Trace.traceEnd(8L);
                                    }
                                    z7 = false;
                                } else {
                                    z4 = z4;
                                }
                                if (z10) {
                                    gLSurfaceView2 = this.mGLSurfaceViewWeakRef.get();
                                    if (gLSurfaceView2 != null) {
                                        Trace.traceBegin(8L, "onSurfaceChanged");
                                        gLSurfaceView2.mRenderer.onSurfaceChanged(aVar, i2, i3);
                                        Trace.traceEnd(8L);
                                    }
                                    z10 = false;
                                }
                                gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
                                if (gLSurfaceView != null) {
                                    Trace.traceBegin(8L, "onDrawFrame");
                                    gLSurfaceView.mRenderer.onDrawFrame(aVar);
                                    if (runnable2 != null) {
                                        runnable2.run();
                                        runnable2 = null;
                                    }
                                    Trace.traceEnd(8L);
                                }
                                iSwap = this.mEglHelper.swap();
                                if (iSwap != 12288) {
                                    if (iSwap != 12302) {
                                        EglHelper.logEglErrorAsWarning("GLThread", "eglSwapBuffers", iSwap);
                                        synchronized (GLSurfaceView.sGLThreadManager) {
                                            z2 = true;
                                            this.mSurfaceIsBad = true;
                                            GLSurfaceView.sGLThreadManager.notifyAll();
                                        }
                                    } else {
                                        z2 = true;
                                        z4 = true;
                                    }
                                    if (z11) {
                                        z5 = z2;
                                        z11 = false;
                                    } else {
                                        z5 = z5;
                                    }
                                } else {
                                    z2 = true;
                                }
                                z4 = z4;
                                if (z11) {
                                    z5 = z2;
                                    z11 = false;
                                } else {
                                    z5 = z5;
                                }
                            } else {
                                synchronized (GLSurfaceView.sGLThreadManager) {
                                    this.mFinishedCreatingEglSurface = true;
                                    this.mSurfaceIsBad = true;
                                    GLSurfaceView.sGLThreadManager.notifyAll();
                                }
                            }
                            synchronized (GLSurfaceView.sGLThreadManager) {
                                stopEglSurfaceLocked();
                                stopEglContextLocked();
                                throw th;
                            }
                        }
                        if (z9) {
                            aVar = (r.a) this.mEglHelper.createGL();
                            z9 = false;
                        }
                        if (z7) {
                            gLSurfaceView3 = this.mGLSurfaceViewWeakRef.get();
                            if (gLSurfaceView3 != null) {
                                try {
                                    Trace.traceBegin(8L, "onSurfaceCreated");
                                    gLSurfaceView3.mRenderer.onSurfaceCreated(aVar, this.mEglHelper.mEglConfig);
                                    Trace.traceEnd(8L);
                                } catch (Throwable th) {
                                    Trace.traceEnd(8L);
                                    throw th;
                                }
                            }
                            z7 = false;
                        } else {
                            z4 = z4;
                        }
                        if (z10) {
                            gLSurfaceView2 = this.mGLSurfaceViewWeakRef.get();
                            if (gLSurfaceView2 != null) {
                                try {
                                    Trace.traceBegin(8L, "onSurfaceChanged");
                                    gLSurfaceView2.mRenderer.onSurfaceChanged(aVar, i2, i3);
                                    Trace.traceEnd(8L);
                                } catch (Throwable th2) {
                                    Trace.traceEnd(8L);
                                    throw th2;
                                }
                            }
                            z10 = false;
                        }
                        gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
                        if (gLSurfaceView != null) {
                            try {
                                Trace.traceBegin(8L, "onDrawFrame");
                                gLSurfaceView.mRenderer.onDrawFrame(aVar);
                                if (runnable2 != null) {
                                    runnable2.run();
                                    runnable2 = null;
                                }
                                Trace.traceEnd(8L);
                            } catch (Throwable th3) {
                                Trace.traceEnd(8L);
                                throw th3;
                            }
                        }
                        iSwap = this.mEglHelper.swap();
                        if (iSwap != 12288) {
                            if (iSwap != 12302) {
                                EglHelper.logEglErrorAsWarning("GLThread", "eglSwapBuffers", iSwap);
                                synchronized (GLSurfaceView.sGLThreadManager) {
                                    z2 = true;
                                    this.mSurfaceIsBad = true;
                                    GLSurfaceView.sGLThreadManager.notifyAll();
                                }
                            } else {
                                z2 = true;
                                z4 = true;
                            }
                            if (z11) {
                                z5 = z2;
                                z11 = false;
                            } else {
                                z5 = z5;
                            }
                        } else {
                            z2 = true;
                        }
                        z4 = z4;
                        if (z11) {
                            z5 = z2;
                            z11 = false;
                        } else {
                            z5 = z5;
                        }
                    }
                } catch (Throwable th4) {
                    synchronized (GLSurfaceView.sGLThreadManager) {
                        stopEglSurfaceLocked();
                        stopEglContextLocked();
                        throw th4;
                    }
                }
            }
        }

        private boolean readyToDraw() {
            return !this.mPaused && this.mHasSurface && !this.mSurfaceIsBad && this.mWidth > 0 && this.mHeight > 0 && (this.mRequestRender || this.mRenderMode == 1);
        }

        private void stopEglContextLocked() {
            if (this.mHaveEglContext) {
                this.mEglHelper.finish();
                this.mHaveEglContext = false;
                GLSurfaceView.sGLThreadManager.releaseEglContextLocked(this);
            }
        }

        private void stopEglSurfaceLocked() {
            if (this.mHaveEglSurface) {
                this.mHaveEglSurface = false;
                this.mEglHelper.destroySurface();
            }
        }

        public boolean ableToDraw() {
            return this.mHaveEglContext && this.mHaveEglSurface && readyToDraw();
        }

        public int getRenderMode() {
            int i2;
            synchronized (GLSurfaceView.sGLThreadManager) {
                i2 = this.mRenderMode;
            }
            return i2;
        }

        public void onPause() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRequestPaused = true;
                GLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mExited && !this.mPaused) {
                    try {
                        GLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onResume() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRequestPaused = false;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                GLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mExited && this.mPaused && !this.mRenderComplete) {
                    try {
                        GLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void onWindowResize(int i2, int i3) {
            synchronized (GLSurfaceView.sGLThreadManager) {
                try {
                    this.mWidth = i2;
                    this.mHeight = i3;
                    this.mSizeChanged = true;
                    this.mRequestRender = true;
                    this.mRenderComplete = false;
                    if (Thread.currentThread() == this) {
                        return;
                    }
                    GLSurfaceView.sGLThreadManager.notifyAll();
                    while (!this.mExited && !this.mPaused && !this.mRenderComplete && ableToDraw()) {
                        try {
                            GLSurfaceView.sGLThreadManager.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void queueEvent(Runnable runnable) {
            if (runnable == null) {
                throw new IllegalArgumentException("r must not be null");
            }
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mEventQueue.add(runnable);
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void requestExitAndWait() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mShouldExit = true;
                GLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mExited) {
                    try {
                        GLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void requestReleaseEglContextLocked() {
            this.mShouldReleaseEglContext = true;
            GLSurfaceView.sGLThreadManager.notifyAll();
        }

        public void requestRender() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRequestRender = true;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void requestRenderAndNotify(Runnable runnable) {
            synchronized (GLSurfaceView.sGLThreadManager) {
                if (Thread.currentThread() == this) {
                    return;
                }
                this.mWantRenderNotification = true;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                this.mFinishDrawingRunnable = runnable;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("GLThread " + getId());
            try {
                guardedRun();
            } catch (InterruptedException unused) {
            } finally {
                GLSurfaceView.sGLThreadManager.threadExiting(this);
            }
        }

        public void setRenderMode(int i2) {
            if (i2 < 0 || i2 > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRenderMode = i2;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void surfaceCreated() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mHasSurface = true;
                this.mFinishedCreatingEglSurface = false;
                GLSurfaceView.sGLThreadManager.notifyAll();
                while (this.mWaitingForSurface && !this.mFinishedCreatingEglSurface && !this.mExited) {
                    try {
                        GLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void surfaceDestroyed() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mHasSurface = false;
                GLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mWaitingForSurface && !this.mExited) {
                    try {
                        GLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
    }

    public static class GLThreadManager {
        private static String TAG = "GLThreadManager";

        private GLThreadManager() {
        }

        public void releaseEglContextLocked(GLThread gLThread) {
            notifyAll();
        }

        public synchronized void threadExiting(GLThread gLThread) {
            gLThread.mExited = true;
            notifyAll();
        }
    }

    public interface GLWrapper {
        f wrap(f fVar);
    }

    public static class LogWriter extends Writer {
        private StringBuilder mBuilder = new StringBuilder();

        private void flushBuilder() {
            if (this.mBuilder.length() > 0) {
                Log.v(GLSurfaceView.TAG, this.mBuilder.toString());
                StringBuilder sb = this.mBuilder;
                sb.delete(0, sb.length());
            }
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            flushBuilder();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            flushBuilder();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) {
            for (int i4 = 0; i4 < i3; i4++) {
                char c = cArr[i2 + i4];
                if (c == '\n') {
                    flushBuilder();
                } else {
                    this.mBuilder.append(c);
                }
            }
        }
    }

    public interface Renderer {
        void onDrawFrame(r.a aVar);

        void onSurfaceChanged(r.a aVar, int i2, int i3);

        void onSurfaceCreated(r.a aVar, javax.microedition.khronos.egl.EGLConfig eGLConfig);
    }

    public class SimpleEGLConfigChooser extends ComponentSizeChooser {
        public SimpleEGLConfigChooser(boolean z2) {
            super(8, 8, 8, 0, z2 ? 16 : 0, 0);
        }
    }

    public GLSurfaceView(Context context) {
        super(context);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }

    private void checkRenderThreadState() {
        if (this.mGLThread != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    private void init() {
        getHolder().addCallback(this);
    }

    public void finalize() throws Throwable {
        try {
            GLThread gLThread = this.mGLThread;
            if (gLThread != null) {
                gLThread.requestExitAndWait();
            }
        } finally {
            super.finalize();
        }
    }

    public int getDebugFlags() {
        return this.mDebugFlags;
    }

    public boolean getPreserveEGLContextOnPause() {
        return this.mPreserveEGLContextOnPause;
    }

    public int getRenderMode() {
        return this.mGLThread.getRenderMode();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mDetached && this.mRenderer != null) {
            GLThread gLThread = this.mGLThread;
            int renderMode = gLThread != null ? gLThread.getRenderMode() : 1;
            GLThread gLThread2 = new GLThread(this.mThisWeakRef);
            this.mGLThread = gLThread2;
            if (renderMode != 1) {
                gLThread2.setRenderMode(renderMode);
            }
            this.mGLThread.start();
        }
        this.mDetached = false;
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() throws Throwable {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestExitAndWait();
        }
        this.mDetached = true;
        super.onDetachedFromWindow();
    }

    public void onPause() {
        this.mGLThread.onPause();
    }

    public void onResume() {
        this.mGLThread.onResume();
    }

    public void queueEvent(Runnable runnable) {
        this.mGLThread.queueEvent(runnable);
    }

    public void requestRender() {
        this.mGLThread.requestRender();
    }

    public void setDebugFlags(int i2) {
        this.mDebugFlags = i2;
    }

    public void setEGLConfigChooser(EGLConfigChooser eGLConfigChooser) {
        checkRenderThreadState();
        this.mEGLConfigChooser = eGLConfigChooser;
    }

    public void setEGLContextClientVersion(int i2) {
        checkRenderThreadState();
        this.mEGLContextClientVersion = i2;
    }

    public void setEGLContextFactory(EGLContextFactory eGLContextFactory) {
        checkRenderThreadState();
        this.mEGLContextFactory = eGLContextFactory;
    }

    public void setEGLWindowSurfaceFactory(EGLWindowSurfaceFactory eGLWindowSurfaceFactory) {
        checkRenderThreadState();
        this.mEGLWindowSurfaceFactory = eGLWindowSurfaceFactory;
    }

    public void setGLWrapper(GLWrapper gLWrapper) {
        this.mGLWrapper = gLWrapper;
    }

    public void setPreserveEGLContextOnPause(boolean z2) {
        this.mPreserveEGLContextOnPause = z2;
    }

    public void setRenderMode(int i2) {
        this.mGLThread.setRenderMode(i2);
    }

    public void setRenderer(Renderer renderer) {
        checkRenderThreadState();
        if (this.mEGLConfigChooser == null) {
            this.mEGLConfigChooser = new SimpleEGLConfigChooser(true);
        }
        if (this.mEGLContextFactory == null) {
            this.mEGLContextFactory = new DefaultContextFactory();
        }
        if (this.mEGLWindowSurfaceFactory == null) {
            this.mEGLWindowSurfaceFactory = new DefaultWindowSurfaceFactory();
        }
        this.mRenderer = renderer;
        GLThread gLThread = new GLThread(this.mThisWeakRef);
        this.mGLThread = gLThread;
        gLThread.start();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        this.mGLThread.onWindowResize(i3, i4);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mGLThread.surfaceCreated();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mGLThread.surfaceDestroyed();
    }

    @Override // android.view.SurfaceHolder.Callback2
    @Deprecated
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback2
    public void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, Runnable runnable) {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestRenderAndNotify(runnable);
        }
    }

    public void setEGLConfigChooser(boolean z2) {
        setEGLConfigChooser(new SimpleEGLConfigChooser(z2));
    }

    public GLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }

    public void setEGLConfigChooser(int i2, int i3, int i4, int i5, int i6, int i7) {
        setEGLConfigChooser(new ComponentSizeChooser(i2, i3, i4, i5, i6, i7));
    }
}
