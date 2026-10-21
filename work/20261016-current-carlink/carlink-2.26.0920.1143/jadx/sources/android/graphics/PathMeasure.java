package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class PathMeasure {
    public static final int POSITION_MATRIX_FLAG = 1;
    public static final int TANGENT_MATRIX_FLAG = 2;
    private Path mPath;
    private long native_instance;

    public PathMeasure() {
        this.mPath = null;
        this.native_instance = native_create(0L, false);
    }

    private static native long native_create(long j2, boolean z2);

    private static native void native_destroy(long j2);

    private static native float native_getLength(long j2);

    private static native boolean native_getMatrix(long j2, float f2, long j3, int i2);

    private static native boolean native_getPosTan(long j2, float f2, float[] fArr, float[] fArr2);

    private static native boolean native_getSegment(long j2, float f2, float f3, long j3, boolean z2);

    private static native boolean native_isClosed(long j2);

    private static native boolean native_nextContour(long j2);

    private static native void native_setPath(long j2, long j3, boolean z2);

    public void finalize() {
        native_destroy(this.native_instance);
        this.native_instance = 0L;
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
        float length = getLength();
        float f4 = f2 < 0.0f ? 0.0f : f2;
        float f5 = f3 > length ? length : f3;
        if (f4 >= f5) {
            return false;
        }
        return native_getSegment(this.native_instance, f4, f5, path.mutateNI(), z2);
    }

    public boolean isClosed() {
        return native_isClosed(this.native_instance);
    }

    public boolean nextContour() {
        return native_nextContour(this.native_instance);
    }

    public void setPath(Path path, boolean z2) {
        this.mPath = path;
        native_setPath(this.native_instance, path != null ? path.readOnlyNI() : 0L, z2);
    }

    public PathMeasure(Path path, boolean z2) {
        this.mPath = path;
        this.native_instance = native_create(path != null ? path.readOnlyNI() : 0L, z2);
    }
}
