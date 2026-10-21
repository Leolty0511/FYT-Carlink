package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.view.ViewDebug;
import com.android.internal.R;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class ColorDrawable extends Drawable {

    @ViewDebug.ExportedProperty(deepExport = true, prefix = "state_")
    private ColorState mColorState;
    private boolean mMutated;
    private final Paint mPaint;
    private PorterDuffColorFilter mTintFilter;

    public static final class ColorState extends Drawable.ConstantState {
        int mBaseColor;
        int mChangingConfigurations;
        int[] mThemeAttrs;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;

        @ViewDebug.ExportedProperty
        int mUseColor;

        public ColorState() {
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            ColorStateList colorStateList;
            return this.mThemeAttrs != null || ((colorStateList = this.mTint) != null && colorStateList.canApplyTheme());
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i2 = this.mChangingConfigurations;
            ColorStateList colorStateList = this.mTint;
            return i2 | (colorStateList != null ? colorStateList.getChangingConfigurations() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new ColorDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new ColorDrawable(this, resources);
        }

        public ColorState(ColorState colorState) {
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mThemeAttrs = colorState.mThemeAttrs;
            this.mBaseColor = colorState.mBaseColor;
            this.mUseColor = colorState.mUseColor;
            this.mChangingConfigurations = colorState.mChangingConfigurations;
            this.mTint = colorState.mTint;
            this.mTintMode = colorState.mTintMode;
        }
    }

    private void updateLocalState(Resources resources) {
        PorterDuffColorFilter porterDuffColorFilter = this.mTintFilter;
        ColorState colorState = this.mColorState;
        this.mTintFilter = updateTintFilter(porterDuffColorFilter, colorState.mTint, colorState.mTintMode);
    }

    private void updateStateFromTypedArray(TypedArray typedArray) {
        ColorState colorState = this.mColorState;
        colorState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        colorState.mThemeAttrs = typedArray.extractThemeAttrs();
        int color = typedArray.getColor(0, colorState.mBaseColor);
        colorState.mBaseColor = color;
        colorState.mUseColor = color;
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        ColorState colorState = this.mColorState;
        if (colorState == null) {
            return;
        }
        int[] iArr = colorState.mThemeAttrs;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.ColorDrawable);
            updateStateFromTypedArray(typedArrayResolveAttributes);
            typedArrayResolveAttributes.recycle();
        }
        ColorStateList colorStateList = colorState.mTint;
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            colorState.mTint = colorState.mTint.obtainForTheme(theme);
        }
        updateLocalState(theme.getResources());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.mColorState.canApplyTheme() || super.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ColorFilter colorFilter = this.mPaint.getColorFilter();
        if ((this.mColorState.mUseColor >>> 24) == 0 && colorFilter == null && this.mTintFilter == null) {
            return;
        }
        if (colorFilter == null) {
            this.mPaint.setColorFilter(this.mTintFilter);
        }
        this.mPaint.setColor(this.mColorState.mUseColor);
        canvas.drawRect(getBounds(), this.mPaint);
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mColorState.mUseColor >>> 24;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mColorState.getChangingConfigurations();
    }

    public int getColor() {
        return this.mColorState.mUseColor;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mColorState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.mTintFilter != null || this.mPaint.getColorFilter() != null) {
            return -3;
        }
        int i2 = this.mColorState.mUseColor >>> 24;
        if (i2 != 0) {
            return i2 != 255 ? -3 : -1;
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRect(getBounds());
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public Xfermode getXfermode() {
        return this.mPaint.getXfermode();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        ColorStateList colorStateList = this.mColorState.mTint;
        return colorStateList != null && colorStateList.hasFocusStateSpecified();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.ColorDrawable);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        updateLocalState(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.mColorState.mTint;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mColorState = new ColorState(this.mColorState);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorState colorState = this.mColorState;
        ColorStateList colorStateList = colorState.mTint;
        if (colorStateList == null || (mode = colorState.mTintMode) == null) {
            return false;
        }
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        ColorState colorState = this.mColorState;
        int i3 = colorState.mBaseColor;
        int i4 = ((((i3 >>> 24) * (i2 + (i2 >> 7))) >> 8) << 24) | ((i3 << 8) >>> 8);
        if (colorState.mUseColor != i4) {
            colorState.mUseColor = i4;
            invalidateSelf();
        }
    }

    public void setColor(int i2) {
        ColorState colorState = this.mColorState;
        if (colorState.mBaseColor == i2 && colorState.mUseColor == i2) {
            return;
        }
        colorState.mUseColor = i2;
        colorState.mBaseColor = i2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        ColorState colorState = this.mColorState;
        colorState.mTint = colorStateList;
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, colorState.mTintMode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        ColorState colorState = this.mColorState;
        colorState.mTintMode = mode;
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorState.mTint, mode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setXfermode(Xfermode xfermode) {
        this.mPaint.setXfermode(xfermode);
        invalidateSelf();
    }

    public ColorDrawable() {
        this.mPaint = new Paint(1);
        this.mColorState = new ColorState();
    }

    public ColorDrawable(int i2) {
        this.mPaint = new Paint(1);
        this.mColorState = new ColorState();
        setColor(i2);
    }

    private ColorDrawable(ColorState colorState, Resources resources) {
        this.mPaint = new Paint(1);
        this.mColorState = colorState;
        updateLocalState(resources);
    }
}
