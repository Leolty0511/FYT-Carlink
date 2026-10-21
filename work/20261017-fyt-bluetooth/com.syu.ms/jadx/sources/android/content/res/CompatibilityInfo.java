package android.content.res;

import android.content.pm.ApplicationInfo;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class CompatibilityInfo implements Parcelable {
    private static final int ALWAYS_NEEDS_COMPAT = 2;
    public static final int DEFAULT_NORMAL_SHORT_DIMENSION = 320;
    public static final float MAXIMUM_ASPECT_RATIO = 1.7791667f;
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
        return ((((((527 + this.mCompatibilityFlags) * 31) + this.applicationDensity) * 31) + Float.floatToIntBits(this.applicationScale)) * 31) + Float.floatToIntBits(this.applicationInvertedScale);
    }

    public boolean isScalingRequired() {
        return (this.mCompatibilityFlags & 1) != 0;
    }

    public boolean neverSupportsScreen() {
        return (this.mCompatibilityFlags & 2) != 0;
    }

    public boolean supportsScreen() {
        return (this.mCompatibilityFlags & 8) == 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("{");
        sb.append(this.applicationDensity);
        sb.append("dpi");
        if (isScalingRequired()) {
            sb.append(" ");
            sb.append(this.applicationScale);
            sb.append("x");
        }
        if (!supportsScreen()) {
            sb.append(" resizing");
        }
        if (neverSupportsScreen()) {
            sb.append(" never-compat");
        }
        if (alwaysSupportsScreen()) {
            sb.append(" always-compat");
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mCompatibilityFlags);
        parcel.writeInt(this.applicationDensity);
        parcel.writeFloat(this.applicationScale);
        parcel.writeFloat(this.applicationInvertedScale);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x005b A[PHI: r1
  0x005b: PHI (r1v14 int) = (r1v6 int), (r1v16 int) binds: [B:40:0x0059, B:34:0x004f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:67:0x00a9  */
    public CompatibilityInfo(ApplicationInfo applicationInfo, int i2, int i3, boolean z2) {
        int i4;
        boolean z3;
        int i5 = applicationInfo.requiresSmallestWidthDp;
        int i6 = 8;
        if (i5 == 0 && applicationInfo.compatibleWidthLimitDp == 0 && applicationInfo.largestWidthLimitDp == 0) {
            int i7 = applicationInfo.flags;
            boolean z4 = true;
            if ((i7 & 2048) == 0) {
                i4 = 0;
                z3 = false;
            } else if (z2) {
                z3 = true;
                i4 = 8;
            } else {
                i4 = 42;
                z3 = true;
            }
            if ((i7 & 524288) != 0) {
                i4 = z2 ? i4 : i4 | 34;
                z3 = true;
            }
            if ((i7 & 4096) != 0) {
                i4 |= 2;
            } else {
                z4 = z3;
            }
            i4 = z2 ? i4 & (-3) : i4;
            int i8 = i2 & 15;
            if (i8 == 3) {
                i6 = (i4 & 8) != 0 ? 0 : 8;
                if ((i7 & 2048) != 0) {
                    i6 |= 4;
                }
            } else if (i8 == 4) {
                i6 = (i4 & 32) != 0 ? 0 : 8;
                if ((i7 & 524288) != 0) {
                    i6 |= 4;
                }
            }
            if ((i2 & 268435456) == 0) {
                i6 = (i6 & (-9)) | 4;
            } else if ((i4 & 2) != 0) {
                i6 &= -9;
            } else if (!z4) {
                i6 |= 2;
            }
            if ((i7 & 8192) != 0) {
                this.applicationDensity = DisplayMetrics.DENSITY_DEVICE;
                this.applicationScale = 1.0f;
                this.applicationInvertedScale = 1.0f;
            } else {
                this.applicationDensity = 160;
                float f2 = DisplayMetrics.DENSITY_DEVICE / 160.0f;
                this.applicationScale = f2;
                this.applicationInvertedScale = 1.0f / f2;
                i6 |= 1;
            }
        } else {
            i5 = i5 == 0 ? applicationInfo.compatibleWidthLimitDp : i5;
            i5 = i5 == 0 ? applicationInfo.largestWidthLimitDp : i5;
            int i9 = applicationInfo.compatibleWidthLimitDp;
            i9 = i9 == 0 ? i5 : i9;
            i9 = i9 < i5 ? i5 : i9;
            int i10 = applicationInfo.largestWidthLimitDp;
            if (i5 > 320) {
                i6 = 4;
            } else if (i10 != 0 && i3 > i10) {
                i6 = 10;
            } else if (i9 >= i3) {
                i6 = 4;
            } else if (!z2) {
                i6 = 0;
            }
            this.applicationDensity = DisplayMetrics.DENSITY_DEVICE;
            this.applicationScale = 1.0f;
            this.applicationInvertedScale = 1.0f;
        }
        this.mCompatibilityFlags = i6;
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
                pointF.f139x *= f2;
                pointF.f140y *= f2;
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
