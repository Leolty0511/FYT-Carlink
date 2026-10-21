package android.graphics;

import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;
import java.io.PrintWriter;
import libcore.util.NativeAllocationRegistry;

/* JADX INFO: loaded from: classes.dex */
public class Matrix {
    public static final Matrix IDENTITY_MATRIX = new Matrix() { // from class: android.graphics.Matrix.1
        public void oops() {
            throw new IllegalStateException("Matrix can not be modified");
        }

        @Override // android.graphics.Matrix
        public boolean postConcat(Matrix matrix) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postRotate(float f2, float f3, float f4) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f2, float f3, float f4, float f5) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f2, float f3, float f4, float f5) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postTranslate(float f2, float f3) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preConcat(Matrix matrix) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f2, float f3, float f4) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f2, float f3, float f4, float f5) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f2, float f3, float f4, float f5) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preTranslate(float f2, float f3) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public void reset() {
            oops();
        }

        @Override // android.graphics.Matrix
        public void set(Matrix matrix) {
            oops();
        }

        @Override // android.graphics.Matrix
        public boolean setConcat(Matrix matrix, Matrix matrix2) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setPolyToPoly(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setRectToRect(RectF rectF, RectF rectF2, ScaleToFit scaleToFit) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f2, float f3, float f4) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f2, float f3, float f4, float f5) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f2, float f3, float f4, float f5) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f2, float f3, float f4, float f5) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setTranslate(float f2, float f3) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setValues(float[] fArr) {
            oops();
        }

        @Override // android.graphics.Matrix
        public boolean postRotate(float f2) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f2, float f3) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f2, float f3) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f2) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f2, float f3) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f2, float f3) {
            oops();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f2) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f2, float f3) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f2, float f3) {
            oops();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f2, float f3) {
            oops();
        }
    };
    public static final int MPERSP_0 = 6;
    public static final int MPERSP_1 = 7;
    public static final int MPERSP_2 = 8;
    public static final int MSCALE_X = 0;
    public static final int MSCALE_Y = 4;
    public static final int MSKEW_X = 1;
    public static final int MSKEW_Y = 3;
    public static final int MTRANS_X = 2;
    public static final int MTRANS_Y = 5;
    private static final long NATIVE_ALLOCATION_SIZE = 40;
    public final long native_instance;

    public static class NoImagePreloadHolder {
        public static final NativeAllocationRegistry sRegistry = new NativeAllocationRegistry(Matrix.class.getClassLoader(), Matrix.nGetNativeFinalizer(), Matrix.NATIVE_ALLOCATION_SIZE);

        private NoImagePreloadHolder() {
        }
    }

    public enum ScaleToFit {
        FILL(0),
        START(1),
        CENTER(2),
        END(3);

        final int nativeInt;

        ScaleToFit(int i2) {
            this.nativeInt = i2;
        }
    }

    public Matrix() {
        long jNCreate = nCreate(0L);
        this.native_instance = jNCreate;
        NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jNCreate);
    }

    private static void checkPointArrays(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        int i5 = i4 << 1;
        int i6 = i2 + i5;
        int i7 = i5 + i3;
        if ((i2 | i4 | i3 | i6 | i7) < 0 || i6 > fArr.length || i7 > fArr2.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    private static native long nCreate(long j2);

    @CriticalNative
    private static native boolean nEquals(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nGetNativeFinalizer();

    @FastNative
    private static native void nGetValues(long j2, float[] fArr);

    @CriticalNative
    private static native boolean nInvert(long j2, long j3);

    @CriticalNative
    private static native boolean nIsAffine(long j2);

    @CriticalNative
    private static native boolean nIsIdentity(long j2);

    @FastNative
    private static native void nMapPoints(long j2, float[] fArr, int i2, float[] fArr2, int i3, int i4, boolean z2);

    @CriticalNative
    private static native float nMapRadius(long j2, float f2);

    @FastNative
    private static native boolean nMapRect(long j2, RectF rectF, RectF rectF2);

    @CriticalNative
    private static native void nPostConcat(long j2, long j3);

    @CriticalNative
    private static native void nPostRotate(long j2, float f2);

    @CriticalNative
    private static native void nPostRotate(long j2, float f2, float f3, float f4);

    @CriticalNative
    private static native void nPostScale(long j2, float f2, float f3);

    @CriticalNative
    private static native void nPostScale(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nPostSkew(long j2, float f2, float f3);

    @CriticalNative
    private static native void nPostSkew(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nPostTranslate(long j2, float f2, float f3);

    @CriticalNative
    private static native void nPreConcat(long j2, long j3);

    @CriticalNative
    private static native void nPreRotate(long j2, float f2);

    @CriticalNative
    private static native void nPreRotate(long j2, float f2, float f3, float f4);

    @CriticalNative
    private static native void nPreScale(long j2, float f2, float f3);

    @CriticalNative
    private static native void nPreScale(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nPreSkew(long j2, float f2, float f3);

    @CriticalNative
    private static native void nPreSkew(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nPreTranslate(long j2, float f2, float f3);

    @CriticalNative
    private static native boolean nRectStaysRect(long j2);

    @CriticalNative
    private static native void nReset(long j2);

    @CriticalNative
    private static native void nSet(long j2, long j3);

    @CriticalNative
    private static native void nSetConcat(long j2, long j3, long j4);

    @FastNative
    private static native boolean nSetPolyToPoly(long j2, float[] fArr, int i2, float[] fArr2, int i3, int i4);

    @FastNative
    private static native boolean nSetRectToRect(long j2, RectF rectF, RectF rectF2, int i2);

    @CriticalNative
    private static native void nSetRotate(long j2, float f2);

    @CriticalNative
    private static native void nSetRotate(long j2, float f2, float f3, float f4);

    @CriticalNative
    private static native void nSetScale(long j2, float f2, float f3);

    @CriticalNative
    private static native void nSetScale(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nSetSinCos(long j2, float f2, float f3);

    @CriticalNative
    private static native void nSetSinCos(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nSetSkew(long j2, float f2, float f3);

    @CriticalNative
    private static native void nSetSkew(long j2, float f2, float f3, float f4, float f5);

    @CriticalNative
    private static native void nSetTranslate(long j2, float f2, float f3);

    @FastNative
    private static native void nSetValues(long j2, float[] fArr);

    public boolean equals(Object obj) {
        if (obj instanceof Matrix) {
            return nEquals(this.native_instance, ((Matrix) obj).native_instance);
        }
        return false;
    }

    public void getValues(float[] fArr) {
        if (fArr.length < 9) {
            throw new ArrayIndexOutOfBoundsException();
        }
        nGetValues(this.native_instance, fArr);
    }

    public int hashCode() {
        return 44;
    }

    public boolean invert(Matrix matrix) {
        return nInvert(this.native_instance, matrix.native_instance);
    }

    public boolean isAffine() {
        return nIsAffine(this.native_instance);
    }

    public boolean isIdentity() {
        return nIsIdentity(this.native_instance);
    }

    public void mapPoints(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        checkPointArrays(fArr2, i3, fArr, i2, i4);
        nMapPoints(this.native_instance, fArr, i2, fArr2, i3, i4, true);
    }

    public float mapRadius(float f2) {
        return nMapRadius(this.native_instance, f2);
    }

    public boolean mapRect(RectF rectF, RectF rectF2) {
        if (rectF == null || rectF2 == null) {
            throw null;
        }
        return nMapRect(this.native_instance, rectF, rectF2);
    }

    public void mapVectors(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        checkPointArrays(fArr2, i3, fArr, i2, i4);
        nMapPoints(this.native_instance, fArr, i2, fArr2, i3, i4, false);
    }

    public final long ni() {
        return this.native_instance;
    }

    public boolean postConcat(Matrix matrix) {
        nPostConcat(this.native_instance, matrix.native_instance);
        return true;
    }

    public boolean postRotate(float f2, float f3, float f4) {
        nPostRotate(this.native_instance, f2, f3, f4);
        return true;
    }

    public boolean postScale(float f2, float f3, float f4, float f5) {
        nPostScale(this.native_instance, f2, f3, f4, f5);
        return true;
    }

    public boolean postSkew(float f2, float f3, float f4, float f5) {
        nPostSkew(this.native_instance, f2, f3, f4, f5);
        return true;
    }

    public boolean postTranslate(float f2, float f3) {
        nPostTranslate(this.native_instance, f2, f3);
        return true;
    }

    public boolean preConcat(Matrix matrix) {
        nPreConcat(this.native_instance, matrix.native_instance);
        return true;
    }

    public boolean preRotate(float f2, float f3, float f4) {
        nPreRotate(this.native_instance, f2, f3, f4);
        return true;
    }

    public boolean preScale(float f2, float f3, float f4, float f5) {
        nPreScale(this.native_instance, f2, f3, f4, f5);
        return true;
    }

    public boolean preSkew(float f2, float f3, float f4, float f5) {
        nPreSkew(this.native_instance, f2, f3, f4, f5);
        return true;
    }

    public boolean preTranslate(float f2, float f3) {
        nPreTranslate(this.native_instance, f2, f3);
        return true;
    }

    public void printShortString(PrintWriter printWriter) {
        float[] fArr = new float[9];
        getValues(fArr);
        printWriter.print('[');
        printWriter.print(fArr[0]);
        printWriter.print(", ");
        printWriter.print(fArr[1]);
        printWriter.print(", ");
        printWriter.print(fArr[2]);
        printWriter.print("][");
        printWriter.print(fArr[3]);
        printWriter.print(", ");
        printWriter.print(fArr[4]);
        printWriter.print(", ");
        printWriter.print(fArr[5]);
        printWriter.print("][");
        printWriter.print(fArr[6]);
        printWriter.print(", ");
        printWriter.print(fArr[7]);
        printWriter.print(", ");
        printWriter.print(fArr[8]);
        printWriter.print(']');
    }

    public boolean rectStaysRect() {
        return nRectStaysRect(this.native_instance);
    }

    public void reset() {
        nReset(this.native_instance);
    }

    public void set(Matrix matrix) {
        if (matrix == null) {
            reset();
        } else {
            nSet(this.native_instance, matrix.native_instance);
        }
    }

    public boolean setConcat(Matrix matrix, Matrix matrix2) {
        nSetConcat(this.native_instance, matrix.native_instance, matrix2.native_instance);
        return true;
    }

    public boolean setPolyToPoly(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        if (i4 > 4) {
            throw new IllegalArgumentException();
        }
        checkPointArrays(fArr, i2, fArr2, i3, i4);
        return nSetPolyToPoly(this.native_instance, fArr, i2, fArr2, i3, i4);
    }

    public boolean setRectToRect(RectF rectF, RectF rectF2, ScaleToFit scaleToFit) {
        if (rectF2 == null || rectF == null) {
            throw null;
        }
        return nSetRectToRect(this.native_instance, rectF, rectF2, scaleToFit.nativeInt);
    }

    public void setRotate(float f2, float f3, float f4) {
        nSetRotate(this.native_instance, f2, f3, f4);
    }

    public void setScale(float f2, float f3, float f4, float f5) {
        nSetScale(this.native_instance, f2, f3, f4, f5);
    }

    public void setSinCos(float f2, float f3, float f4, float f5) {
        nSetSinCos(this.native_instance, f2, f3, f4, f5);
    }

    public void setSkew(float f2, float f3, float f4, float f5) {
        nSetSkew(this.native_instance, f2, f3, f4, f5);
    }

    public void setTranslate(float f2, float f3) {
        nSetTranslate(this.native_instance, f2, f3);
    }

    public void setValues(float[] fArr) {
        if (fArr.length < 9) {
            throw new ArrayIndexOutOfBoundsException();
        }
        nSetValues(this.native_instance, fArr);
    }

    public String toShortString() {
        StringBuilder sb = new StringBuilder(64);
        toShortString(sb);
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("Matrix{");
        toShortString(sb);
        sb.append('}');
        return sb.toString();
    }

    public boolean postRotate(float f2) {
        nPostRotate(this.native_instance, f2);
        return true;
    }

    public boolean postScale(float f2, float f3) {
        nPostScale(this.native_instance, f2, f3);
        return true;
    }

    public boolean postSkew(float f2, float f3) {
        nPostSkew(this.native_instance, f2, f3);
        return true;
    }

    public boolean preRotate(float f2) {
        nPreRotate(this.native_instance, f2);
        return true;
    }

    public boolean preScale(float f2, float f3) {
        nPreScale(this.native_instance, f2, f3);
        return true;
    }

    public boolean preSkew(float f2, float f3) {
        nPreSkew(this.native_instance, f2, f3);
        return true;
    }

    public void setRotate(float f2) {
        nSetRotate(this.native_instance, f2);
    }

    public void setScale(float f2, float f3) {
        nSetScale(this.native_instance, f2, f3);
    }

    public void setSinCos(float f2, float f3) {
        nSetSinCos(this.native_instance, f2, f3);
    }

    public void setSkew(float f2, float f3) {
        nSetSkew(this.native_instance, f2, f3);
    }

    public void mapPoints(float[] fArr, float[] fArr2) {
        if (fArr.length == fArr2.length) {
            mapPoints(fArr, 0, fArr2, 0, fArr.length >> 1);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean mapRect(RectF rectF) {
        return mapRect(rectF, rectF);
    }

    public void mapVectors(float[] fArr, float[] fArr2) {
        if (fArr.length == fArr2.length) {
            mapVectors(fArr, 0, fArr2, 0, fArr.length >> 1);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public Matrix(Matrix matrix) {
        long jNCreate = nCreate(matrix != null ? matrix.native_instance : 0L);
        this.native_instance = jNCreate;
        NoImagePreloadHolder.sRegistry.registerNativeAllocation(this, jNCreate);
    }

    public void toShortString(StringBuilder sb) {
        float[] fArr = new float[9];
        getValues(fArr);
        sb.append('[');
        sb.append(fArr[0]);
        sb.append(", ");
        sb.append(fArr[1]);
        sb.append(", ");
        sb.append(fArr[2]);
        sb.append("][");
        sb.append(fArr[3]);
        sb.append(", ");
        sb.append(fArr[4]);
        sb.append(", ");
        sb.append(fArr[5]);
        sb.append("][");
        sb.append(fArr[6]);
        sb.append(", ");
        sb.append(fArr[7]);
        sb.append(", ");
        sb.append(fArr[8]);
        sb.append(']');
    }

    public void mapPoints(float[] fArr) {
        mapPoints(fArr, 0, fArr, 0, fArr.length >> 1);
    }

    public void mapVectors(float[] fArr) {
        mapVectors(fArr, 0, fArr, 0, fArr.length >> 1);
    }
}
