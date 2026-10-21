package android.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DrawFilter;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.graphics.TemporaryBuffer;
import android.text.GraphicsOperations;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class GLES20Canvas extends HardwareCanvas {
    public static final int FLUSH_CACHES_FULL = 2;
    public static final int FLUSH_CACHES_LAYERS = 0;
    public static final int FLUSH_CACHES_MODERATE = 1;
    private static final int MODIFIER_COLOR_FILTER = 4;
    private static final int MODIFIER_NONE = 0;
    private static final int MODIFIER_SHADER = 2;
    private static final int MODIFIER_SHADOW = 1;
    private static boolean sIsAvailable = nIsAvailable();
    private Rect mClipBounds;
    private DrawFilter mFilter;
    private CanvasFinalizer mFinalizer;
    private int mHeight;
    private float[] mLine;
    private final boolean mOpaque;
    private RectF mPathBounds;
    private float[] mPoint;
    private int mRenderer;
    private int mWidth;

    public static final class CanvasFinalizer {
        private final int mRenderer;

        public CanvasFinalizer(int i2) {
            this.mRenderer = i2;
        }

        public void finalize() throws Throwable {
            try {
                GLES20Canvas.nDestroyRenderer(this.mRenderer);
            } finally {
                super.finalize();
            }
        }
    }

    public GLES20Canvas(boolean z2) {
        this(false, z2);
    }

    public static void flushCaches(int i2) {
        nFlushCaches(i2);
    }

    private Rect getInternalClipBounds() {
        if (this.mClipBounds == null) {
            this.mClipBounds = new Rect();
        }
        return this.mClipBounds;
    }

    private float[] getLineStorage() {
        if (this.mLine == null) {
            this.mLine = new float[4];
        }
        return this.mLine;
    }

    private RectF getPathBounds() {
        if (this.mPathBounds == null) {
            this.mPathBounds = new RectF();
        }
        return this.mPathBounds;
    }

    private float[] getPointStorage() {
        if (this.mPoint == null) {
            this.mPoint = new float[2];
        }
        return this.mPoint;
    }

    public static int getStencilSize() {
        return nGetStencilSize();
    }

    public static void initAtlas(GraphicBuffer graphicBuffer, int[] iArr) {
        nInitAtlas(graphicBuffer, iArr, iArr.length);
    }

    public static boolean initCaches() {
        return nInitCaches();
    }

    public static boolean isAvailable() {
        return sIsAvailable;
    }

    private static native void nAttachFunctor(int i2, int i3);

    private static native int nCallDrawGLFunction(int i2, int i3);

    private static native void nCancelLayerUpdate(int i2, int i3);

    public static native void nClearLayerTexture(int i2);

    private static native void nClearLayerUpdates(int i2);

    private static native boolean nClipPath(int i2, int i3, int i4);

    private static native boolean nClipRect(int i2, float f2, float f3, float f4, float f5, int i3);

    private static native boolean nClipRect(int i2, int i3, int i4, int i5, int i6, int i7);

    private static native boolean nClipRegion(int i2, int i3, int i4);

    private static native void nConcatMatrix(int i2, int i3);

    public static native boolean nCopyLayer(int i2, int i3);

    private static native int nCreateDisplayListRenderer();

    public static native int nCreateLayer(int i2, int i3, boolean z2, int[] iArr);

    private static native int nCreateLayerRenderer(int i2);

    private static native int nCreateRenderer();

    public static native int nCreateTextureLayer(boolean z2, int[] iArr);

    public static native void nDestroyLayer(int i2);

    public static native void nDestroyLayerDeferred(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroyRenderer(int i2);

    private static native void nDetachFunctor(int i2, int i3);

    private static native void nDrawArc(int i2, float f2, float f3, float f4, float f5, float f6, float f7, boolean z2, int i3);

    private static native void nDrawBitmap(int i2, int i3, byte[] bArr, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, int i4);

    private static native void nDrawBitmap(int i2, int i3, byte[] bArr, float f2, float f3, int i4);

    private static native void nDrawBitmap(int i2, int i3, byte[] bArr, int i4, int i5);

    private static native void nDrawBitmap(int i2, int[] iArr, int i3, int i4, float f2, float f3, int i5, int i6, boolean z2, int i7);

    private static native void nDrawBitmapMesh(int i2, int i3, byte[] bArr, int i4, int i5, float[] fArr, int i6, int[] iArr, int i7, int i8);

    private static native void nDrawCircle(int i2, float f2, float f3, float f4, int i3);

    private static native void nDrawColor(int i2, int i3, int i4);

    private static native int nDrawDisplayList(int i2, int i3, Rect rect, int i4);

    private static native void nDrawLayer(int i2, int i3, float f2, float f3);

    private static native void nDrawLines(int i2, float[] fArr, int i3, int i4, int i5);

    private static native void nDrawOval(int i2, float f2, float f3, float f4, float f5, int i3);

    private static native void nDrawPatch(int i2, int i3, byte[] bArr, int i4, float f2, float f3, float f4, float f5, int i5);

    private static native void nDrawPath(int i2, int i3, int i4);

    private static native void nDrawPoints(int i2, float[] fArr, int i3, int i4, int i5);

    private static native void nDrawPosText(int i2, String str, int i3, int i4, float[] fArr, int i5);

    private static native void nDrawPosText(int i2, char[] cArr, int i3, int i4, float[] fArr, int i5);

    private static native void nDrawRect(int i2, float f2, float f3, float f4, float f5, int i3);

    private static native void nDrawRects(int i2, int i3, int i4);

    private static native void nDrawRects(int i2, float[] fArr, int i3, int i4);

    private static native void nDrawRoundRect(int i2, float f2, float f3, float f4, float f5, float f6, float f7, int i3);

    private static native void nDrawText(int i2, String str, int i3, int i4, float f2, float f3, int i5, int i6);

    private static native void nDrawText(int i2, char[] cArr, int i3, int i4, float f2, float f3, int i5, int i6);

    private static native void nDrawTextOnPath(int i2, String str, int i3, int i4, int i5, float f2, float f3, int i6, int i7);

    private static native void nDrawTextOnPath(int i2, char[] cArr, int i3, int i4, int i5, float f2, float f3, int i6, int i7);

    private static native void nDrawTextRun(int i2, String str, int i3, int i4, int i5, int i6, float f2, float f3, int i7, int i8);

    private static native void nDrawTextRun(int i2, char[] cArr, int i3, int i4, int i5, int i6, float f2, float f3, int i7, int i8);

    private static native void nFinish(int i2);

    private static native void nFlushCaches(int i2);

    private static native void nFlushLayerUpdates(int i2);

    private static native boolean nGetClipBounds(int i2, Rect rect);

    private static native int nGetDisplayList(int i2, int i3);

    private static native void nGetMatrix(int i2, int i3);

    private static native int nGetMaximumTextureHeight();

    private static native int nGetMaximumTextureWidth();

    public static native float nGetOverdraw(int i2);

    private static native int nGetSaveCount(int i2);

    private static native int nGetStencilSize();

    private static native void nInitAtlas(GraphicBuffer graphicBuffer, int[] iArr, int i2);

    private static native boolean nInitCaches();

    private static native void nInterrupt(int i2);

    private static native int nInvokeFunctors(int i2, Rect rect);

    private static native boolean nIsAvailable();

    private static native void nOutputDisplayList(int i2, int i3);

    private static native int nPrepare(int i2, boolean z2);

    private static native int nPrepareDirty(int i2, int i3, int i4, int i5, int i6, boolean z2);

    private static native void nPushLayerUpdate(int i2, int i3);

    private static native boolean nQuickReject(int i2, float f2, float f3, float f4, float f5);

    private static native void nResetDisplayListRenderer(int i2);

    private static native void nResetModifiers(int i2, int i3);

    private static native void nResetPaintFilter(int i2);

    public static native boolean nResizeLayer(int i2, int i3, int i4, int[] iArr);

    private static native void nRestore(int i2);

    private static native void nRestoreToCount(int i2, int i3);

    private static native void nResume(int i2);

    private static native void nRotate(int i2, float f2);

    private static native int nSave(int i2, int i3);

    private static native int nSaveLayer(int i2, float f2, float f3, float f4, float f5, int i3, int i4);

    private static native int nSaveLayer(int i2, int i3, int i4);

    private static native int nSaveLayerAlpha(int i2, float f2, float f3, float f4, float f5, int i3, int i4);

    private static native int nSaveLayerAlpha(int i2, int i3, int i4);

    private static native void nScale(int i2, float f2, float f3);

    public static native void nSetCountOverdrawEnabled(int i2, boolean z2);

    public static native void nSetLayerColorFilter(int i2, int i3);

    public static native void nSetLayerPaint(int i2, int i3);

    private static native void nSetMatrix(int i2, int i3);

    private static native void nSetName(int i2, String str);

    public static native void nSetOpaqueLayer(int i2, boolean z2);

    public static native void nSetTextureLayerTransform(int i2, int i3);

    private static native void nSetViewport(int i2, int i3, int i4);

    private static native void nSetupColorFilter(int i2, int i3);

    private static native void nSetupPaintFilter(int i2, int i3, int i4);

    private static native void nSetupShader(int i2, int i3);

    private static native void nSetupShadow(int i2, float f2, float f3, float f4, int i3);

    private static native void nSkew(int i2, float f2, float f3);

    private static native void nTerminateCaches();

    private static native void nTranslate(int i2, float f2, float f3);

    public static native void nUpdateRenderLayer(int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    public static native void nUpdateTextureLayer(int i2, int i3, int i4, boolean z2, SurfaceTexture surfaceTexture);

    private int setupColorFilter(Paint paint) {
        ColorFilter colorFilter = paint.getColorFilter();
        if (colorFilter == null) {
            return 0;
        }
        nSetupColorFilter(this.mRenderer, colorFilter.nativeColorFilter);
        return 4;
    }

    private void setupFinalizer() {
        int i2 = this.mRenderer;
        if (i2 == 0) {
            throw new IllegalStateException("Could not create GLES20Canvas renderer");
        }
        this.mFinalizer = new CanvasFinalizer(i2);
    }

    private int setupModifiers(Bitmap bitmap, Paint paint) {
        if (bitmap.getConfig() == Bitmap.Config.ALPHA_8) {
            return setupModifiers(paint);
        }
        ColorFilter colorFilter = paint.getColorFilter();
        if (colorFilter == null) {
            return 0;
        }
        nSetupColorFilter(this.mRenderer, colorFilter.nativeColorFilter);
        return 4;
    }

    public static void terminateCaches() {
        nTerminateCaches();
    }

    @Override // android.view.HardwareCanvas
    public void attachFunctor(int i2) {
        nAttachFunctor(this.mRenderer, i2);
    }

    @Override // android.view.HardwareCanvas
    public int callDrawGLFunction(int i2) {
        return nCallDrawGLFunction(this.mRenderer, i2);
    }

    @Override // android.view.HardwareCanvas
    public void cancelLayerUpdate(HardwareLayer hardwareLayer) {
        nCancelLayerUpdate(this.mRenderer, ((GLES20RenderLayer) hardwareLayer).mLayer);
    }

    @Override // android.view.HardwareCanvas
    public void clearLayerUpdates() {
        nClearLayerUpdates(this.mRenderer);
    }

    @Override // android.graphics.Canvas
    public boolean clipPath(Path path) {
        return nClipPath(this.mRenderer, path.mNativePath, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f2, float f3, float f4, float f5) {
        return nClipRect(this.mRenderer, f2, f3, f4, f5, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.Canvas
    public boolean clipRegion(Region region) {
        return nClipRegion(this.mRenderer, region.mNativeRegion, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void concat(Matrix matrix) {
        if (matrix != null) {
            nConcatMatrix(this.mRenderer, matrix.native_instance);
        }
    }

    @Override // android.view.HardwareCanvas
    public void detachFunctor(int i2) {
        nDetachFunctor(this.mRenderer, i2);
    }

    @Override // android.graphics.Canvas
    public void drawARGB(int i2, int i3, int i4, int i5) {
        drawColor(((i2 & 255) << 24) | ((i3 & 255) << 16) | ((i4 & 255) << 8) | (i5 & 255));
    }

    @Override // android.graphics.Canvas
    public void drawArc(RectF rectF, float f2, float f3, boolean z2, Paint paint) {
        int i2 = setupModifiers(paint, 6);
        try {
            nDrawArc(this.mRenderer, rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3, z2, paint.mNativePaint);
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, float f2, float f3, Paint paint) {
        Canvas.throwIfCannotDraw(bitmap);
        int i2 = 0;
        int i3 = paint != null ? setupModifiers(bitmap, paint) : 0;
        if (paint != null) {
            try {
                i2 = paint.mNativePaint;
            } finally {
                if (i3 != 0) {
                    nResetModifiers(this.mRenderer, i3);
                }
            }
        }
        nDrawBitmap(this.mRenderer, bitmap.mNativeBitmap, bitmap.mBuffer, f2, f3, i2);
    }

    @Override // android.graphics.Canvas
    public void drawBitmapMesh(Bitmap bitmap, int i2, int i3, float[] fArr, int i4, int[] iArr, int i5, Paint paint) {
        int i6;
        Canvas.throwIfCannotDraw(bitmap);
        if (i2 < 0 || i3 < 0 || i4 < 0 || i5 < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (i2 == 0 || i3 == 0) {
            return;
        }
        int i7 = (i2 + 1) * (i3 + 1);
        Canvas.checkRange(fArr.length, i4, i7 * 2);
        if (iArr != null) {
            Canvas.checkRange(iArr.length, i5, i7);
        }
        int i8 = paint != null ? setupModifiers(bitmap, paint) : 0;
        if (paint == null) {
            i6 = 0;
        } else {
            try {
                i6 = paint.mNativePaint;
            } finally {
                if (i8 != 0) {
                    nResetModifiers(this.mRenderer, i8);
                }
            }
        }
        nDrawBitmapMesh(this.mRenderer, bitmap.mNativeBitmap, bitmap.mBuffer, i2, i3, fArr, i4, iArr, i5, i6);
    }

    @Override // android.graphics.Canvas
    public void drawCircle(float f2, float f3, float f4, Paint paint) {
        int i2 = setupModifiers(paint, 6);
        try {
            nDrawCircle(this.mRenderer, f2, f3, f4, paint.mNativePaint);
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawColor(int i2) {
        drawColor(i2, PorterDuff.Mode.SRC_OVER);
    }

    @Override // android.view.HardwareCanvas
    public int drawDisplayList(DisplayList displayList, Rect rect, int i2) {
        return nDrawDisplayList(this.mRenderer, ((GLES20DisplayList) displayList).getNativeDisplayList(), rect, i2);
    }

    @Override // android.view.HardwareCanvas
    public void drawHardwareLayer(HardwareLayer hardwareLayer, float f2, float f3, Paint paint) {
        hardwareLayer.setLayerPaint(paint);
        nDrawLayer(this.mRenderer, ((GLES20Layer) hardwareLayer).getLayer(), f2, f3);
    }

    @Override // android.graphics.Canvas
    public void drawLine(float f2, float f3, float f4, float f5, Paint paint) {
        float[] lineStorage = getLineStorage();
        lineStorage[0] = f2;
        lineStorage[1] = f3;
        lineStorage[2] = f4;
        lineStorage[3] = f5;
        drawLines(lineStorage, 0, 4, paint);
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, int i2, int i3, Paint paint) {
        if (i3 < 4) {
            return;
        }
        if ((i2 | i3) < 0 || i2 + i3 > fArr.length) {
            throw new IllegalArgumentException("The lines array must contain 4 elements per line.");
        }
        int i4 = setupModifiers(paint, 6);
        try {
            nDrawLines(this.mRenderer, fArr, i2, i3, paint.mNativePaint);
        } finally {
            if (i4 != 0) {
                nResetModifiers(this.mRenderer, i4);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawOval(RectF rectF, Paint paint) {
        int i2 = setupModifiers(paint, 6);
        try {
            nDrawOval(this.mRenderer, rectF.left, rectF.top, rectF.right, rectF.bottom, paint.mNativePaint);
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawPaint(Paint paint) {
        Rect internalClipBounds = getInternalClipBounds();
        nGetClipBounds(this.mRenderer, internalClipBounds);
        drawRect(internalClipBounds.left, internalClipBounds.top, internalClipBounds.right, internalClipBounds.bottom, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        Bitmap bitmap = ninePatch.getBitmap();
        Canvas.throwIfCannotDraw(bitmap);
        int i2 = 0;
        int i3 = paint != null ? setupColorFilter(paint) : 0;
        if (paint != null) {
            try {
                i2 = paint.mNativePaint;
            } finally {
                if (i3 != 0) {
                    nResetModifiers(this.mRenderer, i3);
                }
            }
        }
        nDrawPatch(this.mRenderer, bitmap.mNativeBitmap, bitmap.mBuffer, ninePatch.mNativeChunk, rect.left, rect.top, rect.right, rect.bottom, i2);
    }

    @Override // android.graphics.Canvas
    public void drawPath(Path path, Paint paint) {
        int i2 = setupModifiers(paint, 6);
        try {
            if (path.isSimplePath) {
                Region region = path.rects;
                if (region != null) {
                    nDrawRects(this.mRenderer, region.mNativeRegion, paint.mNativePaint);
                }
            } else {
                nDrawPath(this.mRenderer, path.mNativePath, paint.mNativePaint);
            }
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture) {
        if (picture.createdFromStream) {
            return;
        }
        picture.endRecording();
    }

    @Override // android.graphics.Canvas
    public void drawPoint(float f2, float f3, Paint paint) {
        float[] pointStorage = getPointStorage();
        pointStorage[0] = f2;
        pointStorage[1] = f3;
        drawPoints(pointStorage, 0, 2, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, Paint paint) {
        drawPoints(fArr, 0, fArr.length, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPosText(char[] cArr, int i2, int i3, float[] fArr, Paint paint) {
        if (i2 < 0 || i2 + i3 > cArr.length || i3 * 2 > fArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = setupModifiers(paint);
        try {
            nDrawPosText(this.mRenderer, cArr, i2, i3, fArr, paint.mNativePaint);
        } finally {
            if (i4 != 0) {
                nResetModifiers(this.mRenderer, i4);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawRGB(int i2, int i3, int i4) {
        drawColor(((i2 & 255) << 16) | (-16777216) | ((i3 & 255) << 8) | (i4 & 255));
    }

    @Override // android.graphics.Canvas
    public void drawRect(float f2, float f3, float f4, float f5, Paint paint) {
        if (f2 == f4 || f3 == f5) {
            return;
        }
        int i2 = setupModifiers(paint, 6);
        try {
            nDrawRect(this.mRenderer, f2, f3, f4, f5, paint.mNativePaint);
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    public void drawRects(float[] fArr, int i2, Paint paint) {
        int i3 = setupModifiers(paint, 6);
        try {
            nDrawRects(this.mRenderer, fArr, i2, paint.mNativePaint);
        } finally {
            if (i3 != 0) {
                nResetModifiers(this.mRenderer, i3);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawRoundRect(RectF rectF, float f2, float f3, Paint paint) {
        int i2 = setupModifiers(paint, 6);
        try {
            nDrawRoundRect(this.mRenderer, rectF.left, rectF.top, rectF.right, rectF.bottom, f2, f3, paint.mNativePaint);
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawText(char[] cArr, int i2, int i3, float f2, float f3, Paint paint) {
        if ((i2 | i3 | (i2 + i3) | ((cArr.length - i2) - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = setupModifiers(paint);
        try {
            nDrawText(this.mRenderer, cArr, i2, i3, f2, f3, paint.mBidiFlags, paint.mNativePaint);
        } finally {
            if (i4 != 0) {
                nResetModifiers(this.mRenderer, i4);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(char[] cArr, int i2, int i3, Path path, float f2, float f3, Paint paint) {
        if (i2 < 0 || i2 + i3 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i4 = setupModifiers(paint);
        try {
            nDrawTextOnPath(this.mRenderer, cArr, i2, i3, path.mNativePath, f2, f3, paint.mBidiFlags, paint.mNativePaint);
        } finally {
            if (i4 != 0) {
                nResetModifiers(this.mRenderer, i4);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawTextRun(char[] cArr, int i2, int i3, int i4, int i5, float f2, float f3, int i6, Paint paint) {
        if ((i2 | i3 | ((cArr.length - i2) - i3)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i6 != 0 && i6 != 1) {
            throw new IllegalArgumentException("Unknown direction: " + i6);
        }
        int i7 = setupModifiers(paint);
        try {
            nDrawTextRun(this.mRenderer, cArr, i2, i3, i4, i5, f2, f3, i6, paint.mNativePaint);
        } finally {
            if (i7 != 0) {
                nResetModifiers(this.mRenderer, i7);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawVertices(Canvas.VertexMode vertexMode, int i2, float[] fArr, int i3, float[] fArr2, int i4, int[] iArr, int i5, short[] sArr, int i6, int i7, Paint paint) {
    }

    @Override // android.view.HardwareCanvas
    public void flushLayerUpdates() {
        nFlushLayerUpdates(this.mRenderer);
    }

    @Override // android.graphics.Canvas
    public boolean getClipBounds(Rect rect) {
        return nGetClipBounds(this.mRenderer, rect);
    }

    public int getDisplayList(int i2) {
        return nGetDisplayList(this.mRenderer, i2);
    }

    @Override // android.graphics.Canvas
    public DrawFilter getDrawFilter() {
        return this.mFilter;
    }

    @Override // android.graphics.Canvas
    public int getHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.Canvas
    public void getMatrix(Matrix matrix) {
        nGetMatrix(this.mRenderer, matrix.native_instance);
    }

    @Override // android.graphics.Canvas
    public int getMaximumBitmapHeight() {
        return nGetMaximumTextureHeight();
    }

    @Override // android.graphics.Canvas
    public int getMaximumBitmapWidth() {
        return nGetMaximumTextureWidth();
    }

    public float getOverdraw() {
        return nGetOverdraw(this.mRenderer);
    }

    public int getRenderer() {
        return this.mRenderer;
    }

    @Override // android.graphics.Canvas
    public int getSaveCount() {
        return nGetSaveCount(this.mRenderer);
    }

    @Override // android.graphics.Canvas
    public int getWidth() {
        return this.mWidth;
    }

    public void interrupt() {
        nInterrupt(this.mRenderer);
    }

    @Override // android.view.HardwareCanvas
    public int invokeFunctors(Rect rect) {
        return nInvokeFunctors(this.mRenderer, rect);
    }

    @Override // android.graphics.Canvas
    public boolean isOpaque() {
        return this.mOpaque;
    }

    @Override // android.view.HardwareCanvas
    public void onPostDraw() {
        nFinish(this.mRenderer);
    }

    @Override // android.view.HardwareCanvas
    public int onPreDraw(Rect rect) {
        return rect != null ? nPrepareDirty(this.mRenderer, rect.left, rect.top, rect.right, rect.bottom, this.mOpaque) : nPrepare(this.mRenderer, this.mOpaque);
    }

    @Override // android.view.HardwareCanvas
    public void outputDisplayList(DisplayList displayList) {
        nOutputDisplayList(this.mRenderer, ((GLES20DisplayList) displayList).getNativeDisplayList());
    }

    @Override // android.view.HardwareCanvas
    public void pushLayerUpdate(HardwareLayer hardwareLayer) {
        nPushLayerUpdate(this.mRenderer, ((GLES20RenderLayer) hardwareLayer).mLayer);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(float f2, float f3, float f4, float f5, Canvas.EdgeType edgeType) {
        return nQuickReject(this.mRenderer, f2, f3, f4, f5);
    }

    public void resetDisplayListRenderer() {
        nResetDisplayListRenderer(this.mRenderer);
    }

    @Override // android.graphics.Canvas
    public void restore() {
        nRestore(this.mRenderer);
    }

    @Override // android.graphics.Canvas
    public void restoreToCount(int i2) {
        nRestoreToCount(this.mRenderer, i2);
    }

    public void resume() {
        nResume(this.mRenderer);
    }

    @Override // android.graphics.Canvas
    public void rotate(float f2) {
        nRotate(this.mRenderer, f2);
    }

    @Override // android.graphics.Canvas
    public int save() {
        return nSave(this.mRenderer, 3);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(RectF rectF, Paint paint, int i2) {
        if (rectF != null) {
            return saveLayer(rectF.left, rectF.top, rectF.right, rectF.bottom, paint, i2);
        }
        int i3 = 0;
        int i4 = paint != null ? setupColorFilter(paint) : 0;
        if (paint != null) {
            try {
                i3 = paint.mNativePaint;
            } finally {
                if (i4 != 0) {
                    nResetModifiers(this.mRenderer, i4);
                }
            }
        }
        return nSaveLayer(this.mRenderer, i3, i2);
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(RectF rectF, int i2, int i3) {
        return rectF != null ? saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i2, i3) : nSaveLayerAlpha(this.mRenderer, i2, i3);
    }

    @Override // android.graphics.Canvas
    public void scale(float f2, float f3) {
        nScale(this.mRenderer, f2, f3);
    }

    public void setCountOverdrawEnabled(boolean z2) {
        nSetCountOverdrawEnabled(this.mRenderer, z2);
    }

    @Override // android.graphics.Canvas
    public void setDrawFilter(DrawFilter drawFilter) {
        this.mFilter = drawFilter;
        if (drawFilter == null) {
            nResetPaintFilter(this.mRenderer);
        } else if (drawFilter instanceof PaintFlagsDrawFilter) {
            PaintFlagsDrawFilter paintFlagsDrawFilter = (PaintFlagsDrawFilter) drawFilter;
            nSetupPaintFilter(this.mRenderer, paintFlagsDrawFilter.clearBits, paintFlagsDrawFilter.setBits);
        }
    }

    @Override // android.graphics.Canvas
    public void setMatrix(Matrix matrix) {
        nSetMatrix(this.mRenderer, matrix == null ? 0 : matrix.native_instance);
    }

    @Override // android.view.HardwareCanvas
    public void setName(String str) {
        super.setName(str);
        nSetName(this.mRenderer, str);
    }

    @Override // android.graphics.Canvas
    public void setViewport(int i2, int i3) {
        this.mWidth = i2;
        this.mHeight = i3;
        nSetViewport(this.mRenderer, i2, i3);
    }

    @Override // android.graphics.Canvas
    public void skew(float f2, float f3) {
        nSkew(this.mRenderer, f2, f3);
    }

    @Override // android.graphics.Canvas
    public void translate(float f2, float f3) {
        if (f2 == 0.0f && f3 == 0.0f) {
            return;
        }
        nTranslate(this.mRenderer, f2, f3);
    }

    public GLES20Canvas(int i2, boolean z2) {
        this.mOpaque = !z2;
        this.mRenderer = nCreateLayerRenderer(i2);
        setupFinalizer();
    }

    @Override // android.graphics.Canvas
    public boolean clipPath(Path path, Region.Op op) {
        return nClipPath(this.mRenderer, path.mNativePath, op.nativeInt);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(float f2, float f3, float f4, float f5, Region.Op op) {
        return nClipRect(this.mRenderer, f2, f3, f4, f5, op.nativeInt);
    }

    @Override // android.graphics.Canvas
    public boolean clipRegion(Region region, Region.Op op) {
        return nClipRegion(this.mRenderer, region.mNativeRegion, op.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void drawColor(int i2, PorterDuff.Mode mode) {
        nDrawColor(this.mRenderer, i2, mode.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, int i2, int i3, Paint paint) {
        if (i3 < 2) {
            return;
        }
        int i4 = setupModifiers(paint, 6);
        try {
            nDrawPoints(this.mRenderer, fArr, i2, i3, paint.mNativePaint);
        } finally {
            if (i4 != 0) {
                nResetModifiers(this.mRenderer, i4);
            }
        }
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(Path path, Canvas.EdgeType edgeType) {
        RectF pathBounds = getPathBounds();
        path.computeBounds(pathBounds, true);
        return nQuickReject(this.mRenderer, pathBounds.left, pathBounds.top, pathBounds.right, pathBounds.bottom);
    }

    @Override // android.graphics.Canvas
    public int save(int i2) {
        return nSave(this.mRenderer, i2);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(int i2, int i3, int i4, int i5) {
        return nClipRect(this.mRenderer, i2, i3, i4, i5, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture, Rect rect) {
        if (picture.createdFromStream) {
            return;
        }
        save();
        translate(rect.left, rect.top);
        if (picture.getWidth() > 0 && picture.getHeight() > 0) {
            scale(rect.width() / picture.getWidth(), rect.height() / picture.getHeight());
        }
        drawPicture(picture);
        restore();
    }

    @Override // android.graphics.Canvas
    public int saveLayerAlpha(float f2, float f3, float f4, float f5, int i2, int i3) {
        if (f2 < f4 && f3 < f5) {
            return nSaveLayerAlpha(this.mRenderer, f2, f3, f4, f5, i2, i3);
        }
        return save(i3);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect) {
        return nClipRect(this.mRenderer, rect.left, rect.top, rect.right, rect.bottom, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void drawRect(Rect rect, Paint paint) {
        drawRect(rect.left, rect.top, rect.right, rect.bottom, paint);
    }

    private int setupModifiers(Paint paint) {
        int i2;
        if (paint.hasShadow) {
            nSetupShadow(this.mRenderer, paint.shadowRadius, paint.shadowDx, paint.shadowDy, paint.shadowColor);
            i2 = 1;
        } else {
            i2 = 0;
        }
        Shader shader = paint.getShader();
        if (shader != null) {
            nSetupShader(this.mRenderer, shader.native_shader);
            i2 |= 2;
        }
        ColorFilter colorFilter = paint.getColorFilter();
        if (colorFilter == null) {
            return i2;
        }
        nSetupColorFilter(this.mRenderer, colorFilter.nativeColorFilter);
        return i2 | 4;
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(Rect rect, Region.Op op) {
        return nClipRect(this.mRenderer, rect.left, rect.top, rect.right, rect.bottom, op.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void drawRect(RectF rectF, Paint paint) {
        drawRect(rectF.left, rectF.top, rectF.right, rectF.bottom, paint);
    }

    @Override // android.graphics.Canvas
    public boolean quickReject(RectF rectF, Canvas.EdgeType edgeType) {
        return nQuickReject(this.mRenderer, rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    public GLES20Canvas(boolean z2, boolean z3) {
        this.mOpaque = !z3;
        if (z2) {
            this.mRenderer = nCreateDisplayListRenderer();
        } else {
            this.mRenderer = nCreateRenderer();
        }
        setupFinalizer();
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF) {
        return nClipRect(this.mRenderer, rectF.left, rectF.top, rectF.right, rectF.bottom, Region.Op.INTERSECT.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        Canvas.throwIfCannotDraw(bitmap);
        int i2 = 0;
        int i3 = paint != null ? setupModifiers(bitmap, paint) : 0;
        if (paint != null) {
            try {
                i2 = paint.mNativePaint;
            } finally {
                if (i3 != 0) {
                    nResetModifiers(this.mRenderer, i3);
                }
            }
        }
        nDrawBitmap(this.mRenderer, bitmap.mNativeBitmap, bitmap.mBuffer, matrix.native_instance, i2);
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, Paint paint) {
        drawLines(fArr, 0, fArr.length, paint);
    }

    @Override // android.graphics.Canvas
    public void drawPosText(String str, float[] fArr, Paint paint) {
        if (str.length() * 2 <= fArr.length) {
            int i2 = setupModifiers(paint);
            try {
                nDrawPosText(this.mRenderer, str, 0, str.length(), fArr, paint.mNativePaint);
                if (i2 != 0) {
                    return;
                } else {
                    return;
                }
            } finally {
                if (i2 != 0) {
                    nResetModifiers(this.mRenderer, i2);
                }
            }
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    @Override // android.graphics.Canvas
    public void drawText(CharSequence charSequence, int i2, int i3, float f2, float f3, Paint paint) {
        int i4 = setupModifiers(paint);
        try {
            if (!(charSequence instanceof String) && !(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                if (charSequence instanceof GraphicsOperations) {
                    ((GraphicsOperations) charSequence).drawText(this, i2, i3, f2, f3, paint);
                } else {
                    int i5 = i3 - i2;
                    char[] cArrObtain = TemporaryBuffer.obtain(i5);
                    TextUtils.getChars(charSequence, i2, i3, cArrObtain, 0);
                    nDrawText(this.mRenderer, cArrObtain, 0, i5, f2, f3, paint.mBidiFlags, paint.mNativePaint);
                    TemporaryBuffer.recycle(cArrObtain);
                }
            } else {
                nDrawText(this.mRenderer, charSequence.toString(), i2, i3, f2, f3, paint.mBidiFlags, paint.mNativePaint);
            }
        } finally {
            if (i4 != 0) {
                nResetModifiers(this.mRenderer, i4);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(String str, Path path, float f2, float f3, Paint paint) {
        if (str.length() == 0) {
            return;
        }
        int i2 = setupModifiers(paint);
        try {
            nDrawTextOnPath(this.mRenderer, str, 0, str.length(), path.mNativePath, f2, f3, paint.mBidiFlags, paint.mNativePaint);
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    @Override // android.graphics.Canvas
    public int saveLayer(float f2, float f3, float f4, float f5, Paint paint, int i2) {
        if (f2 < f4 && f3 < f5) {
            int i3 = 0;
            int i4 = paint != null ? setupColorFilter(paint) : 0;
            if (paint != null) {
                try {
                    i3 = paint.mNativePaint;
                } finally {
                    if (i4 != 0) {
                        nResetModifiers(this.mRenderer, i4);
                    }
                }
            }
            return nSaveLayer(this.mRenderer, f2, f3, f4, f5, i3, i2);
        }
        return save(i2);
    }

    @Override // android.graphics.Canvas
    public boolean clipRect(RectF rectF, Region.Op op) {
        return nClipRect(this.mRenderer, rectF.left, rectF.top, rectF.right, rectF.bottom, op.nativeInt);
    }

    @Override // android.graphics.Canvas
    public void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        Bitmap bitmap = ninePatch.getBitmap();
        Canvas.throwIfCannotDraw(bitmap);
        int i2 = 0;
        int i3 = paint != null ? setupColorFilter(paint) : 0;
        if (paint != null) {
            try {
                i2 = paint.mNativePaint;
            } finally {
                if (i3 != 0) {
                    nResetModifiers(this.mRenderer, i3);
                }
            }
        }
        nDrawPatch(this.mRenderer, bitmap.mNativeBitmap, bitmap.mBuffer, ninePatch.mNativeChunk, rectF.left, rectF.top, rectF.right, rectF.bottom, i2);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0092  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.Canvas
    public void drawTextRun(CharSequence charSequence, int i2, int i3, int i4, int i5, float f2, float f3, int i6, Paint paint) throws Throwable {
        int i7;
        int i8;
        int i9 = i3 - i2;
        if ((i2 | i3 | i9 | (charSequence.length() - i3)) >= 0) {
            int i10 = setupModifiers(paint);
            int i11 = i6 == 0 ? 0 : 1;
            try {
                try {
                    if (!(charSequence instanceof String) && !(charSequence instanceof SpannedString) && !(charSequence instanceof SpannableString)) {
                        if (charSequence instanceof GraphicsOperations) {
                            ((GraphicsOperations) charSequence).drawTextRun(this, i2, i3, i4, i5, f2, f3, i11, paint);
                            i7 = i10;
                        } else {
                            int i12 = i5 - i4;
                            char[] cArrObtain = TemporaryBuffer.obtain(i12);
                            TextUtils.getChars(charSequence, i4, i5, cArrObtain, 0);
                            i8 = i10;
                            nDrawTextRun(this.mRenderer, cArrObtain, i2 - i4, i9, 0, i12, f2, f3, i11, paint.mNativePaint);
                            TemporaryBuffer.recycle(cArrObtain);
                            i7 = i8;
                        }
                        if (i7 != 0) {
                            nResetModifiers(this.mRenderer, i7);
                        }
                    }
                    int i13 = this.mRenderer;
                    String string = charSequence.toString();
                    int i14 = i11;
                    i7 = i10;
                    i8 = paint.mNativePaint;
                    try {
                        nDrawTextRun(i13, string, i2, i3, i4, i5, f2, f3, i14, i8);
                    } catch (Throwable th) {
                        th = th;
                        if (i7 != 0) {
                            nResetModifiers(this.mRenderer, i7);
                        }
                        throw th;
                    }
                    if (i7 != 0) {
                        nResetModifiers(this.mRenderer, i7);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    i7 = i8;
                }
            } catch (Throwable th3) {
                th = th3;
                i7 = i10;
            }
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // android.graphics.Canvas
    public void drawPicture(Picture picture, RectF rectF) {
        if (picture.createdFromStream) {
            return;
        }
        save();
        translate(rectF.left, rectF.top);
        if (picture.getWidth() > 0 && picture.getHeight() > 0) {
            scale(rectF.width() / picture.getWidth(), rectF.height() / picture.getHeight());
        }
        drawPicture(picture);
        restore();
    }

    private int setupModifiers(Paint paint, int i2) {
        int i3;
        if (!paint.hasShadow || (i2 & 1) == 0) {
            i3 = 0;
        } else {
            nSetupShadow(this.mRenderer, paint.shadowRadius, paint.shadowDx, paint.shadowDy, paint.shadowColor);
            i3 = 1;
        }
        Shader shader = paint.getShader();
        if (shader != null && (i2 & 2) != 0) {
            nSetupShader(this.mRenderer, shader.native_shader);
            i3 |= 2;
        }
        ColorFilter colorFilter = paint.getColorFilter();
        if (colorFilter == null || (i2 & 4) == 0) {
            return i3;
        }
        nSetupColorFilter(this.mRenderer, colorFilter.nativeColorFilter);
        return i3 | 4;
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        int i2;
        int i3;
        int height;
        int width;
        Canvas.throwIfCannotDraw(bitmap);
        int i4 = 0;
        int i5 = paint != null ? setupModifiers(bitmap, paint) : 0;
        if (paint == null) {
            i2 = 0;
        } else {
            try {
                i2 = paint.mNativePaint;
            } finally {
                if (i5 != 0) {
                    nResetModifiers(this.mRenderer, i5);
                }
            }
        }
        if (rect == null) {
            width = bitmap.getWidth();
            height = bitmap.getHeight();
            i3 = 0;
        } else {
            i4 = rect.left;
            int i6 = rect.right;
            i3 = rect.top;
            height = rect.bottom;
            width = i6;
        }
        nDrawBitmap(this.mRenderer, bitmap.mNativeBitmap, bitmap.mBuffer, i4, i3, width, height, rect2.left, rect2.top, rect2.right, rect2.bottom, i2);
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, int i2, int i3, float f2, float f3, Paint paint) {
        if ((i2 | i3 | (i3 - i2) | (str.length() - i3)) >= 0) {
            int i4 = setupModifiers(paint);
            try {
                nDrawText(this.mRenderer, str, i2, i3, f2, f3, paint.mBidiFlags, paint.mNativePaint);
                if (i4 != 0) {
                    return;
                } else {
                    return;
                }
            } finally {
                if (i4 != 0) {
                    nResetModifiers(this.mRenderer, i4);
                }
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, float f2, float f3, Paint paint) {
        int i2 = setupModifiers(paint);
        try {
            nDrawText(this.mRenderer, str, 0, str.length(), f2, f3, paint.mBidiFlags, paint.mNativePaint);
        } finally {
            if (i2 != 0) {
                nResetModifiers(this.mRenderer, i2);
            }
        }
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        float height;
        float f2;
        float width;
        float f3;
        Canvas.throwIfCannotDraw(bitmap);
        int i2 = 0;
        int i3 = paint != null ? setupModifiers(bitmap, paint) : 0;
        if (paint != null) {
            try {
                i2 = paint.mNativePaint;
            } finally {
                if (i3 != 0) {
                    nResetModifiers(this.mRenderer, i3);
                }
            }
        }
        int i4 = i2;
        if (rect == null) {
            f2 = 0.0f;
            f3 = 0.0f;
            width = bitmap.getWidth();
            height = bitmap.getHeight();
        } else {
            float f4 = rect.left;
            float f5 = rect.right;
            float f6 = rect.top;
            height = rect.bottom;
            f2 = f4;
            width = f5;
            f3 = f6;
        }
        nDrawBitmap(this.mRenderer, bitmap.mNativeBitmap, bitmap.mBuffer, f2, f3, width, height, rectF.left, rectF.top, rectF.right, rectF.bottom, i4);
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, int i2, int i3, float f2, float f3, int i4, int i5, boolean z2, Paint paint) {
        int i6;
        if (i4 < 0) {
            throw new IllegalArgumentException("width must be >= 0");
        }
        if (i5 >= 0) {
            if (Math.abs(i3) >= i4) {
                int i7 = ((i5 - 1) * i3) + i2;
                int length = iArr.length;
                if (i2 >= 0 && i2 + i4 <= length && i7 >= 0 && i7 + i4 <= length) {
                    int i8 = paint != null ? setupColorFilter(paint) : 0;
                    if (paint == null) {
                        i6 = 0;
                    } else {
                        try {
                            i6 = paint.mNativePaint;
                        } finally {
                            if (i8 != 0) {
                                nResetModifiers(this.mRenderer, i8);
                            }
                        }
                    }
                    nDrawBitmap(this.mRenderer, iArr, i2, i3, f2, f3, i4, i5, z2, i6);
                    if (i8 != 0) {
                        return;
                    } else {
                        return;
                    }
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            throw new IllegalArgumentException("abs(stride) must be >= width");
        }
        throw new IllegalArgumentException("height must be >= 0");
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, Paint paint) {
        drawBitmap(iArr, i2, i3, i4, i5, i6, i7, z2, paint);
    }
}
