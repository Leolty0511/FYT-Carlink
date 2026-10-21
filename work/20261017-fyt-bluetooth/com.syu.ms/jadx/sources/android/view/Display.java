package android.view;

import android.content.res.CompatibilityInfo;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManagerGlobal;
import android.os.SystemClock;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public final class Display {
    private static final int CACHED_APP_SIZE_DURATION_MILLIS = 20;
    private static final boolean DEBUG = false;
    public static final int DEFAULT_DISPLAY = 0;
    public static final int FLAG_PRESENTATION = 8;
    public static final int FLAG_PRIVATE = 4;
    public static final int FLAG_SECURE = 2;
    public static final int FLAG_SUPPORTS_PROTECTED_BUFFERS = 1;
    private static final String TAG = "Display";
    public static final int TYPE_BUILT_IN = 1;
    public static final int TYPE_HDMI = 2;
    public static final int TYPE_OVERLAY = 4;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIRTUAL = 5;
    public static final int TYPE_WIFI = 3;
    private final String mAddress;
    private int mCachedAppHeightCompat;
    private int mCachedAppWidthCompat;
    private final DisplayAdjustments mDisplayAdjustments;
    private final int mDisplayId;
    private DisplayInfo mDisplayInfo;
    private final int mFlags;
    private final DisplayManagerGlobal mGlobal;
    private long mLastCachedAppSizeUpdate;
    private final int mLayerStack;
    private final String mOwnerPackageName;
    private final int mOwnerUid;
    private final int mType;
    private final DisplayMetrics mTempMetrics = new DisplayMetrics();
    private boolean mIsValid = true;

    public Display(DisplayManagerGlobal displayManagerGlobal, int i2, DisplayInfo displayInfo, DisplayAdjustments displayAdjustments) {
        this.mGlobal = displayManagerGlobal;
        this.mDisplayId = i2;
        this.mDisplayInfo = displayInfo;
        this.mDisplayAdjustments = new DisplayAdjustments(displayAdjustments);
        this.mLayerStack = displayInfo.layerStack;
        this.mFlags = displayInfo.flags;
        this.mType = displayInfo.type;
        this.mAddress = displayInfo.address;
        this.mOwnerUid = displayInfo.ownerUid;
        this.mOwnerPackageName = displayInfo.ownerPackageName;
    }

    public static boolean hasAccess(int i2, int i3, int i4) {
        return (i3 & 4) == 0 || i2 == i4 || i2 == 1000 || i2 == 0;
    }

    public static String typeToString(int i2) {
        if (i2 == 0) {
            return "UNKNOWN";
        }
        if (i2 == 1) {
            return "BUILT_IN";
        }
        if (i2 == 2) {
            return "HDMI";
        }
        if (i2 == 3) {
            return "WIFI";
        }
        if (i2 != 4) {
            return i2 != 5 ? Integer.toString(i2) : "VIRTUAL";
        }
        return "OVERLAY";
    }

    private void updateCachedAppSizeIfNeededLocked() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis > this.mLastCachedAppSizeUpdate + 20) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, this.mDisplayAdjustments);
            DisplayMetrics displayMetrics = this.mTempMetrics;
            this.mCachedAppWidthCompat = displayMetrics.widthPixels;
            this.mCachedAppHeightCompat = displayMetrics.heightPixels;
            this.mLastCachedAppSizeUpdate = jUptimeMillis;
        }
    }

    private void updateDisplayInfoLocked() {
        DisplayInfo displayInfo = this.mGlobal.getDisplayInfo(this.mDisplayId);
        if (displayInfo == null) {
            if (this.mIsValid) {
                this.mIsValid = false;
            }
        } else {
            this.mDisplayInfo = displayInfo;
            if (this.mIsValid) {
                return;
            }
            this.mIsValid = true;
        }
    }

    public String getAddress() {
        return this.mAddress;
    }

    public void getCurrentSizeRange(Point point, Point point2) {
        synchronized (this) {
            updateDisplayInfoLocked();
            DisplayInfo displayInfo = this.mDisplayInfo;
            point.f137x = displayInfo.smallestNominalAppWidth;
            point.f138y = displayInfo.smallestNominalAppHeight;
            point2.f137x = displayInfo.largestNominalAppWidth;
            point2.f138y = displayInfo.largestNominalAppHeight;
        }
    }

    public DisplayAdjustments getDisplayAdjustments() {
        return this.mDisplayAdjustments;
    }

    public int getDisplayId() {
        return this.mDisplayId;
    }

    public boolean getDisplayInfo(DisplayInfo displayInfo) {
        boolean z2;
        synchronized (this) {
            updateDisplayInfoLocked();
            displayInfo.copyFrom(this.mDisplayInfo);
            z2 = this.mIsValid;
        }
        return z2;
    }

    public int getFlags() {
        return this.mFlags;
    }

    @Deprecated
    public int getHeight() {
        int i2;
        synchronized (this) {
            updateCachedAppSizeIfNeededLocked();
            i2 = this.mCachedAppHeightCompat;
        }
        return i2;
    }

    public int getLayerStack() {
        return this.mLayerStack;
    }

    public int getMaximumSizeDimension() {
        int iMax;
        synchronized (this) {
            updateDisplayInfoLocked();
            DisplayInfo displayInfo = this.mDisplayInfo;
            iMax = Math.max(displayInfo.logicalWidth, displayInfo.logicalHeight);
        }
        return iMax;
    }

    public void getMetrics(DisplayMetrics displayMetrics) {
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getAppMetrics(displayMetrics, this.mDisplayAdjustments);
        }
    }

    public String getName() {
        String str;
        synchronized (this) {
            updateDisplayInfoLocked();
            str = this.mDisplayInfo.name;
        }
        return str;
    }

    @Deprecated
    public int getOrientation() {
        return getRotation();
    }

    public void getOverscanInsets(Rect rect) {
        synchronized (this) {
            updateDisplayInfoLocked();
            DisplayInfo displayInfo = this.mDisplayInfo;
            rect.set(displayInfo.overscanLeft, displayInfo.overscanTop, displayInfo.overscanRight, displayInfo.overscanBottom);
        }
    }

    public String getOwnerPackageName() {
        return this.mOwnerPackageName;
    }

    public int getOwnerUid() {
        return this.mOwnerUid;
    }

    @Deprecated
    public int getPixelFormat() {
        return 1;
    }

    public void getRealMetrics(DisplayMetrics displayMetrics) {
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getLogicalMetrics(displayMetrics, CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO, this.mDisplayAdjustments.getActivityToken());
        }
    }

    public void getRealSize(Point point) {
        synchronized (this) {
            updateDisplayInfoLocked();
            DisplayInfo displayInfo = this.mDisplayInfo;
            point.f137x = displayInfo.logicalWidth;
            point.f138y = displayInfo.logicalHeight;
        }
    }

    public void getRectSize(Rect rect) {
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, this.mDisplayAdjustments);
            DisplayMetrics displayMetrics = this.mTempMetrics;
            rect.set(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
    }

    public float getRefreshRate() {
        float f2;
        synchronized (this) {
            updateDisplayInfoLocked();
            f2 = this.mDisplayInfo.refreshRate;
        }
        return f2;
    }

    public int getRotation() {
        int i2;
        synchronized (this) {
            updateDisplayInfoLocked();
            i2 = this.mDisplayInfo.rotation;
        }
        return i2;
    }

    public void getSize(Point point) {
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, this.mDisplayAdjustments);
            DisplayMetrics displayMetrics = this.mTempMetrics;
            point.f137x = displayMetrics.widthPixels;
            point.f138y = displayMetrics.heightPixels;
        }
    }

    public int getType() {
        return this.mType;
    }

    @Deprecated
    public int getWidth() {
        int i2;
        synchronized (this) {
            updateCachedAppSizeIfNeededLocked();
            i2 = this.mCachedAppWidthCompat;
        }
        return i2;
    }

    public boolean hasAccess(int i2) {
        return hasAccess(i2, this.mFlags, this.mOwnerUid);
    }

    public boolean isPublicPresentation() {
        return (this.mFlags & 12) == 8;
    }

    public boolean isValid() {
        boolean z2;
        synchronized (this) {
            updateDisplayInfoLocked();
            z2 = this.mIsValid;
        }
        return z2;
    }

    public String toString() {
        String str;
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, this.mDisplayAdjustments);
            str = "Display id " + this.mDisplayId + ": " + this.mDisplayInfo + ", " + this.mTempMetrics + ", isValid=" + this.mIsValid;
        }
        return str;
    }
}
