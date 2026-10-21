package com.android.internal.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public class ImageUtils {
    private static final int ALPHA_TOLERANCE = 50;
    private static final int COMPACT_BITMAP_SIZE = 64;
    private static final int TOLERANCE = 20;
    private int[] mTempBuffer;
    private Bitmap mTempCompactBitmap;
    private Canvas mTempCompactBitmapCanvas;
    private Paint mTempCompactBitmapPaint;
    private final Matrix mTempMatrix = new Matrix();

    public static Bitmap buildScaledBitmap(Drawable drawable, int i2, int i3) {
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= i2 && intrinsicHeight <= i3 && (drawable instanceof BitmapDrawable)) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        if (intrinsicHeight <= 0 || intrinsicWidth <= 0) {
            return null;
        }
        float f2 = intrinsicWidth;
        float f3 = intrinsicHeight;
        float fMin = Math.min(1.0f, Math.min(i2 / f2, i3 / f3));
        int i4 = (int) (f2 * fMin);
        int i5 = (int) (fMin * f3);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i4, i5, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, i4, i5);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private void ensureBufferSize(int i2) {
        int[] iArr = this.mTempBuffer;
        if (iArr == null || iArr.length < i2) {
            this.mTempBuffer = new int[i2];
        }
    }

    public boolean isGrayscale(Bitmap bitmap) {
        Bitmap bitmap2;
        int i2;
        int i3;
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        if (height > 64 || width > 64) {
            if (this.mTempCompactBitmap == null) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
                this.mTempCompactBitmap = bitmapCreateBitmap;
                this.mTempCompactBitmapCanvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint(1);
                this.mTempCompactBitmapPaint = paint;
                paint.setFilterBitmap(true);
            }
            this.mTempMatrix.reset();
            this.mTempMatrix.setScale(64.0f / width, 64.0f / height, 0.0f, 0.0f);
            this.mTempCompactBitmapCanvas.drawColor(0, PorterDuff.Mode.SRC);
            this.mTempCompactBitmapCanvas.drawBitmap(bitmap, this.mTempMatrix, this.mTempCompactBitmapPaint);
            bitmap2 = this.mTempCompactBitmap;
            i2 = 64;
            i3 = 64;
        } else {
            bitmap2 = bitmap;
            i3 = height;
            i2 = width;
        }
        int i4 = i3 * i2;
        ensureBufferSize(i4);
        bitmap2.getPixels(this.mTempBuffer, 0, i2, 0, 0, i2, i3);
        for (int i5 = 0; i5 < i4; i5++) {
            if (!isGrayscale(this.mTempBuffer[i5])) {
                return false;
            }
        }
        return true;
    }

    public static boolean isGrayscale(int i2) {
        if (((i2 >> 24) & 255) < 50) {
            return true;
        }
        int i3 = (i2 >> 16) & 255;
        int i4 = (i2 >> 8) & 255;
        int i5 = i2 & 255;
        return Math.abs(i3 - i4) < 20 && Math.abs(i3 - i5) < 20 && Math.abs(i4 - i5) < 20;
    }
}
