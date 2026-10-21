package android.view;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.Log;
import com.android.internal.R;
import com.android.internal.util.VirtualRefBasePtr;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ThreadedRenderer {
    private static final String CACHE_PATH_SHADERS = "com.android.opengl.shaders_cache";
    public static final String DEBUG_DIRTY_REGIONS_PROPERTY = "debug.hwui.show_dirty_regions";
    public static final String DEBUG_OVERDRAW_PROPERTY = "debug.hwui.overdraw";
    public static final String DEBUG_RENDERER_PROPERTY = "debug.hwui.renderer";
    public static final String DEBUG_SHOW_LAYERS_UPDATES_PROPERTY = "debug.hwui.show_layers_updates";
    public static final String DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY = "debug.hwui.show_non_rect_clip";
    private static final int FLAG_DUMP_FRAMESTATS = 1;
    private static final int FLAG_DUMP_RESET = 2;
    private static final String LOG_TAG = "ThreadedRenderer";
    public static final String OVERDRAW_PROPERTY_SHOW = "show";
    static final String PRINT_CONFIG_PROPERTY = "debug.hwui.print_config";
    static final String PROFILE_MAXFRAMES_PROPERTY = "debug.hwui.profile.maxframes";
    public static final String PROFILE_PROPERTY = "debug.hwui.profile";
    public static final String PROFILE_PROPERTY_VISUALIZE_BARS = "visual_bars";
    private static final int SYNC_CONTEXT_IS_STOPPED = 4;
    private static final int SYNC_INVALIDATE_REQUIRED = 1;
    private static final int SYNC_LOST_SURFACE_REWARD_IF_FOUND = 2;
    private static final int SYNC_OK = 0;
    private static final String[] VISUALIZERS;
    public static boolean sRendererDisabled;
    private static Boolean sSupportsOpenGL;
    public static boolean sSystemRendererDisabled;
    public static boolean sTrimForeground;
    private final int mAmbientShadowAlpha;
    private boolean mEnabled;
    private boolean mHasInsets;
    private int mHeight;
    private int mInsetLeft;
    private int mInsetTop;
    private boolean mIsOpaque;
    private final float mLightRadius;
    private final float mLightY;
    private final float mLightZ;
    private long mNativeProxy;
    private RenderNode mRootNode;
    private boolean mRootNodeNeedsUpdate;
    private final int mSpotShadowAlpha;
    private int mSurfaceHeight;
    private int mSurfaceWidth;
    private int mWidth;
    private boolean mInitialized = false;
    private boolean mRequested = true;

    public interface DrawCallbacks {
        void onPostDraw(DisplayListCanvas displayListCanvas);

        void onPreDraw(DisplayListCanvas displayListCanvas);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DumpFlags {
    }

    public static class ProcessInitializer {
        static ProcessInitializer sInstance = new ProcessInitializer();
        private Context mAppContext;
        private IGraphicsStats mGraphicsStatsService;
        private boolean mInitialized = false;
        private IGraphicsStatsCallback mGraphicsStatsCallback = new IGraphicsStatsCallback.Stub() { // from class: android.view.ThreadedRenderer.ProcessInitializer.1
            @Override // android.view.IGraphicsStatsCallback
            public void onRotateGraphicsStatsBuffer() {
                ProcessInitializer.this.rotateBuffer();
            }
        };

        private ProcessInitializer() {
        }

        private void initGraphicsStats() {
            try {
                IBinder service = ServiceManager.getService("graphicsstats");
                if (service == null) {
                    return;
                }
                this.mGraphicsStatsService = IGraphicsStats.Stub.asInterface(service);
                requestBuffer();
            } catch (Throwable th) {
                Log.w(ThreadedRenderer.LOG_TAG, "Could not acquire gfx stats buffer", th);
            }
        }

        private void initSched(long j2) {
            try {
                ActivityManager.getService().setRenderThread(ThreadedRenderer.nGetRenderThreadTid(j2));
            } catch (Throwable th) {
                Log.w(ThreadedRenderer.LOG_TAG, "Failed to set scheduler for RenderThread", th);
            }
        }

        private void requestBuffer() {
            try {
                ParcelFileDescriptor parcelFileDescriptorRequestBufferForProcess = this.mGraphicsStatsService.requestBufferForProcess(this.mAppContext.getApplicationInfo().packageName, this.mGraphicsStatsCallback);
                ThreadedRenderer.nSetProcessStatsBuffer(parcelFileDescriptorRequestBufferForProcess.getFd());
                parcelFileDescriptorRequestBufferForProcess.close();
            } catch (Throwable th) {
                Log.w(ThreadedRenderer.LOG_TAG, "Could not acquire gfx stats buffer", th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void rotateBuffer() {
            ThreadedRenderer.nRotateProcessStatsBuffer();
            requestBuffer();
        }

        public synchronized void init(Context context, long j2) {
            if (this.mInitialized) {
                return;
            }
            this.mInitialized = true;
            this.mAppContext = context.getApplicationContext();
            initSched(j2);
            initGraphicsStats();
        }
    }

    static {
        isAvailable();
        sRendererDisabled = false;
        sSystemRendererDisabled = false;
        sTrimForeground = false;
        VISUALIZERS = new String[]{PROFILE_PROPERTY_VISUALIZE_BARS};
    }

    public ThreadedRenderer(Context context, boolean z2, String str) {
        this.mIsOpaque = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.Lighting, 0, 0);
        this.mLightY = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        this.mLightZ = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        this.mLightRadius = typedArrayObtainStyledAttributes.getDimension(2, 0.0f);
        this.mAmbientShadowAlpha = (int) ((typedArrayObtainStyledAttributes.getFloat(0, 0.0f) * 255.0f) + 0.5f);
        this.mSpotShadowAlpha = (int) ((typedArrayObtainStyledAttributes.getFloat(1, 0.0f) * 255.0f) + 0.5f);
        typedArrayObtainStyledAttributes.recycle();
        long jNCreateRootRenderNode = nCreateRootRenderNode();
        RenderNode renderNodeAdopt = RenderNode.adopt(jNCreateRootRenderNode);
        this.mRootNode = renderNodeAdopt;
        renderNodeAdopt.setClipToBounds(false);
        this.mIsOpaque = !z2;
        long jNCreateProxy = nCreateProxy(z2, jNCreateRootRenderNode);
        this.mNativeProxy = jNCreateProxy;
        nSetName(jNCreateProxy, str);
        ProcessInitializer.sInstance.init(context, this.mNativeProxy);
        loadSystemProperties();
    }

    public static int copySurfaceInto(Surface surface, Rect rect, Bitmap bitmap) {
        return rect == null ? nCopySurfaceInto(surface, 0, 0, 0, 0, bitmap) : nCopySurfaceInto(surface, rect.left, rect.top, rect.right, rect.bottom, bitmap);
    }

    public static ThreadedRenderer create(Context context, boolean z2, String str) {
        if (isAvailable()) {
            return new ThreadedRenderer(context, z2, str);
        }
        return null;
    }

    public static Bitmap createHardwareBitmap(RenderNode renderNode, int i2, int i3) {
        return nCreateHardwareBitmap(renderNode.getNativeDisplayList(), i2, i3);
    }

    private static void destroyResources(View view) {
        view.destroyHardwareResources();
    }

    public static void disable(boolean z2) {
        sRendererDisabled = true;
        if (z2) {
            sSystemRendererDisabled = true;
        }
    }

    public static native void disableVsync();

    public static void enableForegroundTrimming() {
        sTrimForeground = true;
    }

    public static void invokeFunctor(long j2, boolean z2) {
        nInvokeFunctor(j2, z2);
    }

    public static boolean isAvailable() {
        Boolean bool = sSupportsOpenGL;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (SystemProperties.getInt("ro.kernel.qemu", 0) == 0) {
            sSupportsOpenGL = Boolean.TRUE;
            return true;
        }
        int i2 = SystemProperties.getInt("qemu.gles", -1);
        if (i2 == -1) {
            return false;
        }
        Boolean boolValueOf = Boolean.valueOf(i2 > 0);
        sSupportsOpenGL = boolValueOf;
        return boolValueOf.booleanValue();
    }

    private static native long nAddFrameMetricsObserver(long j2, FrameMetricsObserver frameMetricsObserver);

    private static native void nAddRenderNode(long j2, long j3, boolean z2);

    private static native void nBuildLayer(long j2, long j3);

    private static native void nCancelLayerUpdate(long j2, long j3);

    private static native boolean nCopyLayerInto(long j2, long j3, Bitmap bitmap);

    private static native int nCopySurfaceInto(Surface surface, int i2, int i3, int i4, int i5, Bitmap bitmap);

    private static native Bitmap nCreateHardwareBitmap(long j2, int i2, int i3);

    private static native long nCreateProxy(boolean z2, long j2);

    private static native long nCreateRootRenderNode();

    private static native long nCreateTextureLayer(long j2);

    private static native void nDeleteProxy(long j2);

    private static native void nDestroy(long j2, long j3);

    private static native void nDestroyHardwareResources(long j2);

    private static native void nDetachSurfaceTexture(long j2, long j3);

    private static native void nDrawRenderNode(long j2, long j3);

    private static native void nDumpProfileInfo(long j2, FileDescriptor fileDescriptor, int i2);

    private static native void nFence(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nGetRenderThreadTid(long j2);

    private static native void nInitialize(long j2, Surface surface);

    private static native void nInvokeFunctor(long j2, boolean z2);

    private static native boolean nLoadSystemProperties(long j2);

    private static native void nNotifyFramePending(long j2);

    private static native void nOverrideProperty(String str, String str2);

    private static native boolean nPauseSurface(long j2, Surface surface);

    private static native void nPushLayerUpdate(long j2, long j3);

    private static native void nRegisterAnimatingRenderNode(long j2, long j3);

    private static native void nRegisterVectorDrawableAnimator(long j2, long j3);

    private static native void nRemoveFrameMetricsObserver(long j2, long j3);

    private static native void nRemoveRenderNode(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nRotateProcessStatsBuffer();

    private static native void nSerializeDisplayListTree(long j2);

    private static native void nSetContentDrawBounds(long j2, int i2, int i3, int i4, int i5);

    private static native void nSetLightCenter(long j2, float f2, float f3, float f4);

    private static native void nSetName(long j2, String str);

    private static native void nSetOpaque(long j2, boolean z2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetProcessStatsBuffer(int i2);

    private static native void nSetStopped(long j2, boolean z2);

    private static native void nSetWideGamut(long j2, boolean z2);

    private static native void nSetup(long j2, float f2, int i2, int i3);

    private static native void nStopDrawing(long j2);

    private static native int nSyncAndDrawFrame(long j2, long[] jArr, int i2);

    private static native void nTrimMemory(int i2);

    private static native void nUpdateSurface(long j2, Surface surface);

    public static void overrideProperty(String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("name and value must be non-null");
        }
        nOverrideProperty(str, str2);
    }

    public static void setupDiskCache(File file) {
        setupShadersDiskCache(new File(file, CACHE_PATH_SHADERS).getAbsolutePath());
    }

    public static native void setupShadersDiskCache(String str);

    public static void trimMemory(int i2) {
        nTrimMemory(i2);
    }

    private void updateEnabledState(Surface surface) {
        if (surface == null || !surface.isValid()) {
            setEnabled(false);
        } else {
            setEnabled(this.mInitialized);
        }
    }

    private void updateRootDisplayList(View view, DrawCallbacks drawCallbacks) {
        Trace.traceBegin(8L, "Record View#draw()");
        updateViewTreeDisplayList(view);
        if (this.mRootNodeNeedsUpdate || !this.mRootNode.isValid()) {
            DisplayListCanvas displayListCanvasStart = this.mRootNode.start(this.mSurfaceWidth, this.mSurfaceHeight);
            try {
                int iSave = displayListCanvasStart.save();
                displayListCanvasStart.translate(this.mInsetLeft, this.mInsetTop);
                drawCallbacks.onPreDraw(displayListCanvasStart);
                displayListCanvasStart.insertReorderBarrier();
                displayListCanvasStart.drawRenderNode(view.updateDisplayListIfDirty());
                displayListCanvasStart.insertInorderBarrier();
                drawCallbacks.onPostDraw(displayListCanvasStart);
                displayListCanvasStart.restoreToCount(iSave);
                this.mRootNodeNeedsUpdate = false;
                this.mRootNode.end(displayListCanvasStart);
            } catch (Throwable th) {
                this.mRootNode.end(displayListCanvasStart);
                throw th;
            }
        }
        Trace.traceEnd(8L);
    }

    private void updateViewTreeDisplayList(View view) {
        int i2 = view.mPrivateFlags | 32;
        view.mPrivateFlags = i2;
        view.mRecreateDisplayList = (i2 & Integer.MIN_VALUE) == Integer.MIN_VALUE;
        view.mPrivateFlags = i2 & Integer.MAX_VALUE;
        view.updateDisplayListIfDirty();
        view.mRecreateDisplayList = false;
    }

    public void addFrameMetricsObserver(FrameMetricsObserver frameMetricsObserver) {
        frameMetricsObserver.mNative = new VirtualRefBasePtr(nAddFrameMetricsObserver(this.mNativeProxy, frameMetricsObserver));
    }

    public void addRenderNode(RenderNode renderNode, boolean z2) {
        nAddRenderNode(this.mNativeProxy, renderNode.mNativeRenderNode, z2);
    }

    public void buildLayer(RenderNode renderNode) {
        nBuildLayer(this.mNativeProxy, renderNode.getNativeDisplayList());
    }

    public boolean copyLayerInto(HardwareLayer hardwareLayer, Bitmap bitmap) {
        return nCopyLayerInto(this.mNativeProxy, hardwareLayer.getDeferredLayerUpdater(), bitmap);
    }

    public HardwareLayer createTextureLayer() {
        return HardwareLayer.adoptTextureLayer(this, nCreateTextureLayer(this.mNativeProxy));
    }

    public void destroy() {
        this.mInitialized = false;
        updateEnabledState(null);
        nDestroy(this.mNativeProxy, this.mRootNode.mNativeRenderNode);
    }

    public void destroyHardwareResources(View view) {
        destroyResources(view);
        nDestroyHardwareResources(this.mNativeProxy);
    }

    public void detachSurfaceTexture(long j2) {
        nDetachSurfaceTexture(this.mNativeProxy, j2);
    }

    public void draw(View view, View.AttachInfo attachInfo, DrawCallbacks drawCallbacks) {
        attachInfo.mIgnoreDirtyState = true;
        Choreographer choreographer = attachInfo.mViewRootImpl.mChoreographer;
        choreographer.mFrameInfo.markDrawStart();
        updateRootDisplayList(view, drawCallbacks);
        attachInfo.mIgnoreDirtyState = false;
        List<RenderNode> list = attachInfo.mPendingAnimatingRenderNodes;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                registerAnimatingRenderNode(attachInfo.mPendingAnimatingRenderNodes.get(i2));
            }
            attachInfo.mPendingAnimatingRenderNodes.clear();
            attachInfo.mPendingAnimatingRenderNodes = null;
        }
        long[] jArr = choreographer.mFrameInfo.mFrameInfo;
        int iNSyncAndDrawFrame = nSyncAndDrawFrame(this.mNativeProxy, jArr, jArr.length);
        if ((iNSyncAndDrawFrame & 2) != 0) {
            setEnabled(false);
            attachInfo.mViewRootImpl.mSurface.release();
            attachInfo.mViewRootImpl.invalidate();
        }
        if ((iNSyncAndDrawFrame & 1) != 0) {
            attachInfo.mViewRootImpl.invalidate();
        }
    }

    public void drawRenderNode(RenderNode renderNode) {
        nDrawRenderNode(this.mNativeProxy, renderNode.mNativeRenderNode);
    }

    public void dumpGfxInfo(PrintWriter printWriter, FileDescriptor fileDescriptor, String[] strArr) {
        printWriter.flush();
        int i2 = 0;
        for (String str : strArr) {
            str.getClass();
            if (str.equals("framestats")) {
                i2 |= 1;
            } else if (str.equals("reset")) {
                i2 |= 2;
            }
        }
        nDumpProfileInfo(this.mNativeProxy, fileDescriptor, i2);
    }

    public void fence() {
        nFence(this.mNativeProxy);
    }

    public void finalize() throws Throwable {
        try {
            nDeleteProxy(this.mNativeProxy);
            this.mNativeProxy = 0L;
        } finally {
            super.finalize();
        }
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean initialize(Surface surface) {
        boolean z2 = !this.mInitialized;
        this.mInitialized = true;
        updateEnabledState(surface);
        nInitialize(this.mNativeProxy, surface);
        return z2;
    }

    public boolean initializeIfNeeded(int i2, int i3, View.AttachInfo attachInfo, Surface surface, Rect rect) {
        if (!isRequested() || isEnabled() || !initialize(surface)) {
            return false;
        }
        setup(i2, i3, attachInfo, rect);
        return true;
    }

    public void invalidateRoot() {
        this.mRootNodeNeedsUpdate = true;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public boolean isOpaque() {
        return this.mIsOpaque;
    }

    public boolean isRequested() {
        return this.mRequested;
    }

    public boolean loadSystemProperties() {
        boolean zNLoadSystemProperties = nLoadSystemProperties(this.mNativeProxy);
        if (zNLoadSystemProperties) {
            invalidateRoot();
        }
        return zNLoadSystemProperties;
    }

    public void notifyFramePending() {
        nNotifyFramePending(this.mNativeProxy);
    }

    public void onLayerDestroyed(HardwareLayer hardwareLayer) {
        nCancelLayerUpdate(this.mNativeProxy, hardwareLayer.getDeferredLayerUpdater());
    }

    public boolean pauseSurface(Surface surface) {
        return nPauseSurface(this.mNativeProxy, surface);
    }

    public void pushLayerUpdate(HardwareLayer hardwareLayer) {
        nPushLayerUpdate(this.mNativeProxy, hardwareLayer.getDeferredLayerUpdater());
    }

    public void registerAnimatingRenderNode(RenderNode renderNode) {
        nRegisterAnimatingRenderNode(this.mRootNode.mNativeRenderNode, renderNode.mNativeRenderNode);
    }

    public void registerVectorDrawableAnimator(AnimatedVectorDrawable.VectorDrawableAnimatorRT vectorDrawableAnimatorRT) {
        nRegisterVectorDrawableAnimator(this.mRootNode.mNativeRenderNode, vectorDrawableAnimatorRT.getAnimatorNativePtr());
    }

    public void removeFrameMetricsObserver(FrameMetricsObserver frameMetricsObserver) {
        nRemoveFrameMetricsObserver(this.mNativeProxy, frameMetricsObserver.mNative.get());
        frameMetricsObserver.mNative = null;
    }

    public void removeRenderNode(RenderNode renderNode) {
        nRemoveRenderNode(this.mNativeProxy, renderNode.mNativeRenderNode);
    }

    public void serializeDisplayListTree() {
        nSerializeDisplayListTree(this.mNativeProxy);
    }

    public void setContentDrawBounds(int i2, int i3, int i4, int i5) {
        nSetContentDrawBounds(this.mNativeProxy, i2, i3, i4, i5);
    }

    public void setEnabled(boolean z2) {
        this.mEnabled = z2;
    }

    public void setLightCenter(View.AttachInfo attachInfo) {
        Point point = attachInfo.mPoint;
        attachInfo.mDisplay.getRealSize(point);
        nSetLightCenter(this.mNativeProxy, (point.f71x / 2.0f) - attachInfo.mWindowLeft, this.mLightY - attachInfo.mWindowTop, this.mLightZ);
    }

    public void setOpaque(boolean z2) {
        boolean z3 = z2 && !this.mHasInsets;
        this.mIsOpaque = z3;
        nSetOpaque(this.mNativeProxy, z3);
    }

    public void setRequested(boolean z2) {
        this.mRequested = z2;
    }

    public void setStopped(boolean z2) {
        nSetStopped(this.mNativeProxy, z2);
    }

    public void setWideGamut(boolean z2) {
        nSetWideGamut(this.mNativeProxy, z2);
    }

    public void setup(int i2, int i3, View.AttachInfo attachInfo, Rect rect) {
        int i4;
        this.mWidth = i2;
        this.mHeight = i3;
        if (rect == null || ((i4 = rect.left) == 0 && rect.right == 0 && rect.top == 0 && rect.bottom == 0)) {
            this.mHasInsets = false;
            this.mInsetLeft = 0;
            this.mInsetTop = 0;
            this.mSurfaceWidth = i2;
            this.mSurfaceHeight = i3;
        } else {
            this.mHasInsets = true;
            this.mInsetLeft = i4;
            int i5 = rect.top;
            this.mInsetTop = i5;
            this.mSurfaceWidth = i2 + i4 + rect.right;
            this.mSurfaceHeight = i3 + i5 + rect.bottom;
            setOpaque(false);
        }
        this.mRootNode.setLeftTopRightBottom(-this.mInsetLeft, -this.mInsetTop, this.mSurfaceWidth, this.mSurfaceHeight);
        nSetup(this.mNativeProxy, this.mLightRadius, this.mAmbientShadowAlpha, this.mSpotShadowAlpha);
        setLightCenter(attachInfo);
    }

    public void stopDrawing() {
        nStopDrawing(this.mNativeProxy);
    }

    public void updateSurface(Surface surface) {
        updateEnabledState(surface);
        nUpdateSurface(this.mNativeProxy, surface);
    }
}
