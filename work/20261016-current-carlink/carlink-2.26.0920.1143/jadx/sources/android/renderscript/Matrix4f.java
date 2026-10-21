package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Matrix4f {
    final float[] mMat;

    public Matrix4f() {
        this.mMat = new float[16];
        loadIdentity();
    }

    private float computeCofactor(int i2, int i3) {
        int i4 = (i2 + 1) % 4;
        int i5 = (i2 + 2) % 4;
        int i6 = (i2 + 3) % 4;
        float[] fArr = this.mMat;
        int i7 = ((i3 + 1) % 4) * 4;
        float f2 = fArr[i4 + i7];
        int i8 = ((i3 + 2) % 4) * 4;
        float f3 = fArr[i5 + i8];
        int i9 = ((i3 + 3) % 4) * 4;
        float f4 = fArr[i6 + i9];
        float f5 = fArr[i5 + i9];
        float f6 = fArr[i6 + i8];
        float f7 = fArr[i8 + i4];
        float f8 = fArr[i5 + i7];
        float f9 = fArr[i6 + i7];
        float f10 = (((f8 * f6) - (f3 * f9)) * fArr[i4 + i9]) + ((((f3 * f4) - (f5 * f6)) * f2) - (((f4 * f8) - (f5 * f9)) * f7));
        return ((i2 + i3) & 1) != 0 ? -f10 : f10;
    }

    public float get(int i2, int i3) {
        return this.mMat[(i2 * 4) + i3];
    }

    public float[] getArray() {
        return this.mMat;
    }

    public boolean inverse() {
        Matrix4f matrix4f = new Matrix4f();
        for (int i2 = 0; i2 < 4; i2++) {
            for (int i3 = 0; i3 < 4; i3++) {
                matrix4f.mMat[(i2 * 4) + i3] = computeCofactor(i2, i3);
            }
        }
        float[] fArr = this.mMat;
        float f2 = fArr[0];
        float[] fArr2 = matrix4f.mMat;
        float f3 = (fArr[12] * fArr2[3]) + (fArr[8] * fArr2[2]) + (fArr[4] * fArr2[1]) + (f2 * fArr2[0]);
        if (Math.abs(f3) < 1.0E-6d) {
            return false;
        }
        float f4 = 1.0f / f3;
        for (int i4 = 0; i4 < 16; i4++) {
            this.mMat[i4] = matrix4f.mMat[i4] * f4;
        }
        return true;
    }

    public boolean inverseTranspose() {
        Matrix4f matrix4f = new Matrix4f();
        for (int i2 = 0; i2 < 4; i2++) {
            for (int i3 = 0; i3 < 4; i3++) {
                matrix4f.mMat[(i3 * 4) + i2] = computeCofactor(i2, i3);
            }
        }
        float[] fArr = this.mMat;
        float f2 = fArr[0];
        float[] fArr2 = matrix4f.mMat;
        float f3 = (fArr[12] * fArr2[12]) + (fArr[8] * fArr2[8]) + (fArr[4] * fArr2[4]) + (f2 * fArr2[0]);
        if (Math.abs(f3) < 1.0E-6d) {
            return false;
        }
        float f4 = 1.0f / f3;
        for (int i4 = 0; i4 < 16; i4++) {
            this.mMat[i4] = matrix4f.mMat[i4] * f4;
        }
        return true;
    }

    public void load(Matrix4f matrix4f) {
        float[] array = matrix4f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadFrustum(float f2, float f3, float f4, float f5, float f6, float f7) {
        loadIdentity();
        float[] fArr = this.mMat;
        float f8 = 2.0f * f6;
        float f9 = f3 - f2;
        fArr[0] = f8 / f9;
        float f10 = f5 - f4;
        fArr[5] = f8 / f10;
        fArr[8] = (f3 + f2) / f9;
        fArr[9] = (f5 + f4) / f10;
        float f11 = f7 - f6;
        fArr[10] = (-(f7 + f6)) / f11;
        fArr[11] = -1.0f;
        fArr[14] = ((f7 * (-2.0f)) * f6) / f11;
        fArr[15] = 0.0f;
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public void loadMultiply(Matrix4f matrix4f, Matrix4f matrix4f2) {
        for (int i2 = 0; i2 < 4; i2++) {
            float f2 = 0.0f;
            float f3 = 0.0f;
            float f4 = 0.0f;
            float f5 = 0.0f;
            for (int i3 = 0; i3 < 4; i3++) {
                float f6 = matrix4f2.get(i2, i3);
                f2 += matrix4f.get(i3, 0) * f6;
                f3 += matrix4f.get(i3, 1) * f6;
                f4 += matrix4f.get(i3, 2) * f6;
                f5 += matrix4f.get(i3, 3) * f6;
            }
            set(i2, 0, f2);
            set(i2, 1, f3);
            set(i2, 2, f4);
            set(i2, 3, f5);
        }
    }

    public void loadOrtho(float f2, float f3, float f4, float f5, float f6, float f7) {
        loadIdentity();
        float[] fArr = this.mMat;
        float f8 = f3 - f2;
        fArr[0] = 2.0f / f8;
        float f9 = f5 - f4;
        fArr[5] = 2.0f / f9;
        float f10 = f7 - f6;
        fArr[10] = (-2.0f) / f10;
        fArr[12] = (-(f3 + f2)) / f8;
        fArr[13] = (-(f5 + f4)) / f9;
        fArr[14] = (-(f7 + f6)) / f10;
    }

    public void loadOrthoWindow(int i2, int i3) {
        loadOrtho(0.0f, i2, i3, 0.0f, -1.0f, 1.0f);
    }

    public void loadPerspective(float f2, float f3, float f4, float f5) {
        float fTan = f4 * ((float) Math.tan((float) ((((double) f2) * 3.141592653589793d) / 360.0d)));
        float f6 = -fTan;
        loadFrustum(f6 * f3, fTan * f3, f6, fTan, f4, f5);
    }

    public void loadProjectionNormalized(int i2, int i3) {
        Matrix4f matrix4f = new Matrix4f();
        Matrix4f matrix4f2 = new Matrix4f();
        if (i2 > i3) {
            float f2 = i2 / i3;
            matrix4f.loadFrustum(-f2, f2, -1.0f, 1.0f, 1.0f, 100.0f);
        } else {
            float f3 = i3 / i2;
            matrix4f.loadFrustum(-1.0f, 1.0f, -f3, f3, 1.0f, 100.0f);
        }
        matrix4f2.loadRotate(180.0f, 0.0f, 1.0f, 0.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        matrix4f2.loadScale(-2.0f, 2.0f, 1.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        matrix4f2.loadTranslate(0.0f, 0.0f, 2.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        load(matrix4f);
    }

    public void loadRotate(float f2, float f3, float f4, float f5) {
        float[] fArr = this.mMat;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
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
        float[] fArr2 = this.mMat;
        fArr2[0] = (f3 * f3 * f7) + fCos;
        float f11 = f3 * f4 * f7;
        fArr2[4] = f11 - f10;
        float f12 = f5 * f3 * f7;
        fArr2[8] = f12 + f9;
        fArr2[1] = f11 + f10;
        fArr2[5] = (f4 * f4 * f7) + fCos;
        float f13 = f4 * f5 * f7;
        fArr2[9] = f13 - f8;
        fArr2[2] = f12 - f9;
        fArr2[6] = f13 + f8;
        fArr2[10] = (f5 * f5 * f7) + fCos;
    }

    public void loadScale(float f2, float f3, float f4) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f2;
        fArr[5] = f3;
        fArr[10] = f4;
    }

    public void loadTranslate(float f2, float f3, float f4) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[12] = f2;
        fArr[13] = f3;
        fArr[14] = f4;
    }

    public void multiply(Matrix4f matrix4f) {
        Matrix4f matrix4f2 = new Matrix4f();
        matrix4f2.loadMultiply(this, matrix4f);
        load(matrix4f2);
    }

    public void rotate(float f2, float f3, float f4, float f5) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadRotate(f2, f3, f4, f5);
        multiply(matrix4f);
    }

    public void scale(float f2, float f3, float f4) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadScale(f2, f3, f4);
        multiply(matrix4f);
    }

    public void set(int i2, int i3, float f2) {
        this.mMat[(i2 * 4) + i3] = f2;
    }

    public void translate(float f2, float f3, float f4) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadTranslate(f2, f3, f4);
        multiply(matrix4f);
    }

    public void transpose() {
        int i2 = 0;
        while (i2 < 3) {
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < 4; i4++) {
                float[] fArr = this.mMat;
                int i5 = (i2 * 4) + i4;
                float f2 = fArr[i5];
                int i6 = (i4 * 4) + i2;
                fArr[i5] = fArr[i6];
                fArr[i6] = f2;
            }
            i2 = i3;
        }
    }

    public void load(Matrix3f matrix3f) {
        float[] fArr = this.mMat;
        float[] fArr2 = matrix3f.mMat;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = 0.0f;
        fArr[4] = fArr2[3];
        fArr[5] = fArr2[4];
        fArr[6] = fArr2[5];
        fArr[7] = 0.0f;
        fArr[8] = fArr2[6];
        fArr[9] = fArr2[7];
        fArr[10] = fArr2[8];
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public Matrix4f(float[] fArr) {
        float[] fArr2 = new float[16];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }
}
