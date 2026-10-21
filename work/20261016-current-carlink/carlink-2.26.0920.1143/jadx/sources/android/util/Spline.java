package android.util;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Spline {

    public static class LinearSpline extends Spline {
        private final float[] mM;
        private final float[] mX;
        private final float[] mY;

        public LinearSpline(float[] fArr, float[] fArr2) {
            if (fArr == null || fArr2 == null || fArr.length != fArr2.length || fArr.length < 2) {
                throw new IllegalArgumentException("There must be at least two control points and the arrays must be of equal length.");
            }
            int length = fArr.length - 1;
            this.mM = new float[length];
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2 + 1;
                this.mM[i2] = (fArr2[i3] - fArr2[i2]) / (fArr[i3] - fArr[i2]);
                i2 = i3;
            }
            this.mX = fArr;
            this.mY = fArr2;
        }

        @Override // android.util.Spline
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
                float f3 = fArr2[i4];
                if (f2 < f3) {
                    return c.a(f2, fArr2[i2], this.mM[i2], this.mY[i2]);
                }
                if (f2 == f3) {
                    return this.mY[i4];
                }
                i2 = i4;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("LinearSpline{[");
            int length = this.mX.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append("(");
                sb.append(this.mX[i2]);
                sb.append(", ");
                sb.append(this.mY[i2]);
                if (i2 < length - 1) {
                    sb.append(": ");
                    sb.append(this.mM[i2]);
                }
                sb.append(")");
            }
            sb.append("]}");
            return sb.toString();
        }
    }

    public static class MonotoneCubicSpline extends Spline {
        private float[] mM;
        private float[] mX;
        private float[] mY;

        public MonotoneCubicSpline(float[] fArr, float[] fArr2) {
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
                float f3 = fArr3[i6];
                if (f3 == 0.0f) {
                    fArr4[i6] = 0.0f;
                    fArr4[i6 + 1] = 0.0f;
                } else {
                    float f4 = fArr4[i6] / f3;
                    int i7 = i6 + 1;
                    float f5 = fArr4[i7] / f3;
                    if (f4 < 0.0f || f5 < 0.0f) {
                        throw new IllegalArgumentException("The control points must have monotonic Y values.");
                    }
                    float fHypot = (float) Math.hypot(f4, f5);
                    if (fHypot > 3.0f) {
                        float f6 = 3.0f / fHypot;
                        fArr4[i6] = fArr4[i6] * f6;
                        fArr4[i7] = fArr4[i7] * f6;
                    }
                }
            }
            this.mX = fArr;
            this.mY = fArr2;
            this.mM = fArr4;
        }

        @Override // android.util.Spline
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
                float f3 = fArr2[i4];
                if (f2 < f3) {
                    float f4 = fArr2[i2];
                    float f5 = f3 - f4;
                    float f6 = (f2 - f4) / f5;
                    float[] fArr3 = this.mY;
                    float f7 = 2.0f * f6;
                    float f8 = (f7 + 1.0f) * fArr3[i2];
                    float[] fArr4 = this.mM;
                    float f9 = (fArr4[i2] * f5 * f6) + f8;
                    float f10 = 1.0f - f6;
                    return ((((f6 - 1.0f) * f5 * fArr4[i4]) + ((3.0f - f7) * fArr3[i4])) * f6 * f6) + (f9 * f10 * f10);
                }
                if (f2 == f3) {
                    return this.mY[i4];
                }
                i2 = i4;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MonotoneCubicSpline{[");
            int length = this.mX.length;
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
            sb.append("]}");
            return sb.toString();
        }
    }

    public static Spline createLinearSpline(float[] fArr, float[] fArr2) {
        return new LinearSpline(fArr, fArr2);
    }

    public static Spline createMonotoneCubicSpline(float[] fArr, float[] fArr2) {
        return new MonotoneCubicSpline(fArr, fArr2);
    }

    public static Spline createSpline(float[] fArr, float[] fArr2) {
        if (isStrictlyIncreasing(fArr)) {
            return isMonotonic(fArr2) ? createMonotoneCubicSpline(fArr, fArr2) : createLinearSpline(fArr, fArr2);
        }
        throw new IllegalArgumentException("The control points must all have strictly increasing X values.");
    }

    private static boolean isMonotonic(float[] fArr) {
        if (fArr == null || fArr.length < 2) {
            throw new IllegalArgumentException("There must be at least two control points.");
        }
        float f2 = fArr[0];
        int i2 = 1;
        while (i2 < fArr.length) {
            float f3 = fArr[i2];
            if (f3 < f2) {
                return false;
            }
            i2++;
            f2 = f3;
        }
        return true;
    }

    private static boolean isStrictlyIncreasing(float[] fArr) {
        if (fArr == null || fArr.length < 2) {
            throw new IllegalArgumentException("There must be at least two control points.");
        }
        float f2 = fArr[0];
        int i2 = 1;
        while (i2 < fArr.length) {
            float f3 = fArr[i2];
            if (f3 <= f2) {
                return false;
            }
            i2++;
            f2 = f3;
        }
        return true;
    }

    public abstract float interpolate(float f2);
}
