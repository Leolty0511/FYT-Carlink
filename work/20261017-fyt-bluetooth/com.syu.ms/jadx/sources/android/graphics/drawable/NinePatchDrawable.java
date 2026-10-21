package android.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import i.a;
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
    private NinePatch mNinePatch;
    private NinePatchState mNinePatchState;
    private Insets mOpticalInsets;
    private Rect mPadding;
    private Paint mPaint;
    private int mTargetDensity;

    public static final class NinePatchState extends Drawable.ConstantState {
        public boolean mAutoMirrored;
        public int mChangingConfigurations;
        public final boolean mDither;
        public final NinePatch mNinePatch;
        public final Insets mOpticalInsets;
        public final Rect mPadding;
        public int mTargetDensity;

        public NinePatchState(NinePatch ninePatch, Rect rect) {
            this(ninePatch, rect, new Rect(), false, false);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Bitmap getBitmap() {
            return this.mNinePatch.getBitmap();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new NinePatchDrawable(this, null);
        }

        public NinePatchState(NinePatch ninePatch, Rect rect, Rect rect2) {
            this(ninePatch, rect, rect2, false, false);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new NinePatchDrawable(this, resources);
        }

        public NinePatchState(NinePatch ninePatch, Rect rect, Rect rect2, boolean z2, boolean z3) {
            this.mTargetDensity = 160;
            this.mNinePatch = ninePatch;
            this.mPadding = rect;
            this.mOpticalInsets = Insets.of(rect2);
            this.mDither = z2;
            this.mAutoMirrored = z3;
        }

        public NinePatchState(NinePatchState ninePatchState) {
            this.mTargetDensity = 160;
            this.mNinePatch = ninePatchState.mNinePatch;
            this.mPadding = ninePatchState.mPadding;
            this.mOpticalInsets = ninePatchState.mOpticalInsets;
            this.mDither = ninePatchState.mDither;
            this.mChangingConfigurations = ninePatchState.mChangingConfigurations;
            this.mTargetDensity = ninePatchState.mTargetDensity;
            this.mAutoMirrored = ninePatchState.mAutoMirrored;
        }
    }

    private void computeBitmapSize() {
        Rect rect;
        int density = this.mNinePatch.getDensity();
        int i2 = this.mTargetDensity;
        if (density == i2) {
            this.mBitmapWidth = this.mNinePatch.getWidth();
            this.mBitmapHeight = this.mNinePatch.getHeight();
            this.mOpticalInsets = this.mNinePatchState.mOpticalInsets;
            return;
        }
        this.mBitmapWidth = Bitmap.scaleFromDensity(this.mNinePatch.getWidth(), density, i2);
        this.mBitmapHeight = Bitmap.scaleFromDensity(this.mNinePatch.getHeight(), density, i2);
        Rect rect2 = this.mNinePatchState.mPadding;
        if (rect2 != null && (rect = this.mPadding) != null) {
            if (rect == rect2) {
                rect = new Rect(rect2);
                this.mPadding = rect;
            }
            rect.left = Bitmap.scaleFromDensity(rect2.left, density, i2);
            rect.top = Bitmap.scaleFromDensity(rect2.top, density, i2);
            rect.right = Bitmap.scaleFromDensity(rect2.right, density, i2);
            rect.bottom = Bitmap.scaleFromDensity(rect2.bottom, density, i2);
        }
        this.mOpticalInsets = scaleFromDensity(this.mNinePatchState.mOpticalInsets, density, i2);
    }

    private boolean needsMirroring() {
        return isAutoMirrored() && getLayoutDirection() == 1;
    }

    private static Insets scaleFromDensity(Insets insets, int i2, int i3) {
        return Insets.of(Bitmap.scaleFromDensity(insets.left, i2, i3), Bitmap.scaleFromDensity(insets.top, i2, i3), Bitmap.scaleFromDensity(insets.right, i2, i3), Bitmap.scaleFromDensity(insets.bottom, i2, i3));
    }

    private void setNinePatchState(NinePatchState ninePatchState, Resources resources) {
        this.mNinePatchState = ninePatchState;
        this.mNinePatch = ninePatchState.mNinePatch;
        this.mPadding = ninePatchState.mPadding;
        this.mTargetDensity = resources != null ? resources.getDisplayMetrics().densityDpi : ninePatchState.mTargetDensity;
        boolean z2 = ninePatchState.mDither;
        if (z2) {
            setDither(z2);
        }
        setAutoMirrored(ninePatchState.mAutoMirrored);
        if (this.mNinePatch != null) {
            computeBitmapSize();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        boolean zNeedsMirroring = needsMirroring();
        if (zNeedsMirroring) {
            canvas.save();
            canvas.translate(bounds.right - bounds.left, 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        this.mNinePatch.draw(canvas, bounds, this.mPaint);
        if (zNeedsMirroring) {
            canvas.restore();
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
        return super.getChangingConfigurations() | this.mNinePatchState.mChangingConfigurations;
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
    public int getMinimumHeight() {
        return this.mBitmapHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.mBitmapWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Paint paint;
        return (this.mNinePatch.hasAlpha() || ((paint = this.mPaint) != null && paint.getAlpha() < 255)) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public Insets getOpticalInsets() {
        if (!needsMirroring()) {
            return this.mOpticalInsets;
        }
        Insets insets = this.mOpticalInsets;
        int i2 = insets.right;
        return Insets.of(i2, insets.top, i2, insets.bottom);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (needsMirroring()) {
            Rect rect2 = this.mPadding;
            rect.set(rect2.right, rect2.top, rect2.left, rect2.bottom);
        } else {
            rect.set(this.mPadding);
        }
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
        return this.mNinePatch.getTransparentRegion(getBounds());
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException {
        super.inflate(resources, xmlPullParser, attributeSet);
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.NinePatchDrawable);
        int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
        if (resourceId == 0) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <nine-patch> requires a valid src attribute");
        }
        boolean z2 = typedArrayObtainAttributes.getBoolean(1, false);
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (z2) {
            options.inDither = false;
        }
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
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <nine-patch> requires a valid src attribute");
        }
        if (bitmapDecodeResourceStream.getNinePatchChunk() == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <nine-patch> requires a valid 9-patch source image");
        }
        setNinePatchState(new NinePatchState(new NinePatch(bitmapDecodeResourceStream, bitmapDecodeResourceStream.getNinePatchChunk()), rect, rect2, z2, typedArrayObtainAttributes.getBoolean(2, false)), resources);
        this.mNinePatchState.mTargetDensity = this.mTargetDensity;
        typedArrayObtainAttributes.recycle();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.mNinePatchState.mAutoMirrored;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            NinePatchState ninePatchState = new NinePatchState(this.mNinePatchState);
            this.mNinePatchState = ninePatchState;
            this.mNinePatch = ninePatchState.mNinePatch;
            this.mMutated = true;
        }
        return this;
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

    public NinePatchDrawable() {
        this.mOpticalInsets = Insets.NONE;
        this.mTargetDensity = 160;
    }

    public void setTargetDensity(DisplayMetrics displayMetrics) {
        setTargetDensity(displayMetrics.densityDpi);
    }

    public void setTargetDensity(int i2) {
        if (i2 != this.mTargetDensity) {
            if (i2 == 0) {
                i2 = 160;
            }
            this.mTargetDensity = i2;
            if (this.mNinePatch != null) {
                computeBitmapSize();
            }
            invalidateSelf();
        }
    }

    @Deprecated
    public NinePatchDrawable(Bitmap bitmap, byte[] bArr, Rect rect, String str) {
        this(new NinePatchState(new NinePatch(bitmap, bArr, str), rect), (Resources) null);
    }

    public NinePatchDrawable(Resources resources, Bitmap bitmap, byte[] bArr, Rect rect, String str) {
        this(new NinePatchState(new NinePatch(bitmap, bArr, str), rect), resources);
        this.mNinePatchState.mTargetDensity = this.mTargetDensity;
    }

    public NinePatchDrawable(Resources resources, Bitmap bitmap, byte[] bArr, Rect rect, Rect rect2, String str) {
        this(new NinePatchState(new NinePatch(bitmap, bArr, str), rect, rect2), resources);
        this.mNinePatchState.mTargetDensity = this.mTargetDensity;
    }

    @Deprecated
    public NinePatchDrawable(NinePatch ninePatch) {
        this(new NinePatchState(ninePatch, new Rect()), (Resources) null);
    }

    public NinePatchDrawable(Resources resources, NinePatch ninePatch) {
        this(new NinePatchState(ninePatch, new Rect()), resources);
        this.mNinePatchState.mTargetDensity = this.mTargetDensity;
    }

    private NinePatchDrawable(NinePatchState ninePatchState, Resources resources) {
        this.mOpticalInsets = Insets.NONE;
        this.mTargetDensity = 160;
        setNinePatchState(ninePatchState, resources);
    }
}
