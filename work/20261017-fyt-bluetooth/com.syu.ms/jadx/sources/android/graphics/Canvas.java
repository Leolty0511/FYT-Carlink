package android.graphics;

import android.text.GraphicsOperations;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import b0.f;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Canvas {
    public static final int ALL_SAVE_FLAG = 31;
    public static final int CLIP_SAVE_FLAG = 2;
    public static final int CLIP_TO_LAYER_SAVE_FLAG = 16;
    public static final int DIRECTION_LTR = 0;
    public static final int DIRECTION_RTL = 1;
    public static final int FULL_COLOR_LAYER_SAVE_FLAG = 8;
    public static final int HAS_ALPHA_LAYER_SAVE_FLAG = 4;
    public static final int MATRIX_SAVE_FLAG = 1;
    private static final int MAXMIMUM_BITMAP_SIZE = 32766;
    private Bitmap mBitmap;
    public int mDensity;
    private DrawFilter mDrawFilter;
    private final CanvasFinalizer mFinalizer;
    public int mNativeCanvas;
    public int mScreenDensity;
    private int mSurfaceFormat;

    public static final class CanvasFinalizer {
        private int mNativeCanvas;

        public CanvasFinalizer(int i2) {
            this.mNativeCanvas = i2;
        }

        public void dispose() {
            int i2 = this.mNativeCanvas;
            if (i2 != 0) {
                Canvas.finalizer(i2);
                this.mNativeCanvas = 0;
            }
        }

        public void finalize() throws Throwable {
            try {
                dispose();
            } finally {
                super.finalize();
            }
        }
    }

    public enum EdgeType {
        BW(0),
        AA(1);

        public final int nativeInt;

        EdgeType(int i2) {
            this.nativeInt = i2;
        }
    }

    public enum VertexMode {
        TRIANGLES(0),
        TRIANGLE_STRIP(1),
        TRIANGLE_FAN(2);

        public final int nativeInt;

        VertexMode(int i2) {
            this.nativeInt = i2;
        }
    }

    public Canvas() {
        this.mDensity = 0;
        this.mScreenDensity = 0;
        if (isHardwareAccelerated()) {
            this.mFinalizer = null;
            return;
        }
        int iInitRaster = initRaster(0);
        this.mNativeCanvas = iInitRaster;
        this.mFinalizer = new CanvasFinalizer(iInitRaster);
    }

    public static void checkRange(int i2, int i3, int i4) {
        if ((i3 | i4) < 0 || i3 + i4 > i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    private static native void copyNativeCanvasState(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void finalizer(int i2);

    public static native void freeCaches();

    public static native void freeTextLayoutCaches();

    private static native int initRaster(int i2);

    private static native void nativeDrawBitmapMatrix(int i2, int i3, int i4, int i5);

    private static native void nativeDrawBitmapMesh(int i2, int i3, int i4, int i5, float[] fArr, int i6, int[] iArr, int i7, int i8);

    private static native void nativeDrawVertices(int i2, int i3, int i4, float[] fArr, int i5, float[] fArr2, int i6, int[] iArr, int i7, short[] sArr, int i8, int i9, int i10);

    private static native void nativeSetDrawFilter(int i2, int i3);

    private static native boolean native_clipPath(int i2, int i3, int i4);

    private static native boolean native_clipRect(int i2, float f2, float f3, float f4, float f5, int i3);

    private static native boolean native_clipRegion(int i2, int i3, int i4);

    private static native void native_concat(int i2, int i3);

    private static native void native_drawARGB(int i2, int i3, int i4, int i5, int i6);

    private static native void native_drawArc(int i2, RectF rectF, float f2, float f3, boolean z2, int i3);

    private native void native_drawBitmap(int i2, int i3, float f2, float f3, int i4, int i5, int i6, int i7);

    private static native void native_drawBitmap(int i2, int i3, Rect rect, Rect rect2, int i4, int i5, int i6);

    private native void native_drawBitmap(int i2, int i3, Rect rect, RectF rectF, int i4, int i5, int i6);

    private static native void native_drawBitmap(int i2, int[] iArr, int i3, int i4, float f2, float f3, int i5, int i6, boolean z2, int i7);

    private static native void native_drawCircle(int i2, float f2, float f3, float f4, int i3);

    private static native void native_drawColor(int i2, int i3);

    private static native void native_drawColor(int i2, int i3, int i4);

    private static native void native_drawLine(int i2, float f2, float f3, float f4, float f5, int i3);

    private static native void native_drawOval(int i2, RectF rectF, int i3);

    private static native void native_drawPaint(int i2, int i3);

    private static native void native_drawPath(int i2, int i3, int i4);

    private static native void native_drawPosText(int i2, String str, float[] fArr, int i3);

    private static native void native_drawPosText(int i2, char[] cArr, int i3, int i4, float[] fArr, int i5);

    private static native void native_drawRGB(int i2, int i3, int i4, int i5);

    private static native void native_drawRect(int i2, float f2, float f3, float f4, float f5, int i3);

    private static native void native_drawRect(int i2, RectF rectF, int i3);

    private static native void native_drawRoundRect(int i2, RectF rectF, float f2, float f3, int i3);

    private static native void native_drawText(int i2, String str, int i3, int i4, float f2, float f3, int i5, int i6);

    private static native void native_drawText(int i2, char[] cArr, int i3, int i4, float f2, float f3, int i5, int i6);

    private static native void native_drawTextOnPath(int i2, String str, int i3, float f2, float f3, int i4, int i5);

    private static native void native_drawTextOnPath(int i2, char[] cArr, int i3, int i4, int i5, float f2, float f3, int i6, int i7);

    private static native void native_drawTextRun(int i2, String str, int i3, int i4, int i5, int i6, float f2, float f3, int i7, int i8);

    private static native void native_drawTextRun(int i2, char[] cArr, int i3, int i4, int i5, int i6, float f2, float f3, int i7, int i8);

    private static native void native_getCTM(int i2, int i3);

    private static native boolean native_getClipBounds(int i2, Rect rect);

    private static native boolean native_quickReject(int i2, float f2, float f3, float f4, float f5);

    private static native boolean native_quickReject(int i2, int i3);

    private static native boolean native_quickReject(int i2, RectF rectF);

    private static native int native_saveLayer(int i2, float f2, float f3, float f4, float f5, int i3, int i4);

    private static native int native_saveLayer(int i2, RectF rectF, int i3, int i4);

    private static native int native_saveLayerAlpha(int i2, float f2, float f3, float f4, float f5, int i3, int i4);

    private static native int native_saveLayerAlpha(int i2, RectF rectF, int i3, int i4);

    private static native void native_setMatrix(int i2, int i3);

    private void safeCanvasSwap(int i2, boolean z2) {
        int i3 = this.mNativeCanvas;
        this.mNativeCanvas = i2;
        this.mFinalizer.mNativeCanvas = i2;
        if (z2) {
            copyNativeCanvasState(i3, this.mNativeCanvas);
        }
        finalizer(i3);
    }

    public static void throwIfCannotDraw(Bitmap bitmap) {
        if (bitmap.isRecycled()) {
            throw new RuntimeException("Canvas: trying to use a recycled bitmap " + bitmap);
        }
        if (!bitmap.isPremultiplied() && bitmap.getConfig() == Bitmap.Config.ARGB_8888 && bitmap.hasAlpha()) {
            throw new RuntimeException("Canvas: trying to use a non-premultiplied bitmap " + bitmap);
        }
    }

    public boolean clipPath(Path path, Region.Op op) {
        return native_clipPath(this.mNativeCanvas, path.ni(), op.nativeInt);
    }

    public native boolean clipRect(float f2, float f3, float f4, float f5);

    public native boolean clipRect(int i2, int i3, int i4, int i5);

    public native boolean clipRect(Rect rect);

    public native boolean clipRect(RectF rectF);

    public boolean clipRect(RectF rectF, Region.Op op) {
        return native_clipRect(this.mNativeCanvas, rectF.left, rectF.top, rectF.right, rectF.bottom, op.nativeInt);
    }

    public boolean clipRegion(Region region, Region.Op op) {
        return native_clipRegion(this.mNativeCanvas, region.ni(), op.nativeInt);
    }

    public void concat(Matrix matrix) {
        if (matrix != null) {
            native_concat(this.mNativeCanvas, matrix.native_instance);
        }
    }

    public void drawARGB(int i2, int i3, int i4, int i5) {
        native_drawARGB(this.mNativeCanvas, i2, i3, i4, i5);
    }

    public void drawArc(RectF rectF, float f2, float f3, boolean z2, Paint paint) {
        Objects.requireNonNull(rectF);
        native_drawArc(this.mNativeCanvas, rectF, f2, f3, z2, paint.mNativePaint);
    }

    public void drawBitmap(Bitmap bitmap, float f2, float f3, Paint paint) {
        throwIfCannotDraw(bitmap);
        native_drawBitmap(this.mNativeCanvas, bitmap.ni(), f2, f3, paint != null ? paint.mNativePaint : 0, this.mDensity, this.mScreenDensity, bitmap.mDensity);
    }

    public void drawBitmapMesh(Bitmap bitmap, int i2, int i3, float[] fArr, int i4, int[] iArr, int i5, Paint paint) {
        if ((i2 | i3 | i4 | i5) < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (i2 == 0 || i3 == 0) {
            return;
        }
        int i6 = (i2 + 1) * (i3 + 1);
        checkRange(fArr.length, i4, i6 * 2);
        if (iArr != null) {
            checkRange(iArr.length, i5, i6);
        }
        nativeDrawBitmapMesh(this.mNativeCanvas, bitmap.ni(), i2, i3, fArr, i4, iArr, i5, paint != null ? paint.mNativePaint : 0);
    }

    public void drawCircle(float f2, float f3, float f4, Paint paint) {
        native_drawCircle(this.mNativeCanvas, f2, f3, f4, paint.mNativePaint);
    }

    public void drawColor(int i2) {
        native_drawColor(this.mNativeCanvas, i2);
    }

    public void drawLine(float f2, float f3, float f4, float f5, Paint paint) {
        native_drawLine(this.mNativeCanvas, f2, f3, f4, f5, paint.mNativePaint);
    }

    public native void drawLines(float[] fArr, int i2, int i3, Paint paint);

    public void drawLines(float[] fArr, Paint paint) {
        drawLines(fArr, 0, fArr.length, paint);
    }

    public void drawOval(RectF rectF, Paint paint) {
        Objects.requireNonNull(rectF);
        native_drawOval(this.mNativeCanvas, rectF, paint.mNativePaint);
    }

    public void drawPaint(Paint paint) {
        native_drawPaint(this.mNativeCanvas, paint.mNativePaint);
    }

    public void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        ninePatch.drawSoftware(this, rect, paint);
    }

    public void drawPath(Path path, Paint paint) {
        native_drawPath(this.mNativeCanvas, path.ni(), paint.mNativePaint);
    }

    public void drawPicture(Picture picture) {
        picture.endRecording();
        int iSave = save();
        picture.draw(this);
        restoreToCount(iSave);
    }

    public native void drawPoint(float f2, float f3, Paint paint);

    public native void drawPoints(float[] fArr, int i2, int i3, Paint paint);

    public void drawPoints(float[] fArr, Paint paint) {
        drawPoints(fArr, 0, fArr.length, paint);
    }

    @Deprecated
    public void drawPosText(char[] cArr, int i2, int i3, float[] fArr, Paint paint) {
        if (i2 < 0 || i2 + i3 > cArr.length || i3 * 2 > fArr.length) {
            throw new IndexOutOfBoundsException();
        }
        native_drawPosText(this.mNativeCanvas, cArr, i2, i3, fArr, paint.mNativePaint);
    }

    public void drawRGB(int i2, int i3, int i4) {
        native_drawRGB(this.mNativeCanvas, i2, i3, i4);
    }

    public void drawRect(RectF rectF, Paint paint) {
        native_drawRect(this.mNativeCanvas, rectF, paint.mNativePaint);
    }

    public void drawRoundRect(RectF rectF, float f2, float f3, Paint paint) {
        Objects.requireNonNull(rectF);
        native_drawRoundRect(this.mNativeCanvas, rectF, f2, f3, paint.mNativePaint);
    }

    public void drawText(char[] cArr, int i2, int i3, float f2, float f3, Paint paint) {
        if ((i2 | i3 | (i2 + i3) | ((cArr.length - i2) - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        native_drawText(this.mNativeCanvas, cArr, i2, i3, f2, f3, paint.mBidiFlags, paint.mNativePaint);
    }

    public void drawTextOnPath(char[] cArr, int i2, int i3, Path path, float f2, float f3, Paint paint) {
        if (i2 < 0 || i2 + i3 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        native_drawTextOnPath(this.mNativeCanvas, cArr, i2, i3, path.ni(), f2, f3, paint.mBidiFlags, paint.mNativePaint);
    }

    public void drawTextRun(char[] cArr, int i2, int i3, int i4, int i5, float f2, float f3, int i6, Paint paint) {
        Objects.requireNonNull(cArr, "text is null");
        Objects.requireNonNull(paint, "paint is null");
        if ((i2 | i3 | ((cArr.length - i2) - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i6 == 0 || i6 == 1) {
            native_drawTextRun(this.mNativeCanvas, cArr, i2, i3, i4, i5, f2, f3, i6, paint.mNativePaint);
            return;
        }
        throw new IllegalArgumentException("unknown dir: " + i6);
    }

    public void drawVertices(VertexMode vertexMode, int i2, float[] fArr, int i3, float[] fArr2, int i4, int[] iArr, int i5, short[] sArr, int i6, int i7, Paint paint) {
        checkRange(fArr.length, i3, i2);
        if (fArr2 != null) {
            checkRange(fArr2.length, i4, i2);
        }
        if (iArr != null) {
            checkRange(iArr.length, i5, i2 / 2);
        }
        if (sArr != null) {
            checkRange(sArr.length, i6, i7);
        }
        nativeDrawVertices(this.mNativeCanvas, vertexMode.nativeInt, i2, fArr, i3, fArr2, i4, iArr, i5, sArr, i6, i7, paint.mNativePaint);
    }

    public boolean getClipBounds(Rect rect) {
        return native_getClipBounds(this.mNativeCanvas, rect);
    }

    public int getDensity() {
        return this.mDensity;
    }

    public DrawFilter getDrawFilter() {
        return this.mDrawFilter;
    }

    @Deprecated
    public f getGL() {
        return null;
    }

    public native int getHeight();

    @Deprecated
    public void getMatrix(Matrix matrix) {
        native_getCTM(this.mNativeCanvas, matrix.native_instance);
    }

    public int getMaximumBitmapHeight() {
        return MAXMIMUM_BITMAP_SIZE;
    }

    public int getMaximumBitmapWidth() {
        return MAXMIMUM_BITMAP_SIZE;
    }

    public int getNativeCanvas() {
        return this.mNativeCanvas;
    }

    public native int getSaveCount();

    public native int getWidth();

    public boolean isHardwareAccelerated() {
        return false;
    }

    public native boolean isOpaque();

    public boolean quickReject(RectF rectF, EdgeType edgeType) {
        return native_quickReject(this.mNativeCanvas, rectF);
    }

    public void release() {
        this.mFinalizer.dispose();
    }

    public native void restore();

    public native void restoreToCount(int i2);

    public native void rotate(float f2);

    public final void rotate(float f2, float f3, float f4) {
        translate(f3, f4);
        rotate(f2);
        translate(-f3, -f4);
    }

    public native int save();

    public native int save(int i2);

    public int saveLayer(RectF rectF, Paint paint, int i2) {
        return native_saveLayer(this.mNativeCanvas, rectF, paint != null ? paint.mNativePaint : 0, i2);
    }

    public int saveLayerAlpha(RectF rectF, int i2, int i3) {
        return native_saveLayerAlpha(this.mNativeCanvas, rectF, Math.min(255, Math.max(0, i2)), i3);
    }

    public native void scale(float f2, float f3);

    public final void scale(float f2, float f3, float f4, float f5) {
        translate(f4, f5);
        scale(f2, f3);
        translate(-f4, -f5);
    }

    public void setBitmap(Bitmap bitmap) {
        if (isHardwareAccelerated()) {
            throw new RuntimeException("Can't set a bitmap device on a GL canvas");
        }
        if (bitmap == null) {
            safeCanvasSwap(initRaster(0), false);
            this.mDensity = 0;
        } else {
            if (!bitmap.isMutable()) {
                throw new IllegalStateException();
            }
            throwIfCannotDraw(bitmap);
            safeCanvasSwap(initRaster(bitmap.ni()), true);
            this.mDensity = bitmap.mDensity;
        }
        this.mBitmap = bitmap;
    }

    public void setDensity(int i2) {
        Bitmap bitmap = this.mBitmap;
        if (bitmap != null) {
            bitmap.setDensity(i2);
        }
        this.mDensity = i2;
    }

    public void setDrawFilter(DrawFilter drawFilter) {
        int i2 = drawFilter != null ? drawFilter.mNativeInt : 0;
        this.mDrawFilter = drawFilter;
        nativeSetDrawFilter(this.mNativeCanvas, i2);
    }

    public void setMatrix(Matrix matrix) {
        native_setMatrix(this.mNativeCanvas, matrix == null ? 0 : matrix.native_instance);
    }

    public void setScreenDensity(int i2) {
        this.mScreenDensity = i2;
    }

    public void setViewport(int i2, int i3) {
    }

    public native void skew(float f2, float f3);

    public native void translate(float f2, float f3);

    public boolean clipPath(Path path) {
        return clipPath(path, Region.Op.INTERSECT);
    }

    public boolean clipRect(Rect rect, Region.Op op) {
        return native_clipRect(this.mNativeCanvas, rect.left, rect.top, rect.right, rect.bottom, op.nativeInt);
    }

    public boolean clipRegion(Region region) {
        return clipRegion(region, Region.Op.INTERSECT);
    }

    public void drawColor(int i2, PorterDuff.Mode mode) {
        native_drawColor(this.mNativeCanvas, i2, mode.nativeInt);
    }

    public void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        ninePatch.drawSoftware(this, rectF, paint);
    }

    public void drawRect(Rect rect, Paint paint) {
        drawRect(rect.left, rect.top, rect.right, rect.bottom, paint);
    }

    public final Rect getClipBounds() {
        Rect rect = new Rect();
        getClipBounds(rect);
        return rect;
    }

    @Deprecated
    public final Matrix getMatrix() {
        Matrix matrix = new Matrix();
        getMatrix(matrix);
        return matrix;
    }

    public boolean quickReject(Path path, EdgeType edgeType) {
        return native_quickReject(this.mNativeCanvas, path.ni());
    }

    public int saveLayer(float f2, float f3, float f4, float f5, Paint paint, int i2) {
        return native_saveLayer(this.mNativeCanvas, f2, f3, f4, f5, paint != null ? paint.mNativePaint : 0, i2);
    }

    public boolean clipRect(float f2, float f3, float f4, float f5, Region.Op op) {
        return native_clipRect(this.mNativeCanvas, f2, f3, f4, f5, op.nativeInt);
    }

    public void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        Objects.requireNonNull(rectF);
        throwIfCannotDraw(bitmap);
        native_drawBitmap(this.mNativeCanvas, bitmap.ni(), rect, rectF, paint != null ? paint.mNativePaint : 0, this.mScreenDensity, bitmap.mDensity);
    }

    public void drawRect(float f2, float f3, float f4, float f5, Paint paint) {
        native_drawRect(this.mNativeCanvas, f2, f3, f4, f5, paint.mNativePaint);
    }

    public boolean quickReject(float f2, float f3, float f4, float f5, EdgeType edgeType) {
        return native_quickReject(this.mNativeCanvas, f2, f3, f4, f5);
    }

    public int saveLayerAlpha(float f2, float f3, float f4, float f5, int i2, int i3) {
        return native_saveLayerAlpha(this.mNativeCanvas, f2, f3, f4, f5, i2, i3);
    }

    @Deprecated
    public void drawPosText(String str, float[] fArr, Paint paint) {
        if (str.length() * 2 <= fArr.length) {
            native_drawPosText(this.mNativeCanvas, str, fArr, paint.mNativePaint);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void drawText(String str, float f2, float f3, Paint paint) {
        native_drawText(this.mNativeCanvas, str, 0, str.length(), f2, f3, paint.mBidiFlags, paint.mNativePaint);
    }

    public void drawTextOnPath(String str, Path path, float f2, float f3, Paint paint) {
        if (str.length() > 0) {
            native_drawTextOnPath(this.mNativeCanvas, str, path.ni(), f2, f3, paint.mBidiFlags, paint.mNativePaint);
        }
    }

    public void drawPicture(Picture picture, RectF rectF) {
        save();
        translate(rectF.left, rectF.top);
        if (picture.getWidth() > 0 && picture.getHeight() > 0) {
            scale(rectF.width() / picture.getWidth(), rectF.height() / picture.getHeight());
        }
        drawPicture(picture);
        restore();
    }

    public void drawText(String str, int i2, int i3, float f2, float f3, Paint paint) {
        if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) >= 0) {
            native_drawText(this.mNativeCanvas, str, i2, i3, f2, f3, paint.mBidiFlags, paint.mNativePaint);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        Objects.requireNonNull(rect2);
        throwIfCannotDraw(bitmap);
        native_drawBitmap(this.mNativeCanvas, bitmap.ni(), rect, rect2, paint != null ? paint.mNativePaint : 0, this.mScreenDensity, bitmap.mDensity);
    }

    public void drawTextRun(CharSequence charSequence, int i2, int i3, int i4, int i5, float f2, float f3, int i6, Paint paint) {
        Objects.requireNonNull(charSequence, "text is null");
        Objects.requireNonNull(paint, "paint is null");
        int i7 = i3 - i2;
        if ((i2 | i3 | i7 | (charSequence.length() - i3)) >= 0) {
            int i8 = i6 == 0 ? 0 : 1;
            if (!(charSequence instanceof String) && !(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                if (charSequence instanceof GraphicsOperations) {
                    ((GraphicsOperations) charSequence).drawTextRun(this, i2, i3, i4, i5, f2, f3, i8, paint);
                    return;
                }
                int i9 = i5 - i4;
                char[] cArrObtain = TemporaryBuffer.obtain(i9);
                TextUtils.getChars(charSequence, i4, i5, cArrObtain, 0);
                native_drawTextRun(this.mNativeCanvas, cArrObtain, i2 - i4, i7, 0, i9, f2, f3, i8, paint.mNativePaint);
                TemporaryBuffer.recycle(cArrObtain);
                return;
            }
            native_drawTextRun(this.mNativeCanvas, charSequence.toString(), i2, i3, i4, i5, f2, f3, i8, paint.mNativePaint);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public Canvas(Bitmap bitmap) {
        this.mDensity = 0;
        this.mScreenDensity = 0;
        if (bitmap.isMutable()) {
            throwIfCannotDraw(bitmap);
            int iInitRaster = initRaster(bitmap.ni());
            this.mNativeCanvas = iInitRaster;
            this.mFinalizer = new CanvasFinalizer(iInitRaster);
            this.mBitmap = bitmap;
            this.mDensity = bitmap.mDensity;
            return;
        }
        throw new IllegalStateException("Immutable bitmap passed to Canvas constructor");
    }

    public void drawText(CharSequence charSequence, int i2, int i3, float f2, float f3, Paint paint) {
        if (!(charSequence instanceof String) && !(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
            if (charSequence instanceof GraphicsOperations) {
                ((GraphicsOperations) charSequence).drawText(this, i2, i3, f2, f3, paint);
                return;
            }
            int i4 = i3 - i2;
            char[] cArrObtain = TemporaryBuffer.obtain(i4);
            TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
            native_drawText(this.mNativeCanvas, cArrObtain, 0, i4, f2, f3, paint.mBidiFlags, paint.mNativePaint);
            TemporaryBuffer.recycle(cArrObtain);
            return;
        }
        native_drawText(this.mNativeCanvas, charSequence.toString(), i2, i3, f2, f3, paint.mBidiFlags, paint.mNativePaint);
    }

    public void drawBitmap(int[] iArr, int i2, int i3, float f2, float f3, int i4, int i5, boolean z2, Paint paint) {
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
                native_drawBitmap(this.mNativeCanvas, iArr, i2, i3, f2, f3, i4, i5, z2, paint != null ? paint.mNativePaint : 0);
                return;
            }
            throw new IllegalArgumentException("abs(stride) must be >= width");
        }
        throw new IllegalArgumentException("height must be >= 0");
    }

    public void drawPicture(Picture picture, Rect rect) {
        save();
        translate(rect.left, rect.top);
        if (picture.getWidth() > 0 && picture.getHeight() > 0) {
            scale(rect.width() / picture.getWidth(), rect.height() / picture.getHeight());
        }
        drawPicture(picture);
        restore();
    }

    public void drawBitmap(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, Paint paint) {
        drawBitmap(iArr, i2, i3, i4, i5, i6, i7, z2, paint);
    }

    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        nativeDrawBitmapMatrix(this.mNativeCanvas, bitmap.ni(), matrix.ni(), paint != null ? paint.mNativePaint : 0);
    }

    public Canvas(int i2) {
        this.mDensity = 0;
        this.mScreenDensity = 0;
        if (i2 != 0) {
            this.mNativeCanvas = i2;
            this.mFinalizer = new CanvasFinalizer(i2);
            this.mDensity = Bitmap.getDefaultDensity();
            return;
        }
        throw new IllegalStateException();
    }
}
