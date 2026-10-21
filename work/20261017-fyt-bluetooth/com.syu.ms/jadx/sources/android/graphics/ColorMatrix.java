package android.graphics;

import android.util.FloatMath;

/* JADX INFO: loaded from: classes.dex */
public class ColorMatrix {
    private final float[] mArray;

    public ColorMatrix() {
        this.mArray = new float[20];
        reset();
    }

    public final float[] getArray() {
        return this.mArray;
    }

    public void postConcat(ColorMatrix colorMatrix) {
        setConcat(colorMatrix, this);
    }

    public void preConcat(ColorMatrix colorMatrix) {
        setConcat(this, colorMatrix);
    }

    public void reset() {
        float[] fArr = this.mArray;
        for (int i2 = 19; i2 > 0; i2--) {
            fArr[i2] = 0.0f;
        }
        fArr[18] = 1.0f;
        fArr[12] = 1.0f;
        fArr[6] = 1.0f;
        fArr[0] = 1.0f;
    }

    public void set(ColorMatrix colorMatrix) {
        System.arraycopy(colorMatrix.mArray, 0, this.mArray, 0, 20);
    }

    public void setConcat(ColorMatrix colorMatrix, ColorMatrix colorMatrix2) {
        float[] fArr = (colorMatrix == this || colorMatrix2 == this) ? new float[20] : this.mArray;
        float[] fArr2 = colorMatrix.mArray;
        float[] fArr3 = colorMatrix2.mArray;
        int i2 = 0;
        int i3 = 0;
        while (i2 < 20) {
            int i4 = 0;
            while (i4 < 4) {
                fArr[i3] = (fArr2[i2 + 0] * fArr3[i4 + 0]) + (fArr2[i2 + 1] * fArr3[i4 + 5]) + (fArr2[i2 + 2] * fArr3[i4 + 10]) + (fArr2[i2 + 3] * fArr3[i4 + 15]);
                i4++;
                i3++;
            }
            fArr[i3] = (fArr2[i2 + 0] * fArr3[4]) + (fArr2[i2 + 1] * fArr3[9]) + (fArr2[i2 + 2] * fArr3[14]) + (fArr2[i2 + 3] * fArr3[19]) + fArr2[i2 + 4];
            i2 += 5;
            i3++;
        }
        float[] fArr4 = this.mArray;
        if (fArr != fArr4) {
            System.arraycopy(fArr, 0, fArr4, 0, 20);
        }
    }

    public void setRGB2YUV() {
        reset();
        float[] fArr = this.mArray;
        fArr[0] = 0.299f;
        fArr[1] = 0.587f;
        fArr[2] = 0.114f;
        fArr[5] = -0.16874f;
        fArr[6] = -0.33126f;
        fArr[7] = 0.5f;
        fArr[10] = 0.5f;
        fArr[11] = -0.41869f;
        fArr[12] = -0.08131f;
    }

    public void setRotate(int i2, float f2) {
        reset();
        float f3 = (f2 * 3.1415927f) / 180.0f;
        float fCos = FloatMath.cos(f3);
        float fSin = FloatMath.sin(f3);
        if (i2 == 0) {
            float[] fArr = this.mArray;
            fArr[12] = fCos;
            fArr[6] = fCos;
            fArr[7] = fSin;
            fArr[11] = -fSin;
            return;
        }
        if (i2 == 1) {
            float[] fArr2 = this.mArray;
            fArr2[12] = fCos;
            fArr2[0] = fCos;
            fArr2[2] = -fSin;
            fArr2[10] = fSin;
            return;
        }
        if (i2 != 2) {
            throw new RuntimeException();
        }
        float[] fArr3 = this.mArray;
        fArr3[6] = fCos;
        fArr3[0] = fCos;
        fArr3[1] = fSin;
        fArr3[5] = -fSin;
    }

    public void setSaturation(float f2) {
        reset();
        float[] fArr = this.mArray;
        float f3 = 1.0f - f2;
        float f4 = 0.213f * f3;
        float f5 = 0.715f * f3;
        float f6 = f3 * 0.072f;
        fArr[0] = f4 + f2;
        fArr[1] = f5;
        fArr[2] = f6;
        fArr[5] = f4;
        fArr[6] = f5 + f2;
        fArr[7] = f6;
        fArr[10] = f4;
        fArr[11] = f5;
        fArr[12] = f6 + f2;
    }

    public void setScale(float f2, float f3, float f4, float f5) {
        float[] fArr = this.mArray;
        for (int i2 = 19; i2 > 0; i2--) {
            fArr[i2] = 0.0f;
        }
        fArr[0] = f2;
        fArr[6] = f3;
        fArr[12] = f4;
        fArr[18] = f5;
    }

    public void setYUV2RGB() {
        reset();
        float[] fArr = this.mArray;
        fArr[2] = 1.402f;
        fArr[5] = 1.0f;
        fArr[6] = -0.34414f;
        fArr[7] = -0.71414f;
        fArr[10] = 1.0f;
        fArr[11] = 1.772f;
        fArr[12] = 0.0f;
    }

    public void set(float[] fArr) {
        System.arraycopy(fArr, 0, this.mArray, 0, 20);
    }

    public ColorMatrix(float[] fArr) {
        float[] fArr2 = new float[20];
        this.mArray = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, 20);
    }

    public ColorMatrix(ColorMatrix colorMatrix) {
        float[] fArr = new float[20];
        this.mArray = fArr;
        System.arraycopy(colorMatrix.mArray, 0, fArr, 0, 20);
    }
}
