package android.view;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
class GLES20RenderLayer extends GLES20Layer {
    private final GLES20Canvas mCanvas;
    private int mLayerHeight;
    private int mLayerWidth;

    public GLES20RenderLayer(int i2, int i3, boolean z2) {
        super(i2, i3, z2);
        int[] iArr = new int[2];
        int iNCreateLayer = GLES20Canvas.nCreateLayer(i2, i3, z2, iArr);
        this.mLayer = iNCreateLayer;
        if (iNCreateLayer == 0) {
            this.mCanvas = null;
            this.mFinalizer = null;
        } else {
            this.mLayerWidth = iArr[0];
            this.mLayerHeight = iArr[1];
            this.mCanvas = new GLES20Canvas(this.mLayer, true ^ z2);
            this.mFinalizer = new GLES20Layer.Finalizer(this.mLayer);
        }
    }

    @Override // android.view.HardwareLayer
    public void end(Canvas canvas) {
        HardwareCanvas canvas2 = getCanvas();
        if (canvas2 != null) {
            canvas2.onPostDraw();
        }
        if (canvas instanceof GLES20Canvas) {
            ((GLES20Canvas) canvas).resume();
        }
    }

    @Override // android.view.HardwareLayer
    public HardwareCanvas getCanvas() {
        return this.mCanvas;
    }

    @Override // android.view.HardwareLayer
    public boolean isValid() {
        return this.mLayer != 0 && this.mLayerWidth > 0 && this.mLayerHeight > 0;
    }

    @Override // android.view.HardwareLayer
    public void redrawLater(DisplayList displayList, Rect rect) {
        GLES20Canvas.nUpdateRenderLayer(this.mLayer, this.mCanvas.getRenderer(), ((GLES20DisplayList) displayList).getNativeDisplayList(), rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // android.view.HardwareLayer
    public boolean resize(int i2, int i3) {
        if (!isValid() || i2 <= 0 || i3 <= 0) {
            return false;
        }
        this.mWidth = i2;
        this.mHeight = i3;
        if (i2 != this.mLayerWidth || i3 != this.mLayerHeight) {
            int[] iArr = new int[2];
            if (GLES20Canvas.nResizeLayer(this.mLayer, i2, i3, iArr)) {
                this.mLayerWidth = iArr[0];
                this.mLayerHeight = iArr[1];
            } else {
                this.mLayer = 0;
                this.mLayerWidth = 0;
                this.mLayerHeight = 0;
            }
        }
        return isValid();
    }

    @Override // android.view.HardwareLayer
    public void setOpaque(boolean z2) {
        this.mOpaque = z2;
        GLES20Canvas.nSetOpaqueLayer(this.mLayer, z2);
    }

    @Override // android.view.HardwareLayer
    public void setTransform(Matrix matrix) {
    }

    @Override // android.view.HardwareLayer
    public HardwareCanvas start(Canvas canvas) {
        return start(canvas, null);
    }

    @Override // android.view.HardwareLayer
    public HardwareCanvas start(Canvas canvas, Rect rect) {
        if (canvas instanceof GLES20Canvas) {
            ((GLES20Canvas) canvas).interrupt();
        }
        HardwareCanvas canvas2 = getCanvas();
        canvas2.setViewport(this.mWidth, this.mHeight);
        canvas2.onPreDraw(rect);
        return canvas2;
    }
}
