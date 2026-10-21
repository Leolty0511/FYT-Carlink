package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Insets;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import com.android.internal.R;
import com.android.internal.app.DumpHeapActivity;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class GradientDrawable extends Drawable {
    private static final float DEFAULT_INNER_RADIUS_RATIO = 3.0f;
    private static final float DEFAULT_THICKNESS_RATIO = 9.0f;
    public static final int LINE = 2;
    public static final int LINEAR_GRADIENT = 0;
    public static final int OVAL = 1;
    public static final int RADIAL_GRADIENT = 1;
    private static final int RADIUS_TYPE_FRACTION = 1;
    private static final int RADIUS_TYPE_FRACTION_PARENT = 2;
    private static final int RADIUS_TYPE_PIXELS = 0;
    public static final int RECTANGLE = 0;
    public static final int RING = 3;
    public static final int SWEEP_GRADIENT = 2;
    private int mAlpha;
    private ColorFilter mColorFilter;
    private final Paint mFillPaint;
    private boolean mGradientIsDirty;
    private float mGradientRadius;
    private GradientState mGradientState;
    private Paint mLayerPaint;
    private boolean mMutated;
    private Rect mPadding;
    private final Path mPath;
    private boolean mPathIsDirty;
    private final RectF mRect;
    private Path mRingPath;
    private Paint mStrokePaint;
    private PorterDuffColorFilter mTintFilter;

    /* JADX INFO: renamed from: android.graphics.drawable.GradientDrawable$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation;

        static {
            int[] iArr = new int[Orientation.values().length];
            $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation = iArr;
            try {
                iArr[Orientation.TOP_BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation[Orientation.TR_BL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation[Orientation.RIGHT_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation[Orientation.BR_TL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation[Orientation.BOTTOM_TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation[Orientation.BL_TR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation[Orientation.LEFT_RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class GradientState extends Drawable.ConstantState {
        public int mAngle;
        int[] mAttrCorners;
        int[] mAttrGradient;
        int[] mAttrPadding;
        int[] mAttrSize;
        int[] mAttrSolid;
        int[] mAttrStroke;
        float mCenterX;
        float mCenterY;
        public int mChangingConfigurations;
        int mDensity;
        public boolean mDither;
        public int mGradient;
        public int[] mGradientColors;
        float mGradientRadius;
        int mGradientRadiusType;
        public int mHeight;
        public int mInnerRadius;
        public float mInnerRadiusRatio;
        boolean mOpaqueOverBounds;
        boolean mOpaqueOverShape;
        public Insets mOpticalInsets;
        public Orientation mOrientation;
        public Rect mPadding;
        public float[] mPositions;
        public float mRadius;
        public float[] mRadiusArray;
        public int mShape;
        public ColorStateList mSolidColors;
        public ColorStateList mStrokeColors;
        public float mStrokeDashGap;
        public float mStrokeDashWidth;
        public int mStrokeWidth;
        public int[] mTempColors;
        public float[] mTempPositions;
        int[] mThemeAttrs;
        public int mThickness;
        public float mThicknessRatio;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;
        boolean mUseLevel;
        boolean mUseLevelForShape;
        public int mWidth;

        public GradientState(Orientation orientation, int[] iArr) {
            this.mShape = 0;
            this.mGradient = 0;
            this.mAngle = 0;
            this.mStrokeWidth = -1;
            this.mStrokeDashWidth = 0.0f;
            this.mStrokeDashGap = 0.0f;
            this.mRadius = 0.0f;
            this.mRadiusArray = null;
            this.mPadding = null;
            this.mWidth = -1;
            this.mHeight = -1;
            this.mInnerRadiusRatio = GradientDrawable.DEFAULT_INNER_RADIUS_RATIO;
            this.mThicknessRatio = GradientDrawable.DEFAULT_THICKNESS_RATIO;
            this.mInnerRadius = -1;
            this.mThickness = -1;
            this.mDither = false;
            this.mOpticalInsets = Insets.NONE;
            this.mCenterX = 0.5f;
            this.mCenterY = 0.5f;
            this.mGradientRadius = 0.5f;
            this.mGradientRadiusType = 0;
            this.mUseLevel = false;
            this.mUseLevelForShape = true;
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mDensity = 160;
            this.mOrientation = orientation;
            setGradientColors(iArr);
        }

        private void applyDensityScaling(int i2, int i3) {
            int i4 = this.mInnerRadius;
            if (i4 > 0) {
                this.mInnerRadius = Drawable.scaleFromDensity(i4, i2, i3, true);
            }
            int i5 = this.mThickness;
            if (i5 > 0) {
                this.mThickness = Drawable.scaleFromDensity(i5, i2, i3, true);
            }
            Insets insets = this.mOpticalInsets;
            if (insets != Insets.NONE) {
                this.mOpticalInsets = Insets.of(Drawable.scaleFromDensity(insets.left, i2, i3, true), Drawable.scaleFromDensity(this.mOpticalInsets.top, i2, i3, true), Drawable.scaleFromDensity(this.mOpticalInsets.right, i2, i3, true), Drawable.scaleFromDensity(this.mOpticalInsets.bottom, i2, i3, true));
            }
            Rect rect = this.mPadding;
            if (rect != null) {
                rect.left = Drawable.scaleFromDensity(rect.left, i2, i3, false);
                Rect rect2 = this.mPadding;
                rect2.top = Drawable.scaleFromDensity(rect2.top, i2, i3, false);
                Rect rect3 = this.mPadding;
                rect3.right = Drawable.scaleFromDensity(rect3.right, i2, i3, false);
                Rect rect4 = this.mPadding;
                rect4.bottom = Drawable.scaleFromDensity(rect4.bottom, i2, i3, false);
            }
            float f2 = this.mRadius;
            if (f2 > 0.0f) {
                this.mRadius = Drawable.scaleFromDensity(f2, i2, i3);
            }
            float[] fArr = this.mRadiusArray;
            if (fArr != null) {
                fArr[0] = Drawable.scaleFromDensity((int) fArr[0], i2, i3, true);
                float[] fArr2 = this.mRadiusArray;
                fArr2[1] = Drawable.scaleFromDensity((int) fArr2[1], i2, i3, true);
                float[] fArr3 = this.mRadiusArray;
                fArr3[2] = Drawable.scaleFromDensity((int) fArr3[2], i2, i3, true);
                float[] fArr4 = this.mRadiusArray;
                fArr4[3] = Drawable.scaleFromDensity((int) fArr4[3], i2, i3, true);
            }
            int i6 = this.mStrokeWidth;
            if (i6 > 0) {
                this.mStrokeWidth = Drawable.scaleFromDensity(i6, i2, i3, true);
            }
            if (this.mStrokeDashWidth > 0.0f) {
                this.mStrokeDashWidth = Drawable.scaleFromDensity(this.mStrokeDashGap, i2, i3);
            }
            float f3 = this.mStrokeDashGap;
            if (f3 > 0.0f) {
                this.mStrokeDashGap = Drawable.scaleFromDensity(f3, i2, i3);
            }
            if (this.mGradientRadiusType == 0) {
                this.mGradientRadius = Drawable.scaleFromDensity(this.mGradientRadius, i2, i3);
            }
            int i7 = this.mWidth;
            if (i7 > 0) {
                this.mWidth = Drawable.scaleFromDensity(i7, i2, i3, true);
            }
            int i8 = this.mHeight;
            if (i8 > 0) {
                this.mHeight = Drawable.scaleFromDensity(i8, i2, i3, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void computeOpacity() {
            boolean z2 = false;
            this.mOpaqueOverBounds = false;
            this.mOpaqueOverShape = false;
            if (this.mGradientColors != null) {
                int i2 = 0;
                while (true) {
                    int[] iArr = this.mGradientColors;
                    if (i2 >= iArr.length) {
                        break;
                    } else if (!GradientDrawable.isOpaque(iArr[i2])) {
                        return;
                    } else {
                        i2++;
                    }
                }
            }
            if (this.mGradientColors == null && this.mSolidColors == null) {
                return;
            }
            this.mOpaqueOverShape = true;
            if (this.mShape == 0 && this.mRadius <= 0.0f && this.mRadiusArray == null) {
                z2 = true;
            }
            this.mOpaqueOverBounds = z2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            ColorStateList colorStateList;
            ColorStateList colorStateList2;
            ColorStateList colorStateList3;
            return (this.mThemeAttrs == null && this.mAttrSize == null && this.mAttrGradient == null && this.mAttrSolid == null && this.mAttrStroke == null && this.mAttrCorners == null && this.mAttrPadding == null && ((colorStateList = this.mTint) == null || !colorStateList.canApplyTheme()) && (((colorStateList2 = this.mStrokeColors) == null || !colorStateList2.canApplyTheme()) && (((colorStateList3 = this.mSolidColors) == null || !colorStateList3.canApplyTheme()) && !super.canApplyTheme()))) ? false : true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i2 = this.mChangingConfigurations;
            ColorStateList colorStateList = this.mStrokeColors;
            int changingConfigurations = i2 | (colorStateList != null ? colorStateList.getChangingConfigurations() : 0);
            ColorStateList colorStateList2 = this.mSolidColors;
            int changingConfigurations2 = changingConfigurations | (colorStateList2 != null ? colorStateList2.getChangingConfigurations() : 0);
            ColorStateList colorStateList3 = this.mTint;
            return changingConfigurations2 | (colorStateList3 != null ? colorStateList3.getChangingConfigurations() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new GradientDrawable(this, null, 0 == true ? 1 : 0);
        }

        public void setCornerRadii(float[] fArr) {
            this.mRadiusArray = fArr;
            if (fArr == null) {
                this.mRadius = 0.0f;
            }
        }

        public void setCornerRadius(float f2) {
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            this.mRadius = f2;
            this.mRadiusArray = null;
        }

        public final void setDensity(int i2) {
            int i3 = this.mDensity;
            if (i3 != i2) {
                this.mDensity = i2;
                applyDensityScaling(i3, i2);
            }
        }

        public void setGradientCenter(float f2, float f3) {
            this.mCenterX = f2;
            this.mCenterY = f3;
        }

        public void setGradientColors(int[] iArr) {
            this.mGradientColors = iArr;
            this.mSolidColors = null;
            computeOpacity();
        }

        public void setGradientRadius(float f2, int i2) {
            this.mGradientRadius = f2;
            this.mGradientRadiusType = i2;
        }

        public void setGradientType(int i2) {
            this.mGradient = i2;
        }

        public void setShape(int i2) {
            this.mShape = i2;
            computeOpacity();
        }

        public void setSize(int i2, int i3) {
            this.mWidth = i2;
            this.mHeight = i3;
        }

        public void setSolidColors(ColorStateList colorStateList) {
            this.mGradientColors = null;
            this.mSolidColors = colorStateList;
            computeOpacity();
        }

        public void setStroke(int i2, ColorStateList colorStateList, float f2, float f3) {
            this.mStrokeWidth = i2;
            this.mStrokeColors = colorStateList;
            this.mStrokeDashWidth = f2;
            this.mStrokeDashGap = f3;
            computeOpacity();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new GradientDrawable(Drawable.resolveDensity(resources, this.mDensity) != this.mDensity ? new GradientState(this, resources) : this, resources, null);
        }

        public GradientState(GradientState gradientState, Resources resources) {
            this.mShape = 0;
            this.mGradient = 0;
            this.mAngle = 0;
            this.mStrokeWidth = -1;
            this.mStrokeDashWidth = 0.0f;
            this.mStrokeDashGap = 0.0f;
            this.mRadius = 0.0f;
            this.mRadiusArray = null;
            this.mPadding = null;
            this.mWidth = -1;
            this.mHeight = -1;
            this.mInnerRadiusRatio = GradientDrawable.DEFAULT_INNER_RADIUS_RATIO;
            this.mThicknessRatio = GradientDrawable.DEFAULT_THICKNESS_RATIO;
            this.mInnerRadius = -1;
            this.mThickness = -1;
            this.mDither = false;
            this.mOpticalInsets = Insets.NONE;
            this.mCenterX = 0.5f;
            this.mCenterY = 0.5f;
            this.mGradientRadius = 0.5f;
            this.mGradientRadiusType = 0;
            this.mUseLevel = false;
            this.mUseLevelForShape = true;
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mDensity = 160;
            this.mChangingConfigurations = gradientState.mChangingConfigurations;
            this.mShape = gradientState.mShape;
            this.mGradient = gradientState.mGradient;
            this.mAngle = gradientState.mAngle;
            this.mOrientation = gradientState.mOrientation;
            this.mSolidColors = gradientState.mSolidColors;
            int[] iArr = gradientState.mGradientColors;
            if (iArr != null) {
                this.mGradientColors = (int[]) iArr.clone();
            }
            float[] fArr = gradientState.mPositions;
            if (fArr != null) {
                this.mPositions = (float[]) fArr.clone();
            }
            this.mStrokeColors = gradientState.mStrokeColors;
            this.mStrokeWidth = gradientState.mStrokeWidth;
            this.mStrokeDashWidth = gradientState.mStrokeDashWidth;
            this.mStrokeDashGap = gradientState.mStrokeDashGap;
            this.mRadius = gradientState.mRadius;
            float[] fArr2 = gradientState.mRadiusArray;
            if (fArr2 != null) {
                this.mRadiusArray = (float[]) fArr2.clone();
            }
            if (gradientState.mPadding != null) {
                this.mPadding = new Rect(gradientState.mPadding);
            }
            this.mWidth = gradientState.mWidth;
            this.mHeight = gradientState.mHeight;
            this.mInnerRadiusRatio = gradientState.mInnerRadiusRatio;
            this.mThicknessRatio = gradientState.mThicknessRatio;
            this.mInnerRadius = gradientState.mInnerRadius;
            this.mThickness = gradientState.mThickness;
            this.mDither = gradientState.mDither;
            this.mOpticalInsets = gradientState.mOpticalInsets;
            this.mCenterX = gradientState.mCenterX;
            this.mCenterY = gradientState.mCenterY;
            this.mGradientRadius = gradientState.mGradientRadius;
            this.mGradientRadiusType = gradientState.mGradientRadiusType;
            this.mUseLevel = gradientState.mUseLevel;
            this.mUseLevelForShape = gradientState.mUseLevelForShape;
            this.mOpaqueOverBounds = gradientState.mOpaqueOverBounds;
            this.mOpaqueOverShape = gradientState.mOpaqueOverShape;
            this.mTint = gradientState.mTint;
            this.mTintMode = gradientState.mTintMode;
            this.mThemeAttrs = gradientState.mThemeAttrs;
            this.mAttrSize = gradientState.mAttrSize;
            this.mAttrGradient = gradientState.mAttrGradient;
            this.mAttrSolid = gradientState.mAttrSolid;
            this.mAttrStroke = gradientState.mAttrStroke;
            this.mAttrCorners = gradientState.mAttrCorners;
            this.mAttrPadding = gradientState.mAttrPadding;
            int iResolveDensity = Drawable.resolveDensity(resources, gradientState.mDensity);
            this.mDensity = iResolveDensity;
            int i2 = gradientState.mDensity;
            if (i2 != iResolveDensity) {
                applyDensityScaling(i2, iResolveDensity);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface GradientType {
    }

    public enum Orientation {
        TOP_BOTTOM,
        TR_BL,
        RIGHT_LEFT,
        BR_TL,
        BOTTOM_TOP,
        BL_TR,
        LEFT_RIGHT,
        TL_BR
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RadiusType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Shape {
    }

    public /* synthetic */ GradientDrawable(GradientState gradientState, Resources resources, AnonymousClass1 anonymousClass1) {
        this(gradientState, resources);
    }

    private void applyThemeChildElements(Resources.Theme theme) {
        GradientState gradientState = this.mGradientState;
        int[] iArr = gradientState.mAttrSize;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.GradientDrawableSize);
            updateGradientDrawableSize(typedArrayResolveAttributes);
            typedArrayResolveAttributes.recycle();
        }
        int[] iArr2 = gradientState.mAttrGradient;
        if (iArr2 != null) {
            TypedArray typedArrayResolveAttributes2 = theme.resolveAttributes(iArr2, R.styleable.GradientDrawableGradient);
            try {
                try {
                    updateGradientDrawableGradient(theme.getResources(), typedArrayResolveAttributes2);
                } catch (XmlPullParserException e2) {
                    Drawable.rethrowAsRuntimeException(e2);
                }
                typedArrayResolveAttributes2.recycle();
            } catch (Throwable th) {
                typedArrayResolveAttributes2.recycle();
                throw th;
            }
        }
        int[] iArr3 = gradientState.mAttrSolid;
        if (iArr3 != null) {
            TypedArray typedArrayResolveAttributes3 = theme.resolveAttributes(iArr3, R.styleable.GradientDrawableSolid);
            updateGradientDrawableSolid(typedArrayResolveAttributes3);
            typedArrayResolveAttributes3.recycle();
        }
        int[] iArr4 = gradientState.mAttrStroke;
        if (iArr4 != null) {
            TypedArray typedArrayResolveAttributes4 = theme.resolveAttributes(iArr4, R.styleable.GradientDrawableStroke);
            updateGradientDrawableStroke(typedArrayResolveAttributes4);
            typedArrayResolveAttributes4.recycle();
        }
        int[] iArr5 = gradientState.mAttrCorners;
        if (iArr5 != null) {
            TypedArray typedArrayResolveAttributes5 = theme.resolveAttributes(iArr5, R.styleable.DrawableCorners);
            updateDrawableCorners(typedArrayResolveAttributes5);
            typedArrayResolveAttributes5.recycle();
        }
        int[] iArr6 = gradientState.mAttrPadding;
        if (iArr6 != null) {
            TypedArray typedArrayResolveAttributes6 = theme.resolveAttributes(iArr6, R.styleable.GradientDrawablePadding);
            updateGradientDrawablePadding(typedArrayResolveAttributes6);
            typedArrayResolveAttributes6.recycle();
        }
    }

    private void buildPathIfDirty() {
        GradientState gradientState = this.mGradientState;
        if (this.mPathIsDirty) {
            ensureValidRect();
            this.mPath.reset();
            this.mPath.addRoundRect(this.mRect, gradientState.mRadiusArray, Path.Direction.CW);
            this.mPathIsDirty = false;
        }
    }

    private Path buildRing(GradientState gradientState) {
        Path path = this.mRingPath;
        if (path != null && (!gradientState.mUseLevelForShape || !this.mPathIsDirty)) {
            return path;
        }
        this.mPathIsDirty = false;
        float level = gradientState.mUseLevelForShape ? (getLevel() * 360.0f) / 10000.0f : 360.0f;
        RectF rectF = new RectF(this.mRect);
        float fWidth = rectF.width() / 2.0f;
        float fHeight = rectF.height() / 2.0f;
        int i2 = gradientState.mThickness;
        float fWidth2 = i2 != -1 ? i2 : rectF.width() / gradientState.mThicknessRatio;
        int i3 = gradientState.mInnerRadius;
        float fWidth3 = i3 != -1 ? i3 : rectF.width() / gradientState.mInnerRadiusRatio;
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(fWidth - fWidth3, fHeight - fWidth3);
        RectF rectF3 = new RectF(rectF2);
        float f2 = -fWidth2;
        rectF3.inset(f2, f2);
        Path path2 = this.mRingPath;
        if (path2 == null) {
            this.mRingPath = new Path();
        } else {
            path2.reset();
        }
        Path path3 = this.mRingPath;
        if (level >= 360.0f || level <= -360.0f) {
            path3.addOval(rectF3, Path.Direction.CW);
            path3.addOval(rectF2, Path.Direction.CCW);
        } else {
            path3.setFillType(Path.FillType.EVEN_ODD);
            float f3 = fWidth + fWidth3;
            path3.moveTo(f3, fHeight);
            path3.lineTo(f3 + fWidth2, fHeight);
            path3.arcTo(rectF3, 0.0f, level, false);
            path3.arcTo(rectF2, level, -level, false);
            path3.close();
        }
        return path3;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0109  */
    /* JADX WARN: Code duplicated, block: B:51:0x0116  */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0057. Please report as an issue. */
    private boolean ensureValidRect() {
        float[] fArr;
        float fMin;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        if (this.mGradientIsDirty) {
            this.mGradientIsDirty = false;
            Rect bounds = getBounds();
            Paint paint = this.mStrokePaint;
            float strokeWidth = paint != null ? paint.getStrokeWidth() * 0.5f : 0.0f;
            GradientState gradientState = this.mGradientState;
            this.mRect.set(bounds.left + strokeWidth, bounds.top + strokeWidth, bounds.right - strokeWidth, bounds.bottom - strokeWidth);
            int[] iArr = gradientState.mGradientColors;
            if (iArr != null) {
                RectF rectF = this.mRect;
                int i2 = gradientState.mGradient;
                if (i2 == 0) {
                    float level = gradientState.mUseLevel ? getLevel() / 10000.0f : 1.0f;
                    switch (AnonymousClass1.$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation[gradientState.mOrientation.ordinal()]) {
                        case 1:
                            f2 = rectF.left;
                            f3 = rectF.top;
                            f4 = rectF.bottom;
                            f12 = level * f4;
                            f13 = f2;
                            f14 = f13;
                            f15 = f3;
                            f16 = f12;
                            break;
                        case 2:
                            f5 = rectF.right;
                            f6 = rectF.top;
                            f7 = rectF.left * level;
                            f8 = rectF.bottom;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            f16 = f12;
                            break;
                        case 3:
                            f9 = rectF.right;
                            f10 = rectF.top;
                            f11 = rectF.left;
                            f13 = f9;
                            f15 = f10;
                            f16 = f15;
                            f14 = level * f11;
                            break;
                        case 4:
                            f5 = rectF.right;
                            f6 = rectF.bottom;
                            f7 = rectF.left * level;
                            f8 = rectF.top;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            f16 = f12;
                            break;
                        case 5:
                            f2 = rectF.left;
                            f3 = rectF.bottom;
                            f4 = rectF.top;
                            f12 = level * f4;
                            f13 = f2;
                            f14 = f13;
                            f15 = f3;
                            f16 = f12;
                            break;
                        case 6:
                            f5 = rectF.left;
                            f6 = rectF.bottom;
                            f7 = rectF.right * level;
                            f8 = rectF.top;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            f16 = f12;
                            break;
                        case 7:
                            f9 = rectF.left;
                            f10 = rectF.top;
                            f11 = rectF.right;
                            f13 = f9;
                            f15 = f10;
                            f16 = f15;
                            f14 = level * f11;
                            break;
                        default:
                            f5 = rectF.left;
                            f6 = rectF.top;
                            f7 = rectF.right * level;
                            f8 = rectF.bottom;
                            f12 = level * f8;
                            f13 = f5;
                            f15 = f6;
                            f14 = f7;
                            f16 = f12;
                            break;
                    }
                    this.mFillPaint.setShader(new LinearGradient(f13, f15, f14, f16, iArr, gradientState.mPositions, Shader.TileMode.CLAMP));
                } else if (i2 == 1) {
                    float f17 = rectF.left;
                    float f18 = ((rectF.right - f17) * gradientState.mCenterX) + f17;
                    float f19 = rectF.top;
                    float f20 = ((rectF.bottom - f19) * gradientState.mCenterY) + f19;
                    float level2 = gradientState.mGradientRadius;
                    int i3 = gradientState.mGradientRadiusType;
                    if (i3 == 1) {
                        int i4 = gradientState.mWidth;
                        float fWidth = i4 >= 0 ? i4 : rectF.width();
                        int i5 = gradientState.mHeight;
                        fMin = Math.min(fWidth, i5 >= 0 ? i5 : rectF.height());
                    } else {
                        if (i3 == 2) {
                            fMin = Math.min(rectF.width(), rectF.height());
                        }
                        if (gradientState.mUseLevel) {
                            level2 *= getLevel() / 10000.0f;
                        }
                        this.mGradientRadius = level2;
                        if (level2 <= 0.0f) {
                            level2 = 0.001f;
                        }
                        this.mFillPaint.setShader(new RadialGradient(f18, f20, level2, iArr, (float[]) null, Shader.TileMode.CLAMP));
                    }
                    level2 *= fMin;
                    if (gradientState.mUseLevel) {
                        level2 *= getLevel() / 10000.0f;
                    }
                    this.mGradientRadius = level2;
                    if (level2 <= 0.0f) {
                        level2 = 0.001f;
                    }
                    this.mFillPaint.setShader(new RadialGradient(f18, f20, level2, iArr, (float[]) null, Shader.TileMode.CLAMP));
                } else if (i2 == 2) {
                    float f21 = rectF.left;
                    float f22 = ((rectF.right - f21) * gradientState.mCenterX) + f21;
                    float f23 = rectF.top;
                    float f24 = ((rectF.bottom - f23) * gradientState.mCenterY) + f23;
                    if (gradientState.mUseLevel) {
                        int[] iArr2 = gradientState.mTempColors;
                        int length = iArr.length;
                        if (iArr2 == null || iArr2.length != length + 1) {
                            iArr2 = new int[length + 1];
                            gradientState.mTempColors = iArr2;
                        }
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                        int i6 = length - 1;
                        iArr2[length] = iArr[i6];
                        float[] fArr2 = gradientState.mTempPositions;
                        float f25 = 1.0f / i6;
                        if (fArr2 == null || fArr2.length != length + 1) {
                            fArr2 = new float[length + 1];
                            gradientState.mTempPositions = fArr2;
                        }
                        float level3 = getLevel() / 10000.0f;
                        for (int i7 = 0; i7 < length; i7++) {
                            fArr2[i7] = i7 * f25 * level3;
                        }
                        fArr2[length] = 1.0f;
                        fArr = fArr2;
                        iArr = iArr2;
                    } else {
                        fArr = null;
                    }
                    this.mFillPaint.setShader(new SweepGradient(f22, f24, iArr, fArr));
                }
                if (gradientState.mSolidColors == null) {
                    this.mFillPaint.setColor(-16777216);
                }
            }
        }
        return !this.mRect.isEmpty();
    }

    private static float getFloatOrFraction(TypedArray typedArray, int i2, float f2) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        if (typedValuePeekValue != null) {
            return typedValuePeekValue.type == 6 ? typedValuePeekValue.getFraction(1.0f, 1.0f) : typedValuePeekValue.getFloat();
        }
        return f2;
    }

    private void inflateChildElements(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                String name = xmlPullParser.getName();
                if (name.equals(DumpHeapActivity.KEY_SIZE)) {
                    TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientDrawableSize);
                    updateGradientDrawableSize(typedArrayObtainAttributes);
                    typedArrayObtainAttributes.recycle();
                } else if (name.equals("gradient")) {
                    TypedArray typedArrayObtainAttributes2 = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientDrawableGradient);
                    updateGradientDrawableGradient(resources, typedArrayObtainAttributes2);
                    typedArrayObtainAttributes2.recycle();
                } else if (name.equals("solid")) {
                    TypedArray typedArrayObtainAttributes3 = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientDrawableSolid);
                    updateGradientDrawableSolid(typedArrayObtainAttributes3);
                    typedArrayObtainAttributes3.recycle();
                } else if (name.equals("stroke")) {
                    TypedArray typedArrayObtainAttributes4 = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientDrawableStroke);
                    updateGradientDrawableStroke(typedArrayObtainAttributes4);
                    typedArrayObtainAttributes4.recycle();
                } else if (name.equals("corners")) {
                    TypedArray typedArrayObtainAttributes5 = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.DrawableCorners);
                    updateDrawableCorners(typedArrayObtainAttributes5);
                    typedArrayObtainAttributes5.recycle();
                } else if (name.equals("padding")) {
                    TypedArray typedArrayObtainAttributes6 = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientDrawablePadding);
                    updateGradientDrawablePadding(typedArrayObtainAttributes6);
                    typedArrayObtainAttributes6.recycle();
                } else {
                    Log.w("drawable", "Bad element under <shape>: ".concat(name));
                }
            }
        }
    }

    public static boolean isOpaque(int i2) {
        return ((i2 >> 24) & 255) == 255;
    }

    private boolean isOpaqueForState() {
        Paint paint;
        if (this.mGradientState.mStrokeWidth < 0 || (paint = this.mStrokePaint) == null || isOpaque(paint.getColor())) {
            return this.mGradientState.mGradientColors != null || isOpaque(this.mFillPaint.getColor());
        }
        return false;
    }

    private int modulateAlpha(int i2) {
        int i3 = this.mAlpha;
        return ((i3 + (i3 >> 7)) * i2) >> 8;
    }

    private void setStrokeInternal(int i2, int i3, float f2, float f3) {
        if (this.mStrokePaint == null) {
            Paint paint = new Paint(1);
            this.mStrokePaint = paint;
            paint.setStyle(Paint.Style.STROKE);
        }
        this.mStrokePaint.setStrokeWidth(i2);
        this.mStrokePaint.setColor(i3);
        this.mStrokePaint.setPathEffect(f2 > 0.0f ? new DashPathEffect(new float[]{f2, f3}, 0.0f) : null);
        invalidateSelf();
    }

    private void updateDrawableCorners(TypedArray typedArray) {
        GradientState gradientState = this.mGradientState;
        gradientState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        gradientState.mAttrCorners = typedArray.extractThemeAttrs();
        int dimensionPixelSize = typedArray.getDimensionPixelSize(0, (int) gradientState.mRadius);
        setCornerRadius(dimensionPixelSize);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(1, dimensionPixelSize);
        int dimensionPixelSize3 = typedArray.getDimensionPixelSize(2, dimensionPixelSize);
        int dimensionPixelSize4 = typedArray.getDimensionPixelSize(3, dimensionPixelSize);
        int dimensionPixelSize5 = typedArray.getDimensionPixelSize(4, dimensionPixelSize);
        if (dimensionPixelSize2 == dimensionPixelSize && dimensionPixelSize3 == dimensionPixelSize && dimensionPixelSize4 == dimensionPixelSize && dimensionPixelSize5 == dimensionPixelSize) {
            return;
        }
        float f2 = dimensionPixelSize2;
        float f3 = dimensionPixelSize3;
        float f4 = dimensionPixelSize5;
        float f5 = dimensionPixelSize4;
        setCornerRadii(new float[]{f2, f2, f3, f3, f4, f4, f5, f5});
    }

    private void updateGradientDrawableGradient(Resources resources, TypedArray typedArray) throws XmlPullParserException {
        float dimension;
        GradientState gradientState = this.mGradientState;
        gradientState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        gradientState.mAttrGradient = typedArray.extractThemeAttrs();
        gradientState.mCenterX = getFloatOrFraction(typedArray, 5, gradientState.mCenterX);
        gradientState.mCenterY = getFloatOrFraction(typedArray, 6, gradientState.mCenterY);
        gradientState.mUseLevel = typedArray.getBoolean(2, gradientState.mUseLevel);
        gradientState.mGradient = typedArray.getInt(4, gradientState.mGradient);
        int i2 = 0;
        int color = typedArray.getColor(0, 0);
        boolean zHasValue = typedArray.hasValue(8);
        int color2 = typedArray.getColor(8, 0);
        int color3 = typedArray.getColor(1, 0);
        if (zHasValue) {
            gradientState.mGradientColors = new int[]{color, color2, color3};
            float[] fArr = new float[3];
            gradientState.mPositions = fArr;
            fArr[0] = 0.0f;
            float f2 = gradientState.mCenterX;
            if (f2 == 0.5f) {
                f2 = gradientState.mCenterY;
            }
            fArr[1] = f2;
            fArr[2] = 1.0f;
        } else {
            gradientState.mGradientColors = new int[]{color, color3};
        }
        if (gradientState.mGradient != 0) {
            TypedValue typedValuePeekValue = typedArray.peekValue(7);
            if (typedValuePeekValue == null) {
                if (gradientState.mGradient == 1) {
                    throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), "<gradient> tag requires 'gradientRadius' attribute with radial type"));
                }
                return;
            }
            int i3 = typedValuePeekValue.type;
            if (i3 == 6) {
                dimension = typedValuePeekValue.getFraction(1.0f, 1.0f);
                i2 = ((typedValuePeekValue.data >> 0) & 15) != 1 ? 1 : 2;
            } else {
                dimension = i3 == 5 ? typedValuePeekValue.getDimension(resources.getDisplayMetrics()) : typedValuePeekValue.getFloat();
            }
            gradientState.mGradientRadius = dimension;
            gradientState.mGradientRadiusType = i2;
            return;
        }
        int i4 = ((int) typedArray.getFloat(3, gradientState.mAngle)) % 360;
        if (i4 % 45 != 0) {
            throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), "<gradient> tag requires 'angle' attribute to be a multiple of 45"));
        }
        gradientState.mAngle = i4;
        if (i4 == 0) {
            gradientState.mOrientation = Orientation.LEFT_RIGHT;
            return;
        }
        if (i4 == 45) {
            gradientState.mOrientation = Orientation.BL_TR;
            return;
        }
        if (i4 == 90) {
            gradientState.mOrientation = Orientation.BOTTOM_TOP;
            return;
        }
        if (i4 == 135) {
            gradientState.mOrientation = Orientation.BR_TL;
            return;
        }
        if (i4 == 180) {
            gradientState.mOrientation = Orientation.RIGHT_LEFT;
            return;
        }
        if (i4 == 225) {
            gradientState.mOrientation = Orientation.TR_BL;
        } else if (i4 == 270) {
            gradientState.mOrientation = Orientation.TOP_BOTTOM;
        } else {
            if (i4 != 315) {
                return;
            }
            gradientState.mOrientation = Orientation.TL_BR;
        }
    }

    private void updateGradientDrawablePadding(TypedArray typedArray) {
        GradientState gradientState = this.mGradientState;
        gradientState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        gradientState.mAttrPadding = typedArray.extractThemeAttrs();
        if (gradientState.mPadding == null) {
            gradientState.mPadding = new Rect();
        }
        Rect rect = gradientState.mPadding;
        rect.set(typedArray.getDimensionPixelOffset(0, rect.left), typedArray.getDimensionPixelOffset(1, rect.top), typedArray.getDimensionPixelOffset(2, rect.right), typedArray.getDimensionPixelOffset(3, rect.bottom));
        this.mPadding = rect;
    }

    private void updateGradientDrawableSize(TypedArray typedArray) {
        GradientState gradientState = this.mGradientState;
        gradientState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        gradientState.mAttrSize = typedArray.extractThemeAttrs();
        gradientState.mWidth = typedArray.getDimensionPixelSize(1, gradientState.mWidth);
        gradientState.mHeight = typedArray.getDimensionPixelSize(0, gradientState.mHeight);
    }

    private void updateGradientDrawableSolid(TypedArray typedArray) {
        GradientState gradientState = this.mGradientState;
        gradientState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        gradientState.mAttrSolid = typedArray.extractThemeAttrs();
        ColorStateList colorStateList = typedArray.getColorStateList(0);
        if (colorStateList != null) {
            setColor(colorStateList);
        }
    }

    private void updateGradientDrawableStroke(TypedArray typedArray) {
        GradientState gradientState = this.mGradientState;
        gradientState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        gradientState.mAttrStroke = typedArray.extractThemeAttrs();
        int dimensionPixelSize = typedArray.getDimensionPixelSize(0, Math.max(0, gradientState.mStrokeWidth));
        float dimension = typedArray.getDimension(2, gradientState.mStrokeDashWidth);
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList == null) {
            colorStateList = gradientState.mStrokeColors;
        }
        if (dimension != 0.0f) {
            setStroke(dimensionPixelSize, colorStateList, dimension, typedArray.getDimension(3, gradientState.mStrokeDashGap));
        } else {
            setStroke(dimensionPixelSize, colorStateList);
        }
    }

    private void updateLocalState(Resources resources) {
        GradientState gradientState = this.mGradientState;
        if (gradientState.mSolidColors != null) {
            this.mFillPaint.setColor(gradientState.mSolidColors.getColorForState(getState(), 0));
        } else if (gradientState.mGradientColors == null) {
            this.mFillPaint.setColor(0);
        } else {
            this.mFillPaint.setColor(-16777216);
        }
        this.mPadding = gradientState.mPadding;
        if (gradientState.mStrokeWidth >= 0) {
            Paint paint = new Paint(1);
            this.mStrokePaint = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.mStrokePaint.setStrokeWidth(gradientState.mStrokeWidth);
            if (gradientState.mStrokeColors != null) {
                this.mStrokePaint.setColor(gradientState.mStrokeColors.getColorForState(getState(), 0));
            }
            float f2 = gradientState.mStrokeDashWidth;
            if (f2 != 0.0f) {
                this.mStrokePaint.setPathEffect(new DashPathEffect(new float[]{f2, gradientState.mStrokeDashGap}, 0.0f));
            }
        }
        this.mTintFilter = updateTintFilter(this.mTintFilter, gradientState.mTint, gradientState.mTintMode);
        this.mGradientIsDirty = true;
        gradientState.computeOpacity();
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        GradientState gradientState = this.mGradientState;
        gradientState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        gradientState.mThemeAttrs = typedArray.extractThemeAttrs();
        gradientState.mShape = typedArray.getInt(3, gradientState.mShape);
        gradientState.mDither = typedArray.getBoolean(0, gradientState.mDither);
        if (gradientState.mShape == 3) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(7, gradientState.mInnerRadius);
            gradientState.mInnerRadius = dimensionPixelSize;
            if (dimensionPixelSize == -1) {
                gradientState.mInnerRadiusRatio = typedArray.getFloat(4, gradientState.mInnerRadiusRatio);
            }
            int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, gradientState.mThickness);
            gradientState.mThickness = dimensionPixelSize2;
            if (dimensionPixelSize2 == -1) {
                gradientState.mThicknessRatio = typedArray.getFloat(5, gradientState.mThicknessRatio);
            }
            gradientState.mUseLevelForShape = typedArray.getBoolean(6, gradientState.mUseLevelForShape);
        }
        int i2 = typedArray.getInt(9, -1);
        if (i2 != -1) {
            gradientState.mTintMode = Drawable.parseTintMode(i2, PorterDuff.Mode.SRC_IN);
        }
        ColorStateList colorStateList = typedArray.getColorStateList(1);
        if (colorStateList != null) {
            gradientState.mTint = colorStateList;
        }
        gradientState.mOpticalInsets = Insets.of(typedArray.getDimensionPixelSize(11, gradientState.mOpticalInsets.left), typedArray.getDimensionPixelSize(13, gradientState.mOpticalInsets.top), typedArray.getDimensionPixelSize(12, gradientState.mOpticalInsets.right), typedArray.getDimensionPixelSize(10, gradientState.mOpticalInsets.bottom));
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        GradientState gradientState = this.mGradientState;
        if (gradientState == null) {
            return;
        }
        gradientState.setDensity(Drawable.resolveDensity(theme.getResources(), 0));
        int[] iArr = gradientState.mThemeAttrs;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.GradientDrawable);
            updateStateFromTypedArray(typedArrayResolveAttributes);
            typedArrayResolveAttributes.recycle();
        }
        ColorStateList colorStateList = gradientState.mTint;
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            gradientState.mTint = gradientState.mTint.obtainForTheme(theme);
        }
        ColorStateList colorStateList2 = gradientState.mSolidColors;
        if (colorStateList2 != null && colorStateList2.canApplyTheme()) {
            gradientState.mSolidColors = gradientState.mSolidColors.obtainForTheme(theme);
        }
        ColorStateList colorStateList3 = gradientState.mStrokeColors;
        if (colorStateList3 != null && colorStateList3.canApplyTheme()) {
            gradientState.mStrokeColors = gradientState.mStrokeColors.obtainForTheme(theme);
        }
        applyThemeChildElements(theme);
        updateLocalState(theme.getResources());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        GradientState gradientState = this.mGradientState;
        return (gradientState != null && gradientState.canApplyTheme()) || super.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        if (ensureValidRect()) {
            int alpha = this.mFillPaint.getAlpha();
            Paint paint2 = this.mStrokePaint;
            int alpha2 = paint2 != null ? paint2.getAlpha() : 0;
            int iModulateAlpha = modulateAlpha(alpha);
            int iModulateAlpha2 = modulateAlpha(alpha2);
            boolean z2 = iModulateAlpha2 > 0 && (paint = this.mStrokePaint) != null && paint.getStrokeWidth() > 0.0f;
            boolean z3 = iModulateAlpha > 0;
            GradientState gradientState = this.mGradientState;
            ColorFilter colorFilter = this.mColorFilter;
            if (colorFilter == null) {
                colorFilter = this.mTintFilter;
            }
            ColorFilter colorFilter2 = colorFilter;
            boolean z4 = z2 && z3 && gradientState.mShape != 2 && iModulateAlpha2 < 255 && (this.mAlpha < 255 || colorFilter2 != null);
            if (z4) {
                if (this.mLayerPaint == null) {
                    this.mLayerPaint = new Paint();
                }
                this.mLayerPaint.setDither(gradientState.mDither);
                this.mLayerPaint.setAlpha(this.mAlpha);
                this.mLayerPaint.setColorFilter(colorFilter2);
                float strokeWidth = this.mStrokePaint.getStrokeWidth();
                RectF rectF = this.mRect;
                canvas.saveLayer(rectF.left - strokeWidth, rectF.top - strokeWidth, rectF.right + strokeWidth, rectF.bottom + strokeWidth, this.mLayerPaint);
                this.mFillPaint.setColorFilter(null);
                this.mStrokePaint.setColorFilter(null);
            } else {
                this.mFillPaint.setAlpha(iModulateAlpha);
                this.mFillPaint.setDither(gradientState.mDither);
                this.mFillPaint.setColorFilter(colorFilter2);
                if (colorFilter2 != null && gradientState.mSolidColors == null) {
                    this.mFillPaint.setColor(this.mAlpha << 24);
                }
                if (z2) {
                    this.mStrokePaint.setAlpha(iModulateAlpha2);
                    this.mStrokePaint.setDither(gradientState.mDither);
                    this.mStrokePaint.setColorFilter(colorFilter2);
                }
            }
            int i2 = gradientState.mShape;
            if (i2 != 0) {
                if (i2 == 1) {
                    canvas.drawOval(this.mRect, this.mFillPaint);
                    if (z2) {
                        canvas.drawOval(this.mRect, this.mStrokePaint);
                    }
                } else if (i2 == 2) {
                    RectF rectF2 = this.mRect;
                    float fCenterY = rectF2.centerY();
                    if (z2) {
                        canvas.drawLine(rectF2.left, fCenterY, rectF2.right, fCenterY, this.mStrokePaint);
                    }
                } else if (i2 == 3) {
                    Path pathBuildRing = buildRing(gradientState);
                    canvas.drawPath(pathBuildRing, this.mFillPaint);
                    if (z2) {
                        canvas.drawPath(pathBuildRing, this.mStrokePaint);
                    }
                }
            } else if (gradientState.mRadiusArray != null) {
                buildPathIfDirty();
                canvas.drawPath(this.mPath, this.mFillPaint);
                if (z2) {
                    canvas.drawPath(this.mPath, this.mStrokePaint);
                }
            } else {
                float f2 = gradientState.mRadius;
                if (f2 > 0.0f) {
                    float fMin = Math.min(f2, Math.min(this.mRect.width(), this.mRect.height()) * 0.5f);
                    canvas.drawRoundRect(this.mRect, fMin, fMin, this.mFillPaint);
                    if (z2) {
                        canvas.drawRoundRect(this.mRect, fMin, fMin, this.mStrokePaint);
                    }
                } else {
                    if (this.mFillPaint.getColor() != 0 || colorFilter2 != null || this.mFillPaint.getShader() != null) {
                        canvas.drawRect(this.mRect, this.mFillPaint);
                    }
                    if (z2) {
                        canvas.drawRect(this.mRect, this.mStrokePaint);
                    }
                }
            }
            if (z4) {
                canvas.restore();
                return;
            }
            this.mFillPaint.setAlpha(alpha);
            if (z2) {
                this.mStrokePaint.setAlpha(alpha2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mAlpha;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mGradientState.getChangingConfigurations();
    }

    public ColorStateList getColor() {
        return this.mGradientState.mSolidColors;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mColorFilter;
    }

    public int[] getColors() {
        int[] iArr = this.mGradientState.mGradientColors;
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.mGradientState.mChangingConfigurations = getChangingConfigurations();
        return this.mGradientState;
    }

    public float[] getCornerRadii() {
        return (float[]) this.mGradientState.mRadiusArray.clone();
    }

    public float getCornerRadius() {
        return this.mGradientState.mRadius;
    }

    public float getGradientCenterX() {
        return this.mGradientState.mCenterX;
    }

    public float getGradientCenterY() {
        return this.mGradientState.mCenterY;
    }

    public float getGradientRadius() {
        if (this.mGradientState.mGradient != 1) {
            return 0.0f;
        }
        ensureValidRect();
        return this.mGradientRadius;
    }

    public int getGradientType() {
        return this.mGradientState.mGradient;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mGradientState.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mGradientState.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (this.mAlpha == 255 && this.mGradientState.mOpaqueOverBounds && isOpaqueForState()) ? -1 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        return this.mGradientState.mOpticalInsets;
    }

    public Orientation getOrientation() {
        return this.mGradientState.mOrientation;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Paint paint;
        GradientState gradientState = this.mGradientState;
        Rect bounds = getBounds();
        outline.setAlpha(gradientState.mOpaqueOverShape && (this.mGradientState.mStrokeWidth <= 0 || (paint = this.mStrokePaint) == null || paint.getAlpha() == this.mFillPaint.getAlpha()) ? modulateAlpha(this.mFillPaint.getAlpha()) / 255.0f : 0.0f);
        int i2 = gradientState.mShape;
        if (i2 == 0) {
            if (gradientState.mRadiusArray != null) {
                buildPathIfDirty();
                outline.setConvexPath(this.mPath);
                return;
            } else {
                float f2 = gradientState.mRadius;
                outline.setRoundRect(bounds, f2 > 0.0f ? Math.min(f2, Math.min(bounds.width(), bounds.height()) * 0.5f) : 0.0f);
                return;
            }
        }
        if (i2 == 1) {
            outline.setOval(bounds);
        } else {
            if (i2 != 2) {
                return;
            }
            Paint paint2 = this.mStrokePaint;
            float strokeWidth = paint2 == null ? 1.0E-4f : paint2.getStrokeWidth() * 0.5f;
            float fCenterY = bounds.centerY();
            outline.setRect(bounds.left, (int) Math.floor(fCenterY - strokeWidth), bounds.right, (int) Math.ceil(fCenterY + strokeWidth));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.mPadding;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public int getShape() {
        return this.mGradientState.mShape;
    }

    public boolean getUseLevel() {
        return this.mGradientState.mUseLevel;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        GradientState gradientState = this.mGradientState;
        ColorStateList colorStateList3 = gradientState.mSolidColors;
        return (colorStateList3 != null && colorStateList3.hasFocusStateSpecified()) || ((colorStateList = gradientState.mStrokeColors) != null && colorStateList.hasFocusStateSpecified()) || ((colorStateList2 = gradientState.mTint) != null && colorStateList2.hasFocusStateSpecified());
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        this.mGradientState.setDensity(Drawable.resolveDensity(resources, 0));
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientDrawable);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        inflateChildElements(resources, xmlPullParser, attributeSet, theme);
        updateLocalState(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        GradientState gradientState = this.mGradientState;
        return super.isStateful() || ((colorStateList = gradientState.mSolidColors) != null && colorStateList.isStateful()) || (((colorStateList2 = gradientState.mStrokeColors) != null && colorStateList2.isStateful()) || ((colorStateList3 = gradientState.mTint) != null && colorStateList3.isStateful()));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mGradientState = new GradientState(this.mGradientState, (Resources) null);
            updateLocalState(null);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mRingPath = null;
        this.mPathIsDirty = true;
        this.mGradientIsDirty = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        super.onLevelChange(i2);
        this.mGradientIsDirty = true;
        this.mPathIsDirty = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z2;
        PorterDuff.Mode mode;
        ColorStateList colorStateList;
        int colorForState;
        int colorForState2;
        GradientState gradientState = this.mGradientState;
        ColorStateList colorStateList2 = gradientState.mSolidColors;
        if (colorStateList2 == null || this.mFillPaint.getColor() == (colorForState2 = colorStateList2.getColorForState(iArr, 0))) {
            z2 = false;
        } else {
            this.mFillPaint.setColor(colorForState2);
            z2 = true;
        }
        Paint paint = this.mStrokePaint;
        if (paint != null && (colorStateList = gradientState.mStrokeColors) != null && paint.getColor() != (colorForState = colorStateList.getColorForState(iArr, 0))) {
            paint.setColor(colorForState);
            z2 = true;
        }
        ColorStateList colorStateList3 = gradientState.mTint;
        if (colorStateList3 != null && (mode = gradientState.mTintMode) != null) {
            this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList3, mode);
            z2 = true;
        }
        if (!z2) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.mAlpha) {
            this.mAlpha = i2;
            invalidateSelf();
        }
    }

    public void setColor(int i2) {
        this.mGradientState.setSolidColors(ColorStateList.valueOf(i2));
        this.mFillPaint.setColor(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter != this.mColorFilter) {
            this.mColorFilter = colorFilter;
            invalidateSelf();
        }
    }

    public void setColors(int[] iArr) {
        this.mGradientState.setGradientColors(iArr);
        this.mGradientIsDirty = true;
        invalidateSelf();
    }

    public void setCornerRadii(float[] fArr) {
        this.mGradientState.setCornerRadii(fArr);
        this.mPathIsDirty = true;
        invalidateSelf();
    }

    public void setCornerRadius(float f2) {
        this.mGradientState.setCornerRadius(f2);
        this.mPathIsDirty = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        GradientState gradientState = this.mGradientState;
        if (z2 != gradientState.mDither) {
            gradientState.mDither = z2;
            invalidateSelf();
        }
    }

    public void setGradientCenter(float f2, float f3) {
        this.mGradientState.setGradientCenter(f2, f3);
        this.mGradientIsDirty = true;
        invalidateSelf();
    }

    public void setGradientRadius(float f2) {
        this.mGradientState.setGradientRadius(f2, 0);
        this.mGradientIsDirty = true;
        invalidateSelf();
    }

    public void setGradientType(int i2) {
        this.mGradientState.setGradientType(i2);
        this.mGradientIsDirty = true;
        invalidateSelf();
    }

    public void setOrientation(Orientation orientation) {
        this.mGradientState.mOrientation = orientation;
        this.mGradientIsDirty = true;
        invalidateSelf();
    }

    public void setShape(int i2) {
        this.mRingPath = null;
        this.mPathIsDirty = true;
        this.mGradientState.setShape(i2);
        invalidateSelf();
    }

    public void setSize(int i2, int i3) {
        this.mGradientState.setSize(i2, i3);
        this.mPathIsDirty = true;
        invalidateSelf();
    }

    public void setStroke(int i2, int i3) {
        setStroke(i2, i3, 0.0f, 0.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        GradientState gradientState = this.mGradientState;
        gradientState.mTint = colorStateList;
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, gradientState.mTintMode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        GradientState gradientState = this.mGradientState;
        gradientState.mTintMode = mode;
        this.mTintFilter = updateTintFilter(this.mTintFilter, gradientState.mTint, mode);
        invalidateSelf();
    }

    public void setUseLevel(boolean z2) {
        this.mGradientState.mUseLevel = z2;
        this.mGradientIsDirty = true;
        invalidateSelf();
    }

    public GradientDrawable() {
        this(new GradientState(Orientation.TOP_BOTTOM, (int[]) null), (Resources) null);
    }

    public void setStroke(int i2, ColorStateList colorStateList) {
        setStroke(i2, colorStateList, 0.0f, 0.0f);
    }

    public GradientDrawable(Orientation orientation, int[] iArr) {
        this(new GradientState(orientation, iArr), (Resources) null);
    }

    public void setStroke(int i2, int i3, float f2, float f3) {
        this.mGradientState.setStroke(i2, ColorStateList.valueOf(i3), f2, f3);
        setStrokeInternal(i2, i3, f2, f3);
    }

    private GradientDrawable(GradientState gradientState, Resources resources) {
        this.mFillPaint = new Paint(1);
        this.mAlpha = 255;
        this.mPath = new Path();
        this.mRect = new RectF();
        this.mPathIsDirty = true;
        this.mGradientState = gradientState;
        updateLocalState(resources);
    }

    public void setColor(ColorStateList colorStateList) {
        this.mGradientState.setSolidColors(colorStateList);
        this.mFillPaint.setColor(colorStateList != null ? colorStateList.getColorForState(getState(), 0) : 0);
        invalidateSelf();
    }

    public void setStroke(int i2, ColorStateList colorStateList, float f2, float f3) {
        this.mGradientState.setStroke(i2, colorStateList, f2, f3);
        setStrokeInternal(i2, colorStateList != null ? colorStateList.getColorForState(getState(), 0) : 0, f2, f3);
    }
}
