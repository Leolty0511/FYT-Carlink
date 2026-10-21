package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PathMeasure {
    public static final int POSITION_MATRIX_FLAG = 1;
    public static final int TANGENT_MATRIX_FLAG = 2;
    private Path mPath;
    private final int native_instance;

    public PathMeasure() {
        this.mPath = null;
        this.native_instance = native_create(0, false);
    }

    private static native int native_create(int i2, boolean z2);

    private static native void native_destroy(int i2);

    private static native float native_getLength(int i2);

    private static native boolean native_getMatrix(int i2, float f2, int i3, int i4);

    private static native boolean native_getPosTan(int i2, float f2, float[] fArr, float[] fArr2);

    private static native boolean native_getSegment(int i2, float f2, float f3, int i3, boolean z2);

    private static native boolean native_isClosed(int i2);

    private static native boolean native_nextContour(int i2);

    private static native void native_setPath(int i2, int i3, boolean z2);

    public void finalize() {
        native_destroy(this.native_instance);
    }

    public float getLength() {
        return native_getLength(this.native_instance);
    }

    public boolean getMatrix(float f2, Matrix matrix, int i2) {
        return native_getMatrix(this.native_instance, f2, matrix.native_instance, i2);
    }

    public boolean getPosTan(float f2, float[] fArr, float[] fArr2) {
        if ((fArr == null || fArr.length >= 2) && (fArr2 == null || fArr2.length >= 2)) {
            return native_getPosTan(this.native_instance, f2, fArr, fArr2);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean getSegment(float f2, float f3, Path path, boolean z2) {
        return native_getSegment(this.native_instance, f2, f3, path.ni(), z2);
    }

    public boolean isClosed() {
        return native_isClosed(this.native_instance);
    }

    public boolean nextContour() {
        return native_nextContour(this.native_instance);
    }

    public void setPath(Path path, boolean z2) {
        this.mPath = path;
        native_setPath(this.native_instance, path != null ? path.ni() : 0, z2);
    }

    public PathMeasure(Path path, boolean z2) {
        this.mPath = path;
        this.native_instance = native_create(path != null ? path.ni() : 0, z2);
    }
}
