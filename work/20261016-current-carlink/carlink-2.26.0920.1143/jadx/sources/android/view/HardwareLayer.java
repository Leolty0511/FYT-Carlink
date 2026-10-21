package android.view;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import com.android.internal.util.VirtualRefBasePtr;

/* JADX INFO: loaded from: classes2.dex */
final class HardwareLayer {
    private VirtualRefBasePtr mFinalizer;
    private ThreadedRenderer mRenderer;

    private HardwareLayer(ThreadedRenderer threadedRenderer, long j2) {
        if (threadedRenderer != null && j2 != 0) {
            this.mRenderer = threadedRenderer;
            this.mFinalizer = new VirtualRefBasePtr(j2);
            return;
        }
        throw new IllegalArgumentException("Either hardware renderer: " + threadedRenderer + " or deferredUpdater: " + j2 + " is invalid");
    }

    public static HardwareLayer adoptTextureLayer(ThreadedRenderer threadedRenderer, long j2) {
        return new HardwareLayer(threadedRenderer, j2);
    }

    private static native boolean nPrepare(long j2, int i2, int i3, boolean z2);

    private static native void nSetLayerPaint(long j2, long j3);

    private static native void nSetSurfaceTexture(long j2, SurfaceTexture surfaceTexture);

    private static native void nSetTransform(long j2, long j3);

    private static native void nUpdateSurfaceTexture(long j2);

    public boolean copyInto(Bitmap bitmap) {
        return this.mRenderer.copyLayerInto(this, bitmap);
    }

    public void destroy() {
        if (isValid()) {
            this.mRenderer.onLayerDestroyed(this);
            this.mRenderer = null;
            this.mFinalizer.release();
            this.mFinalizer = null;
        }
    }

    public void detachSurfaceTexture() {
        this.mRenderer.detachSurfaceTexture(this.mFinalizer.get());
    }

    public long getDeferredLayerUpdater() {
        return this.mFinalizer.get();
    }

    public long getLayerHandle() {
        return this.mFinalizer.get();
    }

    public boolean isValid() {
        VirtualRefBasePtr virtualRefBasePtr = this.mFinalizer;
        return (virtualRefBasePtr == null || virtualRefBasePtr.get() == 0) ? false : true;
    }

    public boolean prepare(int i2, int i3, boolean z2) {
        return nPrepare(this.mFinalizer.get(), i2, i3, z2);
    }

    public void setLayerPaint(Paint paint) {
        nSetLayerPaint(this.mFinalizer.get(), paint != null ? paint.getNativeInstance() : 0L);
        this.mRenderer.pushLayerUpdate(this);
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        nSetSurfaceTexture(this.mFinalizer.get(), surfaceTexture);
        this.mRenderer.pushLayerUpdate(this);
    }

    public void setTransform(Matrix matrix) {
        nSetTransform(this.mFinalizer.get(), matrix.native_instance);
        this.mRenderer.pushLayerUpdate(this);
    }

    public void updateSurfaceTexture() {
        nUpdateSurfaceTexture(this.mFinalizer.get());
        this.mRenderer.pushLayerUpdate(this);
    }
}
