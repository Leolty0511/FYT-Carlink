package android.view;

import android.graphics.Bitmap;
import android.graphics.GraphicBuffer;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes2.dex */
public class SurfaceControl {
    public static final int BUILT_IN_DISPLAY_ID_HDMI = 1;
    public static final int BUILT_IN_DISPLAY_ID_MAIN = 0;
    public static final int CURSOR_WINDOW = 8192;
    public static final int FX_SURFACE_DIM = 131072;
    public static final int FX_SURFACE_MASK = 983040;
    public static final int FX_SURFACE_NORMAL = 0;
    public static final int HIDDEN = 4;
    public static final int NON_PREMULTIPLIED = 256;
    public static final int OPAQUE = 1024;
    public static final int POWER_MODE_DOZE = 1;
    public static final int POWER_MODE_DOZE_SUSPEND = 3;
    public static final int POWER_MODE_NORMAL = 2;
    public static final int POWER_MODE_OFF = 0;
    public static final int PROTECTED_APP = 2048;
    public static final int SECURE = 128;
    private static final int SURFACE_HIDDEN = 1;
    private static final int SURFACE_OPAQUE = 2;
    private static final String TAG = "SurfaceControl";
    public static final int WINDOW_TYPE_DONT_SCREENSHOT = 441731;
    private final CloseGuard mCloseGuard;
    private final String mName;
    long mNativeObject;

    public static final class PhysicalDisplayInfo {
        public long appVsyncOffsetNanos;
        public float density;
        public int height;
        public long presentationDeadlineNanos;
        public float refreshRate;
        public boolean secure;
        public int width;
        public float xDpi;
        public float yDpi;

        public PhysicalDisplayInfo() {
        }

        public void copyFrom(PhysicalDisplayInfo physicalDisplayInfo) {
            this.width = physicalDisplayInfo.width;
            this.height = physicalDisplayInfo.height;
            this.refreshRate = physicalDisplayInfo.refreshRate;
            this.density = physicalDisplayInfo.density;
            this.xDpi = physicalDisplayInfo.xDpi;
            this.yDpi = physicalDisplayInfo.yDpi;
            this.secure = physicalDisplayInfo.secure;
            this.appVsyncOffsetNanos = physicalDisplayInfo.appVsyncOffsetNanos;
            this.presentationDeadlineNanos = physicalDisplayInfo.presentationDeadlineNanos;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PhysicalDisplayInfo) && equals((PhysicalDisplayInfo) obj);
        }

        public int hashCode() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("PhysicalDisplayInfo{");
            sb.append(this.width);
            sb.append(" x ");
            sb.append(this.height);
            sb.append(", ");
            sb.append(this.refreshRate);
            sb.append(" fps, density ");
            sb.append(this.density);
            sb.append(", ");
            sb.append(this.xDpi);
            sb.append(" x ");
            sb.append(this.yDpi);
            sb.append(" dpi, secure ");
            sb.append(this.secure);
            sb.append(", appVsyncOffset ");
            sb.append(this.appVsyncOffsetNanos);
            sb.append(", bufferDeadline ");
            return android.app.m.k(sb, this.presentationDeadlineNanos, "}");
        }

        public PhysicalDisplayInfo(PhysicalDisplayInfo physicalDisplayInfo) {
            copyFrom(physicalDisplayInfo);
        }

        public boolean equals(PhysicalDisplayInfo physicalDisplayInfo) {
            return physicalDisplayInfo != null && this.width == physicalDisplayInfo.width && this.height == physicalDisplayInfo.height && this.refreshRate == physicalDisplayInfo.refreshRate && this.density == physicalDisplayInfo.density && this.xDpi == physicalDisplayInfo.xDpi && this.yDpi == physicalDisplayInfo.yDpi && this.secure == physicalDisplayInfo.secure && this.appVsyncOffsetNanos == physicalDisplayInfo.appVsyncOffsetNanos && this.presentationDeadlineNanos == physicalDisplayInfo.presentationDeadlineNanos;
        }
    }

    public SurfaceControl(SurfaceSession surfaceSession, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
        this(surfaceSession, str, i2, i3, i4, i5, null, i6, i7);
    }

    private void checkNotReleased() {
        if (this.mNativeObject == 0) {
            throw new NullPointerException("mNativeObject is null. Have you called release() already?");
        }
    }

    public static boolean clearAnimationFrameStats() {
        return nativeClearAnimationFrameStats();
    }

    public static void closeTransaction() {
        nativeCloseTransaction(false);
    }

    public static void closeTransactionSync() {
        nativeCloseTransaction(true);
    }

    public static IBinder createDisplay(String str, boolean z2) {
        if (str != null) {
            return nativeCreateDisplay(str, z2);
        }
        throw new IllegalArgumentException("name must not be null");
    }

    public static void destroyDisplay(IBinder iBinder) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        nativeDestroyDisplay(iBinder);
    }

    public static int getActiveColorMode(IBinder iBinder) {
        if (iBinder != null) {
            return nativeGetActiveColorMode(iBinder);
        }
        throw new IllegalArgumentException("displayToken must not be null");
    }

    public static int getActiveConfig(IBinder iBinder) {
        if (iBinder != null) {
            return nativeGetActiveConfig(iBinder);
        }
        throw new IllegalArgumentException("displayToken must not be null");
    }

    public static boolean getAnimationFrameStats(WindowAnimationFrameStats windowAnimationFrameStats) {
        return nativeGetAnimationFrameStats(windowAnimationFrameStats);
    }

    public static IBinder getBuiltInDisplay(int i2) {
        return nativeGetBuiltInDisplay(i2);
    }

    public static int[] getDisplayColorModes(IBinder iBinder) {
        if (iBinder != null) {
            return nativeGetDisplayColorModes(iBinder);
        }
        throw new IllegalArgumentException("displayToken must not be null");
    }

    public static PhysicalDisplayInfo[] getDisplayConfigs(IBinder iBinder) {
        if (iBinder != null) {
            return nativeGetDisplayConfigs(iBinder);
        }
        throw new IllegalArgumentException("displayToken must not be null");
    }

    public static Display.HdrCapabilities getHdrCapabilities(IBinder iBinder) {
        if (iBinder != null) {
            return nativeGetHdrCapabilities(iBinder);
        }
        throw new IllegalArgumentException("displayToken must not be null");
    }

    private static native boolean nativeClearAnimationFrameStats();

    private static native boolean nativeClearContentFrameStats(long j2);

    private static native void nativeCloseTransaction(boolean z2);

    private static native long nativeCreate(SurfaceSession surfaceSession, String str, int i2, int i3, int i4, int i5, long j2, int i6, int i7);

    private static native IBinder nativeCreateDisplay(String str, boolean z2);

    private static native void nativeDeferTransactionUntil(long j2, IBinder iBinder, long j3);

    private static native void nativeDeferTransactionUntilSurface(long j2, long j3, long j4);

    private static native void nativeDestroy(long j2);

    private static native void nativeDestroyDisplay(IBinder iBinder);

    private static native void nativeDisconnect(long j2);

    private static native int nativeGetActiveColorMode(IBinder iBinder);

    private static native int nativeGetActiveConfig(IBinder iBinder);

    private static native boolean nativeGetAnimationFrameStats(WindowAnimationFrameStats windowAnimationFrameStats);

    private static native IBinder nativeGetBuiltInDisplay(int i2);

    private static native boolean nativeGetContentFrameStats(long j2, WindowContentFrameStats windowContentFrameStats);

    private static native int[] nativeGetDisplayColorModes(IBinder iBinder);

    private static native PhysicalDisplayInfo[] nativeGetDisplayConfigs(IBinder iBinder);

    private static native IBinder nativeGetHandle(long j2);

    private static native Display.HdrCapabilities nativeGetHdrCapabilities(IBinder iBinder);

    private static native boolean nativeGetTransformToDisplayInverse(long j2);

    private static native void nativeOpenTransaction();

    private static native void nativeRelease(long j2);

    private static native void nativeReparentChildren(long j2, IBinder iBinder);

    private static native Bitmap nativeScreenshot(IBinder iBinder, Rect rect, int i2, int i3, int i4, int i5, boolean z2, boolean z3, int i6);

    private static native void nativeScreenshot(IBinder iBinder, Surface surface, Rect rect, int i2, int i3, int i4, int i5, boolean z2, boolean z3);

    private static native GraphicBuffer nativeScreenshotToBuffer(IBinder iBinder, Rect rect, int i2, int i3, int i4, int i5, boolean z2, boolean z3, int i6);

    private static native boolean nativeSetActiveColorMode(IBinder iBinder, int i2);

    private static native boolean nativeSetActiveConfig(IBinder iBinder, int i2);

    private static native void nativeSetAlpha(long j2, float f2);

    private static native void nativeSetAnimationTransaction();

    private static native void nativeSetDisplayLayerStack(IBinder iBinder, int i2);

    private static native void nativeSetDisplayPowerMode(IBinder iBinder, int i2);

    private static native void nativeSetDisplayProjection(IBinder iBinder, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    private static native void nativeSetDisplaySize(IBinder iBinder, int i2, int i3);

    private static native void nativeSetDisplaySurface(IBinder iBinder, long j2);

    private static native void nativeSetFinalCrop(long j2, int i2, int i3, int i4, int i5);

    private static native void nativeSetFlags(long j2, int i2, int i3);

    private static native void nativeSetGeometryAppliesWithResize(long j2);

    private static native void nativeSetLayer(long j2, int i2);

    private static native void nativeSetLayerStack(long j2, int i2);

    private static native void nativeSetMatrix(long j2, float f2, float f3, float f4, float f5);

    private static native void nativeSetOverrideScalingMode(long j2, int i2);

    private static native void nativeSetPosition(long j2, float f2, float f3);

    private static native void nativeSetRelativeLayer(long j2, IBinder iBinder, int i2);

    private static native void nativeSetSize(long j2, int i2, int i3);

    private static native void nativeSetTransparentRegionHint(long j2, Region region);

    private static native void nativeSetWindowCrop(long j2, int i2, int i3, int i4, int i5);

    private static native void nativeSeverChildren(long j2);

    public static void openTransaction() {
        nativeOpenTransaction();
    }

    public static void screenshot(IBinder iBinder, Surface surface, int i2, int i3, int i4, int i5, boolean z2) {
        screenshot(iBinder, surface, new Rect(), i2, i3, i4, i5, false, z2);
    }

    public static GraphicBuffer screenshotToBuffer(Rect rect, int i2, int i3, int i4, int i5, boolean z2, int i6) {
        return nativeScreenshotToBuffer(getBuiltInDisplay(0), rect, i2, i3, i4, i5, false, z2, i6);
    }

    public static boolean setActiveColorMode(IBinder iBinder, int i2) {
        if (iBinder != null) {
            return nativeSetActiveColorMode(iBinder, i2);
        }
        throw new IllegalArgumentException("displayToken must not be null");
    }

    public static boolean setActiveConfig(IBinder iBinder, int i2) {
        if (iBinder != null) {
            return nativeSetActiveConfig(iBinder, i2);
        }
        throw new IllegalArgumentException("displayToken must not be null");
    }

    public static void setAnimationTransaction() {
        nativeSetAnimationTransaction();
    }

    public static void setDisplayLayerStack(IBinder iBinder, int i2) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        nativeSetDisplayLayerStack(iBinder, i2);
    }

    public static void setDisplayPowerMode(IBinder iBinder, int i2) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        nativeSetDisplayPowerMode(iBinder, i2);
    }

    public static void setDisplayProjection(IBinder iBinder, int i2, Rect rect, Rect rect2) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        if (rect == null) {
            throw new IllegalArgumentException("layerStackRect must not be null");
        }
        if (rect2 == null) {
            throw new IllegalArgumentException("displayRect must not be null");
        }
        nativeSetDisplayProjection(iBinder, i2, rect.left, rect.top, rect.right, rect.bottom, rect2.left, rect2.top, rect2.right, rect2.bottom);
    }

    public static void setDisplaySize(IBinder iBinder, int i2, int i3) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        if (i2 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("width and height must be positive");
        }
        nativeSetDisplaySize(iBinder, i2, i3);
    }

    public static void setDisplaySurface(IBinder iBinder, Surface surface) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        if (surface == null) {
            nativeSetDisplaySurface(iBinder, 0L);
            return;
        }
        synchronized (surface.mLock) {
            nativeSetDisplaySurface(iBinder, surface.mNativeObject);
        }
    }

    public boolean clearContentFrameStats() {
        checkNotReleased();
        return nativeClearContentFrameStats(this.mNativeObject);
    }

    public void deferTransactionUntil(IBinder iBinder, long j2) {
        if (j2 > 0) {
            nativeDeferTransactionUntil(this.mNativeObject, iBinder, j2);
        }
    }

    public void destroy() {
        long j2 = this.mNativeObject;
        if (j2 != 0) {
            nativeDestroy(j2);
            this.mNativeObject = 0L;
        }
        this.mCloseGuard.close();
    }

    public void detachChildren() {
        nativeSeverChildren(this.mNativeObject);
    }

    public void disconnect() {
        long j2 = this.mNativeObject;
        if (j2 != 0) {
            nativeDisconnect(j2);
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            long j2 = this.mNativeObject;
            if (j2 != 0) {
                nativeRelease(j2);
            }
        } finally {
            super.finalize();
        }
    }

    public boolean getContentFrameStats(WindowContentFrameStats windowContentFrameStats) {
        checkNotReleased();
        return nativeGetContentFrameStats(this.mNativeObject, windowContentFrameStats);
    }

    public IBinder getHandle() {
        return nativeGetHandle(this.mNativeObject);
    }

    public void hide() {
        checkNotReleased();
        nativeSetFlags(this.mNativeObject, 1, 1);
    }

    public void release() {
        long j2 = this.mNativeObject;
        if (j2 != 0) {
            nativeRelease(j2);
            this.mNativeObject = 0L;
        }
        this.mCloseGuard.close();
    }

    public void reparentChildren(IBinder iBinder) {
        nativeReparentChildren(this.mNativeObject, iBinder);
    }

    public void setAlpha(float f2) {
        checkNotReleased();
        nativeSetAlpha(this.mNativeObject, f2);
    }

    public void setFinalCrop(Rect rect) {
        checkNotReleased();
        if (rect != null) {
            nativeSetFinalCrop(this.mNativeObject, rect.left, rect.top, rect.right, rect.bottom);
        } else {
            nativeSetFinalCrop(this.mNativeObject, 0, 0, 0, 0);
        }
    }

    public void setGeometryAppliesWithResize() {
        checkNotReleased();
        nativeSetGeometryAppliesWithResize(this.mNativeObject);
    }

    public void setLayer(int i2) {
        checkNotReleased();
        nativeSetLayer(this.mNativeObject, i2);
    }

    public void setLayerStack(int i2) {
        checkNotReleased();
        nativeSetLayerStack(this.mNativeObject, i2);
    }

    public void setMatrix(float f2, float f3, float f4, float f5) {
        checkNotReleased();
        nativeSetMatrix(this.mNativeObject, f2, f3, f4, f5);
    }

    public void setOpaque(boolean z2) {
        checkNotReleased();
        if (z2) {
            nativeSetFlags(this.mNativeObject, 2, 2);
        } else {
            nativeSetFlags(this.mNativeObject, 0, 2);
        }
    }

    public void setOverrideScalingMode(int i2) {
        checkNotReleased();
        nativeSetOverrideScalingMode(this.mNativeObject, i2);
    }

    public void setPosition(float f2, float f3) {
        checkNotReleased();
        nativeSetPosition(this.mNativeObject, f2, f3);
    }

    public void setRelativeLayer(IBinder iBinder, int i2) {
        checkNotReleased();
        nativeSetRelativeLayer(this.mNativeObject, iBinder, i2);
    }

    public void setSecure(boolean z2) {
        checkNotReleased();
        if (z2) {
            nativeSetFlags(this.mNativeObject, 128, 128);
        } else {
            nativeSetFlags(this.mNativeObject, 0, 128);
        }
    }

    public void setSize(int i2, int i3) {
        checkNotReleased();
        nativeSetSize(this.mNativeObject, i2, i3);
    }

    public void setTransparentRegionHint(Region region) {
        checkNotReleased();
        nativeSetTransparentRegionHint(this.mNativeObject, region);
    }

    public void setWindowCrop(Rect rect) {
        checkNotReleased();
        if (rect != null) {
            nativeSetWindowCrop(this.mNativeObject, rect.left, rect.top, rect.right, rect.bottom);
        } else {
            nativeSetWindowCrop(this.mNativeObject, 0, 0, 0, 0);
        }
    }

    public void show() {
        checkNotReleased();
        nativeSetFlags(this.mNativeObject, 0, 1);
    }

    public String toString() {
        return android.accessibilityservice.c.n(new StringBuilder("Surface(name="), this.mName, ")");
    }

    public SurfaceControl(SurfaceSession surfaceSession, String str, int i2, int i3, int i4, int i5) {
        this(surfaceSession, str, i2, i3, i4, i5, null, -1, Binder.getCallingUid());
    }

    public static void screenshot(IBinder iBinder, Surface surface, int i2, int i3) {
        screenshot(iBinder, surface, new Rect(), i2, i3, 0, 0, true, false);
    }

    public void deferTransactionUntil(Surface surface, long j2) {
        if (j2 > 0) {
            nativeDeferTransactionUntilSurface(this.mNativeObject, surface.mNativeObject, j2);
        }
    }

    public SurfaceControl(SurfaceSession surfaceSession, String str, int i2, int i3, int i4, int i5, SurfaceControl surfaceControl, int i6, int i7) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        if (surfaceSession == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        if (str != null) {
            if ((i5 & 4) == 0) {
                Log.w(TAG, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface's properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: ".concat(str), new Throwable());
            }
            this.mName = str;
            long jNativeCreate = nativeCreate(surfaceSession, str, i2, i3, i4, i5, surfaceControl != null ? surfaceControl.mNativeObject : 0L, i6, i7);
            this.mNativeObject = jNativeCreate;
            if (jNativeCreate != 0) {
                closeGuard.open("release");
                return;
            }
            throw new Surface.OutOfResourcesException("Couldn't allocate SurfaceControl native object");
        }
        throw new IllegalArgumentException("name must not be null");
    }

    public static void screenshot(IBinder iBinder, Surface surface) {
        screenshot(iBinder, surface, new Rect(), 0, 0, 0, 0, true, false);
    }

    public static Bitmap screenshot(Rect rect, int i2, int i3, int i4, int i5, boolean z2, int i6) {
        return nativeScreenshot(getBuiltInDisplay(0), rect, i2, i3, i4, i5, false, z2, i6);
    }

    public static Bitmap screenshot(int i2, int i3) {
        return nativeScreenshot(getBuiltInDisplay(0), new Rect(), i2, i3, 0, 0, true, false, 0);
    }

    private static void screenshot(IBinder iBinder, Surface surface, Rect rect, int i2, int i3, int i4, int i5, boolean z2, boolean z3) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        if (surface != null) {
            nativeScreenshot(iBinder, surface, rect, i2, i3, i4, i5, z2, z3);
            return;
        }
        throw new IllegalArgumentException("consumer must not be null");
    }

    public SurfaceControl(SurfaceControl surfaceControl) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mName = surfaceControl.mName;
        this.mNativeObject = surfaceControl.mNativeObject;
        surfaceControl.mCloseGuard.close();
        surfaceControl.mNativeObject = 0L;
        closeGuard.open("release");
    }
}
