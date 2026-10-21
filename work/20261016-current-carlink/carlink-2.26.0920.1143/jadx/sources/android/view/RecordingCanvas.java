package android.view;

import android.graphics.BaseCanvas;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.TemporaryBuffer;
import android.text.GraphicsOperations;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import dalvik.annotation.optimization.FastNative;

/* JADX INFO: loaded from: classes2.dex */
public class RecordingCanvas extends Canvas {
    public RecordingCanvas(long j2) {
        super(j2);
    }

    @FastNative
    private static native void nDrawArc(long j2, float f2, float f3, float f4, float f5, float f6, float f7, boolean z2, long j3);

    @FastNative
    private static native void nDrawBitmap(long j2, Bitmap bitmap, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, long j3, int i2, int i3);

    @FastNative
    private static native void nDrawBitmap(long j2, Bitmap bitmap, float f2, float f3, long j3, int i2, int i3, int i4);

    @FastNative
    private static native void nDrawBitmap(long j2, int[] iArr, int i2, int i3, float f2, float f3, int i4, int i5, boolean z2, long j3);

    @FastNative
    private static native void nDrawBitmapMatrix(long j2, Bitmap bitmap, long j3, long j4);

    @FastNative
    private static native void nDrawBitmapMesh(long j2, Bitmap bitmap, int i2, int i3, float[] fArr, int i4, int[] iArr, int i5, long j3);

    @FastNative
    private static native void nDrawCircle(long j2, float f2, float f3, float f4, long j3);

    @FastNative
    private static native void nDrawColor(long j2, int i2, int i3);

    @FastNative
    private static native void nDrawLine(long j2, float f2, float f3, float f4, float f5, long j3);

    @FastNative
    private static native void nDrawLines(long j2, float[] fArr, int i2, int i3, long j3);

    @FastNative
    private static native void nDrawNinePatch(long j2, long j3, long j4, float f2, float f3, float f4, float f5, long j5, int i2, int i3);

    @FastNative
    private static native void nDrawOval(long j2, float f2, float f3, float f4, float f5, long j3);

    @FastNative
    private static native void nDrawPaint(long j2, long j3);

    @FastNative
    private static native void nDrawPath(long j2, long j3, long j4);

    @FastNative
    private static native void nDrawPoint(long j2, float f2, float f3, long j3);

    @FastNative
    private static native void nDrawPoints(long j2, float[] fArr, int i2, int i3, long j3);

    @FastNative
    private static native void nDrawRect(long j2, float f2, float f3, float f4, float f5, long j3);

    @FastNative
    private static native void nDrawRegion(long j2, long j3, long j4);

    @FastNative
    private static native void nDrawRoundRect(long j2, float f2, float f3, float f4, float f5, float f6, float f7, long j3);

    @FastNative
    private static native void nDrawText(long j2, String str, int i2, int i3, float f2, float f3, int i4, long j3, long j4);

    @FastNative
    private static native void nDrawText(long j2, char[] cArr, int i2, int i3, float f2, float f3, int i4, long j3, long j4);

    @FastNative
    private static native void nDrawTextOnPath(long j2, String str, long j3, float f2, float f3, int i2, long j4, long j5);

    @FastNative
    private static native void nDrawTextOnPath(long j2, char[] cArr, int i2, int i3, long j3, float f2, float f3, int i4, long j4, long j5);

    @FastNative
    private static native void nDrawTextRun(long j2, String str, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, long j3, long j4);

    @FastNative
    private static native void nDrawTextRun(long j2, char[] cArr, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, long j3, long j4);

    @FastNative
    private static native void nDrawVertices(long j2, int i2, int i3, float[] fArr, int i4, float[] fArr2, int i5, int[] iArr, int i6, short[] sArr, int i7, int i8, long j3);

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawARGB(int i2, int i3, int i4, int i5) {
        drawColor(Color.argb(i2, i3, i4, i5));
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawArc(float f2, float f3, float f4, float f5, float f6, float f7, boolean z2, Paint paint) {
        nDrawArc(this.mNativeCanvasWrapper, f2, f3, f4, f5, f6, f7, z2, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawBitmap(Bitmap bitmap, float f2, float f3, Paint paint) {
        throwIfCannotDraw(bitmap);
        nDrawBitmap(this.mNativeCanvasWrapper, bitmap, f2, f3, paint != null ? paint.getNativeInstance() : 0L, this.mDensity, this.mScreenDensity, bitmap.mDensity);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawBitmapMesh(Bitmap bitmap, int i2, int i3, float[] fArr, int i4, int[] iArr, int i5, Paint paint) {
        if ((i2 | i3 | i4 | i5) < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (i2 == 0 || i3 == 0) {
            return;
        }
        int i6 = (i3 + 1) * (i2 + 1);
        BaseCanvas.checkRange(fArr.length, i4, i6 * 2);
        if (iArr != null) {
            BaseCanvas.checkRange(iArr.length, i5, i6);
        }
        nDrawBitmapMesh(this.mNativeCanvasWrapper, bitmap, i2, i3, fArr, i4, iArr, i5, paint != null ? paint.getNativeInstance() : 0L);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawCircle(float f2, float f3, float f4, Paint paint) {
        nDrawCircle(this.mNativeCanvasWrapper, f2, f3, f4, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawColor(int i2) {
        nDrawColor(this.mNativeCanvasWrapper, i2, PorterDuff.Mode.SRC_OVER.nativeInt);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawLine(float f2, float f3, float f4, float f5, Paint paint) {
        nDrawLine(this.mNativeCanvasWrapper, f2, f3, f4, f5, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawLines(float[] fArr, int i2, int i3, Paint paint) {
        nDrawLines(this.mNativeCanvasWrapper, fArr, i2, i3, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawOval(float f2, float f3, float f4, float f5, Paint paint) {
        nDrawOval(this.mNativeCanvasWrapper, f2, f3, f4, f5, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawPaint(Paint paint) {
        nDrawPaint(this.mNativeCanvasWrapper, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        Bitmap bitmap = ninePatch.getBitmap();
        throwIfCannotDraw(bitmap);
        nDrawNinePatch(this.mNativeCanvasWrapper, bitmap.getNativeInstance(), ninePatch.mNativeChunk, rect.left, rect.top, rect.right, rect.bottom, paint == null ? 0L : paint.getNativeInstance(), this.mDensity, ninePatch.getDensity());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawPath(Path path, Paint paint) {
        Region region;
        if (!path.isSimplePath || (region = path.rects) == null) {
            nDrawPath(this.mNativeCanvasWrapper, path.readOnlyNI(), paint.getNativeInstance());
        } else {
            nDrawRegion(this.mNativeCanvasWrapper, region.mNativeRegion, paint.getNativeInstance());
        }
    }

    @Override // android.graphics.Canvas
    public final void drawPicture(Picture picture) {
        picture.endRecording();
        int iSave = save();
        picture.draw(this);
        restoreToCount(iSave);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawPoint(float f2, float f3, Paint paint) {
        nDrawPoint(this.mNativeCanvasWrapper, f2, f3, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawPoints(float[] fArr, int i2, int i3, Paint paint) {
        nDrawPoints(this.mNativeCanvasWrapper, fArr, i2, i3, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    @Deprecated
    public final void drawPosText(char[] cArr, int i2, int i3, float[] fArr, Paint paint) {
        if (i2 < 0 || i2 + i3 > cArr.length || i3 * 2 > fArr.length) {
            throw new IndexOutOfBoundsException();
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i4 * 2;
            drawText(cArr, i2 + i4, 1, fArr[i5], fArr[i5 + 1], paint);
        }
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawRGB(int i2, int i3, int i4) {
        drawColor(Color.rgb(i2, i3, i4));
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawRect(float f2, float f3, float f4, float f5, Paint paint) {
        nDrawRect(this.mNativeCanvasWrapper, f2, f3, f4, f5, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawRoundRect(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint) {
        nDrawRoundRect(this.mNativeCanvasWrapper, f2, f3, f4, f5, f6, f7, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawText(char[] cArr, int i2, int i3, float f2, float f3, Paint paint) {
        if ((i2 | i3 | (i2 + i3) | ((cArr.length - i2) - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        nDrawText(this.mNativeCanvasWrapper, cArr, i2, i3, f2, f3, paint.mBidiFlags, paint.getNativeInstance(), paint.mNativeTypeface);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawTextOnPath(char[] cArr, int i2, int i3, Path path, float f2, float f3, Paint paint) {
        if (i2 < 0 || i2 + i3 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        nDrawTextOnPath(this.mNativeCanvasWrapper, cArr, i2, i3, path.readOnlyNI(), f2, f3, paint.mBidiFlags, paint.getNativeInstance(), paint.mNativeTypeface);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawTextRun(char[] cArr, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, Paint paint) {
        if (cArr == null) {
            throw new NullPointerException("text is null");
        }
        if (paint == null) {
            throw new NullPointerException("paint is null");
        }
        int i6 = i4 + i5;
        if ((i2 | i3 | i4 | i5 | (i2 - i4) | (i6 - (i2 + i3)) | (cArr.length - i6)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        nDrawTextRun(this.mNativeCanvasWrapper, cArr, i2, i3, i4, i5, f2, f3, z2, paint.getNativeInstance(), paint.mNativeTypeface);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawVertices(Canvas.VertexMode vertexMode, int i2, float[] fArr, int i3, float[] fArr2, int i4, int[] iArr, int i5, short[] sArr, int i6, int i7, Paint paint) {
        BaseCanvas.checkRange(fArr.length, i3, i2);
        if (isHardwareAccelerated()) {
            return;
        }
        if (fArr2 != null) {
            BaseCanvas.checkRange(fArr2.length, i4, i2);
        }
        if (iArr != null) {
            BaseCanvas.checkRange(iArr.length, i5, i2 / 2);
        }
        if (sArr != null) {
            BaseCanvas.checkRange(sArr.length, i6, i7);
        }
        nDrawVertices(this.mNativeCanvasWrapper, vertexMode.nativeInt, i2, fArr, i3, fArr2, i4, iArr, i5, sArr, i6, i7, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawColor(int i2, PorterDuff.Mode mode) {
        nDrawColor(this.mNativeCanvasWrapper, i2, mode.nativeInt);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawLines(float[] fArr, Paint paint) {
        drawLines(fArr, 0, fArr.length, paint);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawOval(RectF rectF, Paint paint) {
        rectF.getClass();
        drawOval(rectF.left, rectF.top, rectF.right, rectF.bottom, paint);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawPoints(float[] fArr, Paint paint) {
        drawPoints(fArr, 0, fArr.length, paint);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawRect(Rect rect, Paint paint) {
        drawRect(rect.left, rect.top, rect.right, rect.bottom, paint);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawRect(RectF rectF, Paint paint) {
        nDrawRect(this.mNativeCanvasWrapper, rectF.left, rectF.top, rectF.right, rectF.bottom, paint.getNativeInstance());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawArc(RectF rectF, float f2, float f3, boolean z2, Paint paint) {
        drawArc(rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3, z2, paint);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    @Deprecated
    public final void drawPosText(String str, float[] fArr, Paint paint) {
        drawPosText(str.toCharArray(), 0, str.length(), fArr, paint);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawRoundRect(RectF rectF, float f2, float f3, Paint paint) {
        drawRoundRect(rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3, paint);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        nDrawBitmapMatrix(this.mNativeCanvasWrapper, bitmap, matrix.ni(), paint != null ? paint.getNativeInstance() : 0L);
    }

    @Override // android.graphics.Canvas
    public final void drawPicture(Picture picture, Rect rect) {
        save();
        translate(rect.left, rect.top);
        if (picture.getWidth() > 0 && picture.getHeight() > 0) {
            scale(rect.width() / picture.getWidth(), rect.height() / picture.getHeight());
        }
        drawPicture(picture);
        restore();
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawText(CharSequence charSequence, int i2, int i3, float f2, float f3, Paint paint) {
        int i4 = i3 - i2;
        if ((i2 | i3 | i4 | (charSequence.length() - i3)) >= 0) {
            if (!(charSequence instanceof String) && !(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                if (charSequence instanceof GraphicsOperations) {
                    ((GraphicsOperations) charSequence).drawText(this, i2, i3, f2, f3, paint);
                    return;
                }
                char[] cArrObtain = TemporaryBuffer.obtain(i4);
                TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
                nDrawText(this.mNativeCanvasWrapper, cArrObtain, 0, i4, f2, f3, paint.mBidiFlags, paint.getNativeInstance(), paint.mNativeTypeface);
                TemporaryBuffer.recycle(cArrObtain);
                return;
            }
            nDrawText(this.mNativeCanvasWrapper, charSequence.toString(), i2, i3, f2, f3, paint.mBidiFlags, paint.getNativeInstance(), paint.mNativeTypeface);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        Bitmap bitmap = ninePatch.getBitmap();
        throwIfCannotDraw(bitmap);
        nDrawNinePatch(this.mNativeCanvasWrapper, bitmap.getNativeInstance(), ninePatch.mNativeChunk, rectF.left, rectF.top, rectF.right, rectF.bottom, paint == null ? 0L : paint.getNativeInstance(), this.mDensity, ninePatch.getDensity());
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawTextOnPath(String str, Path path, float f2, float f3, Paint paint) {
        if (str.length() > 0) {
            nDrawTextOnPath(this.mNativeCanvasWrapper, str, path.readOnlyNI(), f2, f3, paint.mBidiFlags, paint.getNativeInstance(), paint.mNativeTypeface);
        }
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        int i2;
        int i3;
        int height;
        int width;
        rect2.getClass();
        throwIfCannotDraw(bitmap);
        long nativeInstance = paint == null ? 0L : paint.getNativeInstance();
        if (rect == null) {
            width = bitmap.getWidth();
            height = bitmap.getHeight();
            i2 = 0;
            i3 = 0;
        } else {
            i2 = rect.left;
            int i4 = rect.right;
            i3 = rect.top;
            height = rect.bottom;
            width = i4;
        }
        nDrawBitmap(this.mNativeCanvasWrapper, bitmap, i2, i3, width, height, rect2.left, rect2.top, rect2.right, rect2.bottom, nativeInstance, this.mScreenDensity, bitmap.mDensity);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawTextRun(CharSequence charSequence, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, Paint paint) {
        if (charSequence == null) {
            throw new NullPointerException("text is null");
        }
        if (paint != null) {
            int i6 = i2 - i4;
            int i7 = i3 - i2;
            if ((i2 | i3 | i4 | i5 | i6 | i7 | (i5 - i3) | (charSequence.length() - i5)) >= 0) {
                if (!(charSequence instanceof String) && !(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                    if (charSequence instanceof GraphicsOperations) {
                        ((GraphicsOperations) charSequence).drawTextRun(this, i2, i3, i4, i5, f2, f3, z2, paint);
                        return;
                    }
                    int i8 = i5 - i4;
                    char[] cArrObtain = TemporaryBuffer.obtain(i8);
                    TextUtils.getChars(charSequence, i4, i5, cArrObtain, 0);
                    nDrawTextRun(this.mNativeCanvasWrapper, cArrObtain, i6, i7, 0, i8, f2, f3, z2, paint.getNativeInstance(), paint.mNativeTypeface);
                    TemporaryBuffer.recycle(cArrObtain);
                    return;
                }
                nDrawTextRun(this.mNativeCanvasWrapper, charSequence.toString(), i2, i3, i4, i5, f2, f3, z2, paint.getNativeInstance(), paint.mNativeTypeface);
                return;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new NullPointerException("paint is null");
    }

    @Override // android.graphics.Canvas
    public final void drawPicture(Picture picture, RectF rectF) {
        save();
        translate(rectF.left, rectF.top);
        if (picture.getWidth() > 0 && picture.getHeight() > 0) {
            scale(rectF.width() / picture.getWidth(), rectF.height() / picture.getHeight());
        }
        drawPicture(picture);
        restore();
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        float height;
        float f2;
        float width;
        float f3;
        rectF.getClass();
        throwIfCannotDraw(bitmap);
        long nativeInstance = paint == null ? 0L : paint.getNativeInstance();
        if (rect == null) {
            width = bitmap.getWidth();
            height = bitmap.getHeight();
            f2 = 0.0f;
            f3 = 0.0f;
        } else {
            float f4 = rect.left;
            float f5 = rect.right;
            float f6 = rect.top;
            height = rect.bottom;
            f2 = f4;
            width = f5;
            f3 = f6;
        }
        nDrawBitmap(this.mNativeCanvasWrapper, bitmap, f2, f3, width, height, rectF.left, rectF.top, rectF.right, rectF.bottom, nativeInstance, this.mScreenDensity, bitmap.mDensity);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawText(String str, float f2, float f3, Paint paint) {
        nDrawText(this.mNativeCanvasWrapper, str, 0, str.length(), f2, f3, paint.mBidiFlags, paint.getNativeInstance(), paint.mNativeTypeface);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public final void drawText(String str, int i2, int i3, float f2, float f3, Paint paint) {
        if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) >= 0) {
            nDrawText(this.mNativeCanvasWrapper, str, i2, i3, f2, f3, paint.mBidiFlags, paint.getNativeInstance(), paint.mNativeTypeface);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    @Deprecated
    public final void drawBitmap(int[] iArr, int i2, int i3, float f2, float f3, int i4, int i5, boolean z2, Paint paint) {
        if (i4 < 0) {
            throw new IllegalArgumentException("width must be >= 0");
        }
        if (i5 >= 0) {
            if (Math.abs(i3) >= i4) {
                int i6 = ((i5 - 1) * i3) + i2;
                int length = iArr.length;
                if (i2 < 0 || i2 + i4 > length || i6 < 0 || i6 + i4 > length) {
                    throw new ArrayIndexOutOfBoundsException();
                }
                if (i4 == 0 || i5 == 0) {
                    return;
                }
                nDrawBitmap(this.mNativeCanvasWrapper, iArr, i2, i3, f2, f3, i4, i5, z2, paint != null ? paint.getNativeInstance() : 0L);
                return;
            }
            throw new IllegalArgumentException("abs(stride) must be >= width");
        }
        throw new IllegalArgumentException("height must be >= 0");
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    @Deprecated
    public final void drawBitmap(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, Paint paint) {
        drawBitmap(iArr, i2, i3, i4, i5, i6, i7, z2, paint);
    }
}
