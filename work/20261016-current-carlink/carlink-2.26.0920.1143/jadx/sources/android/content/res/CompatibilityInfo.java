package android.content.res;

import android.accessibilityservice.c;
import android.content.pm.ApplicationInfo;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Region;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.android.internal.logging.nano.MetricsProto;

/* JADX INFO: loaded from: classes.dex */
public class CompatibilityInfo implements Parcelable {
    private static final int ALWAYS_NEEDS_COMPAT = 2;
    public static final int DEFAULT_NORMAL_SHORT_DIMENSION = 320;
    public static final float MAXIMUM_ASPECT_RATIO = 1.7791667f;
    private static final int NEEDS_COMPAT_RES = 16;
    private static final int NEEDS_SCREEN_COMPAT = 8;
    private static final int NEVER_NEEDS_COMPAT = 4;
    private static final int SCALING_REQUIRED = 1;
    public final int applicationDensity;
    public final float applicationInvertedScale;
    public final float applicationScale;
    private final int mCompatibilityFlags;
    public static final CompatibilityInfo DEFAULT_COMPATIBILITY_INFO = new CompatibilityInfo() { // from class: android.content.res.CompatibilityInfo.1
    };
    public static final Parcelable.Creator<CompatibilityInfo> CREATOR = new Parcelable.Creator<CompatibilityInfo>() { // from class: android.content.res.CompatibilityInfo.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CompatibilityInfo createFromParcel(Parcel parcel) {
            return new CompatibilityInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CompatibilityInfo[] newArray(int i2) {
            return new CompatibilityInfo[i2];
        }
    };

    public static float computeCompatibleScaling(DisplayMetrics displayMetrics, DisplayMetrics displayMetrics2) {
        int i2;
        int i3;
        int i4 = displayMetrics.noncompatWidthPixels;
        int i5 = displayMetrics.noncompatHeightPixels;
        if (i4 < i5) {
            i3 = i4;
            i2 = i5;
        } else {
            i2 = i4;
            i3 = i5;
        }
        int i6 = (int) ((displayMetrics.density * 320.0f) + 0.5f);
        float f2 = i2 / i3;
        if (f2 > 1.7791667f) {
            f2 = 1.7791667f;
        }
        int i7 = (int) ((i6 * f2) + 0.5f);
        if (i4 >= i5) {
            i7 = i6;
            i6 = i7;
        }
        float f3 = i4 / i6;
        float f4 = i5 / i7;
        if (f3 >= f4) {
            f3 = f4;
        }
        if (f3 < 1.0f) {
            f3 = 1.0f;
        }
        if (displayMetrics2 != null) {
            displayMetrics2.widthPixels = i6;
            displayMetrics2.heightPixels = i7;
        }
        return f3;
    }

    public boolean alwaysSupportsScreen() {
        return (this.mCompatibilityFlags & 4) != 0;
    }

    public void applyToConfiguration(int i2, Configuration configuration) {
        if (!supportsScreen()) {
            configuration.screenLayout = (configuration.screenLayout & (-16)) | 2;
            configuration.screenWidthDp = configuration.compatScreenWidthDp;
            configuration.screenHeightDp = configuration.compatScreenHeightDp;
            configuration.smallestScreenWidthDp = configuration.compatSmallestScreenWidthDp;
        }
        configuration.densityDpi = i2;
        if (isScalingRequired()) {
            configuration.densityDpi = (int) ((configuration.densityDpi * this.applicationInvertedScale) + 0.5f);
        }
    }

    public void applyToDisplayMetrics(DisplayMetrics displayMetrics) {
        if (supportsScreen()) {
            displayMetrics.widthPixels = displayMetrics.noncompatWidthPixels;
            displayMetrics.heightPixels = displayMetrics.noncompatHeightPixels;
        } else {
            computeCompatibleScaling(displayMetrics, displayMetrics);
        }
        if (isScalingRequired()) {
            float f2 = this.applicationInvertedScale;
            displayMetrics.density = displayMetrics.noncompatDensity * f2;
            displayMetrics.densityDpi = (int) ((displayMetrics.noncompatDensityDpi * f2) + 0.5f);
            displayMetrics.scaledDensity = displayMetrics.noncompatScaledDensity * f2;
            displayMetrics.xdpi = displayMetrics.noncompatXdpi * f2;
            displayMetrics.ydpi = displayMetrics.noncompatYdpi * f2;
            displayMetrics.widthPixels = (int) ((displayMetrics.widthPixels * f2) + 0.5f);
            displayMetrics.heightPixels = (int) ((displayMetrics.heightPixels * f2) + 0.5f);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            CompatibilityInfo compatibilityInfo = (CompatibilityInfo) obj;
            return this.mCompatibilityFlags == compatibilityInfo.mCompatibilityFlags && this.applicationDensity == compatibilityInfo.applicationDensity && this.applicationScale == compatibilityInfo.applicationScale && this.applicationInvertedScale == compatibilityInfo.applicationInvertedScale;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public Translator getTranslator() {
        if (isScalingRequired()) {
            return new Translator(this);
        }
        return null;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.applicationInvertedScale) + ((Float.floatToIntBits(this.applicationScale) + ((((MetricsProto.MetricsEvent.DIALOG_SUPPORT_PHONE + this.mCompatibilityFlags) * 31) + this.applicationDensity) * 31)) * 31);
    }

    public boolean isScalingRequired() {
        return (this.mCompatibilityFlags & 1) != 0;
    }

    public boolean needsCompatResources() {
        return (this.mCompatibilityFlags & 16) != 0;
    }

    public boolean neverSupportsScreen() {
        return (this.mCompatibilityFlags & 2) != 0;
    }

    public boolean supportsScreen() {
        return (this.mCompatibilityFlags & 8) == 0;
    }

    public String toString() {
        StringBuilder sbQ = c.q(128, "{");
        sbQ.append(this.applicationDensity);
        sbQ.append("dpi");
        if (isScalingRequired()) {
            sbQ.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sbQ.append(this.applicationScale);
            sbQ.append("x");
        }
        if (!supportsScreen()) {
            sbQ.append(" resizing");
        }
        if (neverSupportsScreen()) {
            sbQ.append(" never-compat");
        }
        if (alwaysSupportsScreen()) {
            sbQ.append(" always-compat");
        }
        sbQ.append("}");
        return sbQ.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCompatibilityFlags);
        parcel.writeInt(this.applicationDensity);
        parcel.writeFloat(this.applicationScale);
        parcel.writeFloat(this.applicationInvertedScale);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0068 A[PHI: r10
  0x0068: PHI (r10v16 int) = (r10v8 int), (r10v18 int) binds: [B:44:0x0066, B:38:0x005b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:71:0x00b6  */
    public CompatibilityInfo(ApplicationInfo applicationInfo, int i2, int i3, boolean z2) {
        int i4;
        boolean z3;
        int i5 = 0;
        int i6 = applicationInfo.targetSdkVersion < 26 ? 16 : 0;
        int i7 = applicationInfo.requiresSmallestWidthDp;
        if (i7 == 0 && applicationInfo.compatibleWidthLimitDp == 0 && applicationInfo.largestWidthLimitDp == 0) {
            int i8 = applicationInfo.flags;
            boolean z4 = true;
            if ((i8 & 2048) == 0) {
                z3 = false;
            } else if (z2) {
                z3 = true;
                i5 = 8;
            } else {
                i5 = 42;
                z3 = true;
            }
            if ((i8 & 524288) != 0) {
                i5 = z2 ? i5 : i5 | 34;
                z3 = true;
            }
            if ((i8 & 4096) != 0) {
                i5 |= 2;
            } else {
                z4 = z3;
            }
            i5 = z2 ? i5 & (-3) : i5;
            i4 = i6 | 8;
            int i9 = i2 & 15;
            if (i9 == 3) {
                i4 = (i5 & 8) != 0 ? i4 & (-9) : i4;
                if ((i8 & 2048) != 0) {
                    i4 |= 4;
                }
            } else if (i9 == 4) {
                i4 = (i5 & 32) != 0 ? i4 & (-9) : i4;
                if ((i8 & 524288) != 0) {
                    i4 |= 4;
                }
            }
            if ((i2 & 268435456) == 0) {
                i4 = (i4 & (-9)) | 4;
            } else if ((i5 & 2) != 0) {
                i4 &= -9;
            } else if (!z4) {
                i4 |= 2;
            }
            if ((i8 & 8192) != 0) {
                this.applicationDensity = DisplayMetrics.DENSITY_DEVICE;
                this.applicationScale = 1.0f;
                this.applicationInvertedScale = 1.0f;
            } else {
                this.applicationDensity = 160;
                float f2 = DisplayMetrics.DENSITY_DEVICE / 160.0f;
                this.applicationScale = f2;
                this.applicationInvertedScale = 1.0f / f2;
                i4 |= 1;
            }
        } else {
            i7 = i7 == 0 ? applicationInfo.compatibleWidthLimitDp : i7;
            i7 = i7 == 0 ? applicationInfo.largestWidthLimitDp : i7;
            int i10 = applicationInfo.compatibleWidthLimitDp;
            i10 = i10 == 0 ? i7 : i10;
            i10 = i10 < i7 ? i7 : i10;
            int i11 = applicationInfo.largestWidthLimitDp;
            if (i7 > 320) {
                i6 |= 4;
            } else if (i11 != 0 && i3 > i11) {
                i6 |= 10;
            } else if (i10 >= i3) {
                i6 |= 4;
            } else if (z2) {
                i6 |= 8;
            }
            this.applicationDensity = DisplayMetrics.DENSITY_DEVICE;
            this.applicationScale = 1.0f;
            this.applicationInvertedScale = 1.0f;
            i4 = i6;
        }
        this.mCompatibilityFlags = i4;
    }

    public class Translator {
        public final float applicationInvertedScale;
        public final float applicationScale;
        private Rect mContentInsetsBuffer;
        private Region mTouchableAreaBuffer;
        private Rect mVisibleInsetsBuffer;

        public Translator(float f2, float f3) {
            this.mContentInsetsBuffer = null;
            this.mVisibleInsetsBuffer = null;
            this.mTouchableAreaBuffer = null;
            this.applicationScale = f2;
            this.applicationInvertedScale = f3;
        }

        public Rect getTranslatedContentInsets(Rect rect) {
            if (this.mContentInsetsBuffer == null) {
                this.mContentInsetsBuffer = new Rect();
            }
            this.mContentInsetsBuffer.set(rect);
            translateRectInAppWindowToScreen(this.mContentInsetsBuffer);
            return this.mContentInsetsBuffer;
        }

        public Region getTranslatedTouchableArea(Region region) {
            if (this.mTouchableAreaBuffer == null) {
                this.mTouchableAreaBuffer = new Region();
            }
            this.mTouchableAreaBuffer.set(region);
            this.mTouchableAreaBuffer.scale(this.applicationScale);
            return this.mTouchableAreaBuffer;
        }

        public Rect getTranslatedVisibleInsets(Rect rect) {
            if (this.mVisibleInsetsBuffer == null) {
                this.mVisibleInsetsBuffer = new Rect();
            }
            this.mVisibleInsetsBuffer.set(rect);
            translateRectInAppWindowToScreen(this.mVisibleInsetsBuffer);
            return this.mVisibleInsetsBuffer;
        }

        public void translateCanvas(Canvas canvas) {
            if (this.applicationScale == 1.5f) {
                canvas.translate(0.0026143792f, 0.0026143792f);
            }
            float f2 = this.applicationScale;
            canvas.scale(f2, f2);
        }

        public void translateEventInScreenToAppWindow(MotionEvent motionEvent) {
            motionEvent.scale(this.applicationInvertedScale);
        }

        public void translateLayoutParamsInAppWindowToScreen(WindowManager.LayoutParams layoutParams) {
            layoutParams.scale(this.applicationScale);
        }

        public void translatePointInScreenToAppWindow(PointF pointF) {
            float f2 = this.applicationInvertedScale;
            if (f2 != 1.0f) {
                pointF.f73x *= f2;
                pointF.f74y *= f2;
            }
        }

        public void translateRectInAppWindowToScreen(Rect rect) {
            rect.scale(this.applicationScale);
        }

        public void translateRectInScreenToAppWinFrame(Rect rect) {
            rect.scale(this.applicationInvertedScale);
        }

        public void translateRectInScreenToAppWindow(Rect rect) {
            rect.scale(this.applicationInvertedScale);
        }

        public void translateRegionInWindowToScreen(Region region) {
            region.scale(this.applicationScale);
        }

        public void translateWindowLayout(WindowManager.LayoutParams layoutParams) {
            layoutParams.scale(this.applicationScale);
        }

        public Translator(CompatibilityInfo compatibilityInfo) {
            this(compatibilityInfo.applicationScale, compatibilityInfo.applicationInvertedScale);
        }
    }

    private CompatibilityInfo(int i2, int i3, float f2, float f3) {
        this.mCompatibilityFlags = i2;
        this.applicationDensity = i3;
        this.applicationScale = f2;
        this.applicationInvertedScale = f3;
    }

    private CompatibilityInfo() {
        this(4, DisplayMetrics.DENSITY_DEVICE, 1.0f, 1.0f);
    }

    private CompatibilityInfo(Parcel parcel) {
        this.mCompatibilityFlags = parcel.readInt();
        this.applicationDensity = parcel.readInt();
        this.applicationScale = parcel.readFloat();
        this.applicationInvertedScale = parcel.readFloat();
    }
}
