package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Gravity;
import i.a;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class BitmapDrawable extends Drawable {
    private static final int DEFAULT_PAINT_FLAGS = 6;
    private boolean mApplyGravity;
    private Bitmap mBitmap;
    private int mBitmapHeight;
    private BitmapState mBitmapState;
    private int mBitmapWidth;
    private final Rect mDstRect;
    private Matrix mMirrorMatrix;
    private boolean mMutated;
    private int mTargetDensity;

    public static final class BitmapState extends Drawable.ConstantState {
        public boolean mAutoMirrored;
        public Bitmap mBitmap;
        public int mChangingConfigurations;
        public int mGravity;
        public Paint mPaint;
        public boolean mRebuildShader;
        public int mTargetDensity;
        public Shader.TileMode mTileModeX;
        public Shader.TileMode mTileModeY;

        public BitmapState(Bitmap bitmap) {
            this.mGravity = 119;
            this.mPaint = new Paint(6);
            this.mTileModeX = null;
            this.mTileModeY = null;
            this.mTargetDensity = 160;
            this.mBitmap = bitmap;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Bitmap getBitmap() {
            return this.mBitmap;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
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
            this(bitmapState.mBitmap);
            this.mChangingConfigurations = bitmapState.mChangingConfigurations;
            this.mGravity = bitmapState.mGravity;
            this.mTileModeX = bitmapState.mTileModeX;
            this.mTileModeY = bitmapState.mTileModeY;
            this.mTargetDensity = bitmapState.mTargetDensity;
            this.mPaint = new Paint(bitmapState.mPaint);
            this.mRebuildShader = bitmapState.mRebuildShader;
            this.mAutoMirrored = bitmapState.mAutoMirrored;
        }
    }

    private void computeBitmapSize() {
        this.mBitmapWidth = this.mBitmap.getScaledWidth(this.mTargetDensity);
        this.mBitmapHeight = this.mBitmap.getScaledHeight(this.mTargetDensity);
    }

    private boolean needMirroring() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    private void setBitmap(Bitmap bitmap) {
        if (bitmap != this.mBitmap) {
            this.mBitmap = bitmap;
            if (bitmap != null) {
                computeBitmapSize();
            } else {
                this.mBitmapHeight = -1;
                this.mBitmapWidth = -1;
            }
            invalidateSelf();
        }
    }

    private void updateMirrorMatrix(float f2) {
        if (this.mMirrorMatrix == null) {
            this.mMirrorMatrix = new Matrix();
        }
        this.mMirrorMatrix.setTranslate(f2, 0.0f);
        this.mMirrorMatrix.preScale(-1.0f, 1.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.mBitmap;
        if (bitmap != null) {
            BitmapState bitmapState = this.mBitmapState;
            if (bitmapState.mRebuildShader) {
                Shader.TileMode tileMode = bitmapState.mTileModeX;
                Shader.TileMode tileMode2 = bitmapState.mTileModeY;
                if (tileMode == null && tileMode2 == null) {
                    bitmapState.mPaint.setShader(null);
                } else {
                    Paint paint = bitmapState.mPaint;
                    if (tileMode == null) {
                        tileMode = Shader.TileMode.CLAMP;
                    }
                    if (tileMode2 == null) {
                        tileMode2 = Shader.TileMode.CLAMP;
                    }
                    paint.setShader(new BitmapShader(bitmap, tileMode, tileMode2));
                }
                bitmapState.mRebuildShader = false;
                copyBounds(this.mDstRect);
            }
            Shader shader = bitmapState.mPaint.getShader();
            boolean zNeedMirroring = needMirroring();
            if (shader != null) {
                if (this.mApplyGravity) {
                    copyBounds(this.mDstRect);
                    this.mApplyGravity = false;
                }
                if (zNeedMirroring) {
                    Rect rect = this.mDstRect;
                    updateMirrorMatrix(rect.right - rect.left);
                    shader.setLocalMatrix(this.mMirrorMatrix);
                } else if (this.mMirrorMatrix != null) {
                    this.mMirrorMatrix = null;
                    shader.setLocalMatrix(Matrix.IDENTITY_MATRIX);
                }
                canvas.drawRect(this.mDstRect, bitmapState.mPaint);
                return;
            }
            if (this.mApplyGravity) {
                Gravity.apply(bitmapState.mGravity, this.mBitmapWidth, this.mBitmapHeight, getBounds(), this.mDstRect, getLayoutDirection());
                this.mApplyGravity = false;
            }
            if (zNeedMirroring) {
                canvas.save();
                Rect rect2 = this.mDstRect;
                canvas.translate(rect2.right - rect2.left, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            canvas.drawBitmap(bitmap, (Rect) null, this.mDstRect, bitmapState.mPaint);
            if (zNeedMirroring) {
                canvas.restore();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.mBitmapState.mPaint.getAlpha();
    }

    public final Bitmap getBitmap() {
        return this.mBitmap;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.mBitmapState.mChangingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        this.mBitmapState.mChangingConfigurations = getChangingConfigurations();
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
        return (this.mBitmapState.mGravity == 119 && (bitmap = this.mBitmap) != null && !bitmap.hasAlpha() && this.mBitmapState.mPaint.getAlpha() >= 255) ? -1 : -3;
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

    public boolean hasAntiAlias() {
        return this.mBitmapState.mPaint.isAntiAlias();
    }

    public boolean hasMipMap() {
        Bitmap bitmap = this.mBitmapState.mBitmap;
        return bitmap != null && bitmap.hasMipMap();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException {
        super.inflate(resources, xmlPullParser, attributeSet);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.BitmapDrawable);
        int resourceId = typedArrayObtainAttributes.getResourceId(1, 0);
        if (resourceId == 0) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <bitmap> requires a valid src attribute");
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, resourceId);
        if (bitmapDecodeResource == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <bitmap> requires a valid src attribute");
        }
        this.mBitmapState.mBitmap = bitmapDecodeResource;
        setBitmap(bitmapDecodeResource);
        setTargetDensity(resources.getDisplayMetrics());
        setMipMap(typedArrayObtainAttributes.getBoolean(6, bitmapDecodeResource.hasMipMap()));
        setAutoMirrored(typedArrayObtainAttributes.getBoolean(7, false));
        Paint paint = this.mBitmapState.mPaint;
        paint.setAntiAlias(typedArrayObtainAttributes.getBoolean(2, paint.isAntiAlias()));
        paint.setFilterBitmap(typedArrayObtainAttributes.getBoolean(3, paint.isFilterBitmap()));
        paint.setDither(typedArrayObtainAttributes.getBoolean(4, paint.isDither()));
        setGravity(typedArrayObtainAttributes.getInt(0, 119));
        int i2 = typedArrayObtainAttributes.getInt(5, -1);
        if (i2 != -1) {
            if (i2 == 0) {
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                setTileModeXY(tileMode, tileMode);
            } else if (i2 == 1) {
                Shader.TileMode tileMode2 = Shader.TileMode.REPEAT;
                setTileModeXY(tileMode2, tileMode2);
            } else if (i2 == 2) {
                Shader.TileMode tileMode3 = Shader.TileMode.MIRROR;
                setTileModeXY(tileMode3, tileMode3);
            }
        }
        typedArrayObtainAttributes.recycle();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.mBitmapState.mAutoMirrored;
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
        super.onBoundsChange(rect);
        this.mApplyGravity = true;
        Shader shader = this.mBitmapState.mPaint.getShader();
        if (shader != null) {
            if (needMirroring()) {
                updateMirrorMatrix(rect.right - rect.left);
                shader.setLocalMatrix(this.mMirrorMatrix);
            } else if (this.mMirrorMatrix != null) {
                this.mMirrorMatrix = null;
                shader.setLocalMatrix(Matrix.IDENTITY_MATRIX);
            }
        }
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
            this.mApplyGravity = true;
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
        invalidateSelf();
    }

    public final void setTileModeY(Shader.TileMode tileMode) {
        setTileModeXY(this.mBitmapState.mTileModeX, tileMode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setXfermode(Xfermode xfermode) {
        this.mBitmapState.mPaint.setXfermode(xfermode);
        invalidateSelf();
    }

    @Deprecated
    public BitmapDrawable() {
        this.mDstRect = new Rect();
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
            if (this.mBitmap != null) {
                computeBitmapSize();
            }
            invalidateSelf();
        }
    }

    @Deprecated
    public BitmapDrawable(Resources resources) {
        this.mDstRect = new Rect();
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
        if (this.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + str);
        }
    }

    public BitmapDrawable(Resources resources, String str) {
        this(new BitmapState(BitmapFactory.decodeFile(str)), (Resources) null);
        this.mBitmapState.mTargetDensity = this.mTargetDensity;
        if (this.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + str);
        }
    }

    @Deprecated
    public BitmapDrawable(InputStream inputStream) {
        this(new BitmapState(BitmapFactory.decodeStream(inputStream)), (Resources) null);
        if (this.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + inputStream);
        }
    }

    public BitmapDrawable(Resources resources, InputStream inputStream) {
        this(new BitmapState(BitmapFactory.decodeStream(inputStream)), (Resources) null);
        this.mBitmapState.mTargetDensity = this.mTargetDensity;
        if (this.mBitmap == null) {
            Log.w("BitmapDrawable", "BitmapDrawable cannot decode " + inputStream);
        }
    }

    private BitmapDrawable(BitmapState bitmapState, Resources resources) {
        this.mDstRect = new Rect();
        this.mBitmapState = bitmapState;
        if (resources != null) {
            this.mTargetDensity = resources.getDisplayMetrics().densityDpi;
        } else {
            this.mTargetDensity = bitmapState.mTargetDensity;
        }
        setBitmap(bitmapState != null ? bitmapState.mBitmap : null);
    }
}
