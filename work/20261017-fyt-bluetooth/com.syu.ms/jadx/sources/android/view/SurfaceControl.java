package android.view;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.IBinder;
import android.os.SystemProperties;
import android.util.Log;
import com.syu.jni.BuildConfig;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public class SurfaceControl {
    public static final int BUILT_IN_DISPLAY_ID_HDMI = 1;
    public static final int BUILT_IN_DISPLAY_ID_MAIN = 0;
    public static final int FX_SURFACE_DIM = 131072;
    public static final int FX_SURFACE_MASK = 983040;
    public static final int FX_SURFACE_NORMAL = 0;
    private static final boolean HEADLESS = "1".equals(SystemProperties.get("ro.config.headless", "0"));
    public static final int HIDDEN = 4;
    public static final int NON_PREMULTIPLIED = 256;
    public static final int OPAQUE = 1024;
    public static final int PROTECTED_APP = 2048;
    public static final int SECURE = 128;
    public static final int SURFACE_HIDDEN = 1;
    private static final String TAG = "SurfaceControl";
    private final CloseGuard mCloseGuard;
    private final String mName;
    public int mNativeObject;

    public static final class PhysicalDisplayInfo {
        public float density;
        public int height;
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
        }

        public boolean equals(Object obj) {
            return (obj instanceof PhysicalDisplayInfo) && equals((PhysicalDisplayInfo) obj);
        }

        public int hashCode() {
            return 0;
        }

        public String toString() {
            return "PhysicalDisplayInfo{" + this.width + " x " + this.height + ", " + this.refreshRate + " fps, density " + this.density + ", " + this.xDpi + " x " + this.yDpi + " dpi, secure " + this.secure + "}";
        }

        public PhysicalDisplayInfo(PhysicalDisplayInfo physicalDisplayInfo) {
            copyFrom(physicalDisplayInfo);
        }

        public boolean equals(PhysicalDisplayInfo physicalDisplayInfo) {
            return physicalDisplayInfo != null && this.width == physicalDisplayInfo.width && this.height == physicalDisplayInfo.height && this.refreshRate == physicalDisplayInfo.refreshRate && this.density == physicalDisplayInfo.density && this.xDpi == physicalDisplayInfo.xDpi && this.yDpi == physicalDisplayInfo.yDpi && this.secure == physicalDisplayInfo.secure;
        }
    }

    public SurfaceControl(SurfaceSession surfaceSession, String str, int i2, int i3, int i4, int i5) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        if (surfaceSession == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("name must not be null");
        }
        if ((i5 & 4) == 0) {
            Log.w(TAG, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface's properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: " + str, new Throwable());
        }
        checkHeadless();
        this.mName = str;
        int iNativeCreate = nativeCreate(surfaceSession, str, i2, i3, i4, i5);
        this.mNativeObject = iNativeCreate;
        if (iNativeCreate == 0) {
            throw new Surface.OutOfResourcesException("Couldn't allocate SurfaceControl native object");
        }
        closeGuard.open(BuildConfig.BUILD_TYPE);
    }

    public static void blankDisplay(IBinder iBinder) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        nativeBlankDisplay(iBinder);
    }

    private static void checkHeadless() {
        if (HEADLESS) {
            throw new UnsupportedOperationException("Device is headless");
        }
    }

    private void checkNotReleased() {
        if (this.mNativeObject == 0) {
            throw new NullPointerException("mNativeObject is null. Have you called release() already?");
        }
    }

    public static void closeTransaction() {
        nativeCloseTransaction();
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

    public static IBinder getBuiltInDisplay(int i2) {
        return nativeGetBuiltInDisplay(i2);
    }

    public static boolean getDisplayInfo(IBinder iBinder, PhysicalDisplayInfo physicalDisplayInfo) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        if (physicalDisplayInfo != null) {
            return nativeGetDisplayInfo(iBinder, physicalDisplayInfo);
        }
        throw new IllegalArgumentException("outInfo must not be null");
    }

    private static native void nativeBlankDisplay(IBinder iBinder);

    private static native void nativeCloseTransaction();

    private static native int nativeCreate(SurfaceSession surfaceSession, String str, int i2, int i3, int i4, int i5);

    private static native IBinder nativeCreateDisplay(String str, boolean z2);

    private static native void nativeDestroy(int i2);

    private static native void nativeDestroyDisplay(IBinder iBinder);

    private static native IBinder nativeGetBuiltInDisplay(int i2);

    private static native boolean nativeGetDisplayInfo(IBinder iBinder, PhysicalDisplayInfo physicalDisplayInfo);

    private static native void nativeOpenTransaction();

    private static native void nativeRelease(int i2);

    private static native Bitmap nativeScreenshot(IBinder iBinder, int i2, int i3, int i4, int i5, boolean z2);

    private static native void nativeScreenshot(IBinder iBinder, Surface surface, int i2, int i3, int i4, int i5, boolean z2);

    private static native void nativeSetAlpha(int i2, float f2);

    private static native void nativeSetAnimationTransaction();

    private static native void nativeSetDisplayLayerStack(IBinder iBinder, int i2);

    private static native void nativeSetDisplayProjection(IBinder iBinder, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    private static native void nativeSetDisplaySurface(IBinder iBinder, int i2);

    private static native void nativeSetFlags(int i2, int i3, int i4);

    private static native void nativeSetLayer(int i2, int i3);

    private static native void nativeSetLayerStack(int i2, int i3);

    private static native void nativeSetMatrix(int i2, float f2, float f3, float f4, float f5);

    private static native void nativeSetPosition(int i2, float f2, float f3);

    private static native void nativeSetSize(int i2, int i3, int i4);

    private static native void nativeSetTransparentRegionHint(int i2, Region region);

    private static native void nativeSetWindowCrop(int i2, int i3, int i4, int i5, int i6);

    private static native void nativeUnblankDisplay(IBinder iBinder);

    public static void openTransaction() {
        nativeOpenTransaction();
    }

    public static void screenshot(IBinder iBinder, Surface surface, int i2, int i3, int i4, int i5) {
        screenshot(iBinder, surface, i2, i3, i4, i5, false);
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

    public static void setDisplaySurface(IBinder iBinder, Surface surface) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        if (surface == null) {
            nativeSetDisplaySurface(iBinder, 0);
            return;
        }
        synchronized (surface.mLock) {
            nativeSetDisplaySurface(iBinder, surface.mNativeObject);
        }
    }

    public static void unblankDisplay(IBinder iBinder) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        nativeUnblankDisplay(iBinder);
    }

    public void destroy() {
        int i2 = this.mNativeObject;
        if (i2 != 0) {
            nativeDestroy(i2);
            this.mNativeObject = 0;
        }
        this.mCloseGuard.close();
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            int i2 = this.mNativeObject;
            if (i2 != 0) {
                nativeRelease(i2);
            }
        } finally {
            super.finalize();
        }
    }

    public void hide() {
        checkNotReleased();
        nativeSetFlags(this.mNativeObject, 1, 1);
    }

    public void release() {
        int i2 = this.mNativeObject;
        if (i2 != 0) {
            nativeRelease(i2);
            this.mNativeObject = 0;
        }
        this.mCloseGuard.close();
    }

    public void setAlpha(float f2) {
        checkNotReleased();
        nativeSetAlpha(this.mNativeObject, f2);
    }

    public void setFlags(int i2, int i3) {
        checkNotReleased();
        nativeSetFlags(this.mNativeObject, i2, i3);
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

    public void setPosition(float f2, float f3) {
        checkNotReleased();
        nativeSetPosition(this.mNativeObject, f2, f3);
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
        return "Surface(name=" + this.mName + ")";
    }

    public static void screenshot(IBinder iBinder, Surface surface, int i2, int i3) {
        screenshot(iBinder, surface, i2, i3, 0, 0, true);
    }

    public static void screenshot(IBinder iBinder, Surface surface) {
        screenshot(iBinder, surface, 0, 0, 0, 0, true);
    }

    public static Bitmap screenshot(int i2, int i3, int i4, int i5) {
        return nativeScreenshot(getBuiltInDisplay(0), i2, i3, i4, i5, false);
    }

    public static Bitmap screenshot(int i2, int i3) {
        return nativeScreenshot(getBuiltInDisplay(0), i2, i3, 0, 0, true);
    }

    private static void screenshot(IBinder iBinder, Surface surface, int i2, int i3, int i4, int i5, boolean z2) {
        if (iBinder == null) {
            throw new IllegalArgumentException("displayToken must not be null");
        }
        if (surface != null) {
            nativeScreenshot(iBinder, surface, i2, i3, i4, i5, z2);
            return;
        }
        throw new IllegalArgumentException("consumer must not be null");
    }
}
