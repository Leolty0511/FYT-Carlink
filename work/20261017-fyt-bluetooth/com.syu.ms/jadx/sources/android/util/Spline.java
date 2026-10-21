package android.util;

/* JADX INFO: loaded from: classes.dex */
public final class Spline {
    private final float[] mM;
    private final float[] mX;
    private final float[] mY;

    private Spline(float[] fArr, float[] fArr2, float[] fArr3) {
        this.mX = fArr;
        this.mY = fArr2;
        this.mM = fArr3;
    }

    public static Spline createMonotoneCubicSpline(float[] fArr, float[] fArr2) {
        if (fArr == null || fArr2 == null || fArr.length != fArr2.length || fArr.length < 2) {
            throw new IllegalArgumentException("There must be at least two control points and the arrays must be of equal length.");
        }
        int length = fArr.length;
        int i2 = length - 1;
        float[] fArr3 = new float[i2];
        float[] fArr4 = new float[length];
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i3 + 1;
            float f2 = fArr[i4] - fArr[i3];
            if (f2 <= 0.0f) {
                throw new IllegalArgumentException("The control points must all have strictly increasing X values.");
            }
            fArr3[i3] = (fArr2[i4] - fArr2[i3]) / f2;
            i3 = i4;
        }
        fArr4[0] = fArr3[0];
        for (int i5 = 1; i5 < i2; i5++) {
            fArr4[i5] = (fArr3[i5 - 1] + fArr3[i5]) * 0.5f;
        }
        fArr4[i2] = fArr3[length - 2];
        for (int i6 = 0; i6 < i2; i6++) {
            if (fArr3[i6] == 0.0f) {
                fArr4[i6] = 0.0f;
                fArr4[i6 + 1] = 0.0f;
            } else {
                float f3 = fArr4[i6] / fArr3[i6];
                int i7 = i6 + 1;
                float f4 = fArr4[i7] / fArr3[i6];
                if (f3 < 0.0f || f4 < 0.0f) {
                    throw new IllegalArgumentException("The control points must have monotonic Y values.");
                }
                float fHypot = FloatMath.hypot(f3, f4);
                if (fHypot > 9.0f) {
                    float f5 = 3.0f / fHypot;
                    fArr4[i6] = f3 * f5 * fArr3[i6];
                    fArr4[i7] = f5 * f4 * fArr3[i6];
                }
            }
        }
        return new Spline(fArr, fArr2, fArr4);
    }

    public float interpolate(float f2) {
        int length = this.mX.length;
        if (Float.isNaN(f2)) {
            return f2;
        }
        float[] fArr = this.mX;
        int i2 = 0;
        if (f2 <= fArr[0]) {
            return this.mY[0];
        }
        int i3 = length - 1;
        if (f2 >= fArr[i3]) {
            return this.mY[i3];
        }
        while (true) {
            float[] fArr2 = this.mX;
            int i4 = i2 + 1;
            if (f2 < fArr2[i4]) {
                float f3 = fArr2[i4] - fArr2[i2];
                float f4 = (f2 - fArr2[i2]) / f3;
                float[] fArr3 = this.mY;
                float f5 = 2.0f * f4;
                float f6 = fArr3[i2] * (f5 + 1.0f);
                float[] fArr4 = this.mM;
                float f7 = f6 + (fArr4[i2] * f3 * f4);
                float f8 = 1.0f - f4;
                return (f7 * f8 * f8) + (((fArr3[i4] * (3.0f - f5)) + (f3 * fArr4[i4] * (f4 - 1.0f))) * f4 * f4);
            }
            if (f2 == fArr2[i4]) {
                return this.mY[i4];
            }
            i2 = i4;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.mX.length;
        sb.append("[");
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            sb.append("(");
            sb.append(this.mX[i2]);
            sb.append(", ");
            sb.append(this.mY[i2]);
            sb.append(": ");
            sb.append(this.mM[i2]);
            sb.append(")");
        }
        sb.append("]");
        return sb.toString();
    }
}
