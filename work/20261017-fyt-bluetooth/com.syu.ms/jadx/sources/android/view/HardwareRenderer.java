package android.view;

import a0.a;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.net.LinkQualityInfo;
import android.net.ProxyProperties;
import android.opengl.EGL14;
import android.opengl.GLUtils;
import android.opengl.ManagedEGLContext;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.DisplayMetrics;
import android.util.Log;
import b0.f;
import com.google.android.gles_jni.EGLImpl;
import java.io.File;
import java.io.PrintWriter;
import java.util.concurrent.locks.ReentrantLock;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public abstract class HardwareRenderer {
    private static final String CACHE_PATH_SHADERS = "com.android.opengl.shaders_cache";
    public static final String DEBUG_DIRTY_REGIONS_PROPERTY = "debug.hwui.show_dirty_regions";
    public static final String DEBUG_OVERDRAW_PROPERTY = "debug.hwui.overdraw";
    public static final String DEBUG_SHOW_LAYERS_UPDATES_PROPERTY = "debug.hwui.show_layers_updates";
    public static final String DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY = "debug.hwui.show_non_rect_clip";
    public static final String LOG_TAG = "HardwareRenderer";
    public static final String OVERDRAW_PROPERTY_COUNT = "count";
    public static final String OVERDRAW_PROPERTY_SHOW = "show";
    public static final String PRINT_CONFIG_PROPERTY = "debug.hwui.print_config";
    private static final int PROFILE_FRAME_DATA_COUNT = 3;
    public static final String PROFILE_MAXFRAMES_PROPERTY = "debug.hwui.profile.maxframes";
    private static final int PROFILE_MAX_FRAMES = 128;
    public static final String PROFILE_PROPERTY = "debug.hwui.profile";
    public static final String PROFILE_PROPERTY_VISUALIZE_BARS = "visual_bars";
    public static final String PROFILE_PROPERTY_VISUALIZE_LINES = "visual_lines";
    public static final boolean RENDER_DIRTY_REGIONS = true;
    public static final String RENDER_DIRTY_REGIONS_PROPERTY = "debug.hwui.render_dirty_regions";
    public static boolean sRendererDisabled = false;
    public static boolean sSystemRendererDisabled = false;
    private boolean mEnabled;
    private boolean mRequested = true;

    public static class Gl20Renderer extends GlRenderer {
        private static EGLSurface sPbuffer;
        private static final Object[] sPbufferLock = new Object[0];
        private DisplayMetrics mDisplayMetrics;
        private GLES20Canvas mGlCanvas;

        public static class Gl20RendererEglContext extends ManagedEGLContext {
            public final Handler mHandler;

            public Gl20RendererEglContext(EGLContext eGLContext) {
                super(eGLContext);
                this.mHandler = new Handler();
            }

            @Override // android.opengl.ManagedEGLContext
            public void onTerminate(final EGLContext eGLContext) {
                if (this.mHandler.getLooper() != Looper.myLooper()) {
                    this.mHandler.post(new Runnable() { // from class: android.view.HardwareRenderer.Gl20Renderer.Gl20RendererEglContext.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Gl20RendererEglContext.this.onTerminate(eGLContext);
                        }
                    });
                    return;
                }
                synchronized (GlRenderer.sEglLock) {
                    if (GlRenderer.sEgl == null) {
                        return;
                    }
                    if (EGLImpl.getInitCount(GlRenderer.sEglDisplay) == 1) {
                        Gl20Renderer.usePbufferSurface(eGLContext);
                        GLES20Canvas.terminateCaches();
                        GlRenderer.sEgl.eglDestroyContext(GlRenderer.sEglDisplay, eGLContext);
                        ThreadLocal<ManagedEGLContext> threadLocal = GlRenderer.sEglContextStorage;
                        threadLocal.set(null);
                        threadLocal.remove();
                        GlRenderer.sEgl.eglDestroySurface(GlRenderer.sEglDisplay, Gl20Renderer.sPbuffer);
                        a aVar = GlRenderer.sEgl;
                        EGLDisplay eGLDisplay = GlRenderer.sEglDisplay;
                        EGLSurface eGLSurface = a.f90d;
                        aVar.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, a.f89c);
                        GlRenderer.sEgl.eglReleaseThread();
                        GlRenderer.sEgl.eglTerminate(GlRenderer.sEglDisplay);
                        GlRenderer.sEgl = null;
                        GlRenderer.sEglDisplay = null;
                        GlRenderer.sEglConfig = null;
                        EGLSurface unused = Gl20Renderer.sPbuffer = null;
                    }
                }
            }
        }

        public Gl20Renderer(boolean z2) {
            super(2, z2);
        }

        public static HardwareRenderer create(boolean z2) {
            if (GLES20Canvas.isAvailable()) {
                return new Gl20Renderer(z2);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void destroyHardwareLayer(View view) {
            view.destroyLayer(true);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    destroyHardwareLayer(viewGroup.getChildAt(i2));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void destroyResources(View view) {
            view.destroyHardwareResources();
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    destroyResources(viewGroup.getChildAt(i2));
                }
            }
        }

        private void drawCurrentFrame(int i2, int i3) {
            if (i3 >= 0) {
                this.mDebugDataProvider.setupCurrentFramePaint(this.mProfilePaint);
                if (i2 == 0) {
                    GLES20Canvas gLES20Canvas = this.mGlCanvas;
                    float[][] fArr = this.mProfileShapes;
                    gLES20Canvas.drawRect(fArr[2][i3], fArr[2][i3 + 1], fArr[2][i3 + 2], fArr[0][i3 + 3], this.mProfilePaint);
                } else {
                    if (i2 != 1) {
                        return;
                    }
                    GLES20Canvas gLES20Canvas2 = this.mGlCanvas;
                    float[][] fArr2 = this.mProfileShapes;
                    gLES20Canvas2.drawLine(fArr2[2][i3], fArr2[2][i3 + 1], fArr2[2][i3], this.mHeight, this.mProfilePaint);
                }
            }
        }

        private void drawGraph(int i2, int i3) {
            for (int i4 = 0; i4 < this.mProfileShapes.length; i4++) {
                this.mDebugDataProvider.setupGraphPaint(this.mProfilePaint, i4);
                if (i2 == 0) {
                    this.mGlCanvas.drawRects(this.mProfileShapes[i4], i3 * 4, this.mProfilePaint);
                } else if (i2 == 1) {
                    this.mGlCanvas.drawLines(this.mProfileShapes[i4], 0, i3 * 4, this.mProfilePaint);
                }
            }
        }

        private void drawThreshold(int i2, int i3) {
            float threshold = this.mDebugDataProvider.getThreshold();
            if (threshold > 0.0f) {
                this.mDebugDataProvider.setupThresholdPaint(this.mProfilePaint);
                float f2 = (int) (this.mHeight - (threshold * i3));
                this.mGlCanvas.drawLine(0.0f, f2, i2, f2, this.mProfilePaint);
            }
        }

        public static void endTrimMemory() {
            EGLDisplay eGLDisplay;
            a aVar = GlRenderer.sEgl;
            if (aVar == null || (eGLDisplay = GlRenderer.sEglDisplay) == null) {
                return;
            }
            EGLSurface eGLSurface = a.f90d;
            aVar.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, a.f89c);
        }

        private void initProfileDrawData(View.AttachInfo attachInfo, GraphDataProvider graphDataProvider) {
            if (this.mProfileShapes == null) {
                int elementCount = graphDataProvider.getElementCount();
                int frameCount = graphDataProvider.getFrameCount();
                this.mProfileShapes = new float[elementCount][];
                for (int i2 = 0; i2 < elementCount; i2++) {
                    this.mProfileShapes[i2] = new float[frameCount * 4];
                }
                this.mProfilePaint = new Paint();
            }
            this.mProfilePaint.reset();
            if (graphDataProvider.getGraphType() == 1) {
                this.mProfilePaint.setAntiAlias(true);
            }
            if (this.mDisplayMetrics == null) {
                this.mDisplayMetrics = new DisplayMetrics();
            }
            attachInfo.mDisplay.getMetrics(this.mDisplayMetrics);
            graphDataProvider.prepare(this.mDisplayMetrics);
        }

        public static void startTrimMemory(int i2) {
            Gl20RendererEglContext gl20RendererEglContext;
            if (GlRenderer.sEgl == null || GlRenderer.sEglConfig == null || (gl20RendererEglContext = (Gl20RendererEglContext) GlRenderer.sEglContextStorage.get()) == null) {
                return;
            }
            usePbufferSurface(gl20RendererEglContext.getContext());
            if (i2 >= 80) {
                GLES20Canvas.flushCaches(2);
            } else if (i2 >= 20) {
                GLES20Canvas.flushCaches(1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void usePbufferSurface(EGLContext eGLContext) {
            synchronized (sPbufferLock) {
                if (sPbuffer == null) {
                    sPbuffer = GlRenderer.sEgl.eglCreatePbufferSurface(GlRenderer.sEglDisplay, GlRenderer.sEglConfig, new int[]{EGL14.EGL_WIDTH, 1, EGL14.EGL_HEIGHT, 1, EGL14.EGL_NONE});
                }
            }
            a aVar = GlRenderer.sEgl;
            EGLDisplay eGLDisplay = GlRenderer.sEglDisplay;
            EGLSurface eGLSurface = sPbuffer;
            aVar.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public boolean canDraw() {
            return super.canDraw() && this.mGlCanvas != null;
        }

        @Override // android.view.HardwareRenderer
        public void cancelLayerUpdate(HardwareLayer hardwareLayer) {
            this.mGlCanvas.cancelLayerUpdate(hardwareLayer);
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public void countOverdraw(HardwareCanvas hardwareCanvas) {
            ((GLES20Canvas) hardwareCanvas).setCountOverdrawEnabled(true);
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public HardwareCanvas createCanvas() {
            GLES20Canvas gLES20Canvas = new GLES20Canvas(this.mTranslucent);
            this.mGlCanvas = gLES20Canvas;
            return gLES20Canvas;
        }

        @Override // android.view.HardwareRenderer
        public DisplayList createDisplayList(String str) {
            return new GLES20DisplayList(str);
        }

        @Override // android.view.HardwareRenderer
        public HardwareLayer createHardwareLayer(boolean z2) {
            return new GLES20TextureLayer(z2);
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public ManagedEGLContext createManagedContext(EGLContext eGLContext) {
            return new Gl20RendererEglContext(this.mEglContext);
        }

        @Override // android.view.HardwareRenderer
        public SurfaceTexture createSurfaceTexture(HardwareLayer hardwareLayer) {
            return ((GLES20TextureLayer) hardwareLayer).getSurfaceTexture();
        }

        @Override // android.view.HardwareRenderer.GlRenderer, android.view.HardwareRenderer
        public void destroy(boolean z2) {
            try {
                super.destroy(z2);
            } finally {
                if (z2 && this.mGlCanvas != null) {
                    this.mGlCanvas = null;
                }
            }
        }

        @Override // android.view.HardwareRenderer
        public void destroyHardwareResources(final View view) {
            if (view != null) {
                safelyRun(new Runnable() { // from class: android.view.HardwareRenderer.Gl20Renderer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        HardwareCanvas hardwareCanvas = Gl20Renderer.this.mCanvas;
                        if (hardwareCanvas != null) {
                            hardwareCanvas.clearLayerUpdates();
                        }
                        Gl20Renderer.destroyResources(view);
                        GLES20Canvas.flushCaches(0);
                    }
                });
            }
        }

        @Override // android.view.HardwareRenderer
        public void destroyLayers(final View view) {
            if (view != null) {
                safelyRun(new Runnable() { // from class: android.view.HardwareRenderer.Gl20Renderer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HardwareCanvas hardwareCanvas = Gl20Renderer.this.mCanvas;
                        if (hardwareCanvas != null) {
                            hardwareCanvas.clearLayerUpdates();
                        }
                        Gl20Renderer.destroyHardwareLayer(view);
                        GLES20Canvas.flushCaches(0);
                    }
                });
            }
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public void drawProfileData(View.AttachInfo attachInfo) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            boolean z2;
            int i7;
            float f2;
            GraphDataProvider graphDataProvider = this.mDebugDataProvider;
            if (graphDataProvider != null) {
                initProfileDrawData(attachInfo, graphDataProvider);
                int verticalUnitSize = graphDataProvider.getVerticalUnitSize();
                int horizontaUnitMargin = graphDataProvider.getHorizontaUnitMargin();
                int horizontalUnitSize = graphDataProvider.getHorizontalUnitSize();
                float[] data = graphDataProvider.getData();
                int elementCount = graphDataProvider.getElementCount();
                int graphType = graphDataProvider.getGraphType();
                int frameCount = graphDataProvider.getFrameCount() * elementCount;
                if (graphType == 1) {
                    frameCount -= elementCount;
                }
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                while (i8 < frameCount && data[i8] >= 0.0f) {
                    int i12 = i9 * 4;
                    if (i8 == graphDataProvider.getCurrentFrame() * elementCount) {
                        i11 = i12;
                    }
                    int i13 = i10 + horizontaUnitMargin;
                    int i14 = i13 + horizontalUnitSize;
                    int i15 = this.mHeight;
                    GraphDataProvider graphDataProvider2 = graphDataProvider;
                    int i16 = frameCount;
                    float f3 = verticalUnitSize;
                    int i17 = (int) (i15 - (data[i8] * f3));
                    if (graphType != 0) {
                        if (graphType != 1) {
                            i2 = verticalUnitSize;
                            i3 = horizontaUnitMargin;
                            i6 = horizontalUnitSize;
                            i4 = graphType;
                            i5 = i11;
                            z2 = true;
                        } else {
                            int i18 = 0;
                            while (i18 < elementCount) {
                                int i19 = i11;
                                float[] fArr = this.mProfileShapes[i18];
                                int i20 = verticalUnitSize;
                                fArr[i12] = (i13 + i14) * 0.5f;
                                int i21 = i12 + 1;
                                int i22 = graphType;
                                if (i12 == 0) {
                                    i7 = i17;
                                    f2 = i7;
                                } else {
                                    i7 = i17;
                                    f2 = fArr[i12 - 1];
                                }
                                fArr[i21] = f2;
                                int i23 = horizontaUnitMargin;
                                fArr[i12 + 2] = fArr[i12] + horizontalUnitSize;
                                float f4 = i7;
                                fArr[i12 + 3] = f4;
                                if (i18 < elementCount - 1) {
                                    i7 = (int) (f4 - (data[(i8 + i18) + 1] * f3));
                                }
                                i18++;
                                i11 = i19;
                                verticalUnitSize = i20;
                                graphType = i22;
                                horizontaUnitMargin = i23;
                            }
                            i7 = i17;
                            i2 = verticalUnitSize;
                            i3 = horizontaUnitMargin;
                            i4 = graphType;
                            i5 = i11;
                        }
                        i9++;
                        i8 += elementCount;
                        i10 = i14;
                        graphDataProvider = graphDataProvider2;
                        horizontalUnitSize = i6;
                        frameCount = i16;
                        i11 = i5;
                        verticalUnitSize = i2;
                        graphType = i4;
                        horizontaUnitMargin = i3;
                    } else {
                        i2 = verticalUnitSize;
                        i3 = horizontaUnitMargin;
                        i4 = graphType;
                        i5 = i11;
                        int i24 = i15;
                        int i25 = i17;
                        int i26 = 0;
                        while (i26 < elementCount) {
                            float[] fArr2 = this.mProfileShapes[i26];
                            fArr2[i12] = i13;
                            float f5 = i25;
                            fArr2[i12 + 1] = f5;
                            int i27 = horizontalUnitSize;
                            fArr2[i12 + 2] = i14;
                            fArr2[i12 + 3] = i24;
                            int i28 = i26 < elementCount + (-1) ? (int) (f5 - (data[(i8 + i26) + 1] * f3)) : i25;
                            i26++;
                            horizontalUnitSize = i27;
                            int i29 = i25;
                            i25 = i28;
                            i24 = i29;
                        }
                    }
                    i6 = horizontalUnitSize;
                    z2 = true;
                    i9++;
                    i8 += elementCount;
                    i10 = i14;
                    graphDataProvider = graphDataProvider2;
                    horizontalUnitSize = i6;
                    frameCount = i16;
                    i11 = i5;
                    verticalUnitSize = i2;
                    graphType = i4;
                    horizontaUnitMargin = i3;
                }
                int i30 = graphType;
                drawGraph(i30, i9);
                drawCurrentFrame(i30, i11);
                drawThreshold(i10 + horizontaUnitMargin, verticalUnitSize);
            }
        }

        @Override // android.view.HardwareRenderer
        public void flushLayerUpdates() {
            this.mGlCanvas.flushLayerUpdates();
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public int[] getConfig(boolean z2) {
            return new int[]{EGL14.EGL_RENDERABLE_TYPE, 4, EGL14.EGL_RED_SIZE, 8, EGL14.EGL_GREEN_SIZE, 8, EGL14.EGL_BLUE_SIZE, 8, EGL14.EGL_ALPHA_SIZE, 8, EGL14.EGL_DEPTH_SIZE, 0, EGL14.EGL_CONFIG_CAVEAT, EGL14.EGL_NONE, EGL14.EGL_STENCIL_SIZE, GLES20Canvas.getStencilSize(), EGL14.EGL_SURFACE_TYPE, (z2 ? 1024 : 0) | 4, EGL14.EGL_NONE};
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public float getOverdraw(HardwareCanvas hardwareCanvas) {
            return ((GLES20Canvas) hardwareCanvas).getOverdraw();
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public void initAtlas() {
            GraphicBuffer buffer;
            IBinder service = ServiceManager.getService("assetatlas");
            if (service == null) {
                return;
            }
            IAssetAtlas iAssetAtlasAsInterface = IAssetAtlas.Stub.asInterface(service);
            try {
                if (!iAssetAtlasAsInterface.isCompatible(Process.myPpid()) || (buffer = iAssetAtlasAsInterface.getBuffer()) == null) {
                    return;
                }
                int[] map = iAssetAtlasAsInterface.getMap();
                if (map != null) {
                    GLES20Canvas.initAtlas(buffer, map);
                }
                if (iAssetAtlasAsInterface.getClass() != service.getClass()) {
                    buffer.destroy();
                }
            } catch (RemoteException e2) {
                Log.w(HardwareRenderer.LOG_TAG, "Could not acquire atlas", e2);
            }
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public void initCaches() {
            if (GLES20Canvas.initCaches()) {
                initAtlas();
            }
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public void onPostDraw() {
            this.mGlCanvas.onPostDraw();
        }

        @Override // android.view.HardwareRenderer.GlRenderer
        public int onPreDraw(Rect rect) {
            return this.mGlCanvas.onPreDraw(rect);
        }

        @Override // android.view.HardwareRenderer
        public void pushLayerUpdate(HardwareLayer hardwareLayer) {
            this.mGlCanvas.pushLayerUpdate(hardwareLayer);
        }

        @Override // android.view.HardwareRenderer
        public boolean safelyRun(Runnable runnable) {
            boolean z2 = !isEnabled() || checkRenderContext() == 0;
            if (z2) {
                Gl20RendererEglContext gl20RendererEglContext = (Gl20RendererEglContext) GlRenderer.sEglContextStorage.get();
                if (gl20RendererEglContext == null) {
                    return false;
                }
                usePbufferSurface(gl20RendererEglContext.getContext());
            }
            try {
                runnable.run();
                return true;
            } finally {
                if (z2) {
                    a aVar = GlRenderer.sEgl;
                    EGLDisplay eGLDisplay = GlRenderer.sEglDisplay;
                    EGLSurface eGLSurface = a.f90d;
                    aVar.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, a.f89c);
                }
            }
        }

        @Override // android.view.HardwareRenderer
        public void setSurfaceTexture(HardwareLayer hardwareLayer, SurfaceTexture surfaceTexture) {
            ((GLES20TextureLayer) hardwareLayer).setSurfaceTexture(surfaceTexture);
        }

        @Override // android.view.HardwareRenderer
        public HardwareLayer createHardwareLayer(int i2, int i3, boolean z2) {
            return new GLES20RenderLayer(i2, i3, z2);
        }
    }

    public static abstract class GlRenderer extends HardwareRenderer {
        public static final int FUNCTOR_PROCESS_DELAY = 4;
        private static final int OVERDRAW_TYPE_COUNT = 1;
        private static final int PROFILE_DRAW_CURRENT_FRAME_COLOR = -815814067;
        private static final int PROFILE_DRAW_DP_PER_MS = 7;
        private static final int PROFILE_DRAW_MARGIN = 0;
        private static final int PROFILE_DRAW_THRESHOLD_COLOR = -10507699;
        private static final int PROFILE_DRAW_THRESHOLD_STROKE_WIDTH = 2;
        private static final int PROFILE_DRAW_WIDTH = 3;
        public static final int SURFACE_STATE_ERROR = 0;
        public static final int SURFACE_STATE_SUCCESS = 1;
        public static final int SURFACE_STATE_UPDATED = 2;
        public static boolean sDirtyRegions;
        public static final boolean sDirtyRegionsRequested;
        public static a sEgl;
        public static EGLConfig sEglConfig;
        public static EGLDisplay sEglDisplay;
        public HardwareCanvas mCanvas;
        public GraphDataProvider mDebugDataProvider;
        public boolean mDebugDirtyRegions;
        public HardwareLayer mDebugOverdrawLayer;
        public Paint mDebugOverdrawPaint;
        public Paint mDebugPaint;
        private boolean mDestroyed;
        public boolean mDirtyRegionsEnabled;
        public EGLContext mEglContext;
        public EGLSurface mEglSurface;
        public Thread mEglThread;
        public long mFrameCount;
        public f mGl;
        public final int mGlVersion;
        public String mName;
        public float[] mProfileData;
        public boolean mProfileEnabled;
        public ReentrantLock mProfileLock;
        public Paint mProfilePaint;
        public float[][] mProfileShapes;
        public final boolean mTranslucent;
        public boolean mUpdateDirtyRegions;
        private static final int[] PROFILE_DRAW_COLORS = {-817994036, -807651054, -806971392};
        private static final String[] VISUALIZERS = {HardwareRenderer.PROFILE_PROPERTY_VISUALIZE_BARS, HardwareRenderer.PROFILE_PROPERTY_VISUALIZE_LINES};
        private static final String[] OVERDRAW = {HardwareRenderer.OVERDRAW_PROPERTY_SHOW, HardwareRenderer.OVERDRAW_PROPERTY_COUNT};
        public static final Object[] sEglLock = new Object[0];
        public static final ThreadLocal<ManagedEGLContext> sEglContextStorage = new ThreadLocal<>();
        public int mWidth = -1;
        public int mHeight = -1;
        public int mProfileVisualizerType = -1;
        public int mProfileCurrentFrame = -3;
        public int mDebugOverdraw = -1;
        private final Rect mRedrawClip = new Rect();
        private final int[] mSurfaceSize = new int[2];
        private final FunctorsRunnable mFunctorsRunnable = new FunctorsRunnable();
        private long mDrawDelta = LinkQualityInfo.UNKNOWN_LONG;

        public class DrawPerformanceDataProvider extends GraphDataProvider {
            private final int mGraphType;
            private int mHorizontalMargin;
            private int mHorizontalUnit;
            private int mThresholdStroke;
            private int mVerticalUnit;

            public DrawPerformanceDataProvider(int i2) {
                super();
                this.mGraphType = i2;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public int getCurrentFrame() {
                return GlRenderer.this.mProfileCurrentFrame / 3;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public float[] getData() {
                return GlRenderer.this.mProfileData;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public int getElementCount() {
                return 3;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public int getFrameCount() {
                return GlRenderer.this.mProfileData.length / 3;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public int getGraphType() {
                return this.mGraphType;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public int getHorizontaUnitMargin() {
                return this.mHorizontalMargin;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public int getHorizontalUnitSize() {
                return this.mHorizontalUnit;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public float getThreshold() {
                return 16.0f;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public int getVerticalUnitSize() {
                return this.mVerticalUnit;
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public void prepare(DisplayMetrics displayMetrics) {
                float f2 = displayMetrics.density;
                this.mVerticalUnit = GlRenderer.dpToPx(7, f2);
                this.mHorizontalUnit = GlRenderer.dpToPx(3, f2);
                this.mHorizontalMargin = GlRenderer.dpToPx(0, f2);
                this.mThresholdStroke = GlRenderer.dpToPx(2, f2);
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public void setupCurrentFramePaint(Paint paint) {
                paint.setColor(GlRenderer.PROFILE_DRAW_CURRENT_FRAME_COLOR);
                if (this.mGraphType == 1) {
                    paint.setStrokeWidth(this.mThresholdStroke);
                }
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public void setupGraphPaint(Paint paint, int i2) {
                paint.setColor(GlRenderer.PROFILE_DRAW_COLORS[i2]);
                if (this.mGraphType == 1) {
                    paint.setStrokeWidth(this.mThresholdStroke);
                }
            }

            @Override // android.view.HardwareRenderer.GraphDataProvider
            public void setupThresholdPaint(Paint paint) {
                paint.setColor(GlRenderer.PROFILE_DRAW_THRESHOLD_COLOR);
                paint.setStrokeWidth(this.mThresholdStroke);
            }
        }

        public class FunctorsRunnable implements Runnable {
            public View.AttachInfo attachInfo;

            public FunctorsRunnable() {
            }

            @Override // java.lang.Runnable
            public void run() {
                GlRenderer glRenderer;
                HardwareRenderer hardwareRenderer = this.attachInfo.mHardwareRenderer;
                if (hardwareRenderer == null || !hardwareRenderer.isEnabled() || hardwareRenderer != (glRenderer = GlRenderer.this) || glRenderer.checkRenderContext() == 0) {
                    return;
                }
                GlRenderer glRenderer2 = GlRenderer.this;
                GlRenderer.this.handleFunctorStatus(this.attachInfo, glRenderer2.mCanvas.invokeFunctors(glRenderer2.mRedrawClip));
            }
        }

        static {
            boolean zEqualsIgnoreCase = "true".equalsIgnoreCase(SystemProperties.get(HardwareRenderer.RENDER_DIRTY_REGIONS_PROPERTY, "true"));
            sDirtyRegions = zEqualsIgnoreCase;
            sDirtyRegionsRequested = zEqualsIgnoreCase;
        }

        public GlRenderer(int i2, boolean z2) {
            this.mGlVersion = i2;
            this.mTranslucent = z2;
            loadSystemProperties(null);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x002d  */
        /* JADX WARN: Code duplicated, block: B:16:? A[RETURN, SYNTHETIC] */
        private Rect beginFrame(HardwareCanvas hardwareCanvas, Rect rect, int i2) {
            if (i2 != 2) {
                int[] iArr = this.mSurfaceSize;
                HardwareRenderer.beginFrame(iArr);
                if (iArr[1] != this.mHeight || iArr[0] != this.mWidth) {
                    int i3 = iArr[0];
                    this.mWidth = i3;
                    int i4 = iArr[1];
                    this.mHeight = i4;
                    hardwareCanvas.setViewport(i3, i4);
                }
                if (this.mDebugDataProvider != null) {
                    return null;
                }
                return rect;
            }
            HardwareRenderer.beginFrame(null);
            rect = null;
            if (this.mDebugDataProvider != null) {
                return null;
            }
            return rect;
        }

        private DisplayList buildDisplayList(View view, HardwareCanvas hardwareCanvas) {
            if (this.mDrawDelta <= 0) {
                return view.mDisplayList;
            }
            int i2 = view.mPrivateFlags;
            view.mRecreateDisplayList = (i2 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
            view.mPrivateFlags = i2 & Integer.MAX_VALUE;
            long jStartBuildDisplayListProfiling = startBuildDisplayListProfiling();
            hardwareCanvas.clearLayerUpdates();
            Trace.traceBegin(8L, "getDisplayList");
            DisplayList displayList = view.getDisplayList();
            Trace.traceEnd(8L);
            endBuildDisplayListProfiling(jStartBuildDisplayListProfiling);
            return displayList;
        }

        private void checkEglErrorsForced() {
            int iEglGetError = sEgl.eglGetError();
            if (iEglGetError != 12288) {
                Log.w(HardwareRenderer.LOG_TAG, "EGL error: " + GLUtils.getEGLErrorString(iEglGetError));
                fallback(iEglGetError != 12302);
            }
        }

        private int checkRenderContextUnsafe() {
            if (this.mEglSurface.equals(sEgl.eglGetCurrentSurface(EGL14.EGL_DRAW)) && this.mEglContext.equals(sEgl.eglGetCurrentContext())) {
                return 1;
            }
            a aVar = sEgl;
            EGLDisplay eGLDisplay = sEglDisplay;
            EGLSurface eGLSurface = this.mEglSurface;
            if (aVar.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
                if (!this.mUpdateDirtyRegions) {
                    return 2;
                }
                enableDirtyRegions();
                this.mUpdateDirtyRegions = false;
                return 2;
            }
            Log.e(HardwareRenderer.LOG_TAG, "eglMakeCurrent failed " + GLUtils.getEGLErrorString(sEgl.eglGetError()));
            fallback(true);
            return 0;
        }

        private EGLConfig chooseEglConfig() {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr = new int[1];
            int[] config = getConfig(sDirtyRegions);
            String str = SystemProperties.get(HardwareRenderer.PRINT_CONFIG_PROPERTY, ProxyProperties.LOCAL_EXCL_LIST);
            if ("all".equalsIgnoreCase(str)) {
                sEgl.eglChooseConfig(sEglDisplay, config, null, 0, iArr);
                int i2 = iArr[0];
                EGLConfig[] eGLConfigArr2 = new EGLConfig[i2];
                sEgl.eglChooseConfig(sEglDisplay, config, eGLConfigArr2, iArr[0], iArr);
                for (int i3 = 0; i3 < i2; i3++) {
                    printConfig(eGLConfigArr2[i3]);
                }
            }
            if (!sEgl.eglChooseConfig(sEglDisplay, config, eGLConfigArr, 1, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed " + GLUtils.getEGLErrorString(sEgl.eglGetError()));
            }
            if (iArr[0] <= 0) {
                return null;
            }
            if ("choice".equalsIgnoreCase(str)) {
                printConfig(eGLConfigArr[0]);
            }
            return eGLConfigArr[0];
        }

        private boolean createSurface(Surface surface) {
            EGLSurface eGLSurfaceEglCreateWindowSurface = sEgl.eglCreateWindowSurface(sEglDisplay, sEglConfig, surface, null);
            this.mEglSurface = eGLSurfaceEglCreateWindowSurface;
            if (eGLSurfaceEglCreateWindowSurface != null && eGLSurfaceEglCreateWindowSurface != a.f90d) {
                if (sEgl.eglMakeCurrent(sEglDisplay, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, this.mEglContext)) {
                    enableDirtyRegions();
                    return true;
                }
                throw new IllegalStateException("eglMakeCurrent failed " + GLUtils.getEGLErrorString(sEgl.eglGetError()));
            }
            int iEglGetError = sEgl.eglGetError();
            if (iEglGetError == 12299) {
                Log.e(HardwareRenderer.LOG_TAG, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                return false;
            }
            throw new RuntimeException("createWindowSurface failed " + GLUtils.getEGLErrorString(iEglGetError));
        }

        private void debugDirtyRegions(Rect rect, HardwareCanvas hardwareCanvas) {
            if (this.mDebugDirtyRegions) {
                if (this.mDebugPaint == null) {
                    Paint paint = new Paint();
                    this.mDebugPaint = paint;
                    paint.setColor(2147418112);
                }
                if (rect == null || (this.mFrameCount & 1) != 0) {
                    return;
                }
                hardwareCanvas.drawRect(rect, this.mDebugPaint);
            }
        }

        private void debugOverdraw(View.AttachInfo attachInfo, Rect rect, HardwareCanvas hardwareCanvas, DisplayList displayList) {
            if (this.mDebugOverdraw == 1) {
                HardwareLayer hardwareLayer = this.mDebugOverdrawLayer;
                if (hardwareLayer == null) {
                    this.mDebugOverdrawLayer = createHardwareLayer(this.mWidth, this.mHeight, true);
                } else if (hardwareLayer.getWidth() != this.mWidth || this.mDebugOverdrawLayer.getHeight() != this.mHeight) {
                    this.mDebugOverdrawLayer.resize(this.mWidth, this.mHeight);
                }
                if (!this.mDebugOverdrawLayer.isValid()) {
                    this.mDebugOverdraw = -1;
                    return;
                }
                HardwareCanvas hardwareCanvasStart = this.mDebugOverdrawLayer.start(hardwareCanvas, rect);
                countOverdraw(hardwareCanvasStart);
                int iSave = hardwareCanvasStart.save();
                hardwareCanvasStart.drawDisplayList(displayList, null, 1);
                hardwareCanvasStart.restoreToCount(iSave);
                this.mDebugOverdrawLayer.end(hardwareCanvas);
                drawOverdrawCounter(hardwareCanvas, getOverdraw(hardwareCanvasStart), attachInfo.mRootView.getResources().getDisplayMetrics().density);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int dpToPx(int i2, float f2) {
            return (int) ((i2 * f2) + 0.5f);
        }

        private int drawDisplayList(View.AttachInfo attachInfo, HardwareCanvas hardwareCanvas, DisplayList displayList, int i2) {
            long jNanoTime = this.mProfileEnabled ? System.nanoTime() : 0L;
            Trace.traceBegin(8L, "drawDisplayList");
            try {
                int iDrawDisplayList = hardwareCanvas.drawDisplayList(displayList, this.mRedrawClip, 1) | i2;
                Trace.traceEnd(8L);
                if (this.mProfileEnabled) {
                    this.mProfileData[this.mProfileCurrentFrame + 1] = (System.nanoTime() - jNanoTime) * 1.0E-6f;
                }
                handleFunctorStatus(attachInfo, iDrawDisplayList);
                return iDrawDisplayList;
            } catch (Throwable th) {
                Trace.traceEnd(8L);
                throw th;
            }
        }

        private void drawOverdrawCounter(HardwareCanvas hardwareCanvas, float f2, float f3) {
            String str = String.format("%.2fx", Float.valueOf(f2));
            Paint paint = setupPaint(f3);
            paint.setColor(Color.HSBtoColor(0.28f - ((f2 * 0.28f) / 3.5f), 0.8f, 1.0f));
            hardwareCanvas.drawText(str, f3 * 4.0f, this.mHeight - paint.getFontMetrics().bottom, paint);
        }

        private void enableDirtyRegions() {
            if (!sDirtyRegions) {
                if (sDirtyRegionsRequested) {
                    this.mDirtyRegionsEnabled = HardwareRenderer.isBackBufferPreserved();
                }
            } else {
                boolean zPreserveBackBuffer = HardwareRenderer.preserveBackBuffer();
                this.mDirtyRegionsEnabled = zPreserveBackBuffer;
                if (zPreserveBackBuffer) {
                    return;
                }
                Log.w(HardwareRenderer.LOG_TAG, "Backbuffer cannot be preserved");
            }
        }

        private void endBuildDisplayListProfiling(long j2) {
            if (this.mProfileEnabled) {
                this.mProfileData[this.mProfileCurrentFrame] = (System.nanoTime() - j2) * 1.0E-6f;
            }
        }

        private void fallback(boolean z2) {
            destroy(true);
            if (z2) {
                setRequested(false);
                Log.w(HardwareRenderer.LOG_TAG, "Mountain View, we've had a problem here. Switching back to software rendering.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleFunctorStatus(View.AttachInfo attachInfo, int i2) {
            if ((i2 & 1) != 0) {
                if (this.mRedrawClip.isEmpty()) {
                    attachInfo.mViewRootImpl.invalidate();
                } else {
                    attachInfo.mViewRootImpl.invalidateChildInParent(null, this.mRedrawClip);
                    this.mRedrawClip.setEmpty();
                }
            }
            if ((i2 & 2) != 0 || attachInfo.mHandler.hasCallbacks(this.mFunctorsRunnable)) {
                attachInfo.mHandler.removeCallbacks(this.mFunctorsRunnable);
                FunctorsRunnable functorsRunnable = this.mFunctorsRunnable;
                functorsRunnable.attachInfo = attachInfo;
                attachInfo.mHandler.postDelayed(functorsRunnable, 4L);
            }
        }

        private EGLConfig loadEglConfig() {
            EGLConfig eGLConfigChooseEglConfig = chooseEglConfig();
            if (eGLConfigChooseEglConfig == null) {
                if (!sDirtyRegions) {
                    throw new RuntimeException("eglConfig not initialized");
                }
                sDirtyRegions = false;
                eGLConfigChooseEglConfig = chooseEglConfig();
                if (eGLConfigChooseEglConfig == null) {
                    throw new RuntimeException("eglConfig not initialized");
                }
            }
            return eGLConfigChooseEglConfig;
        }

        private int prepareFrame(Rect rect) {
            Trace.traceBegin(8L, "prepareFrame");
            try {
                return onPreDraw(rect);
            } finally {
                Trace.traceEnd(8L);
            }
        }

        private static void printConfig(EGLConfig eGLConfig) {
            int[] iArr = new int[1];
            Log.d(HardwareRenderer.LOG_TAG, "EGL configuration " + eGLConfig + ":");
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_RED_SIZE, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  RED_SIZE = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_GREEN_SIZE, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  GREEN_SIZE = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_BLUE_SIZE, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  BLUE_SIZE = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_ALPHA_SIZE, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  ALPHA_SIZE = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_DEPTH_SIZE, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  DEPTH_SIZE = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_STENCIL_SIZE, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  STENCIL_SIZE = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_SAMPLE_BUFFERS, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  SAMPLE_BUFFERS = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_SAMPLES, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  SAMPLES = " + iArr[0]);
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_SURFACE_TYPE, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  SURFACE_TYPE = 0x" + Integer.toHexString(iArr[0]));
            sEgl.eglGetConfigAttrib(sEglDisplay, eGLConfig, EGL14.EGL_CONFIG_CAVEAT, iArr);
            Log.d(HardwareRenderer.LOG_TAG, "  CONFIG_CAVEAT = 0x" + Integer.toHexString(iArr[0]));
        }

        private static int search(String[] strArr, String str) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (strArr[i2].equals(str)) {
                    return i2;
                }
            }
            return -1;
        }

        private Paint setupPaint(float f2) {
            if (this.mDebugOverdrawPaint == null) {
                Paint paint = new Paint();
                this.mDebugOverdrawPaint = paint;
                paint.setAntiAlias(true);
                this.mDebugOverdrawPaint.setShadowLayer(3.0f * f2, 0.0f, 0.0f, -16777216);
                this.mDebugOverdrawPaint.setTextSize(f2 * 20.0f);
            }
            return this.mDebugOverdrawPaint;
        }

        private long startBuildDisplayListProfiling() {
            if (!this.mProfileEnabled) {
                return 0L;
            }
            int i2 = this.mProfileCurrentFrame + 3;
            this.mProfileCurrentFrame = i2;
            if (i2 >= this.mProfileData.length) {
                this.mProfileCurrentFrame = 0;
            }
            return System.nanoTime();
        }

        private void swapBuffers(int i2) {
            if ((i2 & 4) == 4) {
                long jNanoTime = this.mProfileEnabled ? System.nanoTime() : 0L;
                sEgl.eglSwapBuffers(sEglDisplay, this.mEglSurface);
                if (this.mProfileEnabled) {
                    this.mProfileData[this.mProfileCurrentFrame + 2] = (System.nanoTime() - jNanoTime) * 1.0E-6f;
                }
                checkEglErrors();
            }
        }

        @Override // android.view.HardwareRenderer
        public boolean attachFunctor(View.AttachInfo attachInfo, int i2) {
            HardwareCanvas hardwareCanvas = this.mCanvas;
            if (hardwareCanvas == null) {
                return false;
            }
            hardwareCanvas.attachFunctor(i2);
            FunctorsRunnable functorsRunnable = this.mFunctorsRunnable;
            functorsRunnable.attachInfo = attachInfo;
            attachInfo.mHandler.removeCallbacks(functorsRunnable);
            attachInfo.mHandler.postDelayed(this.mFunctorsRunnable, 0L);
            return true;
        }

        public boolean canDraw() {
            return (this.mGl == null || this.mCanvas == null) ? false : true;
        }

        public void checkEglErrors() {
            if (isEnabled()) {
                checkEglErrorsForced();
            }
        }

        public int checkRenderContext() {
            if (this.mEglThread == Thread.currentThread()) {
                return checkRenderContextUnsafe();
            }
            throw new IllegalStateException("Hardware acceleration can only be used with a single UI thread.\nOriginal thread: " + this.mEglThread + "\nCurrent thread: " + Thread.currentThread());
        }

        public abstract void countOverdraw(HardwareCanvas hardwareCanvas);

        public abstract HardwareCanvas createCanvas();

        public EGLContext createContext(a aVar, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int i2 = this.mGlVersion;
            int[] iArr = {12440, i2, EGL14.EGL_NONE};
            EGLContext eGLContext = a.f89c;
            if (i2 == 0) {
                iArr = null;
            }
            EGLContext eGLContextEglCreateContext = aVar.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
            if (eGLContextEglCreateContext != null && eGLContextEglCreateContext != eGLContext) {
                return eGLContextEglCreateContext;
            }
            throw new IllegalStateException("Could not create an EGL context. eglCreateContext failed with error: " + GLUtils.getEGLErrorString(sEgl.eglGetError()));
        }

        public f createEglSurface(Surface surface) {
            if (sEgl == null) {
                throw new RuntimeException("egl not initialized");
            }
            if (sEglDisplay == null) {
                throw new RuntimeException("eglDisplay not initialized");
            }
            if (sEglConfig == null) {
                throw new RuntimeException("eglConfig not initialized");
            }
            if (Thread.currentThread() != this.mEglThread) {
                throw new IllegalStateException("HardwareRenderer cannot be used from multiple threads");
            }
            destroySurface();
            if (!createSurface(surface)) {
                return null;
            }
            initCaches();
            return this.mEglContext.getGL();
        }

        public abstract ManagedEGLContext createManagedContext(EGLContext eGLContext);

        @Override // android.view.HardwareRenderer
        public void destroy(boolean z2) {
            if (z2 && this.mCanvas != null) {
                this.mCanvas = null;
            }
            if (!isEnabled() || this.mDestroyed) {
                setEnabled(false);
                return;
            }
            destroySurface();
            setEnabled(false);
            this.mDestroyed = true;
            this.mGl = null;
        }

        public void destroySurface() {
            EGLSurface eGLSurface;
            EGLSurface eGLSurface2 = this.mEglSurface;
            if (eGLSurface2 == null || eGLSurface2 == (eGLSurface = a.f90d)) {
                return;
            }
            if (eGLSurface2.equals(sEgl.eglGetCurrentSurface(EGL14.EGL_DRAW))) {
                sEgl.eglMakeCurrent(sEglDisplay, eGLSurface, eGLSurface, a.f89c);
            }
            sEgl.eglDestroySurface(sEglDisplay, this.mEglSurface);
            this.mEglSurface = null;
        }

        @Override // android.view.HardwareRenderer
        public void detachFunctor(int i2) {
            HardwareCanvas hardwareCanvas = this.mCanvas;
            if (hardwareCanvas != null) {
                hardwareCanvas.detachFunctor(i2);
            }
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:45:0x00da  */
        @Override // android.view.HardwareRenderer
        public void draw(View view, View.AttachInfo attachInfo, HardwareDrawCallbacks hardwareDrawCallbacks, Rect rect) throws Throwable {
            int iSave;
            int iPrepareFrame;
            long systemTime;
            if (canDraw()) {
                Rect rect2 = !hasDirtyRegions() ? null : rect;
                attachInfo.mIgnoreDirtyState = true;
                attachInfo.mDrawingTime = SystemClock.uptimeMillis();
                view.mPrivateFlags |= 32;
                int iCheckRenderContextUnsafe = checkRenderContextUnsafe();
                if (iCheckRenderContextUnsafe != 0) {
                    HardwareCanvas hardwareCanvas = this.mCanvas;
                    attachInfo.mHardwareCanvas = hardwareCanvas;
                    if (this.mProfileEnabled) {
                        this.mProfileLock.lock();
                    }
                    Rect rectBeginFrame = beginFrame(hardwareCanvas, rect2, iCheckRenderContextUnsafe);
                    DisplayList displayListBuildDisplayList = buildDisplayList(view, hardwareCanvas);
                    if (checkRenderContextUnsafe() == 0) {
                        return;
                    }
                    long systemTime2 = HardwareRenderer.getSystemTime();
                    try {
                        try {
                            try {
                                iPrepareFrame = prepareFrame(rectBeginFrame);
                                try {
                                    iSave = hardwareCanvas.save();
                                    try {
                                        hardwareDrawCallbacks.onHardwarePreDraw(hardwareCanvas);
                                        if (displayListBuildDisplayList != null) {
                                            iPrepareFrame |= drawDisplayList(attachInfo, hardwareCanvas, displayListBuildDisplayList, iPrepareFrame);
                                        } else {
                                            view.draw(hardwareCanvas);
                                        }
                                        hardwareDrawCallbacks.onHardwarePostDraw(hardwareCanvas);
                                        hardwareCanvas.restoreToCount(iSave);
                                        view.mRecreateDisplayList = false;
                                        long systemTime3 = HardwareRenderer.getSystemTime() - systemTime2;
                                        this.mDrawDelta = systemTime3;
                                        if (systemTime3 > 0) {
                                            this.mFrameCount++;
                                            debugOverdraw(attachInfo, rectBeginFrame, hardwareCanvas, displayListBuildDisplayList);
                                            debugDirtyRegions(rectBeginFrame, hardwareCanvas);
                                            drawProfileData(attachInfo);
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        Log.e(HardwareRenderer.LOG_TAG, "An error has occurred while drawing:", e);
                                        hardwareDrawCallbacks.onHardwarePostDraw(hardwareCanvas);
                                        hardwareCanvas.restoreToCount(iSave);
                                        view.mRecreateDisplayList = false;
                                        long systemTime4 = HardwareRenderer.getSystemTime() - systemTime2;
                                        this.mDrawDelta = systemTime4;
                                        if (systemTime4 > 0) {
                                        }
                                        onPostDraw();
                                        swapBuffers(iPrepareFrame);
                                        if (this.mProfileEnabled) {
                                            this.mProfileLock.unlock();
                                        }
                                        attachInfo.mIgnoreDirtyState = false;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    iSave = 0;
                                }
                            } catch (Throwable th) {
                                th = th;
                                hardwareDrawCallbacks.onHardwarePostDraw(hardwareCanvas);
                                hardwareCanvas.restoreToCount(0);
                                view.mRecreateDisplayList = false;
                                systemTime = HardwareRenderer.getSystemTime() - systemTime2;
                                this.mDrawDelta = systemTime;
                                if (systemTime > 0) {
                                    this.mFrameCount++;
                                    debugOverdraw(attachInfo, rectBeginFrame, hardwareCanvas, displayListBuildDisplayList);
                                    debugDirtyRegions(rectBeginFrame, hardwareCanvas);
                                    drawProfileData(attachInfo);
                                }
                                throw th;
                            }
                        } catch (Exception e4) {
                            e = e4;
                            iSave = 0;
                            iPrepareFrame = 0;
                        }
                        onPostDraw();
                        swapBuffers(iPrepareFrame);
                        if (this.mProfileEnabled) {
                            this.mProfileLock.unlock();
                        }
                        attachInfo.mIgnoreDirtyState = false;
                    } catch (Throwable th2) {
                        th = th2;
                        hardwareDrawCallbacks.onHardwarePostDraw(hardwareCanvas);
                        hardwareCanvas.restoreToCount(0);
                        view.mRecreateDisplayList = false;
                        systemTime = HardwareRenderer.getSystemTime() - systemTime2;
                        this.mDrawDelta = systemTime;
                        if (systemTime > 0) {
                            this.mFrameCount++;
                            debugOverdraw(attachInfo, rectBeginFrame, hardwareCanvas, displayListBuildDisplayList);
                            debugDirtyRegions(rectBeginFrame, hardwareCanvas);
                            drawProfileData(attachInfo);
                        }
                        throw th;
                    }
                }
            }
        }

        public abstract void drawProfileData(View.AttachInfo attachInfo);

        @Override // android.view.HardwareRenderer
        public void dumpGfxInfo(PrintWriter printWriter) {
            float[] fArr;
            Object[] objArr = new Object[1];
            objArr[0] = hasDirtyRegions() ? "Enable" : "Disabled";
            printWriter.printf("\n\tDirty Regions: %s\n", objArr);
            if (this.mProfileEnabled) {
                printWriter.printf("\n\tDraw\tProcess\tExecute\n", new Object[0]);
                this.mProfileLock.lock();
                int i2 = 0;
                while (true) {
                    try {
                        fArr = this.mProfileData;
                        if (i2 >= fArr.length || fArr[i2] < 0.0f) {
                            break;
                            break;
                        }
                        int i3 = i2 + 1;
                        int i4 = i2 + 2;
                        printWriter.printf("\t%3.2f\t%3.2f\t%3.2f\n", Float.valueOf(fArr[i2]), Float.valueOf(this.mProfileData[i3]), Float.valueOf(this.mProfileData[i4]));
                        float[] fArr2 = this.mProfileData;
                        fArr2[i4] = -1.0f;
                        fArr2[i3] = -1.0f;
                        fArr2[i2] = -1.0f;
                        i2 += 3;
                    } catch (Throwable th) {
                        this.mProfileLock.unlock();
                        throw th;
                    }
                }
                this.mProfileCurrentFrame = fArr.length;
                this.mProfileLock.unlock();
            }
        }

        @Override // android.view.HardwareRenderer
        public HardwareCanvas getCanvas() {
            return this.mCanvas;
        }

        public abstract int[] getConfig(boolean z2);

        @Override // android.view.HardwareRenderer
        public long getFrameCount() {
            return this.mFrameCount;
        }

        @Override // android.view.HardwareRenderer
        public int getHeight() {
            return this.mHeight;
        }

        public abstract float getOverdraw(HardwareCanvas hardwareCanvas);

        @Override // android.view.HardwareRenderer
        public int getWidth() {
            return this.mWidth;
        }

        public boolean hasDirtyRegions() {
            return this.mDirtyRegionsEnabled;
        }

        public abstract void initAtlas();

        public abstract void initCaches();

        @Override // android.view.HardwareRenderer
        public boolean initialize(Surface surface) {
            if (!isRequested() || isEnabled()) {
                return false;
            }
            boolean zInitializeEgl = initializeEgl();
            f fVarCreateEglSurface = createEglSurface(surface);
            this.mGl = fVarCreateEglSurface;
            this.mDestroyed = false;
            if (fVarCreateEglSurface == null) {
                return false;
            }
            if (sEgl.eglGetError() != 12288) {
                destroy(true);
                setRequested(false);
            } else {
                if (this.mCanvas == null) {
                    HardwareCanvas hardwareCanvasCreateCanvas = createCanvas();
                    this.mCanvas = hardwareCanvasCreateCanvas;
                    hardwareCanvasCreateCanvas.setName(this.mName);
                }
                setEnabled(true);
                if (zInitializeEgl) {
                    initAtlas();
                }
            }
            return this.mCanvas != null;
        }

        public boolean initializeEgl() {
            synchronized (sEglLock) {
                if (sEgl == null && sEglConfig == null) {
                    a aVar = (a) EGLContext.getEGL();
                    sEgl = aVar;
                    EGLDisplay eGLDisplayEglGetDisplay = aVar.eglGetDisplay(a.f87a);
                    sEglDisplay = eGLDisplayEglGetDisplay;
                    if (eGLDisplayEglGetDisplay == a.f88b) {
                        throw new RuntimeException("eglGetDisplay failed " + GLUtils.getEGLErrorString(sEgl.eglGetError()));
                    }
                    if (!sEgl.eglInitialize(sEglDisplay, new int[2])) {
                        throw new RuntimeException("eglInitialize failed " + GLUtils.getEGLErrorString(sEgl.eglGetError()));
                    }
                    checkEglErrorsForced();
                    sEglConfig = loadEglConfig();
                }
            }
            ThreadLocal<ManagedEGLContext> threadLocal = sEglContextStorage;
            ManagedEGLContext managedEGLContext = threadLocal.get();
            this.mEglContext = managedEGLContext != null ? managedEGLContext.getContext() : null;
            this.mEglThread = Thread.currentThread();
            if (this.mEglContext != null) {
                return false;
            }
            EGLContext eGLContextCreateContext = createContext(sEgl, sEglDisplay, sEglConfig);
            this.mEglContext = eGLContextCreateContext;
            threadLocal.set(createManagedContext(eGLContextCreateContext));
            return true;
        }

        @Override // android.view.HardwareRenderer
        public void invalidate(Surface surface) {
            a aVar = sEgl;
            EGLDisplay eGLDisplay = sEglDisplay;
            EGLSurface eGLSurface = a.f90d;
            aVar.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, a.f89c);
            EGLSurface eGLSurface2 = this.mEglSurface;
            if (eGLSurface2 != null && eGLSurface2 != eGLSurface) {
                sEgl.eglDestroySurface(sEglDisplay, eGLSurface2);
                this.mEglSurface = null;
                setEnabled(false);
            }
            if (surface.isValid() && createSurface(surface)) {
                this.mUpdateDirtyRegions = true;
                if (this.mCanvas != null) {
                    setEnabled(true);
                }
            }
        }

        @Override // android.view.HardwareRenderer
        public boolean loadSystemProperties(Surface surface) {
            boolean z2;
            HardwareLayer hardwareLayer;
            String str = SystemProperties.get(HardwareRenderer.PROFILE_PROPERTY);
            int iSearch = search(VISUALIZERS, str);
            boolean z3 = iSearch >= 0;
            if (iSearch != this.mProfileVisualizerType) {
                this.mProfileVisualizerType = iSearch;
                this.mProfileShapes = null;
                this.mProfilePaint = null;
                if (z3) {
                    this.mDebugDataProvider = new DrawPerformanceDataProvider(iSearch);
                } else {
                    this.mDebugDataProvider = null;
                }
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z3) {
                z3 = Boolean.parseBoolean(str);
            }
            if (z3 != this.mProfileEnabled) {
                this.mProfileEnabled = z3;
                if (z3) {
                    Log.d(HardwareRenderer.LOG_TAG, "Profiling hardware renderer");
                    this.mProfileData = new float[SystemProperties.getInt(HardwareRenderer.PROFILE_MAXFRAMES_PROPERTY, 128) * 3];
                    int i2 = 0;
                    while (true) {
                        float[] fArr = this.mProfileData;
                        if (i2 >= fArr.length) {
                            break;
                        }
                        fArr[i2 + 2] = -1.0f;
                        fArr[i2 + 1] = -1.0f;
                        fArr[i2] = -1.0f;
                        i2 += 3;
                    }
                    this.mProfileLock = new ReentrantLock();
                } else {
                    this.mProfileData = null;
                    this.mProfileLock = null;
                    this.mProfileVisualizerType = -1;
                }
                this.mProfileCurrentFrame = -3;
                z2 = true;
            }
            boolean z4 = SystemProperties.getBoolean(HardwareRenderer.DEBUG_DIRTY_REGIONS_PROPERTY, false);
            if (z4 != this.mDebugDirtyRegions) {
                this.mDebugDirtyRegions = z4;
                if (z4) {
                    Log.d(HardwareRenderer.LOG_TAG, "Debugging dirty regions");
                }
                z2 = true;
            }
            int iSearch2 = search(OVERDRAW, SystemProperties.get(HardwareRenderer.DEBUG_OVERDRAW_PROPERTY));
            if (iSearch2 != this.mDebugOverdraw) {
                this.mDebugOverdraw = iSearch2;
                if (iSearch2 != 1 && (hardwareLayer = this.mDebugOverdrawLayer) != null) {
                    hardwareLayer.destroy();
                    this.mDebugOverdrawLayer = null;
                    this.mDebugOverdrawPaint = null;
                }
                z2 = true;
            }
            if (HardwareRenderer.nLoadProperties()) {
                return true;
            }
            return z2;
        }

        public void onPostDraw() {
        }

        public int onPreDraw(Rect rect) {
            return 0;
        }

        @Override // android.view.HardwareRenderer
        public void setName(String str) {
            this.mName = str;
        }

        @Override // android.view.HardwareRenderer
        public void setup(int i2, int i3) {
            if (validate()) {
                this.mCanvas.setViewport(i2, i3);
                this.mWidth = i2;
                this.mHeight = i3;
            }
        }

        @Override // android.view.HardwareRenderer
        public void updateSurface(Surface surface) {
            if (isRequested() && isEnabled()) {
                createEglSurface(surface);
            }
        }

        @Override // android.view.HardwareRenderer
        public boolean validate() {
            return checkRenderContext() != 0;
        }
    }

    public abstract class GraphDataProvider {
        public static final int GRAPH_TYPE_BARS = 0;
        public static final int GRAPH_TYPE_LINES = 1;

        public GraphDataProvider() {
        }

        public abstract int getCurrentFrame();

        public abstract float[] getData();

        public abstract int getElementCount();

        public abstract int getFrameCount();

        public abstract int getGraphType();

        public abstract int getHorizontaUnitMargin();

        public abstract int getHorizontalUnitSize();

        public abstract float getThreshold();

        public abstract int getVerticalUnitSize();

        public abstract void prepare(DisplayMetrics displayMetrics);

        public abstract void setupCurrentFramePaint(Paint paint);

        public abstract void setupGraphPaint(Paint paint, int i2);

        public abstract void setupThresholdPaint(Paint paint);
    }

    public interface HardwareDrawCallbacks {
        void onHardwarePostDraw(HardwareCanvas hardwareCanvas);

        void onHardwarePreDraw(HardwareCanvas hardwareCanvas);
    }

    public static void beginFrame(int[] iArr) {
        nBeginFrame(iArr);
    }

    public static HardwareRenderer createGlRenderer(int i2, boolean z2) {
        if (i2 == 2) {
            return Gl20Renderer.create(z2);
        }
        throw new IllegalArgumentException("Unknown GL version: " + i2);
    }

    public static void disable(boolean z2) {
        sRendererDisabled = true;
        if (z2) {
            sSystemRendererDisabled = true;
        }
    }

    public static void endTrimMemory() {
        Gl20Renderer.endTrimMemory();
    }

    public static long getSystemTime() {
        return nGetSystemTime();
    }

    public static boolean isAvailable() {
        return GLES20Canvas.isAvailable();
    }

    public static boolean isBackBufferPreserved() {
        return nIsBackBufferPreserved();
    }

    private static native void nBeginFrame(int[] iArr);

    private static native long nGetSystemTime();

    private static native boolean nIsBackBufferPreserved();

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nLoadProperties();

    private static native boolean nPreserveBackBuffer();

    private static native void nSetupShadersDiskCache(String str);

    public static boolean preserveBackBuffer() {
        return nPreserveBackBuffer();
    }

    public static void setupDiskCache(File file) {
        nSetupShadersDiskCache(new File(file, CACHE_PATH_SHADERS).getAbsolutePath());
    }

    public static void startTrimMemory(int i2) {
        Gl20Renderer.startTrimMemory(i2);
    }

    public static void trimMemory(int i2) {
        startTrimMemory(i2);
        endTrimMemory();
    }

    public abstract boolean attachFunctor(View.AttachInfo attachInfo, int i2);

    public abstract void cancelLayerUpdate(HardwareLayer hardwareLayer);

    public abstract DisplayList createDisplayList(String str);

    public abstract HardwareLayer createHardwareLayer(int i2, int i3, boolean z2);

    public abstract HardwareLayer createHardwareLayer(boolean z2);

    public abstract SurfaceTexture createSurfaceTexture(HardwareLayer hardwareLayer);

    public abstract void destroy(boolean z2);

    public abstract void destroyHardwareResources(View view);

    public abstract void destroyLayers(View view);

    public abstract void detachFunctor(int i2);

    public abstract void draw(View view, View.AttachInfo attachInfo, HardwareDrawCallbacks hardwareDrawCallbacks, Rect rect);

    public abstract void dumpGfxInfo(PrintWriter printWriter);

    public abstract void flushLayerUpdates();

    public abstract HardwareCanvas getCanvas();

    public abstract long getFrameCount();

    public abstract int getHeight();

    public abstract int getWidth();

    public abstract boolean initialize(Surface surface);

    public boolean initializeIfNeeded(int i2, int i3, Surface surface) {
        if (!isRequested() || isEnabled() || !initialize(surface)) {
            return false;
        }
        setup(i2, i3);
        return true;
    }

    public abstract void invalidate(Surface surface);

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public boolean isRequested() {
        return this.mRequested;
    }

    public abstract boolean loadSystemProperties(Surface surface);

    public abstract void pushLayerUpdate(HardwareLayer hardwareLayer);

    public abstract boolean safelyRun(Runnable runnable);

    public void setEnabled(boolean z2) {
        this.mEnabled = z2;
    }

    public abstract void setName(String str);

    public void setRequested(boolean z2) {
        this.mRequested = z2;
    }

    public abstract void setSurfaceTexture(HardwareLayer hardwareLayer, SurfaceTexture surfaceTexture);

    public abstract void setup(int i2, int i3);

    public abstract void updateSurface(Surface surface);

    public abstract boolean validate();
}
