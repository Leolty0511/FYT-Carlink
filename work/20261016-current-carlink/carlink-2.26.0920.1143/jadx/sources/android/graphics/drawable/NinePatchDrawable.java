package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.NinePatch;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.android.internal.R;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class NinePatchDrawable extends Drawable {
    private static final boolean DEFAULT_DITHER = false;
    private int mBitmapHeight;
    private int mBitmapWidth;
    private boolean mMutated;
    private NinePatchState mNinePatchState;
    private Insets mOpticalInsets;
    private Rect mOutlineInsets;
    private float mOutlineRadius;
    private Rect mPadding;
    private Paint mPaint;
    private int mTargetDensity;
    private Rect mTempRect;
    private PorterDuffColorFilter mTintFilter;

    public static final class NinePatchState extends Drawable.ConstantState {
        boolean mAutoMirrored;
        float mBaseAlpha;
        int mChangingConfigurations;
        boolean mDither;
        NinePatch mNinePatch;
        Insets mOpticalInsets;
        Rect mPadding;
        int[] mThemeAttrs;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;

        public NinePatchState() {
            this.mNinePatch = null;
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mPadding = null;
            this.mOpticalInsets = Insets.NONE;
            this.mBaseAlpha = 1.0f;
            this.mDither = false;
            this.mAutoMirrored = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            ColorStateList colorStateList;
            return this.mThemeAttrs != null || ((colorStateList = this.mTint) != null && colorStateList.canApplyTheme()) || super.canApplyTheme();
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
            return new NinePatchDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new NinePatchDrawable(this, resources);
        }

        public NinePatchState(NinePatch ninePatch, Rect rect) {
            this(ninePatch, rect, null, false, false);
        }

        public NinePatchState(NinePatch ninePatch, Rect rect, Rect rect2) {
            this(ninePatch, rect, rect2, false, false);
        }

        public NinePatchState(NinePatch ninePatch, Rect rect, Rect rect2, boolean z2, boolean z3) {
            this.mNinePatch = null;
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mPadding = null;
            this.mOpticalInsets = Insets.NONE;
            this.mBaseAlpha = 1.0f;
            this.mDither = false;
            this.mAutoMirrored = false;
            this.mNinePatch = ninePatch;
            this.mPadding = rect;
            this.mOpticalInsets = Insets.of(rect2);
            this.mDither = z2;
            this.mAutoMirrored = z3;
        }

        public NinePatchState(NinePatchState ninePatchState) {
            this.mNinePatch = null;
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mPadding = null;
            this.mOpticalInsets = Insets.NONE;
            this.mBaseAlpha = 1.0f;
            this.mDither = false;
            this.mAutoMirrored = false;
            this.mChangingConfigurations = ninePatchState.mChangingConfigurations;
            this.mNinePatch = ninePatchState.mNinePatch;
            this.mTint = ninePatchState.mTint;
            this.mTintMode = ninePatchState.mTintMode;
            this.mPadding = ninePatchState.mPadding;
            this.mOpticalInsets = ninePatchState.mOpticalInsets;
            this.mBaseAlpha = ninePatchState.mBaseAlpha;
            this.mDither = ninePatchState.mDither;
            this.mAutoMirrored = ninePatchState.mAutoMirrored;
            this.mThemeAttrs = ninePatchState.mThemeAttrs;
        }
    }

    private void computeBitmapSize() {
        NinePatch ninePatch = this.mNinePatchState.mNinePatch;
        if (ninePatch == null) {
            return;
        }
        int density = ninePatch.getDensity();
        int i2 = this.mTargetDensity;
        Insets insets = this.mNinePatchState.mOpticalInsets;
        Insets insets2 = Insets.NONE;
        if (insets != insets2) {
            this.mOpticalInsets = Insets.of(Drawable.scaleFromDensity(insets.left, density, i2, true), Drawable.scaleFromDensity(insets.top, density, i2, true), Drawable.scaleFromDensity(insets.right, density, i2, true), Drawable.scaleFromDensity(insets.bottom, density, i2, true));
        } else {
            this.mOpticalInsets = insets2;
        }
        Rect rect = this.mNinePatchState.mPadding;
        if (rect != null) {
            if (this.mPadding == null) {
                this.mPadding = new Rect();
            }
            this.mPadding.left = Drawable.scaleFromDensity(rect.left, density, i2, false);
            this.mPadding.top = Drawable.scaleFromDensity(rect.top, density, i2, false);
            this.mPadding.right = Drawable.scaleFromDensity(rect.right, density, i2, false);
            this.mPadding.bottom = Drawable.scaleFromDensity(rect.bottom, density, i2, false);
        } else {
            this.mPadding = null;
        }
        this.mBitmapHeight = Drawable.scaleFromDensity(ninePatch.getHeight(), density, i2, true);
        this.mBitmapWidth = Drawable.scaleFromDensity(ninePatch.getWidth(), density, i2, true);
        NinePatch.InsetStruct ninePatchInsets = ninePatch.getBitmap().getNinePatchInsets();
        if (ninePatchInsets == null) {
            this.mOutlineInsets = null;
            return;
        }
        Rect rect2 = ninePatchInsets.outlineRect;
        this.mOutlineInsets = NinePatch.InsetStruct.scaleInsets(rect2.left, rect2.top, rect2.right, rect2.bottom, i2 / density);
        this.mOutlineRadius = Drawable.scaleFromDensity(ninePatchInsets.outlineRadius, density, i2);
    }

    private boolean needsMirroring() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    private void updateLocalState(Resources resources) {
        NinePatch ninePatch;
        NinePatchState ninePatchState = this.mNinePatchState;
        boolean z2 = ninePatchState.mDither;
        if (z2) {
            setDither(z2);
        }
        if (resources != null || (ninePatch = ninePatchState.mNinePatch) == null) {
            this.mTargetDensity = Drawable.resolveDensity(resources, this.mTargetDensity);
        } else {
            this.mTargetDensity = ninePatch.getDensity();
        }
        this.mTintFilter = updateTintFilter(this.mTintFilter, ninePatchState.mTint, ninePatchState.mTintMode);
        computeBitmapSize();
    }

    private void updateStateFromTypedArray(TypedArray typedArray) throws XmlPullParserException {
        Resources resources = typedArray.getResources();
        NinePatchState ninePatchState = this.mNinePatchState;
        ninePatchState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        ninePatchState.mThemeAttrs = typedArray.extractThemeAttrs();
        ninePatchState.mDither = typedArray.getBoolean(1, ninePatchState.mDither);
        int resourceId = typedArray.getResourceId(0, 0);
        if (resourceId != 0) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inDither = true ^ ninePatchState.mDither;
            options.inScreenDensity = resources.getDisplayMetrics().noncompatDensityDpi;
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            Bitmap bitmapDecodeResourceStream = null;
            try {
                TypedValue typedValue = new TypedValue();
                InputStream inputStreamOpenRawResource = resources.openRawResource(resourceId, typedValue);
                bitmapDecodeResourceStream = BitmapFactory.decodeResourceStream(resources, typedValue, inputStreamOpenRawResource, rect, options);
                inputStreamOpenRawResource.close();
            } catch (IOException unused) {
            }
            if (bitmapDecodeResourceStream == null) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <nine-patch> requires a valid src attribute"));
            }
            if (bitmapDecodeResourceStream.getNinePatchChunk() == null) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <nine-patch> requires a valid 9-patch source image"));
            }
            bitmapDecodeResourceStream.getOpticalInsets(rect2);
            ninePatchState.mNinePatch = new NinePatch(bitmapDecodeResourceStream, bitmapDecodeResourceStream.getNinePatchChunk());
            ninePatchState.mPadding = rect;
            ninePatchState.mOpticalInsets = Insets.of(rect2);
        }
        ninePatchState.mAutoMirrored = typedArray.getBoolean(4, ninePatchState.mAutoMirrored);
        ninePatchState.mBaseAlpha = typedArray.getFloat(3, ninePatchState.mBaseAlpha);
        int i2 = typedArray.getInt(5, -1);
        if (i2 != -1) {
            ninePatchState.mTintMode = Drawable.parseTintMode(i2, PorterDuff.Mode.SRC_IN);
        }
        ColorStateList colorStateList = typedArray.getColorStateList(2);
        if (colorStateList != null) {
            ninePatchState.mTint = colorStateList;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        NinePatchState ninePatchState = this.mNinePatchState;
        if (ninePatchState == null) {
            return;
        }
        int[] iArr = ninePatchState.mThemeAttrs;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.NinePatchDrawable);
            try {
                try {
                    updateStateFromTypedArray(typedArrayResolveAttributes);
                } catch (XmlPullParserException e2) {
                    Drawable.rethrowAsRuntimeException(e2);
                }
                typedArrayResolveAttributes.recycle();
            } catch (Throwable th) {
                typedArrayResolveAttributes.recycle();
                throw th;
            }
        }
        ColorStateList colorStateList = ninePatchState.mTint;
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            ninePatchState.mTint = ninePatchState.mTint.obtainForTheme(theme);
        }
        updateLocalState(theme.getResources());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        NinePatchState ninePatchState = this.mNinePatchState;
        return ninePatchState != null && ninePatchState.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z2;
        int alpha;
        NinePatchState ninePatchState = this.mNinePatchState;
        Rect bounds = getBounds();
        if (this.mTintFilter == null || getPaint().getColorFilter() != null) {
            z2 = false;
        } else {
            this.mPaint.setColorFilter(this.mTintFilter);
            z2 = true;
        }
        int iSave = -1;
        if (ninePatchState.mBaseAlpha != 1.0f) {
            alpha = getPaint().getAlpha();
            this.mPaint.setAlpha((int) ((alpha * ninePatchState.mBaseAlpha) + 0.5f));
        } else {
            alpha = -1;
        }
        if (canvas.getDensity() == 0) {
            iSave = canvas.save();
            float density = this.mTargetDensity / ninePatchState.mNinePatch.getDensity();
            canvas.scale(density, density, bounds.left, bounds.top);
            if (this.mTempRect == null) {
                this.mTempRect = new Rect();
            }
            Rect rect = this.mTempRect;
            rect.left = bounds.left;
            rect.top = bounds.top;
            rect.right = Math.round(bounds.width() / density) + bounds.left;
            rect.bottom = Math.round(bounds.height() / density) + bounds.top;
            bounds = rect;
        }
        if (needsMirroring()) {
            if (iSave < 0) {
                iSave = canvas.save();
            }
            canvas.scale(-1.0f, 1.0f, (bounds.left + bounds.right) / 2.0f, (bounds.top + bounds.bottom) / 2.0f);
        }
        ninePatchState.mNinePatch.draw(canvas, bounds, this.mPaint);
        if (iSave >= 0) {
            canvas.restoreToCount(iSave);
        }
        if (z2) {
            this.mPaint.setColorFilter(null);
        }
        if (alpha >= 0) {
            this.mPaint.setAlpha(alpha);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        if (this.mPaint == null) {
            return 255;
        }
        return getPaint().getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mNinePatchState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        this.mNinePatchState.mChangingConfigurations = getChangingConfigurations();
        return this.mNinePatchState;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mBitmapHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mBitmapWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Paint paint;
        return (this.mNinePatchState.mNinePatch.hasAlpha() || ((paint = this.mPaint) != null && paint.getAlpha() < 255)) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        Insets insets = this.mOpticalInsets;
        return needsMirroring() ? Insets.of(insets.right, insets.top, insets.left, insets.bottom) : insets;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        NinePatch.InsetStruct ninePatchInsets;
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        NinePatchState ninePatchState = this.mNinePatchState;
        if (ninePatchState == null || this.mOutlineInsets == null || (ninePatchInsets = ninePatchState.mNinePatch.getBitmap().getNinePatchInsets()) == null) {
            super.getOutline(outline);
            return;
        }
        int i2 = bounds.left;
        Rect rect = this.mOutlineInsets;
        outline.setRoundRect(i2 + rect.left, bounds.top + rect.top, bounds.right - rect.right, bounds.bottom - rect.bottom, this.mOutlineRadius);
        outline.setAlpha((getAlpha() / 255.0f) * ninePatchInsets.outlineAlpha);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.mPadding;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return (rect.bottom | ((rect.left | rect.top) | rect.right)) != 0;
    }

    public Paint getPaint() {
        if (this.mPaint == null) {
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setDither(false);
        }
        return this.mPaint;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.mNinePatchState.mNinePatch.getTransparentRegion(getBounds());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        ColorStateList colorStateList = this.mNinePatchState.mTint;
        return colorStateList != null && colorStateList.hasFocusStateSpecified();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.NinePatchDrawable);
        updateStateFromTypedArray(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        updateLocalState(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mNinePatchState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isFilterBitmap() {
        return this.mPaint != null && getPaint().isFilterBitmap();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        return super.isStateful() || ((colorStateList = this.mNinePatchState.mTint) != null && colorStateList.isStateful());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mNinePatchState = new NinePatchState(this.mNinePatchState);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        NinePatchState ninePatchState = this.mNinePatchState;
        ColorStateList colorStateList = ninePatchState.mTint;
        if (colorStateList == null || (mode = ninePatchState.mTintMode) == null) {
            return false;
        }
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (this.mPaint == null && i2 == 255) {
            return;
        }
        getPaint().setAlpha(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z2) {
        this.mNinePatchState.mAutoMirrored = z2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mPaint == null && colorFilter == null) {
            return;
        }
        getPaint().setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        if (this.mPaint != null || z2) {
            getPaint().setDither(z2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z2) {
        getPaint().setFilterBitmap(z2);
        invalidateSelf();
    }

    public void setTargetDensity(Canvas canvas) {
        setTargetDensity(canvas.getDensity());
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        NinePatchState ninePatchState = this.mNinePatchState;
        ninePatchState.mTint = colorStateList;
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, ninePatchState.mTintMode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        NinePatchState ninePatchState = this.mNinePatchState;
        ninePatchState.mTintMode = mode;
        this.mTintFilter = updateTintFilter(this.mTintFilter, ninePatchState.mTint, mode);
        invalidateSelf();
    }

    public NinePatchDrawable() {
        this.mOpticalInsets = Insets.NONE;
        this.mTargetDensity = 160;
        this.mBitmapWidth = -1;
        this.mBitmapHeight = -1;
        this.mNinePatchState = new NinePatchState();
    }

    public void setTargetDensity(DisplayMetrics displayMetrics) {
        setTargetDensity(displayMetrics.densityDpi);
    }

    public void setTargetDensity(int i2) {
        if (i2 == 0) {
            i2 = 160;
        }
        if (this.mTargetDensity != i2) {
            this.mTargetDensity = i2;
            computeBitmapSize();
            invalidateSelf();
        }
    }

    @Deprecated
    public NinePatchDrawable(Bitmap bitmap, byte[] bArr, Rect rect, String str) {
        this(new NinePatchState(new NinePatch(bitmap, bArr, str), rect), (Resources) null);
    }

    public NinePatchDrawable(Resources resources, Bitmap bitmap, byte[] bArr, Rect rect, String str) {
        this(new NinePatchState(new NinePatch(bitmap, bArr, str), rect), resources);
    }

    public NinePatchDrawable(Resources resources, Bitmap bitmap, byte[] bArr, Rect rect, Rect rect2, String str) {
        this(new NinePatchState(new NinePatch(bitmap, bArr, str), rect, rect2), resources);
    }

    @Deprecated
    public NinePatchDrawable(NinePatch ninePatch) {
        this(new NinePatchState(ninePatch, new Rect()), (Resources) null);
    }

    public NinePatchDrawable(Resources resources, NinePatch ninePatch) {
        this(new NinePatchState(ninePatch, new Rect()), resources);
    }

    private NinePatchDrawable(NinePatchState ninePatchState, Resources resources) {
        this.mOpticalInsets = Insets.NONE;
        this.mTargetDensity = 160;
        this.mBitmapWidth = -1;
        this.mBitmapHeight = -1;
        this.mNinePatchState = ninePatchState;
        updateLocalState(resources);
    }
}
