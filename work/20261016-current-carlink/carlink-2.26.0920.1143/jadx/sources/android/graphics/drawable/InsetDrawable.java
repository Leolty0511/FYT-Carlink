package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class InsetDrawable extends DrawableWrapper {
    private InsetState mState;
    private final Rect mTmpInsetRect;
    private final Rect mTmpRect;

    public static final class InsetState extends DrawableWrapper.DrawableWrapperState {
        InsetValue mInsetBottom;
        InsetValue mInsetLeft;
        InsetValue mInsetRight;
        InsetValue mInsetTop;
        private int[] mThemeAttrs;

        public InsetState(InsetState insetState, Resources resources) {
            super(insetState, resources);
            if (insetState == null) {
                this.mInsetLeft = new InsetValue();
                this.mInsetTop = new InsetValue();
                this.mInsetRight = new InsetValue();
                this.mInsetBottom = new InsetValue();
                return;
            }
            this.mInsetLeft = insetState.mInsetLeft.m20clone();
            this.mInsetTop = insetState.mInsetTop.m20clone();
            this.mInsetRight = insetState.mInsetRight.m20clone();
            this.mInsetBottom = insetState.mInsetBottom.m20clone();
            int i2 = insetState.mDensity;
            int i3 = this.mDensity;
            if (i2 != i3) {
                applyDensityScaling(i2, i3);
            }
        }

        private void applyDensityScaling(int i2, int i3) {
            this.mInsetLeft.scaleFromDensity(i2, i3);
            this.mInsetTop.scaleFromDensity(i2, i3);
            this.mInsetRight.scaleFromDensity(i2, i3);
            this.mInsetBottom.scaleFromDensity(i2, i3);
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0016  */
        @Override // android.graphics.drawable.DrawableWrapper.DrawableWrapperState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            InsetState insetState;
            if (resources == null) {
                insetState = this;
            } else {
                int i2 = resources.getDisplayMetrics().densityDpi;
                if (i2 == 0) {
                    i2 = 160;
                }
                if (i2 != this.mDensity) {
                    insetState = new InsetState(this, resources);
                } else {
                    insetState = this;
                }
            }
            return new InsetDrawable(insetState, resources);
        }

        @Override // android.graphics.drawable.DrawableWrapper.DrawableWrapperState
        public void onDensityChanged(int i2, int i3) {
            super.onDensityChanged(i2, i3);
            applyDensityScaling(i2, i3);
        }
    }

    public static final class InsetValue implements Cloneable {
        int mDimension;
        final float mFraction;

        public InsetValue() {
            this(0.0f, 0);
        }

        public int getDimension(int i2) {
            return ((int) (i2 * this.mFraction)) + this.mDimension;
        }

        public void scaleFromDensity(int i2, int i3) {
            int i4 = this.mDimension;
            if (i4 != 0) {
                this.mDimension = Bitmap.scaleFromDensity(i4, i2, i3);
            }
        }

        public InsetValue(float f2, int i2) {
            this.mFraction = f2;
            this.mDimension = i2;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public InsetValue m20clone() {
            return new InsetValue(this.mFraction, this.mDimension);
        }
    }

    private InsetValue getInset(TypedArray typedArray, int i2, InsetValue insetValue) {
        if (typedArray.hasValue(i2)) {
            TypedValue typedValuePeekValue = typedArray.peekValue(i2);
            if (typedValuePeekValue.type == 6) {
                float fraction = typedValuePeekValue.getFraction(1.0f, 1.0f);
                if (fraction < 1.0f) {
                    return new InsetValue(fraction, 0);
                }
                throw new IllegalStateException("Fraction cannot be larger than 1");
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(i2, 0);
            if (dimensionPixelOffset != 0) {
                return new InsetValue(0.0f, dimensionPixelOffset);
            }
        }
        return insetValue;
    }

    private void getInsets(Rect rect) {
        Rect bounds = getBounds();
        rect.left = this.mState.mInsetLeft.getDimension(bounds.width());
        rect.right = this.mState.mInsetRight.getDimension(bounds.width());
        rect.top = this.mState.mInsetTop.getDimension(bounds.height());
        rect.bottom = this.mState.mInsetBottom.getDimension(bounds.height());
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        InsetState insetState = this.mState;
        if (insetState == null) {
            return;
        }
        insetState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        insetState.mThemeAttrs = typedArray.extractThemeAttrs();
        if (typedArray.hasValue(6)) {
            InsetValue inset = getInset(typedArray, 6, new InsetValue());
            insetState.mInsetLeft = inset;
            insetState.mInsetTop = inset;
            insetState.mInsetRight = inset;
            insetState.mInsetBottom = inset;
        }
        insetState.mInsetLeft = getInset(typedArray, 2, insetState.mInsetLeft);
        insetState.mInsetTop = getInset(typedArray, 4, insetState.mInsetTop);
        insetState.mInsetRight = getInset(typedArray, 3, insetState.mInsetRight);
        insetState.mInsetBottom = getInset(typedArray, 5, insetState.mInsetBottom);
    }

    private void verifyRequiredAttributes(TypedArray typedArray) throws XmlPullParserException {
        if (getDrawable() == null) {
            if (this.mState.mThemeAttrs == null || this.mState.mThemeAttrs[1] == 0) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <inset> tag requires a 'drawable' attribute or child tag defining a drawable"));
            }
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        InsetState insetState = this.mState;
        if (insetState == null || insetState.mThemeAttrs == null) {
            return;
        }
        TypedArray typedArrayResolveAttributes = theme.resolveAttributes(insetState.mThemeAttrs, R.styleable.InsetDrawable);
        try {
            try {
                updateStateFromTypedArray(typedArrayResolveAttributes);
                verifyRequiredAttributes(typedArrayResolveAttributes);
            } catch (XmlPullParserException e2) {
                Drawable.rethrowAsRuntimeException(e2);
            }
        } finally {
            typedArrayResolveAttributes.recycle();
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        int intrinsicHeight = getDrawable().getIntrinsicHeight();
        InsetState insetState = this.mState;
        InsetValue insetValue = insetState.mInsetTop;
        float f2 = insetValue.mFraction;
        InsetValue insetValue2 = insetState.mInsetBottom;
        float f3 = f2 + insetValue2.mFraction;
        if (intrinsicHeight < 0 || f3 >= 1.0f) {
            return -1;
        }
        return ((int) (intrinsicHeight / (1.0f - f3))) + insetValue.mDimension + insetValue2.mDimension;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        int intrinsicWidth = getDrawable().getIntrinsicWidth();
        InsetState insetState = this.mState;
        InsetValue insetValue = insetState.mInsetLeft;
        float f2 = insetValue.mFraction;
        InsetValue insetValue2 = insetState.mInsetRight;
        float f3 = f2 + insetValue2.mFraction;
        if (intrinsicWidth < 0 || f3 >= 1.0f) {
            return -1;
        }
        return ((int) (intrinsicWidth / (1.0f - f3))) + insetValue.mDimension + insetValue2.mDimension;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        int opacity = getDrawable().getOpacity();
        getInsets(this.mTmpInsetRect);
        if (opacity != -1) {
            return opacity;
        }
        Rect rect = this.mTmpInsetRect;
        if (rect.left > 0 || rect.top > 0 || rect.right > 0 || rect.bottom > 0) {
            return -3;
        }
        return opacity;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        Insets opticalInsets = super.getOpticalInsets();
        getInsets(this.mTmpInsetRect);
        int i2 = opticalInsets.left;
        Rect rect = this.mTmpInsetRect;
        return Insets.of(i2 + rect.left, opticalInsets.top + rect.top, opticalInsets.right + rect.right, opticalInsets.bottom + rect.bottom);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        getDrawable().getOutline(outline);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding = super.getPadding(rect);
        getInsets(this.mTmpInsetRect);
        int i2 = rect.left;
        Rect rect2 = this.mTmpInsetRect;
        rect.left = i2 + rect2.left;
        rect.right += rect2.right;
        rect.top += rect2.top;
        rect.bottom += rect2.bottom;
        return padding || (((rect2.left | rect2.right) | rect2.top) | rect2.bottom) != 0;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.InsetDrawable);
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        verifyRequiredAttributes(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
    }

    @Override // android.graphics.drawable.DrawableWrapper
    public DrawableWrapper.DrawableWrapperState mutateConstantState() {
        InsetState insetState = new InsetState(this.mState, null);
        this.mState = insetState;
        return insetState;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Rect rect2 = this.mTmpRect;
        rect2.set(rect);
        rect2.left += this.mState.mInsetLeft.getDimension(rect.width());
        rect2.top += this.mState.mInsetTop.getDimension(rect.height());
        rect2.right -= this.mState.mInsetRight.getDimension(rect.width());
        rect2.bottom -= this.mState.mInsetBottom.getDimension(rect.height());
        super.onBoundsChange(rect2);
    }

    public InsetDrawable() {
        this(new InsetState(null, null), (Resources) null);
    }

    public InsetDrawable(Drawable drawable, int i2) {
        this(drawable, i2, i2, i2, i2);
    }

    public InsetDrawable(Drawable drawable, float f2) {
        this(drawable, f2, f2, f2, f2);
    }

    public InsetDrawable(Drawable drawable, int i2, int i3, int i4, int i5) {
        this(new InsetState(null, null), (Resources) null);
        this.mState.mInsetLeft = new InsetValue(0.0f, i2);
        this.mState.mInsetTop = new InsetValue(0.0f, i3);
        this.mState.mInsetRight = new InsetValue(0.0f, i4);
        this.mState.mInsetBottom = new InsetValue(0.0f, i5);
        setDrawable(drawable);
    }

    public InsetDrawable(Drawable drawable, float f2, float f3, float f4, float f5) {
        this(new InsetState(null, null), (Resources) null);
        this.mState.mInsetLeft = new InsetValue(f2, 0);
        this.mState.mInsetTop = new InsetValue(f3, 0);
        this.mState.mInsetRight = new InsetValue(f4, 0);
        this.mState.mInsetBottom = new InsetValue(f5, 0);
        setDrawable(drawable);
    }

    private InsetDrawable(InsetState insetState, Resources resources) {
        super(insetState, resources);
        this.mTmpRect = new Rect();
        this.mTmpInsetRect = new Rect();
        this.mState = insetState;
    }
}
