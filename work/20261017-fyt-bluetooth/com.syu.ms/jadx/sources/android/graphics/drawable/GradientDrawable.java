package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.media.videoeditor.MediaProperties;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import i.a;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class GradientDrawable extends Drawable {
    public static final int LINE = 2;
    public static final int LINEAR_GRADIENT = 0;
    public static final int OVAL = 1;
    public static final int RADIAL_GRADIENT = 1;
    public static final int RECTANGLE = 0;
    public static final int RING = 3;
    public static final int SWEEP_GRADIENT = 2;
    private int mAlpha;
    private ColorFilter mColorFilter;
    private boolean mDither;
    private final Paint mFillPaint;
    private GradientState mGradientState;
    private Paint mLayerPaint;
    private boolean mMutated;
    private Rect mPadding;
    private final Path mPath;
    private boolean mPathIsDirty;
    private final RectF mRect;
    private boolean mRectIsDirty;
    private Path mRingPath;
    private Paint mStrokePaint;

    /* JADX INFO: renamed from: android.graphics.drawable.GradientDrawable$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$drawable$GradientDrawable$Orientation;

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
        private float mCenterX;
        private float mCenterY;
        public int mChangingConfigurations;
        public int[] mColors;
        public int mGradient;
        private float mGradientRadius;
        public boolean mHasSolidColor;
        public int mHeight;
        public int mInnerRadius;
        public float mInnerRadiusRatio;
        private boolean mOpaque;
        public Orientation mOrientation;
        public Rect mPadding;
        public float[] mPositions;
        public float mRadius;
        public float[] mRadiusArray;
        public int mShape;
        public int mSolidColor;
        public int mStrokeColor;
        public float mStrokeDashGap;
        public float mStrokeDashWidth;
        public int mStrokeWidth;
        public int[] mTempColors;
        public float[] mTempPositions;
        public int mThickness;
        public float mThicknessRatio;
        private boolean mUseLevel;
        private boolean mUseLevelForShape;
        public int mWidth;

        public GradientState(Orientation orientation, int[] iArr) {
            this.mShape = 0;
            this.mGradient = 0;
            this.mStrokeWidth = -1;
            this.mWidth = -1;
            this.mHeight = -1;
            this.mCenterX = 0.5f;
            this.mCenterY = 0.5f;
            this.mGradientRadius = 0.5f;
            this.mOrientation = orientation;
            setColors(iArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void computeOpacity() {
            if (this.mShape != 0) {
                this.mOpaque = false;
                return;
            }
            if (this.mRadius > 0.0f || this.mRadiusArray != null) {
                this.mOpaque = false;
                return;
            }
            if (this.mStrokeWidth > 0 && !isOpaque(this.mStrokeColor)) {
                this.mOpaque = false;
                return;
            }
            if (this.mHasSolidColor) {
                this.mOpaque = isOpaque(this.mSolidColor);
                return;
            }
            if (this.mColors != null) {
                int i2 = 0;
                while (true) {
                    int[] iArr = this.mColors;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    if (!isOpaque(iArr[i2])) {
                        this.mOpaque = false;
                        return;
                    }
                    i2++;
                }
            }
            this.mOpaque = true;
        }

        private static boolean isOpaque(int i2) {
            return ((i2 >> 24) & 255) == 255;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new GradientDrawable(this, (AnonymousClass1) null);
        }

        public void setColors(int[] iArr) {
            this.mHasSolidColor = false;
            this.mColors = iArr;
            computeOpacity();
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

        public void setGradientCenter(float f2, float f3) {
            this.mCenterX = f2;
            this.mCenterY = f3;
        }

        public void setGradientRadius(float f2) {
            this.mGradientRadius = f2;
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

        public void setSolidColor(int i2) {
            this.mHasSolidColor = true;
            this.mSolidColor = i2;
            this.mColors = null;
            computeOpacity();
        }

        public void setStroke(int i2, int i3) {
            this.mStrokeWidth = i2;
            this.mStrokeColor = i3;
            computeOpacity();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new GradientDrawable(this, (AnonymousClass1) null);
        }

        public void setStroke(int i2, int i3, float f2, float f3) {
            this.mStrokeWidth = i2;
            this.mStrokeColor = i3;
            this.mStrokeDashWidth = f2;
            this.mStrokeDashGap = f3;
            computeOpacity();
        }

        public GradientState(GradientState gradientState) {
            this.mShape = 0;
            this.mGradient = 0;
            this.mStrokeWidth = -1;
            this.mWidth = -1;
            this.mHeight = -1;
            this.mCenterX = 0.5f;
            this.mCenterY = 0.5f;
            this.mGradientRadius = 0.5f;
            this.mChangingConfigurations = gradientState.mChangingConfigurations;
            this.mShape = gradientState.mShape;
            this.mGradient = gradientState.mGradient;
            this.mOrientation = gradientState.mOrientation;
            int[] iArr = gradientState.mColors;
            if (iArr != null) {
                this.mColors = (int[]) iArr.clone();
            }
            float[] fArr = gradientState.mPositions;
            if (fArr != null) {
                this.mPositions = (float[]) fArr.clone();
            }
            this.mHasSolidColor = gradientState.mHasSolidColor;
            this.mSolidColor = gradientState.mSolidColor;
            this.mStrokeWidth = gradientState.mStrokeWidth;
            this.mStrokeColor = gradientState.mStrokeColor;
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
            this.mCenterX = gradientState.mCenterX;
            this.mCenterY = gradientState.mCenterY;
            this.mGradientRadius = gradientState.mGradientRadius;
            this.mUseLevel = gradientState.mUseLevel;
            this.mUseLevelForShape = gradientState.mUseLevelForShape;
            this.mOpaque = gradientState.mOpaque;
        }
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

    public /* synthetic */ GradientDrawable(GradientState gradientState, AnonymousClass1 anonymousClass1) {
        this(gradientState);
    }

    private Path buildRing(GradientState gradientState) {
        if (this.mRingPath != null && (!gradientState.mUseLevelForShape || !this.mPathIsDirty)) {
            return this.mRingPath;
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
        Path path = this.mRingPath;
        if (path == null) {
            this.mRingPath = new Path();
        } else {
            path.reset();
        }
        Path path2 = this.mRingPath;
        if (level >= 360.0f || level <= -360.0f) {
            path2.addOval(rectF3, Path.Direction.CW);
            path2.addOval(rectF2, Path.Direction.CCW);
        } else {
            path2.setFillType(Path.FillType.EVEN_ODD);
            float f3 = fWidth + fWidth3;
            path2.moveTo(f3, fHeight);
            path2.lineTo(f3 + fWidth2, fHeight);
            path2.arcTo(rectF3, 0.0f, level, false);
            path2.arcTo(rectF2, level, -level, false);
            path2.close();
        }
        return path2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0057. Please report as an issue. */
    private boolean ensureValidRect() {
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
        if (this.mRectIsDirty) {
            this.mRectIsDirty = false;
            Rect bounds = getBounds();
            Paint paint = this.mStrokePaint;
            float strokeWidth = paint != null ? paint.getStrokeWidth() * 0.5f : 0.0f;
            GradientState gradientState = this.mGradientState;
            this.mRect.set(bounds.left + strokeWidth, bounds.top + strokeWidth, bounds.right - strokeWidth, bounds.bottom - strokeWidth);
            int[] iArr = gradientState.mColors;
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
                    float f18 = f17 + ((rectF.right - f17) * gradientState.mCenterX);
                    float f19 = rectF.top;
                    this.mFillPaint.setShader(new RadialGradient(f18, f19 + ((rectF.bottom - f19) * gradientState.mCenterY), (gradientState.mUseLevel ? getLevel() / 10000.0f : 1.0f) * gradientState.mGradientRadius, iArr, (float[]) null, Shader.TileMode.CLAMP));
                } else if (i2 == 2) {
                    float f20 = rectF.left;
                    float f21 = f20 + ((rectF.right - f20) * gradientState.mCenterX);
                    float f22 = rectF.top;
                    float f23 = f22 + ((rectF.bottom - f22) * gradientState.mCenterY);
                    float[] fArr = null;
                    if (gradientState.mUseLevel) {
                        int[] iArr2 = gradientState.mTempColors;
                        int length = iArr.length;
                        if (iArr2 == null || iArr2.length != length + 1) {
                            iArr2 = new int[length + 1];
                            gradientState.mTempColors = iArr2;
                        }
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                        int i3 = length - 1;
                        iArr2[length] = iArr[i3];
                        float[] fArr2 = gradientState.mTempPositions;
                        float f24 = 1.0f / i3;
                        if (fArr2 == null || fArr2.length != length + 1) {
                            fArr2 = new float[length + 1];
                            gradientState.mTempPositions = fArr2;
                        }
                        float level2 = getLevel() / 10000.0f;
                        for (int i4 = 0; i4 < length; i4++) {
                            fArr2[i4] = i4 * f24 * level2;
                        }
                        fArr2[length] = 1.0f;
                        int[] iArr3 = iArr2;
                        fArr = fArr2;
                        iArr = iArr3;
                    }
                    this.mFillPaint.setShader(new SweepGradient(f21, f23, iArr, fArr));
                }
                if (!gradientState.mHasSolidColor) {
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

    private void initializeWithState(GradientState gradientState) {
        if (gradientState.mHasSolidColor) {
            this.mFillPaint.setColor(gradientState.mSolidColor);
        } else if (gradientState.mColors == null) {
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
            this.mStrokePaint.setColor(gradientState.mStrokeColor);
            float f2 = gradientState.mStrokeDashWidth;
            if (f2 != 0.0f) {
                this.mStrokePaint.setPathEffect(new DashPathEffect(new float[]{f2, gradientState.mStrokeDashGap}, 0.0f));
            }
        }
    }

    private int modulateAlpha(int i2) {
        int i3 = this.mAlpha;
        return (i2 * (i3 + (i3 >> 7))) >> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i2;
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
            boolean z4 = z2 && z3 && gradientState.mShape != 2 && iModulateAlpha2 < 255 && (this.mAlpha < 255 || this.mColorFilter != null);
            if (z4) {
                if (this.mLayerPaint == null) {
                    this.mLayerPaint = new Paint();
                }
                this.mLayerPaint.setDither(this.mDither);
                this.mLayerPaint.setAlpha(this.mAlpha);
                this.mLayerPaint.setColorFilter(this.mColorFilter);
                float strokeWidth = this.mStrokePaint.getStrokeWidth();
                RectF rectF = this.mRect;
                i2 = 2;
                canvas.saveLayer(rectF.left - strokeWidth, rectF.top - strokeWidth, rectF.right + strokeWidth, rectF.bottom + strokeWidth, this.mLayerPaint, 4);
                this.mFillPaint.setColorFilter(null);
                this.mStrokePaint.setColorFilter(null);
            } else {
                i2 = 2;
                this.mFillPaint.setAlpha(iModulateAlpha);
                this.mFillPaint.setDither(this.mDither);
                this.mFillPaint.setColorFilter(this.mColorFilter);
                if (this.mColorFilter != null && !this.mGradientState.mHasSolidColor) {
                    this.mFillPaint.setColor(this.mAlpha << 24);
                }
                if (z2) {
                    this.mStrokePaint.setAlpha(iModulateAlpha2);
                    this.mStrokePaint.setDither(this.mDither);
                    this.mStrokePaint.setColorFilter(this.mColorFilter);
                }
            }
            int i3 = gradientState.mShape;
            if (i3 != 0) {
                if (i3 == 1) {
                    canvas.drawOval(this.mRect, this.mFillPaint);
                    if (z2) {
                        canvas.drawOval(this.mRect, this.mStrokePaint);
                    }
                } else if (i3 == i2) {
                    RectF rectF2 = this.mRect;
                    float fCenterY = rectF2.centerY();
                    canvas.drawLine(rectF2.left, fCenterY, rectF2.right, fCenterY, this.mStrokePaint);
                } else if (i3 == 3) {
                    Path pathBuildRing = buildRing(gradientState);
                    canvas.drawPath(pathBuildRing, this.mFillPaint);
                    if (z2) {
                        canvas.drawPath(pathBuildRing, this.mStrokePaint);
                    }
                }
            } else if (gradientState.mRadiusArray != null) {
                if (this.mPathIsDirty || this.mRectIsDirty) {
                    this.mPath.reset();
                    this.mPath.addRoundRect(this.mRect, gradientState.mRadiusArray, Path.Direction.CW);
                    this.mRectIsDirty = false;
                    this.mPathIsDirty = false;
                }
                canvas.drawPath(this.mPath, this.mFillPaint);
                if (z2) {
                    canvas.drawPath(this.mPath, this.mStrokePaint);
                }
            } else {
                float f2 = gradientState.mRadius;
                if (f2 > 0.0f) {
                    float fMin = Math.min(this.mRect.width(), this.mRect.height()) * 0.5f;
                    if (f2 > fMin) {
                        f2 = fMin;
                    }
                    canvas.drawRoundRect(this.mRect, f2, f2, this.mFillPaint);
                    if (z2) {
                        canvas.drawRoundRect(this.mRect, f2, f2, this.mStrokePaint);
                    }
                } else {
                    if (this.mFillPaint.getColor() != 0 || this.mColorFilter != null || this.mFillPaint.getShader() != null) {
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
        return super.getChangingConfigurations() | this.mGradientState.mChangingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.mGradientState.mChangingConfigurations = getChangingConfigurations();
        return this.mGradientState;
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
        return this.mGradientState.mOpaque ? -1 : -3;
    }

    public Orientation getOrientation() {
        return this.mGradientState.mOrientation;
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

    /* JADX WARN: Code duplicated, block: B:72:0x0174  */
    /* JADX WARN: Code duplicated, block: B:74:0x018f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0194  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a2  */
    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth;
        int i2;
        int i3;
        char c2;
        float f2;
        GradientState gradientState = this.mGradientState;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.GradientDrawable);
        int i4 = 1;
        super.inflateWithAttributes(resources, xmlPullParser, typedArrayObtainAttributes, 1);
        int i5 = typedArrayObtainAttributes.getInt(2, 0);
        boolean z2 = typedArrayObtainAttributes.getBoolean(0, false);
        int i6 = 5;
        int i7 = 4;
        int i8 = -1;
        int i9 = 3;
        if (i5 == 3) {
            int dimensionPixelSize = typedArrayObtainAttributes.getDimensionPixelSize(6, -1);
            gradientState.mInnerRadius = dimensionPixelSize;
            if (dimensionPixelSize == -1) {
                gradientState.mInnerRadiusRatio = typedArrayObtainAttributes.getFloat(3, 3.0f);
            }
            int dimensionPixelSize2 = typedArrayObtainAttributes.getDimensionPixelSize(7, -1);
            gradientState.mThickness = dimensionPixelSize2;
            if (dimensionPixelSize2 == -1) {
                gradientState.mThicknessRatio = typedArrayObtainAttributes.getFloat(4, 9.0f);
            }
            gradientState.mUseLevelForShape = typedArrayObtainAttributes.getBoolean(5, true);
        }
        typedArrayObtainAttributes.recycle();
        setShape(i5);
        setDither(z2);
        int depth2 = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i4 || ((depth = xmlPullParser.getDepth()) < depth2 && next == i9)) {
                break;
            }
            if (next == 2 && depth <= depth2) {
                String name = xmlPullParser.getName();
                if (name.equals("size")) {
                    TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, a.GradientDrawableSize);
                    int dimensionPixelSize3 = typedArrayObtainAttributes2.getDimensionPixelSize(i4, i8);
                    int dimensionPixelSize4 = typedArrayObtainAttributes2.getDimensionPixelSize(0, i8);
                    typedArrayObtainAttributes2.recycle();
                    setSize(dimensionPixelSize3, dimensionPixelSize4);
                    i3 = i4;
                    i2 = i9;
                } else {
                    if (name.equals("gradient")) {
                        TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(attributeSet, a.GradientDrawableGradient);
                        int color = typedArrayObtainAttributes3.getColor(0, 0);
                        boolean zHasValue = typedArrayObtainAttributes3.hasValue(8);
                        int color2 = typedArrayObtainAttributes3.getColor(8, 0);
                        int color3 = typedArrayObtainAttributes3.getColor(i4, 0);
                        int i10 = typedArrayObtainAttributes3.getInt(i7, 0);
                        gradientState.mCenterX = getFloatOrFraction(typedArrayObtainAttributes3, i6, 0.5f);
                        gradientState.mCenterY = getFloatOrFraction(typedArrayObtainAttributes3, 6, 0.5f);
                        gradientState.mUseLevel = typedArrayObtainAttributes3.getBoolean(2, false);
                        gradientState.mGradient = i10;
                        if (i10 == 0) {
                            int i11 = ((int) typedArrayObtainAttributes3.getFloat(3, 0.0f)) % MediaProperties.HEIGHT_360;
                            if (i11 % 45 != 0) {
                                throw new XmlPullParserException(typedArrayObtainAttributes3.getPositionDescription() + "<gradient> tag requires 'angle' attribute to be a multiple of 45");
                            }
                            if (i11 == 0) {
                                gradientState.mOrientation = Orientation.LEFT_RIGHT;
                            } else if (i11 == 45) {
                                gradientState.mOrientation = Orientation.BL_TR;
                            } else if (i11 == 90) {
                                gradientState.mOrientation = Orientation.BOTTOM_TOP;
                            } else if (i11 == 135) {
                                gradientState.mOrientation = Orientation.BR_TL;
                            } else if (i11 == 180) {
                                gradientState.mOrientation = Orientation.RIGHT_LEFT;
                            } else if (i11 == 225) {
                                gradientState.mOrientation = Orientation.TR_BL;
                            } else if (i11 == 270) {
                                gradientState.mOrientation = Orientation.TOP_BOTTOM;
                            } else if (i11 == 315) {
                                gradientState.mOrientation = Orientation.TL_BR;
                            }
                        } else {
                            TypedValue typedValuePeekValue = typedArrayObtainAttributes3.peekValue(7);
                            if (typedValuePeekValue != null) {
                                gradientState.mGradientRadius = typedValuePeekValue.type == 6 ? typedValuePeekValue.getFraction(1.0f, 1.0f) : typedValuePeekValue.getFloat();
                            } else {
                                c2 = 1;
                                if (i10 == 1) {
                                    throw new XmlPullParserException(typedArrayObtainAttributes3.getPositionDescription() + "<gradient> tag requires 'gradientRadius' attribute with radial type");
                                }
                            }
                            typedArrayObtainAttributes3.recycle();
                            if (zHasValue) {
                                int[] iArr = new int[3];
                                gradientState.mColors = iArr;
                                iArr[0] = color;
                                iArr[c2] = color2;
                                iArr[2] = color3;
                                float[] fArr = new float[3];
                                gradientState.mPositions = fArr;
                                fArr[0] = 0.0f;
                                if (gradientState.mCenterX != 0.5f) {
                                    f2 = gradientState.mCenterX;
                                } else {
                                    f2 = gradientState.mCenterY;
                                }
                                fArr[1] = f2;
                                gradientState.mPositions[2] = 1.0f;
                            } else {
                                int[] iArr2 = new int[2];
                                gradientState.mColors = iArr2;
                                iArr2[0] = color;
                                iArr2[c2] = color3;
                            }
                        }
                        c2 = 1;
                        typedArrayObtainAttributes3.recycle();
                        if (zHasValue) {
                            int[] iArr3 = new int[3];
                            gradientState.mColors = iArr3;
                            iArr3[0] = color;
                            iArr3[c2] = color2;
                            iArr3[2] = color3;
                            float[] fArr2 = new float[3];
                            gradientState.mPositions = fArr2;
                            fArr2[0] = 0.0f;
                            if (gradientState.mCenterX != 0.5f) {
                                f2 = gradientState.mCenterX;
                            } else {
                                f2 = gradientState.mCenterY;
                            }
                            fArr2[1] = f2;
                            gradientState.mPositions[2] = 1.0f;
                        } else {
                            int[] iArr4 = new int[2];
                            gradientState.mColors = iArr4;
                            iArr4[0] = color;
                            iArr4[c2] = color3;
                        }
                    } else if (name.equals("solid")) {
                        TypedArray typedArrayObtainAttributes4 = resources.obtainAttributes(attributeSet, a.GradientDrawableSolid);
                        int color4 = typedArrayObtainAttributes4.getColor(0, 0);
                        typedArrayObtainAttributes4.recycle();
                        setColor(color4);
                        i2 = 3;
                        i3 = 1;
                    } else if (name.equals("stroke")) {
                        TypedArray typedArrayObtainAttributes5 = resources.obtainAttributes(attributeSet, a.GradientDrawableStroke);
                        int dimensionPixelSize5 = typedArrayObtainAttributes5.getDimensionPixelSize(0, 0);
                        int color5 = typedArrayObtainAttributes5.getColor(1, 0);
                        float dimension = typedArrayObtainAttributes5.getDimension(2, 0.0f);
                        if (dimension != 0.0f) {
                            setStroke(dimensionPixelSize5, color5, dimension, typedArrayObtainAttributes5.getDimension(3, 0.0f));
                        } else {
                            setStroke(dimensionPixelSize5, color5);
                        }
                        typedArrayObtainAttributes5.recycle();
                    } else if (name.equals("corners")) {
                        TypedArray typedArrayObtainAttributes6 = resources.obtainAttributes(attributeSet, a.DrawableCorners);
                        int dimensionPixelSize6 = typedArrayObtainAttributes6.getDimensionPixelSize(0, 0);
                        setCornerRadius(dimensionPixelSize6);
                        int dimensionPixelSize7 = typedArrayObtainAttributes6.getDimensionPixelSize(1, dimensionPixelSize6);
                        int dimensionPixelSize8 = typedArrayObtainAttributes6.getDimensionPixelSize(2, dimensionPixelSize6);
                        int dimensionPixelSize9 = typedArrayObtainAttributes6.getDimensionPixelSize(3, dimensionPixelSize6);
                        int dimensionPixelSize10 = typedArrayObtainAttributes6.getDimensionPixelSize(4, dimensionPixelSize6);
                        if (dimensionPixelSize7 != dimensionPixelSize6 || dimensionPixelSize8 != dimensionPixelSize6 || dimensionPixelSize9 != dimensionPixelSize6 || dimensionPixelSize10 != dimensionPixelSize6) {
                            float f3 = dimensionPixelSize7;
                            float f4 = dimensionPixelSize8;
                            float f5 = dimensionPixelSize10;
                            float f6 = dimensionPixelSize9;
                            setCornerRadii(new float[]{f3, f3, f4, f4, f5, f5, f6, f6});
                        }
                        typedArrayObtainAttributes6.recycle();
                    } else if (name.equals("padding")) {
                        TypedArray typedArrayObtainAttributes7 = resources.obtainAttributes(attributeSet, a.GradientDrawablePadding);
                        i3 = 1;
                        i2 = 3;
                        this.mPadding = new Rect(typedArrayObtainAttributes7.getDimensionPixelOffset(0, 0), typedArrayObtainAttributes7.getDimensionPixelOffset(1, 0), typedArrayObtainAttributes7.getDimensionPixelOffset(2, 0), typedArrayObtainAttributes7.getDimensionPixelOffset(3, 0));
                        typedArrayObtainAttributes7.recycle();
                        this.mGradientState.mPadding = this.mPadding;
                    } else {
                        i2 = 3;
                        i3 = 1;
                        Log.w("drawable", "Bad element under <shape>: " + name);
                    }
                    i2 = 3;
                    i3 = 1;
                }
                i9 = i2;
                i4 = i3;
                i6 = 5;
                i7 = 4;
                i8 = -1;
            }
        }
        this.mGradientState.computeOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            GradientState gradientState = new GradientState(this.mGradientState);
            this.mGradientState = gradientState;
            initializeWithState(gradientState);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mRingPath = null;
        this.mPathIsDirty = true;
        this.mRectIsDirty = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i2) {
        super.onLevelChange(i2);
        this.mRectIsDirty = true;
        this.mPathIsDirty = true;
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
        this.mGradientState.setSolidColor(i2);
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
        this.mGradientState.setColors(iArr);
        this.mRectIsDirty = true;
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
        if (z2 != this.mDither) {
            this.mDither = z2;
            invalidateSelf();
        }
    }

    public void setGradientCenter(float f2, float f3) {
        this.mGradientState.setGradientCenter(f2, f3);
        this.mRectIsDirty = true;
        invalidateSelf();
    }

    public void setGradientRadius(float f2) {
        this.mGradientState.setGradientRadius(f2);
        this.mRectIsDirty = true;
        invalidateSelf();
    }

    public void setGradientType(int i2) {
        this.mGradientState.setGradientType(i2);
        this.mRectIsDirty = true;
        invalidateSelf();
    }

    public void setOrientation(Orientation orientation) {
        this.mGradientState.mOrientation = orientation;
        this.mRectIsDirty = true;
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

    public void setUseLevel(boolean z2) {
        this.mGradientState.mUseLevel = z2;
        this.mRectIsDirty = true;
        invalidateSelf();
    }

    public GradientDrawable() {
        this(new GradientState(Orientation.TOP_BOTTOM, null));
    }

    public void setStroke(int i2, int i3, float f2, float f3) {
        this.mGradientState.setStroke(i2, i3, f2, f3);
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

    public GradientDrawable(Orientation orientation, int[] iArr) {
        this(new GradientState(orientation, iArr));
    }

    private GradientDrawable(GradientState gradientState) {
        this.mFillPaint = new Paint(1);
        this.mAlpha = 255;
        this.mPath = new Path();
        this.mRect = new RectF();
        this.mPathIsDirty = true;
        this.mGradientState = gradientState;
        initializeWithState(gradientState);
        this.mRectIsDirty = true;
        this.mMutated = false;
    }
}
