package android.graphics.drawable;

import android.accessibilityservice.c;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import com.android.internal.R;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class BitmapDrawable extends Drawable {
    private static final int DEFAULT_PAINT_FLAGS = 6;
    private static final int TILE_MODE_CLAMP = 0;
    private static final int TILE_MODE_DISABLED = -1;
    private static final int TILE_MODE_MIRROR = 2;
    private static final int TILE_MODE_REPEAT = 1;
    private static final int TILE_MODE_UNDEFINED = -2;
    private int mBitmapHeight;
    private BitmapState mBitmapState;
    private int mBitmapWidth;
    private final Rect mDstRect;
    private boolean mDstRectAndInsetsDirty;
    private Matrix mMirrorMatrix;
    private boolean mMutated;
    private Insets mOpticalInsets;
    private int mTargetDensity;
    private PorterDuffColorFilter mTintFilter;

    public static final class BitmapState extends Drawable.ConstantState {
        boolean mAutoMirrored;
        float mBaseAlpha;
        Bitmap mBitmap;
        int mChangingConfigurations;
        int mGravity;
        final Paint mPaint;
        boolean mRebuildShader;
        int mSrcDensityOverride;
        int mTargetDensity;
        int[] mThemeAttrs;
        Shader.TileMode mTileModeX;
        Shader.TileMode mTileModeY;
        ColorStateList mTint;
        PorterDuff.Mode mTintMode;

        public BitmapState(Bitmap bitmap) {
            this.mThemeAttrs = null;
            this.mBitmap = null;
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mGravity = 119;
            this.mBaseAlpha = 1.0f;
            this.mTileModeX = null;
            this.mTileModeY = null;
            this.mSrcDensityOverride = 0;
            this.mTargetDensity = 160;
            this.mAutoMirrored = false;
            this.mBitmap = bitmap;
            this.mPaint = new Paint(6);
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
            return new BitmapDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new BitmapDrawable(this, resources);
        }

        public BitmapState(BitmapState bitmapState) {
            this.mThemeAttrs = null;
            this.mBitmap = null;
            this.mTint = null;
            this.mTintMode = Drawable.DEFAULT_TINT_MODE;
            this.mGravity = 119;
            this.mBaseAlpha = 1.0f;
            this.mTileModeX = null;
            this.mTileModeY = null;
            this.mSrcDensityOverride = 0;
            this.mTargetDensity = 160;
            this.mAutoMirrored = false;
            this.mBitmap = bitmapState.mBitmap;
            this.mTint = bitmapState.mTint;
            this.mTintMode = bitmapState.mTintMode;
            this.mThemeAttrs = bitmapState.mThemeAttrs;
            this.mChangingConfigurations = bitmapState.mChangingConfigurations;
            this.mGravity = bitmapState.mGravity;
            this.mTileModeX = bitmapState.mTileModeX;
            this.mTileModeY = bitmapState.mTileModeY;
            this.mSrcDensityOverride = bitmapState.mSrcDensityOverride;
            this.mTargetDensity = bitmapState.mTargetDensity;
            this.mBaseAlpha = bitmapState.mBaseAlpha;
            this.mPaint = new Paint(bitmapState.mPaint);
            this.mRebuildShader = bitmapState.mRebuildShader;
            this.mAutoMirrored = bitmapState.mAutoMirrored;
        }
    }

    private void computeBitmapSize() {
        Bitmap bitmap = this.mBitmapState.mBitmap;
        if (bitmap != null) {
            this.mBitmapWidth = bitmap.getScaledWidth(this.mTargetDensity);
            this.mBitmapHeight = bitmap.getScaledHeight(this.mTargetDensity);
        } else {
            this.mBitmapHeight = -1;
            this.mBitmapWidth = -1;
        }
    }

    private Matrix getOrCreateMirrorMatrix() {
        if (this.mMirrorMatrix == null) {
            this.mMirrorMatrix = new Matrix();
        }
        return this.mMirrorMatrix;
    }

    private boolean needMirroring() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    private static Shader.TileMode parseTileMode(int i2) {
        if (i2 == 0) {
            return Shader.TileMode.CLAMP;
        }
        if (i2 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i2 != 2) {
            return null;
        }
        return Shader.TileMode.MIRROR;
    }

    private void updateDstRectAndInsetsIfDirty() {
        if (this.mDstRectAndInsetsDirty) {
            BitmapState bitmapState = this.mBitmapState;
            if (bitmapState.mTileModeX == null && bitmapState.mTileModeY == null) {
                Rect bounds = getBounds();
                Gravity.apply(this.mBitmapState.mGravity, this.mBitmapWidth, this.mBitmapHeight, bounds, this.mDstRect, getLayoutDirection());
                Rect rect = this.mDstRect;
                this.mOpticalInsets = Insets.of(rect.left - bounds.left, rect.top - bounds.top, bounds.right - rect.right, bounds.bottom - rect.bottom);
            } else {
                copyBounds(this.mDstRect);
                this.mOpticalInsets = Insets.NONE;
            }
        }
        this.mDstRectAndInsetsDirty = false;
    }

    private void updateLocalState(Resources resources) {
        this.mTargetDensity = Drawable.resolveDensity(resources, this.mBitmapState.mTargetDensity);
        PorterDuffColorFilter porterDuffColorFilter = this.mTintFilter;
        BitmapState bitmapState = this.mBitmapState;
        this.mTintFilter = updateTintFilter(porterDuffColorFilter, bitmapState.mTint, bitmapState.mTintMode);
        computeBitmapSize();
    }

    private void updateShaderMatrix(Bitmap bitmap, Paint paint, Shader shader, boolean z2) {
        int density = bitmap.getDensity();
        int i2 = this.mTargetDensity;
        boolean z3 = (density == 0 || density == i2) ? false : true;
        if (z3 || z2) {
            Matrix orCreateMirrorMatrix = getOrCreateMirrorMatrix();
            orCreateMirrorMatrix.reset();
            if (z2) {
                Rect rect = this.mDstRect;
                orCreateMirrorMatrix.setTranslate(rect.right - rect.left, 0.0f);
                orCreateMirrorMatrix.setScale(-1.0f, 1.0f);
            }
            if (z3) {
                float f2 = i2 / density;
                orCreateMirrorMatrix.postScale(f2, f2);
            }
            shader.setLocalMatrix(orCreateMirrorMatrix);
        } else {
            this.mMirrorMatrix = null;
            shader.setLocalMatrix(Matrix.IDENTITY_MATRIX);
        }
        paint.setShader(shader);
    }

    private void updateStateFromTypedArray(TypedArray typedArray, int i2) throws XmlPullParserException {
        int i3;
        Resources resources = typedArray.getResources();
        BitmapState bitmapState = this.mBitmapState;
        bitmapState.mChangingConfigurations |= typedArray.getChangingConfigurations();
        bitmapState.mThemeAttrs = typedArray.extractThemeAttrs();
        bitmapState.mSrcDensityOverride = i2;
        bitmapState.mTargetDensity = Drawable.resolveDensity(resources, 0);
        int resourceId = typedArray.getResourceId(1, 0);
        if (resourceId != 0) {
            TypedValue typedValue = new TypedValue();
            resources.getValueForDensity(resourceId, i2, typedValue, true);
            if (i2 > 0 && (i3 = typedValue.density) > 0 && i3 != 65535) {
                if (i3 == i2) {
                    typedValue.density = resources.getDisplayMetrics().densityDpi;
                } else {
                    typedValue.density = (i3 * resources.getDisplayMetrics().densityDpi) / i2;
                }
            }
            Bitmap bitmapDecodeResourceStream = null;
            try {
                InputStream inputStreamOpenRawResource = resources.openRawResource(resourceId, typedValue);
                try {
                    bitmapDecodeResourceStream = BitmapFactory.decodeResourceStream(resources, typedValue, inputStreamOpenRawResource, null, null);
                    if (inputStreamOpenRawResource != null) {
                        inputStreamOpenRawResource.close();
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (inputStreamOpenRawResource != null) {
                            try {
                                inputStreamOpenRawResource.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Exception unused) {
            }
            if (bitmapDecodeResourceStream == null) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <bitmap> requires a valid 'src' attribute"));
            }
            bitmapState.mBitmap = bitmapDecodeResourceStream;
        }
        Bitmap bitmap = bitmapState.mBitmap;
        setMipMap(typedArray.getBoolean(8, bitmap != null ? bitmap.hasMipMap() : false));
        bitmapState.mAutoMirrored = typedArray.getBoolean(9, bitmapState.mAutoMirrored);
        bitmapState.mBaseAlpha = typedArray.getFloat(7, bitmapState.mBaseAlpha);
        int i4 = typedArray.getInt(10, -1);
        if (i4 != -1) {
            bitmapState.mTintMode = Drawable.parseTintMode(i4, PorterDuff.Mode.SRC_IN);
        }
        ColorStateList colorStateList = typedArray.getColorStateList(5);
        if (colorStateList != null) {
            bitmapState.mTint = colorStateList;
        }
        Paint paint = this.mBitmapState.mPaint;
        paint.setAntiAlias(typedArray.getBoolean(2, paint.isAntiAlias()));
        paint.setFilterBitmap(typedArray.getBoolean(3, paint.isFilterBitmap()));
        paint.setDither(typedArray.getBoolean(4, paint.isDither()));
        setGravity(typedArray.getInt(0, bitmapState.mGravity));
        int i5 = typedArray.getInt(6, -2);
        if (i5 != -2) {
            Shader.TileMode tileMode = parseTileMode(i5);
            setTileModeXY(tileMode, tileMode);
        }
        int i6 = typedArray.getInt(11, -2);
        if (i6 != -2) {
            setTileModeX(parseTileMode(i6));
        }
        int i7 = typedArray.getInt(12, -2);
        if (i7 != -2) {
            setTileModeY(parseTileMode(i7));
        }
    }

    private void verifyRequiredAttributes(TypedArray typedArray) throws XmlPullParserException {
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState.mBitmap == null) {
            int[] iArr = bitmapState.mThemeAttrs;
            if (iArr == null || iArr[1] == 0) {
                throw new XmlPullParserException(c.c(typedArray, new StringBuilder(), ": <bitmap> requires a valid 'src' attribute"));
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState == null) {
            return;
        }
        int[] iArr = bitmapState.mThemeAttrs;
        if (iArr != null) {
            TypedArray typedArrayResolveAttributes = theme.resolveAttributes(iArr, R.styleable.BitmapDrawable);
            try {
                try {
                    updateStateFromTypedArray(typedArrayResolveAttributes, bitmapState.mSrcDensityOverride);
                } catch (XmlPullParserException e2) {
                    Drawable.rethrowAsRuntimeException(e2);
                }
                typedArrayResolveAttributes.recycle();
            } catch (Throwable th) {
                typedArrayResolveAttributes.recycle();
                throw th;
            }
        }
        ColorStateList colorStateList = bitmapState.mTint;
        if (colorStateList != null && colorStateList.canApplyTheme()) {
            bitmapState.mTint = bitmapState.mTint.obtainForTheme(theme);
        }
        updateLocalState(theme.getResources());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        BitmapState bitmapState = this.mBitmapState;
        return bitmapState != null && bitmapState.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int alpha;
        BitmapState bitmapState = this.mBitmapState;
        Bitmap bitmap = bitmapState.mBitmap;
        if (bitmap == null) {
            return;
        }
        Paint paint = bitmapState.mPaint;
        boolean z2 = false;
        if (bitmapState.mRebuildShader) {
            Shader.TileMode tileMode = bitmapState.mTileModeX;
            Shader.TileMode tileMode2 = bitmapState.mTileModeY;
            if (tileMode == null && tileMode2 == null) {
                paint.setShader(null);
            } else {
                if (tileMode == null) {
                    tileMode = Shader.TileMode.CLAMP;
                }
                if (tileMode2 == null) {
                    tileMode2 = Shader.TileMode.CLAMP;
                }
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode2));
            }
            bitmapState.mRebuildShader = false;
        }
        if (bitmapState.mBaseAlpha != 1.0f) {
            Paint paint2 = getPaint();
            alpha = paint2.getAlpha();
            paint2.setAlpha((int) ((alpha * bitmapState.mBaseAlpha) + 0.5f));
        } else {
            alpha = -1;
        }
        if (this.mTintFilter != null && paint.getColorFilter() == null) {
            paint.setColorFilter(this.mTintFilter);
            z2 = true;
        }
        updateDstRectAndInsetsIfDirty();
        Shader shader = paint.getShader();
        boolean zNeedMirroring = needMirroring();
        if (shader == null) {
            if (zNeedMirroring) {
                canvas.save();
                Rect rect = this.mDstRect;
                canvas.translate(rect.right - rect.left, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            canvas.drawBitmap(bitmap, (Rect) null, this.mDstRect, paint);
            if (zNeedMirroring) {
                canvas.restore();
            }
        } else {
            updateShaderMatrix(bitmap, paint, shader, zNeedMirroring);
            canvas.drawRect(this.mDstRect, paint);
        }
        if (z2) {
            paint.setColorFilter(null);
        }
        if (alpha >= 0) {
            paint.setAlpha(alpha);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mBitmapState.mPaint.getAlpha();
    }

    public final Bitmap getBitmap() {
        return this.mBitmapState.mBitmap;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mBitmapState.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.mBitmapState.mPaint.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        this.mBitmapState.mChangingConfigurations |= getChangingConfigurations();
        return this.mBitmapState;
    }

    public int getGravity() {
        return this.mBitmapState.mGravity;
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
        Bitmap bitmap;
        BitmapState bitmapState = this.mBitmapState;
        return (bitmapState.mGravity == 119 && (bitmap = bitmapState.mBitmap) != null && !bitmap.hasAlpha() && this.mBitmapState.mPaint.getAlpha() >= 255) ? -1 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        updateDstRectAndInsetsIfDirty();
        return this.mOpticalInsets;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        updateDstRectAndInsetsIfDirty();
        outline.setRect(this.mDstRect);
        Bitmap bitmap = this.mBitmapState.mBitmap;
        outline.setAlpha(bitmap != null && !bitmap.hasAlpha() ? getAlpha() / 255.0f : 0.0f);
    }

    public final Paint getPaint() {
        return this.mBitmapState.mPaint;
    }

    public Shader.TileMode getTileModeX() {
        return this.mBitmapState.mTileModeX;
    }

    public Shader.TileMode getTileModeY() {
        return this.mBitmapState.mTileModeY;
    }

    public ColorStateList getTint() {
        return this.mBitmapState.mTint;
    }

    public PorterDuff.Mode getTintMode() {
        return this.mBitmapState.mTintMode;
    }

    public boolean hasAntiAlias() {
        return this.mBitmapState.mPaint.isAntiAlias();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean hasFocusStateSpecified() {
        ColorStateList colorStateList = this.mBitmapState.mTint;
        return colorStateList != null && colorStateList.hasFocusStateSpecified();
    }

    public boolean hasMipMap() {
        Bitmap bitmap = this.mBitmapState.mBitmap;
        return bitmap != null && bitmap.hasMipMap();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        super.inflate(resources, xmlPullParser, attributeSet, theme);
        TypedArray typedArrayObtainAttributes = Drawable.obtainAttributes(resources, theme, attributeSet, R.styleable.BitmapDrawable);
        updateStateFromTypedArray(typedArrayObtainAttributes, this.mSrcDensityOverride);
        verifyRequiredAttributes(typedArrayObtainAttributes);
        typedArrayObtainAttributes.recycle();
        updateLocalState(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.mBitmapState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isFilterBitmap() {
        return this.mBitmapState.mPaint.isFilterBitmap();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.mBitmapState.mTint;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mBitmapState = new BitmapState(this.mBitmapState);
            this.mMutated = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.mDstRectAndInsetsDirty = true;
        BitmapState bitmapState = this.mBitmapState;
        Bitmap bitmap = bitmapState.mBitmap;
        Shader shader = bitmapState.mPaint.getShader();
        if (bitmap == null || shader == null) {
            return;
        }
        updateShaderMatrix(bitmap, this.mBitmapState.mPaint, shader, needMirroring());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        BitmapState bitmapState = this.mBitmapState;
        ColorStateList colorStateList = bitmapState.mTint;
        if (colorStateList == null || (mode = bitmapState.mTintMode) == null) {
            return false;
        }
        this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        if (i2 != this.mBitmapState.mPaint.getAlpha()) {
            this.mBitmapState.mPaint.setAlpha(i2);
            invalidateSelf();
        }
    }

    public void setAntiAlias(boolean z2) {
        this.mBitmapState.mPaint.setAntiAlias(z2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z2) {
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState.mAutoMirrored != z2) {
            bitmapState.mAutoMirrored = z2;
            invalidateSelf();
        }
    }

    public void setBitmap(Bitmap bitmap) {
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState.mBitmap != bitmap) {
            bitmapState.mBitmap = bitmap;
            computeBitmapSize();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mBitmapState.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z2) {
        this.mBitmapState.mPaint.setDither(z2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z2) {
        this.mBitmapState.mPaint.setFilterBitmap(z2);
        invalidateSelf();
    }

    public void setGravity(int i2) {
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState.mGravity != i2) {
            bitmapState.mGravity = i2;
            this.mDstRectAndInsetsDirty = true;
            invalidateSelf();
        }
    }

    public void setMipMap(boolean z2) {
        Bitmap bitmap = this.mBitmapState.mBitmap;
        if (bitmap != null) {
            bitmap.setHasMipMap(z2);
            invalidateSelf();
        }
    }

    public void setTargetDensity(Canvas canvas) {
        setTargetDensity(canvas.getDensity());
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        setTileModeXY(tileMode, this.mBitmapState.mTileModeY);
    }

    public void setTileModeXY(Shader.TileMode tileMode, Shader.TileMode tileMode2) {
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState.mTileModeX == tileMode && bitmapState.mTileModeY == tileMode2) {
            return;
        }
        bitmapState.mTileModeX = tileMode;
        bitmapState.mTileModeY = tileMode2;
        bitmapState.mRebuildShader = true;
        this.mDstRectAndInsetsDirty = true;
        invalidateSelf();
    }

    public final void setTileModeY(Shader.TileMode tileMode) {
        setTileModeXY(this.mBitmapState.mTileModeX, tileMode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState.mTint != colorStateList) {
            bitmapState.mTint = colorStateList;
            this.mTintFilter = updateTintFilter(this.mTintFilter, colorStateList, bitmapState.mTintMode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        BitmapState bitmapState = this.mBitmapState;
        if (bitmapState.mTintMode != mode) {
            bitmapState.mTintMode = mode;
            this.mTintFilter = updateTintFilter(this.mTintFilter, bitmapState.mTint, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setXfermode(Xfermode xfermode) {
        this.mBitmapState.mPaint.setXfermode(xfermode);
        invalidateSelf();
    }

    @Deprecated
    public BitmapDrawable() {
        this.mDstRect = new Rect();
        this.mTargetDensity = 160;
        this.mDstRectAndInsetsDirty = true;
        this.mOpticalInsets = Insets.NONE;
        this.mBitmapState = new BitmapState((Bitmap) null);
    }

    public void setTargetDensity(DisplayMetrics displayMetrics) {
        setTargetDensity(displayMetrics.densityDpi);
    }

    public void setTargetDensity(int i2) {
        if (this.mTargetDensity != i2) {
            if (i2 == 0) {
                i2 = 160;
            }
            this.mTargetDensity = i2;
            if (this.mBitmapState.mBitmap != null) {
                computeBitmapSize();
            }
            invalidateSelf();
        }
    }

    @Deprecated
    public BitmapDrawable(Resources resources) {
        this.mDstRect = new Rect();
        this.mTargetDensity = 160;
        this.mDstRectAndInsetsDirty = true;
        this.mOpticalInsets = Insets.NONE;
        BitmapState bitmapState = new BitmapState((Bitmap) null);
        this.mBitmapState = bitmapState;
        bitmapState.mTargetDensity = this.mTargetDensity;
    }

    @Deprecated
    public BitmapDrawable(Bitmap bitmap) {
        this(new BitmapState(bitmap), (Resources) null);
    }

    public BitmapDrawable(Resources resources, Bitmap bitmap) {
        this(new BitmapState(bitmap), resources);
        this.mBitmapState.mTargetDensity = this.mTargetDensity;
    }

    @Deprecated
    public BitmapDrawable(String str) {
        this(new BitmapState(BitmapFactory.decodeFile(str)), (Resources) null);
        if (this.mBitmapState.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + str);
        }
    }

    public BitmapDrawable(Resources resources, String str) {
        this(new BitmapState(BitmapFactory.decodeFile(str)), (Resources) null);
        BitmapState bitmapState = this.mBitmapState;
        bitmapState.mTargetDensity = this.mTargetDensity;
        if (bitmapState.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + str);
        }
    }

    @Deprecated
    public BitmapDrawable(InputStream inputStream) {
        this(new BitmapState(BitmapFactory.decodeStream(inputStream)), (Resources) null);
        if (this.mBitmapState.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + inputStream);
        }
    }

    public BitmapDrawable(Resources resources, InputStream inputStream) {
        this(new BitmapState(BitmapFactory.decodeStream(inputStream)), (Resources) null);
        BitmapState bitmapState = this.mBitmapState;
        bitmapState.mTargetDensity = this.mTargetDensity;
        if (bitmapState.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + inputStream);
        }
    }

    private BitmapDrawable(BitmapState bitmapState, Resources resources) {
        this.mDstRect = new Rect();
        this.mTargetDensity = 160;
        this.mDstRectAndInsetsDirty = true;
        this.mOpticalInsets = Insets.NONE;
        this.mBitmapState = bitmapState;
        updateLocalState(resources);
    }
}
