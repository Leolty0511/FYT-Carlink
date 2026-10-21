package android.graphics;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class Matrix {
    public static Matrix IDENTITY_MATRIX = new Matrix() { // from class: android.graphics.Matrix.1
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
    public int native_instance;

    public enum ScaleToFit {
        FILL(0),
        START(1),
        CENTER(2),
        END(3);

        public final int nativeInt;

        ScaleToFit(int i2) {
            this.nativeInt = i2;
        }
    }

    public Matrix() {
        this.native_instance = native_create(0);
    }

    private static void checkPointArrays(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        int i5 = i4 << 1;
        int i6 = i2 + i5;
        int i7 = i5 + i3;
        if ((i2 | i4 | i3 | i6 | i7) < 0 || i6 > fArr.length || i7 > fArr2.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    private static native void finalizer(int i2);

    private static native int native_create(int i2);

    private static native boolean native_equals(int i2, int i3);

    private static native void native_getValues(int i2, float[] fArr);

    private static native boolean native_invert(int i2, int i3);

    private static native boolean native_isIdentity(int i2);

    private static native void native_mapPoints(int i2, float[] fArr, int i3, float[] fArr2, int i4, int i5, boolean z2);

    private static native float native_mapRadius(int i2, float f2);

    private static native boolean native_mapRect(int i2, RectF rectF, RectF rectF2);

    private static native boolean native_postConcat(int i2, int i3);

    private static native boolean native_postRotate(int i2, float f2);

    private static native boolean native_postRotate(int i2, float f2, float f3, float f4);

    private static native boolean native_postScale(int i2, float f2, float f3);

    private static native boolean native_postScale(int i2, float f2, float f3, float f4, float f5);

    private static native boolean native_postSkew(int i2, float f2, float f3);

    private static native boolean native_postSkew(int i2, float f2, float f3, float f4, float f5);

    private static native boolean native_postTranslate(int i2, float f2, float f3);

    private static native boolean native_preConcat(int i2, int i3);

    private static native boolean native_preRotate(int i2, float f2);

    private static native boolean native_preRotate(int i2, float f2, float f3, float f4);

    private static native boolean native_preScale(int i2, float f2, float f3);

    private static native boolean native_preScale(int i2, float f2, float f3, float f4, float f5);

    private static native boolean native_preSkew(int i2, float f2, float f3);

    private static native boolean native_preSkew(int i2, float f2, float f3, float f4, float f5);

    private static native boolean native_preTranslate(int i2, float f2, float f3);

    private static native boolean native_rectStaysRect(int i2);

    private static native void native_reset(int i2);

    private static native void native_set(int i2, int i3);

    private static native boolean native_setConcat(int i2, int i3, int i4);

    private static native boolean native_setPolyToPoly(int i2, float[] fArr, int i3, float[] fArr2, int i4, int i5);

    private static native boolean native_setRectToRect(int i2, RectF rectF, RectF rectF2, int i3);

    private static native void native_setRotate(int i2, float f2);

    private static native void native_setRotate(int i2, float f2, float f3, float f4);

    private static native void native_setScale(int i2, float f2, float f3);

    private static native void native_setScale(int i2, float f2, float f3, float f4, float f5);

    private static native void native_setSinCos(int i2, float f2, float f3);

    private static native void native_setSinCos(int i2, float f2, float f3, float f4, float f5);

    private static native void native_setSkew(int i2, float f2, float f3);

    private static native void native_setSkew(int i2, float f2, float f3, float f4, float f5);

    private static native void native_setTranslate(int i2, float f2, float f3);

    private static native void native_setValues(int i2, float[] fArr);

    public boolean equals(Object obj) {
        if (obj instanceof Matrix) {
            return native_equals(this.native_instance, ((Matrix) obj).native_instance);
        }
        return false;
    }

    public void finalize() throws Throwable {
        try {
            finalizer(this.native_instance);
        } finally {
            super.finalize();
        }
    }

    public void getValues(float[] fArr) {
        if (fArr.length < 9) {
            throw new ArrayIndexOutOfBoundsException();
        }
        native_getValues(this.native_instance, fArr);
    }

    public int hashCode() {
        return 44;
    }

    public boolean invert(Matrix matrix) {
        return native_invert(this.native_instance, matrix.native_instance);
    }

    public boolean isIdentity() {
        return native_isIdentity(this.native_instance);
    }

    public void mapPoints(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        checkPointArrays(fArr2, i3, fArr, i2, i4);
        native_mapPoints(this.native_instance, fArr, i2, fArr2, i3, i4, true);
    }

    public float mapRadius(float f2) {
        return native_mapRadius(this.native_instance, f2);
    }

    public boolean mapRect(RectF rectF, RectF rectF2) {
        if (rectF == null || rectF2 == null) {
            throw null;
        }
        return native_mapRect(this.native_instance, rectF, rectF2);
    }

    public void mapVectors(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        checkPointArrays(fArr2, i3, fArr, i2, i4);
        native_mapPoints(this.native_instance, fArr, i2, fArr2, i3, i4, false);
    }

    public final int ni() {
        return this.native_instance;
    }

    public boolean postConcat(Matrix matrix) {
        return native_postConcat(this.native_instance, matrix.native_instance);
    }

    public boolean postRotate(float f2, float f3, float f4) {
        return native_postRotate(this.native_instance, f2, f3, f4);
    }

    public boolean postScale(float f2, float f3, float f4, float f5) {
        return native_postScale(this.native_instance, f2, f3, f4, f5);
    }

    public boolean postSkew(float f2, float f3, float f4, float f5) {
        return native_postSkew(this.native_instance, f2, f3, f4, f5);
    }

    public boolean postTranslate(float f2, float f3) {
        return native_postTranslate(this.native_instance, f2, f3);
    }

    public boolean preConcat(Matrix matrix) {
        return native_preConcat(this.native_instance, matrix.native_instance);
    }

    public boolean preRotate(float f2, float f3, float f4) {
        return native_preRotate(this.native_instance, f2, f3, f4);
    }

    public boolean preScale(float f2, float f3, float f4, float f5) {
        return native_preScale(this.native_instance, f2, f3, f4, f5);
    }

    public boolean preSkew(float f2, float f3, float f4, float f5) {
        return native_preSkew(this.native_instance, f2, f3, f4, f5);
    }

    public boolean preTranslate(float f2, float f3) {
        return native_preTranslate(this.native_instance, f2, f3);
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
        return native_rectStaysRect(this.native_instance);
    }

    public void reset() {
        native_reset(this.native_instance);
    }

    public void set(Matrix matrix) {
        if (matrix == null) {
            reset();
        } else {
            native_set(this.native_instance, matrix.native_instance);
        }
    }

    public boolean setConcat(Matrix matrix, Matrix matrix2) {
        return native_setConcat(this.native_instance, matrix.native_instance, matrix2.native_instance);
    }

    public boolean setPolyToPoly(float[] fArr, int i2, float[] fArr2, int i3, int i4) {
        if (i4 > 4) {
            throw new IllegalArgumentException();
        }
        checkPointArrays(fArr, i2, fArr2, i3, i4);
        return native_setPolyToPoly(this.native_instance, fArr, i2, fArr2, i3, i4);
    }

    public boolean setRectToRect(RectF rectF, RectF rectF2, ScaleToFit scaleToFit) {
        if (rectF2 == null || rectF == null) {
            throw null;
        }
        return native_setRectToRect(this.native_instance, rectF, rectF2, scaleToFit.nativeInt);
    }

    public void setRotate(float f2, float f3, float f4) {
        native_setRotate(this.native_instance, f2, f3, f4);
    }

    public void setScale(float f2, float f3, float f4, float f5) {
        native_setScale(this.native_instance, f2, f3, f4, f5);
    }

    public void setSinCos(float f2, float f3, float f4, float f5) {
        native_setSinCos(this.native_instance, f2, f3, f4, f5);
    }

    public void setSkew(float f2, float f3, float f4, float f5) {
        native_setSkew(this.native_instance, f2, f3, f4, f5);
    }

    public void setTranslate(float f2, float f3) {
        native_setTranslate(this.native_instance, f2, f3);
    }

    public void setValues(float[] fArr) {
        if (fArr.length < 9) {
            throw new ArrayIndexOutOfBoundsException();
        }
        native_setValues(this.native_instance, fArr);
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
        return native_postRotate(this.native_instance, f2);
    }

    public boolean postScale(float f2, float f3) {
        return native_postScale(this.native_instance, f2, f3);
    }

    public boolean postSkew(float f2, float f3) {
        return native_postSkew(this.native_instance, f2, f3);
    }

    public boolean preRotate(float f2) {
        return native_preRotate(this.native_instance, f2);
    }

    public boolean preScale(float f2, float f3) {
        return native_preScale(this.native_instance, f2, f3);
    }

    public boolean preSkew(float f2, float f3) {
        return native_preSkew(this.native_instance, f2, f3);
    }

    public void setRotate(float f2) {
        native_setRotate(this.native_instance, f2);
    }

    public void setScale(float f2, float f3) {
        native_setScale(this.native_instance, f2, f3);
    }

    public void setSinCos(float f2, float f3) {
        native_setSinCos(this.native_instance, f2, f3);
    }

    public void setSkew(float f2, float f3) {
        native_setSkew(this.native_instance, f2, f3);
    }

    public Matrix(Matrix matrix) {
        this.native_instance = native_create(matrix != null ? matrix.native_instance : 0);
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
