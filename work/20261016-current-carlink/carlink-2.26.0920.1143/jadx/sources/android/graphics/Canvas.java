package android.graphics;

import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import libcore.util.NativeAllocationRegistry;
import r.f;

/* JADX INFO: loaded from: classes.dex */
public class Canvas extends BaseCanvas {
    public static final int ALL_SAVE_FLAG = 31;
    public static final int CLIP_SAVE_FLAG = 2;
    public static final int CLIP_TO_LAYER_SAVE_FLAG = 16;
    public static final int FULL_COLOR_LAYER_SAVE_FLAG = 8;
    public static final int HAS_ALPHA_LAYER_SAVE_FLAG = 4;
    public static final int MATRIX_SAVE_FLAG = 1;
    private static final int MAXMIMUM_BITMAP_SIZE = 32766;
    private static final long NATIVE_ALLOCATION_SIZE = 525;
    public static boolean sCompatibilityRestore = false;
    public static boolean sCompatibilitySetBitmap = false;
    private Bitmap mBitmap;
    private DrawFilter mDrawFilter;
    private Runnable mFinalizer;

    public enum EdgeType {
        BW(0),
        AA(1);

        public final int nativeInt;

        EdgeType(int i2) {
            this.nativeInt = i2;
        }
    }

    public static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = new NativeAllocationRegistry(Canvas.class.getClassLoader(), Canvas.nGetNativeFinalizer(), Canvas.NATIVE_ALLOCATION_SIZE);

        private NoImagePreloadHolder() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Saveflags {
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
        if (isHardwareAccelerated()) {
            this.mFinalizer = null;
            return;
        }
        long jNInitRaster = nInitRaster(null);
        this.mNativeCanvasWrapper = jNInitRaster;
        this.mFinalizer = NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jNInitRaster);
    }

    public static void freeCaches() {
        nFreeCaches();
    }

    public static void freeTextLayoutCaches() {
        nFreeTextLayoutCaches();
    }

    @CriticalNative
    private static native boolean nClipPath(long j2, long j3, int i2);

    @CriticalNative
    private static native boolean nClipRect(long j2, float f2, float f3, float f4, float f5, int i2);

    @CriticalNative
    private static native void nConcat(long j2, long j3);

    private static native void nFreeCaches();

    private static native void nFreeTextLayoutCaches();

    @FastNative
    private static native boolean nGetClipBounds(long j2, Rect rect);

    @CriticalNative
    private static native int nGetHeight(long j2);

    @CriticalNative
    private static native void nGetMatrix(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nGetNativeFinalizer();

    @CriticalNative
    private static native int nGetSaveCount(long j2);

    @CriticalNative
    private static native int nGetWidth(long j2);

    private static native long nInitRaster(Bitmap bitmap);

    @CriticalNative
    private static native boolean nIsOpaque(long j2);

    @CriticalNative
    private static native boolean nQuickReject(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native boolean nQuickReject(long j2, long j3);

    @CriticalNative
    private static native boolean nRestore(long j2);

    @CriticalNative
    private static native void nRestoreToCount(long j2, int i2);

    @CriticalNative
    private static native void nRotate(long j2, float f2);

    @CriticalNative
    private static native int nSave(long j2, int i2);

    @CriticalNative
    private static native int nSaveLayer(long j2, float f2, float f3, float f4, float f5, long j3, int i2);

    @CriticalNative
    private static native int nSaveLayerAlpha(long j2, float f2, float f3, float f4, float f5, int i2, int i3);

    @CriticalNative
    private static native void nScale(long j2, float f2, float f3);

    @FastNative
    private static native void nSetBitmap(long j2, Bitmap bitmap);

    @CriticalNative
    private static native void nSetDrawFilter(long j2, long j3);

    @CriticalNative
    private static native void nSetHighContrastText(long j2, boolean z2);

    @CriticalNative
    private static native void nSetMatrix(long j2, long j3);

    @CriticalNative
    private static native void nSkew(long j2, float f2, float f3);

    @CriticalNative
    private static native void nTranslate(long j2, float f2, float f3);

    public boolean clipOutPath(Path path) {
        return clipPath(path, Region.Op.DIFFERENCE);
    }

    public boolean clipOutRect(RectF rectF) {
        return nClipRect(this.mNativeCanvasWrapper, rectF.left, rectF.top, rectF.right, rectF.bottom, Region.Op.DIFFERENCE.nativeInt);
    }

    @Deprecated
    public boolean clipPath(Path path, Region.Op op) {
        return nClipPath(this.mNativeCanvasWrapper, path.readOnlyNI(), op.nativeInt);
    }

    @Deprecated
    public boolean clipRect(RectF rectF, Region.Op op) {
        return nClipRect(this.mNativeCanvasWrapper, rectF.left, rectF.top, rectF.right, rectF.bottom, op.nativeInt);
    }

    @Deprecated
    public boolean clipRegion(Region region) {
        return false;
    }

    public void concat(Matrix matrix) {
        if (matrix != null) {
            nConcat(this.mNativeCanvasWrapper, matrix.native_instance);
        }
    }

    @Override // android.graphics.BaseCanvas
    public void drawARGB(int i2, int i3, int i4, int i5) {
        super.drawARGB(i2, i3, i4, i5);
    }

    @Override // android.graphics.BaseCanvas
    public void drawArc(RectF rectF, float f2, float f3, boolean z2, Paint paint) {
        super.drawArc(rectF, f2, f3, z2, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawBitmap(Bitmap bitmap, float f2, float f3, Paint paint) {
        super.drawBitmap(bitmap, f2, f3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawBitmapMesh(Bitmap bitmap, int i2, int i3, float[] fArr, int i4, int[] iArr, int i5, Paint paint) {
        super.drawBitmapMesh(bitmap, i2, i3, fArr, i4, iArr, i5, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawCircle(float f2, float f3, float f4, Paint paint) {
        super.drawCircle(f2, f3, f4, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawColor(int i2) {
        super.drawColor(i2);
    }

    @Override // android.graphics.BaseCanvas
    public void drawLine(float f2, float f3, float f4, float f5, Paint paint) {
        super.drawLine(f2, f3, f4, f5, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawLines(float[] fArr, int i2, int i3, Paint paint) {
        super.drawLines(fArr, i2, i3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawOval(RectF rectF, Paint paint) {
        super.drawOval(rectF, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawPaint(Paint paint) {
        super.drawPaint(paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        super.drawPatch(ninePatch, rect, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawPath(Path path, Paint paint) {
        super.drawPath(path, paint);
    }

    public void drawPicture(Picture picture) {
        picture.endRecording();
        int iSave = save();
        picture.draw(this);
        restoreToCount(iSave);
    }

    @Override // android.graphics.BaseCanvas
    public void drawPoint(float f2, float f3, Paint paint) {
        super.drawPoint(f2, f3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawPoints(float[] fArr, int i2, int i3, Paint paint) {
        super.drawPoints(fArr, i2, i3, paint);
    }

    @Override // android.graphics.BaseCanvas
    @Deprecated
    public void drawPosText(char[] cArr, int i2, int i3, float[] fArr, Paint paint) {
        super.drawPosText(cArr, i2, i3, fArr, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawRGB(int i2, int i3, int i4) {
        super.drawRGB(i2, i3, i4);
    }

    @Override // android.graphics.BaseCanvas
    public void drawRect(RectF rectF, Paint paint) {
        super.drawRect(rectF, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawRoundRect(RectF rectF, float f2, float f3, Paint paint) {
        super.drawRoundRect(rectF, f2, f3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawText(char[] cArr, int i2, int i3, float f2, float f3, Paint paint) {
        super.drawText(cArr, i2, i3, f2, f3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawTextOnPath(char[] cArr, int i2, int i3, Path path, float f2, float f3, Paint paint) {
        super.drawTextOnPath(cArr, i2, i3, path, f2, f3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawTextRun(char[] cArr, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, Paint paint) {
        super.drawTextRun(cArr, i2, i3, i4, i5, f2, f3, z2, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawVertices(VertexMode vertexMode, int i2, float[] fArr, int i3, float[] fArr2, int i4, int[] iArr, int i5, short[] sArr, int i6, int i7, Paint paint) {
        super.drawVertices(vertexMode, i2, fArr, i3, fArr2, i4, iArr, i5, sArr, i6, i7, paint);
    }

    public boolean getClipBounds(Rect rect) {
        return nGetClipBounds(this.mNativeCanvasWrapper, rect);
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

    public int getHeight() {
        return nGetHeight(this.mNativeCanvasWrapper);
    }

    @Deprecated
    public void getMatrix(Matrix matrix) {
        nGetMatrix(this.mNativeCanvasWrapper, matrix.native_instance);
    }

    public int getMaximumBitmapHeight() {
        return MAXMIMUM_BITMAP_SIZE;
    }

    public int getMaximumBitmapWidth() {
        return MAXMIMUM_BITMAP_SIZE;
    }

    public long getNativeCanvasWrapper() {
        return this.mNativeCanvasWrapper;
    }

    public int getSaveCount() {
        return nGetSaveCount(this.mNativeCanvasWrapper);
    }

    public int getWidth() {
        return nGetWidth(this.mNativeCanvasWrapper);
    }

    public void insertInorderBarrier() {
    }

    public void insertReorderBarrier() {
    }

    @Override // android.graphics.BaseCanvas
    public boolean isHardwareAccelerated() {
        return false;
    }

    public boolean isOpaque() {
        return nIsOpaque(this.mNativeCanvasWrapper);
    }

    public boolean isRecordingFor(Object obj) {
        return false;
    }

    public boolean quickReject(RectF rectF, EdgeType edgeType) {
        return nQuickReject(this.mNativeCanvasWrapper, rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public void release() {
        this.mNativeCanvasWrapper = 0L;
        Runnable runnable = this.mFinalizer;
        if (runnable != null) {
            runnable.run();
            this.mFinalizer = null;
        }
    }

    public void restore() {
        if (nRestore(this.mNativeCanvasWrapper)) {
            return;
        }
        if (!sCompatibilityRestore || !isHardwareAccelerated()) {
            throw new IllegalStateException("Underflow in restore - more restores than saves");
        }
    }

    public void restoreToCount(int i2) {
        if (i2 < 1) {
            if (!sCompatibilityRestore || !isHardwareAccelerated()) {
                throw new IllegalArgumentException("Underflow in restoreToCount - more restores than saves");
            }
            i2 = 1;
        }
        nRestoreToCount(this.mNativeCanvasWrapper, i2);
    }

    public void rotate(float f2) {
        if (f2 == 0.0f) {
            return;
        }
        nRotate(this.mNativeCanvasWrapper, f2);
    }

    public int save() {
        return nSave(this.mNativeCanvasWrapper, 3);
    }

    public int saveLayer(RectF rectF, Paint paint, int i2) {
        if (rectF == null) {
            rectF = new RectF(getClipBounds());
        }
        return saveLayer(rectF.left, rectF.top, rectF.right, rectF.bottom, paint, i2);
    }

    public int saveLayerAlpha(RectF rectF, int i2, int i3) {
        if (rectF == null) {
            rectF = new RectF(getClipBounds());
        }
        return saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i2, i3);
    }

    public void scale(float f2, float f3) {
        if (f2 == 1.0f && f3 == 1.0f) {
            return;
        }
        nScale(this.mNativeCanvasWrapper, f2, f3);
    }

    public void setBitmap(Bitmap bitmap) {
        if (isHardwareAccelerated()) {
            throw new RuntimeException("Can't set a bitmap device on a HW accelerated canvas");
        }
        Matrix matrix = (bitmap == null || !sCompatibilitySetBitmap) ? null : getMatrix();
        if (bitmap == null) {
            nSetBitmap(this.mNativeCanvasWrapper, null);
            this.mDensity = 0;
        } else {
            if (!bitmap.isMutable()) {
                throw new IllegalStateException();
            }
            throwIfCannotDraw(bitmap);
            nSetBitmap(this.mNativeCanvasWrapper, bitmap);
            this.mDensity = bitmap.mDensity;
        }
        if (matrix != null) {
            setMatrix(matrix);
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
        long j2 = drawFilter != null ? drawFilter.mNativeInt : 0L;
        this.mDrawFilter = drawFilter;
        nSetDrawFilter(this.mNativeCanvasWrapper, j2);
    }

    public void setHighContrastText(boolean z2) {
        nSetHighContrastText(this.mNativeCanvasWrapper, z2);
    }

    public void setMatrix(Matrix matrix) {
        nSetMatrix(this.mNativeCanvasWrapper, matrix == null ? 0L : matrix.native_instance);
    }

    public void setScreenDensity(int i2) {
        this.mScreenDensity = i2;
    }

    public void skew(float f2, float f3) {
        if (f2 == 0.0f && f3 == 0.0f) {
            return;
        }
        nSkew(this.mNativeCanvasWrapper, f2, f3);
    }

    public void translate(float f2, float f3) {
        if (f2 == 0.0f && f3 == 0.0f) {
            return;
        }
        nTranslate(this.mNativeCanvasWrapper, f2, f3);
    }

    public boolean clipOutRect(Rect rect) {
        return nClipRect(this.mNativeCanvasWrapper, rect.left, rect.top, rect.right, rect.bottom, Region.Op.DIFFERENCE.nativeInt);
    }

    public boolean clipPath(Path path) {
        return clipPath(path, Region.Op.INTERSECT);
    }

    @Deprecated
    public boolean clipRect(Rect rect, Region.Op op) {
        return nClipRect(this.mNativeCanvasWrapper, rect.left, rect.top, rect.right, rect.bottom, op.nativeInt);
    }

    @Deprecated
    public boolean clipRegion(Region region, Region.Op op) {
        return false;
    }

    @Override // android.graphics.BaseCanvas
    public void drawArc(float f2, float f3, float f4, float f5, float f6, float f7, boolean z2, Paint paint) {
        super.drawArc(f2, f3, f4, f5, f6, f7, z2, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        super.drawBitmap(bitmap, rect, rectF, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawColor(int i2, PorterDuff.Mode mode) {
        super.drawColor(i2, mode);
    }

    @Override // android.graphics.BaseCanvas
    public void drawLines(float[] fArr, Paint paint) {
        super.drawLines(fArr, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawOval(float f2, float f3, float f4, float f5, Paint paint) {
        super.drawOval(f2, f3, f4, f5, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        super.drawPatch(ninePatch, rectF, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawPoints(float[] fArr, Paint paint) {
        super.drawPoints(fArr, paint);
    }

    @Override // android.graphics.BaseCanvas
    @Deprecated
    public void drawPosText(String str, float[] fArr, Paint paint) {
        super.drawPosText(str, fArr, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawRect(Rect rect, Paint paint) {
        super.drawRect(rect, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawRoundRect(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint) {
        super.drawRoundRect(f2, f3, f4, f5, f6, f7, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawText(String str, float f2, float f3, Paint paint) {
        super.drawText(str, f2, f3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawTextOnPath(String str, Path path, float f2, float f3, Paint paint) {
        super.drawTextOnPath(str, path, f2, f3, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawTextRun(CharSequence charSequence, int i2, int i3, int i4, int i5, float f2, float f3, boolean z2, Paint paint) {
        super.drawTextRun(charSequence, i2, i3, i4, i5, f2, f3, z2, paint);
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
        return nQuickReject(this.mNativeCanvasWrapper, path.readOnlyNI());
    }

    public final void rotate(float f2, float f3, float f4) {
        if (f2 == 0.0f) {
            return;
        }
        translate(f3, f4);
        rotate(f2);
        translate(-f3, -f4);
    }

    public int save(int i2) {
        return nSave(this.mNativeCanvasWrapper, i2);
    }

    public final void scale(float f2, float f3, float f4, float f5) {
        if (f2 == 1.0f && f3 == 1.0f) {
            return;
        }
        translate(f4, f5);
        scale(f2, f3);
        translate(-f4, -f5);
    }

    public boolean clipOutRect(float f2, float f3, float f4, float f5) {
        return nClipRect(this.mNativeCanvasWrapper, f2, f3, f4, f5, Region.Op.DIFFERENCE.nativeInt);
    }

    public boolean clipRect(RectF rectF) {
        return nClipRect(this.mNativeCanvasWrapper, rectF.left, rectF.top, rectF.right, rectF.bottom, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.BaseCanvas
    public void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        super.drawBitmap(bitmap, rect, rect2, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawRect(float f2, float f3, float f4, float f5, Paint paint) {
        super.drawRect(f2, f3, f4, f5, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawText(String str, int i2, int i3, float f2, float f3, Paint paint) {
        super.drawText(str, i2, i3, f2, f3, paint);
    }

    public boolean quickReject(float f2, float f3, float f4, float f5, EdgeType edgeType) {
        return nQuickReject(this.mNativeCanvasWrapper, f2, f3, f4, f5);
    }

    public int saveLayer(RectF rectF, Paint paint) {
        return saveLayer(rectF, paint, 31);
    }

    public int saveLayerAlpha(RectF rectF, int i2) {
        return saveLayerAlpha(rectF, i2, 31);
    }

    public boolean clipOutRect(int i2, int i3, int i4, int i5) {
        return nClipRect(this.mNativeCanvasWrapper, i2, i3, i4, i5, Region.Op.DIFFERENCE.nativeInt);
    }

    public boolean clipRect(Rect rect) {
        return nClipRect(this.mNativeCanvasWrapper, rect.left, rect.top, rect.right, rect.bottom, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.BaseCanvas
    @Deprecated
    public void drawBitmap(int[] iArr, int i2, int i3, float f2, float f3, int i4, int i5, boolean z2, Paint paint) {
        super.drawBitmap(iArr, i2, i3, f2, f3, i4, i5, z2, paint);
    }

    @Override // android.graphics.BaseCanvas
    public void drawText(CharSequence charSequence, int i2, int i3, float f2, float f3, Paint paint) {
        super.drawText(charSequence, i2, i3, f2, f3, paint);
    }

    public int saveLayer(float f2, float f3, float f4, float f5, Paint paint, int i2) {
        return nSaveLayer(this.mNativeCanvasWrapper, f2, f3, f4, f5, paint != null ? paint.getNativeInstance() : 0L, i2);
    }

    public int saveLayerAlpha(float f2, float f3, float f4, float f5, int i2, int i3) {
        return nSaveLayerAlpha(this.mNativeCanvasWrapper, f2, f3, f4, f5, Math.min(255, Math.max(0, i2)), i3);
    }

    @Deprecated
    public boolean clipRect(float f2, float f3, float f4, float f5, Region.Op op) {
        return nClipRect(this.mNativeCanvasWrapper, f2, f3, f4, f5, op.nativeInt);
    }

    @Override // android.graphics.BaseCanvas
    @Deprecated
    public void drawBitmap(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, Paint paint) {
        super.drawBitmap(iArr, i2, i3, i4, i5, i6, i7, z2, paint);
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

    public Canvas(Bitmap bitmap) {
        if (bitmap.isMutable()) {
            throwIfCannotDraw(bitmap);
            long jNInitRaster = nInitRaster(bitmap);
            this.mNativeCanvasWrapper = jNInitRaster;
            this.mFinalizer = NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jNInitRaster);
            this.mBitmap = bitmap;
            this.mDensity = bitmap.mDensity;
            return;
        }
        throw new IllegalStateException("Immutable bitmap passed to Canvas constructor");
    }

    public boolean clipRect(float f2, float f3, float f4, float f5) {
        return nClipRect(this.mNativeCanvasWrapper, f2, f3, f4, f5, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.BaseCanvas
    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        super.drawBitmap(bitmap, matrix, paint);
    }

    public int saveLayerAlpha(float f2, float f3, float f4, float f5, int i2) {
        return saveLayerAlpha(f2, f3, f4, f5, i2, 31);
    }

    public boolean clipRect(int i2, int i3, int i4, int i5) {
        return nClipRect(this.mNativeCanvasWrapper, i2, i3, i4, i5, Region.Op.INTERSECT.nativeInt);
    }

    public int saveLayer(float f2, float f3, float f4, float f5, Paint paint) {
        return saveLayer(f2, f3, f4, f5, paint, 31);
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

    public Canvas(long j2) {
        if (j2 != 0) {
            this.mNativeCanvasWrapper = j2;
            this.mFinalizer = NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, j2);
            this.mDensity = Bitmap.getDefaultDensity();
            return;
        }
        throw new IllegalStateException();
    }
}
