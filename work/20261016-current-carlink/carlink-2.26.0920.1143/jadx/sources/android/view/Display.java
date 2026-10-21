package android.view;

import android.content.res.CompatibilityInfo;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManagerGlobal;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.telephony.IccCardConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class Display {
    private static final int CACHED_APP_SIZE_DURATION_MILLIS = 20;
    public static final int COLOR_MODE_ADOBE_RGB = 8;
    public static final int COLOR_MODE_BT601_525 = 3;
    public static final int COLOR_MODE_BT601_525_UNADJUSTED = 4;
    public static final int COLOR_MODE_BT601_625 = 1;
    public static final int COLOR_MODE_BT601_625_UNADJUSTED = 2;
    public static final int COLOR_MODE_BT709 = 5;
    public static final int COLOR_MODE_DCI_P3 = 6;
    public static final int COLOR_MODE_DEFAULT = 0;
    public static final int COLOR_MODE_DISPLAY_P3 = 9;
    public static final int COLOR_MODE_INVALID = -1;
    public static final int COLOR_MODE_SRGB = 7;
    private static final boolean DEBUG = false;
    public static final int DEFAULT_DISPLAY = 0;
    public static final int FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD = 32;
    public static final int FLAG_PRESENTATION = 8;
    public static final int FLAG_PRIVATE = 4;
    public static final int FLAG_ROUND = 16;
    public static final int FLAG_SCALING_DISABLED = 1073741824;
    public static final int FLAG_SECURE = 2;
    public static final int FLAG_SUPPORTS_PROTECTED_BUFFERS = 1;
    public static final int INVALID_DISPLAY = -1;
    public static final int REMOVE_MODE_DESTROY_CONTENT = 1;
    public static final int REMOVE_MODE_MOVE_CONTENT_TO_PRIMARY = 0;
    public static final int STATE_DOZE = 3;
    public static final int STATE_DOZE_SUSPEND = 4;
    public static final int STATE_OFF = 1;
    public static final int STATE_ON = 2;
    public static final int STATE_UNKNOWN = 0;
    public static final int STATE_VR = 5;
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
    private DisplayAdjustments mDisplayAdjustments;
    private final int mDisplayId;
    private DisplayInfo mDisplayInfo;
    private final int mFlags;
    private final DisplayManagerGlobal mGlobal;
    private boolean mIsValid;
    private long mLastCachedAppSizeUpdate;
    private final int mLayerStack;
    private final String mOwnerPackageName;
    private final int mOwnerUid;
    private final Resources mResources;
    private final DisplayMetrics mTempMetrics;
    private final int mType;

    public static final class HdrCapabilities implements Parcelable {
        public static final Parcelable.Creator<HdrCapabilities> CREATOR = new Parcelable.Creator<HdrCapabilities>() { // from class: android.view.Display.HdrCapabilities.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public HdrCapabilities createFromParcel(Parcel parcel) {
                return new HdrCapabilities(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public HdrCapabilities[] newArray(int i2) {
                return new HdrCapabilities[i2];
            }
        };
        public static final int HDR_TYPE_DOLBY_VISION = 1;
        public static final int HDR_TYPE_HDR10 = 2;
        public static final int HDR_TYPE_HLG = 3;
        public static final float INVALID_LUMINANCE = -1.0f;
        private float mMaxAverageLuminance;
        private float mMaxLuminance;
        private float mMinLuminance;
        private int[] mSupportedHdrTypes;

        @Retention(RetentionPolicy.SOURCE)
        public @interface HdrType {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HdrCapabilities)) {
                return false;
            }
            HdrCapabilities hdrCapabilities = (HdrCapabilities) obj;
            return Arrays.equals(this.mSupportedHdrTypes, hdrCapabilities.mSupportedHdrTypes) && this.mMaxLuminance == hdrCapabilities.mMaxLuminance && this.mMaxAverageLuminance == hdrCapabilities.mMaxAverageLuminance && this.mMinLuminance == hdrCapabilities.mMinLuminance;
        }

        public float getDesiredMaxAverageLuminance() {
            return this.mMaxAverageLuminance;
        }

        public float getDesiredMaxLuminance() {
            return this.mMaxLuminance;
        }

        public float getDesiredMinLuminance() {
            return this.mMinLuminance;
        }

        public int[] getSupportedHdrTypes() {
            return this.mSupportedHdrTypes;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.mMinLuminance) + ((Float.floatToIntBits(this.mMaxAverageLuminance) + ((Float.floatToIntBits(this.mMaxLuminance) + ((Arrays.hashCode(this.mSupportedHdrTypes) + MetricsProto.MetricsEvent.ACTION_WINDOW_DOCK_UNRESIZABLE) * 17)) * 17)) * 17);
        }

        public void readFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            this.mSupportedHdrTypes = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.mSupportedHdrTypes[i3] = parcel.readInt();
            }
            this.mMaxLuminance = parcel.readFloat();
            this.mMaxAverageLuminance = parcel.readFloat();
            this.mMinLuminance = parcel.readFloat();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mSupportedHdrTypes.length);
            int i3 = 0;
            while (true) {
                int[] iArr = this.mSupportedHdrTypes;
                if (i3 >= iArr.length) {
                    parcel.writeFloat(this.mMaxLuminance);
                    parcel.writeFloat(this.mMaxAverageLuminance);
                    parcel.writeFloat(this.mMinLuminance);
                    return;
                }
                parcel.writeInt(iArr[i3]);
                i3++;
            }
        }

        public HdrCapabilities() {
            this.mSupportedHdrTypes = new int[0];
            this.mMaxLuminance = -1.0f;
            this.mMaxAverageLuminance = -1.0f;
            this.mMinLuminance = -1.0f;
        }

        public HdrCapabilities(int[] iArr, float f2, float f3, float f4) {
            this.mSupportedHdrTypes = iArr;
            this.mMaxLuminance = f2;
            this.mMaxAverageLuminance = f3;
            this.mMinLuminance = f4;
        }

        private HdrCapabilities(Parcel parcel) {
            this.mSupportedHdrTypes = new int[0];
            this.mMaxLuminance = -1.0f;
            this.mMaxAverageLuminance = -1.0f;
            this.mMinLuminance = -1.0f;
            readFromParcel(parcel);
        }
    }

    public static final class Mode implements Parcelable {
        private final int mHeight;
        private final int mModeId;
        private final float mRefreshRate;
        private final int mWidth;
        public static final Mode[] EMPTY_ARRAY = new Mode[0];
        public static final Parcelable.Creator<Mode> CREATOR = new Parcelable.Creator<Mode>() { // from class: android.view.Display.Mode.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Mode createFromParcel(Parcel parcel) {
                return new Mode(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Mode[] newArray(int i2) {
                return new Mode[i2];
            }
        };

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Mode)) {
                return false;
            }
            Mode mode = (Mode) obj;
            return this.mModeId == mode.mModeId && matches(mode.mWidth, mode.mHeight, mode.mRefreshRate);
        }

        public int getModeId() {
            return this.mModeId;
        }

        public int getPhysicalHeight() {
            return this.mHeight;
        }

        public int getPhysicalWidth() {
            return this.mWidth;
        }

        public float getRefreshRate() {
            return this.mRefreshRate;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.mRefreshRate) + ((((((this.mModeId + 17) * 17) + this.mWidth) * 17) + this.mHeight) * 17);
        }

        public boolean matches(int i2, int i3, float f2) {
            return this.mWidth == i2 && this.mHeight == i3 && Float.floatToIntBits(this.mRefreshRate) == Float.floatToIntBits(f2);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{id=");
            sb.append(this.mModeId);
            sb.append(", width=");
            sb.append(this.mWidth);
            sb.append(", height=");
            sb.append(this.mHeight);
            sb.append(", fps=");
            return android.app.m.i(sb, this.mRefreshRate, "}");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.mModeId);
            parcel.writeInt(this.mWidth);
            parcel.writeInt(this.mHeight);
            parcel.writeFloat(this.mRefreshRate);
        }

        public Mode(int i2, int i3, int i4, float f2) {
            this.mModeId = i2;
            this.mWidth = i3;
            this.mHeight = i4;
            this.mRefreshRate = f2;
        }

        private Mode(Parcel parcel) {
            this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readFloat());
        }
    }

    public Display(DisplayManagerGlobal displayManagerGlobal, int i2, DisplayInfo displayInfo, DisplayAdjustments displayAdjustments) {
        this(displayManagerGlobal, i2, displayInfo, displayAdjustments, null);
    }

    public static boolean hasAccess(int i2, int i3, int i4) {
        return (i3 & 4) == 0 || i2 == i4 || i2 == 1000 || i2 == 0;
    }

    public static boolean isDozeState(int i2) {
        return i2 == 3 || i2 == 4;
    }

    public static boolean isSuspendedState(int i2) {
        return i2 == 1 || i2 == 4;
    }

    public static String stateToString(int i2) {
        if (i2 == 0) {
            return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
        }
        if (i2 == 1) {
            return "OFF";
        }
        if (i2 == 2) {
            return "ON";
        }
        if (i2 == 3) {
            return "DOZE";
        }
        if (i2 != 4) {
            return i2 != 5 ? Integer.toString(i2) : "VR";
        }
        return "DOZE_SUSPEND";
    }

    public static String typeToString(int i2) {
        if (i2 == 0) {
            return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
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
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, getDisplayAdjustments());
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

    public long getAppVsyncOffsetNanos() {
        long j2;
        synchronized (this) {
            updateDisplayInfoLocked();
            j2 = this.mDisplayInfo.appVsyncOffsetNanos;
        }
        return j2;
    }

    public int getColorMode() {
        int i2;
        synchronized (this) {
            updateDisplayInfoLocked();
            i2 = this.mDisplayInfo.colorMode;
        }
        return i2;
    }

    public void getCurrentSizeRange(Point point, Point point2) {
        synchronized (this) {
            updateDisplayInfoLocked();
            DisplayInfo displayInfo = this.mDisplayInfo;
            point.f71x = displayInfo.smallestNominalAppWidth;
            point.f72y = displayInfo.smallestNominalAppHeight;
            point2.f71x = displayInfo.largestNominalAppWidth;
            point2.f72y = displayInfo.largestNominalAppHeight;
        }
    }

    public DisplayAdjustments getDisplayAdjustments() {
        Resources resources = this.mResources;
        if (resources != null) {
            DisplayAdjustments displayAdjustments = resources.getDisplayAdjustments();
            if (!this.mDisplayAdjustments.equals(displayAdjustments)) {
                this.mDisplayAdjustments = new DisplayAdjustments(displayAdjustments);
            }
        }
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

    public HdrCapabilities getHdrCapabilities() {
        HdrCapabilities hdrCapabilities;
        synchronized (this) {
            updateDisplayInfoLocked();
            hdrCapabilities = this.mDisplayInfo.hdrCapabilities;
        }
        return hdrCapabilities;
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
            this.mDisplayInfo.getAppMetrics(displayMetrics, getDisplayAdjustments());
        }
    }

    public Mode getMode() {
        Mode mode;
        synchronized (this) {
            updateDisplayInfoLocked();
            mode = this.mDisplayInfo.getMode();
        }
        return mode;
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

    public long getPresentationDeadlineNanos() {
        long j2;
        synchronized (this) {
            updateDisplayInfoLocked();
            j2 = this.mDisplayInfo.presentationDeadlineNanos;
        }
        return j2;
    }

    public void getRealMetrics(DisplayMetrics displayMetrics) {
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getLogicalMetrics(displayMetrics, CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO, null);
        }
    }

    public void getRealSize(Point point) {
        synchronized (this) {
            updateDisplayInfoLocked();
            DisplayInfo displayInfo = this.mDisplayInfo;
            point.f71x = displayInfo.logicalWidth;
            point.f72y = displayInfo.logicalHeight;
        }
    }

    public void getRectSize(Rect rect) {
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, getDisplayAdjustments());
            DisplayMetrics displayMetrics = this.mTempMetrics;
            rect.set(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
    }

    public float getRefreshRate() {
        float refreshRate;
        synchronized (this) {
            updateDisplayInfoLocked();
            refreshRate = this.mDisplayInfo.getMode().getRefreshRate();
        }
        return refreshRate;
    }

    public int getRemoveMode() {
        return this.mDisplayInfo.removeMode;
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
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, getDisplayAdjustments());
            DisplayMetrics displayMetrics = this.mTempMetrics;
            point.f71x = displayMetrics.widthPixels;
            point.f72y = displayMetrics.heightPixels;
        }
    }

    public int getState() {
        int i2;
        synchronized (this) {
            updateDisplayInfoLocked();
            i2 = this.mIsValid ? this.mDisplayInfo.state : 0;
        }
        return i2;
    }

    public int[] getSupportedColorModes() {
        int[] iArrCopyOf;
        synchronized (this) {
            updateDisplayInfoLocked();
            int[] iArr = this.mDisplayInfo.supportedColorModes;
            iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        }
        return iArrCopyOf;
    }

    public Mode[] getSupportedModes() {
        Mode[] modeArr;
        synchronized (this) {
            updateDisplayInfoLocked();
            Mode[] modeArr2 = this.mDisplayInfo.supportedModes;
            modeArr = (Mode[]) Arrays.copyOf(modeArr2, modeArr2.length);
        }
        return modeArr;
    }

    @Deprecated
    public float[] getSupportedRefreshRates() {
        float[] defaultRefreshRates;
        synchronized (this) {
            updateDisplayInfoLocked();
            defaultRefreshRates = this.mDisplayInfo.getDefaultRefreshRates();
        }
        return defaultRefreshRates;
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

    public boolean isHdr() {
        boolean zIsHdr;
        synchronized (this) {
            updateDisplayInfoLocked();
            zIsHdr = this.mDisplayInfo.isHdr();
        }
        return zIsHdr;
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

    public boolean isWideColorGamut() {
        boolean zIsWideColorGamut;
        synchronized (this) {
            updateDisplayInfoLocked();
            zIsWideColorGamut = this.mDisplayInfo.isWideColorGamut();
        }
        return zIsWideColorGamut;
    }

    public void requestColorMode(int i2) {
        this.mGlobal.requestColorMode(this.mDisplayId, i2);
    }

    public String toString() {
        String str;
        synchronized (this) {
            updateDisplayInfoLocked();
            this.mDisplayInfo.getAppMetrics(this.mTempMetrics, getDisplayAdjustments());
            str = "Display id " + this.mDisplayId + ": " + this.mDisplayInfo + ", " + this.mTempMetrics + ", isValid=" + this.mIsValid;
        }
        return str;
    }

    public Display(DisplayManagerGlobal displayManagerGlobal, int i2, DisplayInfo displayInfo, Resources resources) {
        this(displayManagerGlobal, i2, displayInfo, null, resources);
    }

    public boolean hasAccess(int i2) {
        return hasAccess(i2, this.mFlags, this.mOwnerUid);
    }

    private Display(DisplayManagerGlobal displayManagerGlobal, int i2, DisplayInfo displayInfo, DisplayAdjustments displayAdjustments, Resources resources) {
        DisplayAdjustments displayAdjustments2;
        this.mTempMetrics = new DisplayMetrics();
        this.mGlobal = displayManagerGlobal;
        this.mDisplayId = i2;
        this.mDisplayInfo = displayInfo;
        this.mResources = resources;
        if (resources != null) {
            displayAdjustments2 = new DisplayAdjustments(resources.getConfiguration());
        } else {
            displayAdjustments2 = displayAdjustments != null ? new DisplayAdjustments(displayAdjustments) : null;
        }
        this.mDisplayAdjustments = displayAdjustments2;
        this.mIsValid = true;
        this.mLayerStack = displayInfo.layerStack;
        this.mFlags = displayInfo.flags;
        this.mType = displayInfo.type;
        this.mAddress = displayInfo.address;
        this.mOwnerUid = displayInfo.ownerUid;
        this.mOwnerPackageName = displayInfo.ownerPackageName;
    }
}
