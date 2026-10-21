package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class Camera {
    private Matrix mMatrix;
    public int native_instance;

    public Camera() {
        nativeConstructor();
    }

    private native void nativeApplyToCanvas(int i2);

    private native void nativeConstructor();

    private native void nativeDestructor();

    private native void nativeGetMatrix(int i2);

    public void applyToCanvas(Canvas canvas) {
        if (!canvas.isHardwareAccelerated()) {
            nativeApplyToCanvas(canvas.mNativeCanvas);
            return;
        }
        if (this.mMatrix == null) {
            this.mMatrix = new Matrix();
        }
        getMatrix(this.mMatrix);
        canvas.concat(this.mMatrix);
    }

    public native float dotWithNormal(float f2, float f3, float f4);

    public void finalize() throws Throwable {
        try {
            nativeDestructor();
        } finally {
            super.finalize();
        }
    }

    public native float getLocationX();

    public native float getLocationY();

    public native float getLocationZ();

    public void getMatrix(Matrix matrix) {
        nativeGetMatrix(matrix.native_instance);
    }

    public native void restore();

    public native void rotate(float f2, float f3, float f4);

    public native void rotateX(float f2);

    public native void rotateY(float f2);

    public native void rotateZ(float f2);

    public native void save();

    public native void setLocation(float f2, float f3, float f4);

    public native void translate(float f2, float f3, float f4);
}
