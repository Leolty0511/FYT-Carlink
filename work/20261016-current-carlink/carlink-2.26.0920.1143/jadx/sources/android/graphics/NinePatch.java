package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class NinePatch {
    private final Bitmap mBitmap;
    public long mNativeChunk;
    private Paint mPaint;
    private String mSrcName;

    public static class InsetStruct {
        public final Rect opticalRect;
        public final float outlineAlpha;
        public final float outlineRadius;
        public final Rect outlineRect;

        public InsetStruct(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f2, int i10, float f3) {
            Rect rect = new Rect(i2, i3, i4, i5);
            this.opticalRect = rect;
            rect.scale(f3);
            this.outlineRect = scaleInsets(i6, i7, i8, i9, f3);
            this.outlineRadius = f2 * f3;
            this.outlineAlpha = i10 / 255.0f;
        }

        public static Rect scaleInsets(int i2, int i3, int i4, int i5, float f2) {
            if (f2 == 1.0f) {
                return new Rect(i2, i3, i4, i5);
            }
            Rect rect = new Rect();
            rect.left = (int) Math.ceil(i2 * f2);
            rect.top = (int) Math.ceil(i3 * f2);
            rect.right = (int) Math.ceil(i4 * f2);
            rect.bottom = (int) Math.ceil(i5 * f2);
            return rect;
        }
    }

    public NinePatch(Bitmap bitmap, byte[] bArr) {
        this(bitmap, bArr, null);
    }

    public static native boolean isNinePatchChunk(byte[] bArr);

    private static native void nativeFinalize(long j2);

    private static native long nativeGetTransparentRegion(Bitmap bitmap, long j2, Rect rect);

    private static native long validateNinePatchChunk(byte[] bArr);

    public void draw(Canvas canvas, RectF rectF) {
        canvas.drawPatch(this, rectF, this.mPaint);
    }

    public void finalize() throws Throwable {
        try {
            long j2 = this.mNativeChunk;
            if (j2 != 0) {
                nativeFinalize(j2);
                this.mNativeChunk = 0L;
            }
        } finally {
            super.finalize();
        }
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public int getDensity() {
        return this.mBitmap.mDensity;
    }

    public int getHeight() {
        return this.mBitmap.getHeight();
    }

    public String getName() {
        return this.mSrcName;
    }

    public Paint getPaint() {
        return this.mPaint;
    }

    public final Region getTransparentRegion(Rect rect) {
        long jNativeGetTransparentRegion = nativeGetTransparentRegion(this.mBitmap, this.mNativeChunk, rect);
        if (jNativeGetTransparentRegion != 0) {
            return new Region(jNativeGetTransparentRegion);
        }
        return null;
    }

    public int getWidth() {
        return this.mBitmap.getWidth();
    }

    public final boolean hasAlpha() {
        return this.mBitmap.hasAlpha();
    }

    public void setPaint(Paint paint) {
        this.mPaint = paint;
    }

    public NinePatch(Bitmap bitmap, byte[] bArr, String str) {
        this.mBitmap = bitmap;
        this.mSrcName = str;
        this.mNativeChunk = validateNinePatchChunk(bArr);
    }

    public void draw(Canvas canvas, Rect rect) {
        canvas.drawPatch(this, rect, this.mPaint);
    }

    public void draw(Canvas canvas, Rect rect, Paint paint) {
        canvas.drawPatch(this, rect, paint);
    }

    public NinePatch(NinePatch ninePatch) {
        this.mBitmap = ninePatch.mBitmap;
        this.mSrcName = ninePatch.mSrcName;
        if (ninePatch.mPaint != null) {
            this.mPaint = new Paint(ninePatch.mPaint);
        }
        this.mNativeChunk = ninePatch.mNativeChunk;
    }
}
