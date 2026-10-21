package android.view;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;

/* JADX INFO: loaded from: classes.dex */
class GLES20TextureLayer extends GLES20Layer {
    private SurfaceTexture mSurface;
    private int mTexture;

    public GLES20TextureLayer(boolean z2) {
        int[] iArr = new int[2];
        int iNCreateTextureLayer = GLES20Canvas.nCreateTextureLayer(z2, iArr);
        this.mLayer = iNCreateTextureLayer;
        if (iNCreateTextureLayer == 0) {
            this.mFinalizer = null;
        } else {
            this.mTexture = iArr[0];
            this.mFinalizer = new GLES20Layer.Finalizer(iNCreateTextureLayer);
        }
    }

    @Override // android.view.HardwareLayer
    public void end(Canvas canvas) {
    }

    @Override // android.view.HardwareLayer
    public HardwareCanvas getCanvas() {
        return null;
    }

    public SurfaceTexture getSurfaceTexture() {
        if (this.mSurface == null) {
            this.mSurface = new SurfaceTexture(this.mTexture);
        }
        return this.mSurface;
    }

    @Override // android.view.HardwareLayer
    public boolean isValid() {
        return (this.mLayer == 0 || this.mTexture == 0) ? false : true;
    }

    @Override // android.view.HardwareLayer
    public void redrawLater(DisplayList displayList, Rect rect) {
    }

    @Override // android.view.HardwareLayer
    public boolean resize(int i2, int i3) {
        return isValid();
    }

    @Override // android.view.HardwareLayer
    public void setOpaque(boolean z2) {
        throw new UnsupportedOperationException("Use update(int, int, boolean) instead");
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.mSurface;
        if (surfaceTexture2 != null) {
            surfaceTexture2.release();
        }
        this.mSurface = surfaceTexture;
        surfaceTexture.attachToGLContext(this.mTexture);
    }

    @Override // android.view.HardwareLayer
    public void setTransform(Matrix matrix) {
        GLES20Canvas.nSetTextureLayerTransform(this.mLayer, matrix.native_instance);
    }

    @Override // android.view.HardwareLayer
    public HardwareCanvas start(Canvas canvas) {
        return null;
    }

    @Override // android.view.HardwareLayer
    public HardwareCanvas start(Canvas canvas, Rect rect) {
        return null;
    }

    @Override // android.view.HardwareLayer
    public void update(int i2, int i3, boolean z2) {
        super.update(i2, i3, z2);
        GLES20Canvas.nUpdateTextureLayer(this.mLayer, i2, i3, z2, this.mSurface);
    }
}
