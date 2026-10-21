package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Matrix3f {
    final float[] mMat;

    public Matrix3f() {
        this.mMat = new float[9];
        loadIdentity();
    }

    public float get(int i2, int i3) {
        return this.mMat[(i2 * 3) + i3];
    }

    public float[] getArray() {
        return this.mMat;
    }

    public void load(Matrix3f matrix3f) {
        float[] array = matrix3f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public void loadMultiply(Matrix3f matrix3f, Matrix3f matrix3f2) {
        for (int i2 = 0; i2 < 3; i2++) {
            float f2 = 0.0f;
            float f3 = 0.0f;
            float f4 = 0.0f;
            for (int i3 = 0; i3 < 3; i3++) {
                float f5 = matrix3f2.get(i2, i3);
                f2 += matrix3f.get(i3, 0) * f5;
                f3 += matrix3f.get(i3, 1) * f5;
                f4 += matrix3f.get(i3, 2) * f5;
            }
            set(i2, 0, f2);
            set(i2, 1, f3);
            set(i2, 2, f4);
        }
    }

    public void loadRotate(float f2, float f3, float f4, float f5) {
        double d2 = f2 * 0.017453292f;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        float fSqrt = (float) Math.sqrt((f5 * f5) + (f4 * f4) + (f3 * f3));
        if (fSqrt == 1.0f) {
            float f6 = 1.0f / fSqrt;
            f3 *= f6;
            f4 *= f6;
            f5 *= f6;
        }
        float f7 = 1.0f - fCos;
        float f8 = f3 * fSin;
        float f9 = f4 * fSin;
        float f10 = fSin * f5;
        float[] fArr = this.mMat;
        fArr[0] = (f3 * f3 * f7) + fCos;
        float f11 = f3 * f4 * f7;
        fArr[3] = f11 - f10;
        float f12 = f5 * f3 * f7;
        fArr[6] = f12 + f9;
        fArr[1] = f11 + f10;
        fArr[4] = (f4 * f4 * f7) + fCos;
        float f13 = f4 * f5 * f7;
        fArr[7] = f13 - f8;
        fArr[2] = f12 - f9;
        fArr[5] = f13 + f8;
        fArr[8] = (f5 * f5 * f7) + fCos;
    }

    public void loadScale(float f2, float f3) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f2;
        fArr[4] = f3;
    }

    public void loadTranslate(float f2, float f3) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[6] = f2;
        fArr[7] = f3;
    }

    public void multiply(Matrix3f matrix3f) {
        Matrix3f matrix3f2 = new Matrix3f();
        matrix3f2.loadMultiply(this, matrix3f);
        load(matrix3f2);
    }

    public void rotate(float f2, float f3, float f4, float f5) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadRotate(f2, f3, f4, f5);
        multiply(matrix3f);
    }

    public void scale(float f2, float f3) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadScale(f2, f3);
        multiply(matrix3f);
    }

    public void set(int i2, int i3, float f2) {
        this.mMat[(i2 * 3) + i3] = f2;
    }

    public void translate(float f2, float f3) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadTranslate(f2, f3);
        multiply(matrix3f);
    }

    public void transpose() {
        int i2 = 0;
        while (i2 < 2) {
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < 3; i4++) {
                float[] fArr = this.mMat;
                int i5 = (i2 * 3) + i4;
                float f2 = fArr[i5];
                int i6 = (i4 * 3) + i2;
                fArr[i5] = fArr[i6];
                fArr[i6] = f2;
            }
            i2 = i3;
        }
    }

    public Matrix3f(float[] fArr) {
        float[] fArr2 = new float[9];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }

    public void loadScale(float f2, float f3, float f4) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f2;
        fArr[4] = f3;
        fArr[8] = f4;
    }

    public void rotate(float f2) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadRotate(f2);
        multiply(matrix3f);
    }

    public void scale(float f2, float f3, float f4) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadScale(f2, f3, f4);
        multiply(matrix3f);
    }

    public void loadRotate(float f2) {
        loadIdentity();
        double d2 = f2 * 0.017453292f;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        float[] fArr = this.mMat;
        fArr[0] = fCos;
        fArr[1] = -fSin;
        fArr[3] = fSin;
        fArr[4] = fCos;
    }
}
