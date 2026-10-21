package android.view;

import android.graphics.Bitmap;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes.dex */
abstract class GLES20Layer extends HardwareLayer {
    public Finalizer mFinalizer;
    public int mLayer;

    public static class Finalizer {
        private int mLayerId;

        public Finalizer(int i2) {
            this.mLayerId = i2;
        }

        public void destroy() {
            GLES20Canvas.nDestroyLayer(this.mLayerId);
            this.mLayerId = 0;
        }

        public void finalize() throws Throwable {
            try {
                int i2 = this.mLayerId;
                if (i2 != 0) {
                    GLES20Canvas.nDestroyLayerDeferred(i2);
                }
            } finally {
                super.finalize();
            }
        }
    }

    public GLES20Layer() {
    }

    @Override // android.view.HardwareLayer
    public void clearStorage() {
        int i2 = this.mLayer;
        if (i2 != 0) {
            GLES20Canvas.nClearLayerTexture(i2);
        }
    }

    @Override // android.view.HardwareLayer
    public boolean copyInto(Bitmap bitmap) {
        return GLES20Canvas.nCopyLayer(this.mLayer, bitmap.mNativeBitmap);
    }

    @Override // android.view.HardwareLayer
    public void destroy() {
        DisplayList displayList = this.mDisplayList;
        if (displayList != null) {
            displayList.reset();
        }
        Finalizer finalizer = this.mFinalizer;
        if (finalizer != null) {
            finalizer.destroy();
            this.mFinalizer = null;
        }
        this.mLayer = 0;
    }

    public int getLayer() {
        return this.mLayer;
    }

    @Override // android.view.HardwareLayer
    public void setLayerPaint(Paint paint) {
        if (paint != null) {
            GLES20Canvas.nSetLayerPaint(this.mLayer, paint.mNativePaint);
            GLES20Canvas.nSetLayerColorFilter(this.mLayer, paint.getColorFilter() != null ? paint.getColorFilter().nativeColorFilter : 0);
        }
    }

    public GLES20Layer(int i2, int i3, boolean z2) {
        super(i2, i3, z2);
    }
}
