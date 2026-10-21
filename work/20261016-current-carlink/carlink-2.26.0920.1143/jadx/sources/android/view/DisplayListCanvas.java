package android.view;

import android.graphics.Bitmap;
import android.graphics.CanvasProperty;
import android.graphics.Paint;
import android.util.Pools;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;

/* JADX INFO: loaded from: classes2.dex */
public final class DisplayListCanvas extends RecordingCanvas {
    private static final int MAX_BITMAP_SIZE = 104857600;
    private static final int POOL_LIMIT = 25;
    private static final Pools.SynchronizedPool<DisplayListCanvas> sPool = new Pools.SynchronizedPool<>(25);
    private int mHeight;
    RenderNode mNode;
    private int mWidth;

    private DisplayListCanvas(RenderNode renderNode, int i2, int i3) {
        super(nCreateDisplayListCanvas(renderNode.mNativeRenderNode, i2, i3));
        this.mDensity = 0;
    }

    @FastNative
    private static native void nCallDrawGLFunction(long j2, long j3, Runnable runnable);

    @CriticalNative
    private static native long nCreateDisplayListCanvas(long j2, int i2, int i3);

    @CriticalNative
    private static native void nDrawCircle(long j2, long j3, long j4, long j5, long j6);

    @CriticalNative
    private static native void nDrawLayer(long j2, long j3);

    @CriticalNative
    private static native void nDrawRenderNode(long j2, long j3);

    @CriticalNative
    private static native void nDrawRoundRect(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9);

    @CriticalNative
    private static native long nFinishRecording(long j2);

    @CriticalNative
    private static native int nGetMaximumTextureHeight();

    @CriticalNative
    private static native int nGetMaximumTextureWidth();

    @CriticalNative
    private static native void nInsertReorderBarrier(long j2, boolean z2);

    @CriticalNative
    private static native void nResetDisplayListCanvas(long j2, long j3, int i2, int i3);

    public static DisplayListCanvas obtain(RenderNode renderNode, int i2, int i3) {
        if (renderNode == null) {
            throw new IllegalArgumentException("node cannot be null");
        }
        DisplayListCanvas displayListCanvasAcquire = sPool.acquire();
        if (displayListCanvasAcquire == null) {
            displayListCanvasAcquire = new DisplayListCanvas(renderNode, i2, i3);
        } else {
            nResetDisplayListCanvas(displayListCanvasAcquire.mNativeCanvasWrapper, renderNode.mNativeRenderNode, i2, i3);
        }
        displayListCanvasAcquire.mNode = renderNode;
        displayListCanvasAcquire.mWidth = i2;
        displayListCanvasAcquire.mHeight = i3;
        return displayListCanvasAcquire;
    }

    public void callDrawGLFunction2(long j2) {
        nCallDrawGLFunction(this.mNativeCanvasWrapper, j2, null);
    }

    public void drawCircle(CanvasProperty<Float> canvasProperty, CanvasProperty<Float> canvasProperty2, CanvasProperty<Float> canvasProperty3, CanvasProperty<Paint> canvasProperty4) {
        nDrawCircle(this.mNativeCanvasWrapper, canvasProperty.getNativeContainer(), canvasProperty2.getNativeContainer(), canvasProperty3.getNativeContainer(), canvasProperty4.getNativeContainer());
    }

    public void drawGLFunctor2(long j2, Runnable runnable) {
        nCallDrawGLFunction(this.mNativeCanvasWrapper, j2, runnable);
    }

    public void drawHardwareLayer(HardwareLayer hardwareLayer) {
        nDrawLayer(this.mNativeCanvasWrapper, hardwareLayer.getLayerHandle());
    }

    public void drawRenderNode(RenderNode renderNode) {
        nDrawRenderNode(this.mNativeCanvasWrapper, renderNode.getNativeDisplayList());
    }

    public void drawRoundRect(CanvasProperty<Float> canvasProperty, CanvasProperty<Float> canvasProperty2, CanvasProperty<Float> canvasProperty3, CanvasProperty<Float> canvasProperty4, CanvasProperty<Float> canvasProperty5, CanvasProperty<Float> canvasProperty6, CanvasProperty<Paint> canvasProperty7) {
        nDrawRoundRect(this.mNativeCanvasWrapper, canvasProperty.getNativeContainer(), canvasProperty2.getNativeContainer(), canvasProperty3.getNativeContainer(), canvasProperty4.getNativeContainer(), canvasProperty5.getNativeContainer(), canvasProperty6.getNativeContainer(), canvasProperty7.getNativeContainer());
    }

    public long finishRecording() {
        return nFinishRecording(this.mNativeCanvasWrapper);
    }

    @Override // android.graphics.Canvas
    public int getHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.Canvas
    public int getMaximumBitmapHeight() {
        return nGetMaximumTextureHeight();
    }

    @Override // android.graphics.Canvas
    public int getMaximumBitmapWidth() {
        return nGetMaximumTextureWidth();
    }

    @Override // android.graphics.Canvas
    public int getWidth() {
        return this.mWidth;
    }

    @Override // android.graphics.Canvas
    public void insertInorderBarrier() {
        nInsertReorderBarrier(this.mNativeCanvasWrapper, false);
    }

    @Override // android.graphics.Canvas
    public void insertReorderBarrier() {
        nInsertReorderBarrier(this.mNativeCanvasWrapper, true);
    }

    @Override // android.graphics.Canvas, android.graphics.BaseCanvas
    public boolean isHardwareAccelerated() {
        return true;
    }

    @Override // android.graphics.Canvas
    public boolean isOpaque() {
        return false;
    }

    @Override // android.graphics.Canvas
    public boolean isRecordingFor(Object obj) {
        return obj == this.mNode;
    }

    public void recycle() {
        this.mNode = null;
        sPool.release(this);
    }

    @Override // android.graphics.Canvas
    public void setBitmap(Bitmap bitmap) {
        throw new UnsupportedOperationException();
    }

    @Override // android.graphics.Canvas
    public void setDensity(int i2) {
    }

    @Override // android.graphics.BaseCanvas
    public void throwIfCannotDraw(Bitmap bitmap) {
        super.throwIfCannotDraw(bitmap);
        int byteCount = bitmap.getByteCount();
        if (byteCount > MAX_BITMAP_SIZE) {
            throw new RuntimeException(android.accessibilityservice.c.e("Canvas: trying to draw too large(", byteCount, "bytes) bitmap."));
        }
    }
}
