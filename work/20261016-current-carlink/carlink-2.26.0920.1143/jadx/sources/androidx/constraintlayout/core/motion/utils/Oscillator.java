package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    MonotonicCurveFit mCustomCurve;
    String mCustomType;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double PI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void addPoint(double d2, float f2) {
        int length = this.mPeriod.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d2);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.mPosition[iBinarySearch] = d2;
        this.mPeriod[iBinarySearch] = f2;
        this.mNormalized = false;
    }

    public double getDP(double d2) {
        if (d2 <= 0.0d) {
            d2 = 1.0E-5d;
        } else if (d2 >= 1.0d) {
            d2 = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d2);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return 0.0d;
        }
        int i2 = (-iBinarySearch) - 1;
        float[] fArr = this.mPeriod;
        float f2 = fArr[i2];
        int i3 = i2 - 1;
        float f3 = fArr[i3];
        double d3 = f2 - f3;
        double[] dArr = this.mPosition;
        double d4 = dArr[i2];
        double d5 = dArr[i3];
        double d6 = d3 / (d4 - d5);
        return (((double) f3) - (d6 * d5)) + (d2 * d6);
    }

    public double getP(double d2) {
        if (d2 < 0.0d) {
            d2 = 0.0d;
        } else if (d2 > 1.0d) {
            d2 = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d2);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i2 = (-iBinarySearch) - 1;
        float[] fArr = this.mPeriod;
        float f2 = fArr[i2];
        int i3 = i2 - 1;
        float f3 = fArr[i3];
        double d3 = f2 - f3;
        double[] dArr = this.mPosition;
        double d4 = dArr[i2];
        double d5 = dArr[i3];
        double d6 = d3 / (d4 - d5);
        return ((((d2 * d2) - (d5 * d5)) * d6) / 2.0d) + ((d2 - d5) * (((double) f3) - (d6 * d5))) + this.mArea[i3];
    }

    public double getSlope(double d2, double d3, double d4) {
        double d5;
        double dSignum;
        double p2 = getP(d2) + d3;
        double dp = getDP(d2) + d4;
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                d5 = dp * 4.0d;
                dSignum = Math.signum((((p2 * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return dp * 2.0d;
            case 4:
                return (-dp) * 2.0d;
            case 5:
                double d6 = this.PI2;
                return Math.sin(d6 * p2) * (-d6) * dp;
            case 6:
                return ((((p2 * 4.0d) + 2.0d) % 4.0d) - 2.0d) * dp * 4.0d;
            case 7:
                return this.mCustomCurve.getSlope(p2 % 1.0d, 0);
            default:
                double d7 = this.PI2;
                d5 = dp * d7;
                dSignum = Math.cos(d7 * p2);
                break;
        }
        return dSignum * d5;
    }

    public double getValue(double d2, double d3) {
        double dAbs;
        double p2 = getP(d2) + d3;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (p2 % 1.0d));
            case 2:
                dAbs = Math.abs((((p2 * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((p2 * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((p2 * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos((d3 + p2) * this.PI2);
            case 6:
                double dAbs2 = 1.0d - Math.abs(((p2 * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            case 7:
                return this.mCustomCurve.getPos(p2 % 1.0d, 0);
            default:
                return Math.sin(this.PI2 * p2);
        }
        return 1.0d - dAbs;
    }

    public void normalize() {
        double d2 = 0.0d;
        int i2 = 0;
        while (true) {
            float[] fArr = this.mPeriod;
            if (i2 >= fArr.length) {
                break;
            }
            d2 += (double) fArr[i2];
            i2++;
        }
        double d3 = 0.0d;
        int i3 = 1;
        while (true) {
            float[] fArr2 = this.mPeriod;
            if (i3 >= fArr2.length) {
                break;
            }
            int i4 = i3 - 1;
            float f2 = (fArr2[i4] + fArr2[i3]) / 2.0f;
            double[] dArr = this.mPosition;
            d3 += (dArr[i3] - dArr[i4]) * ((double) f2);
            i3++;
        }
        int i5 = 0;
        while (true) {
            float[] fArr3 = this.mPeriod;
            if (i5 >= fArr3.length) {
                break;
            }
            fArr3[i5] = (float) (((double) fArr3[i5]) * (d2 / d3));
            i5++;
        }
        this.mArea[0] = 0.0d;
        int i6 = 1;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i6 >= fArr4.length) {
                this.mNormalized = true;
                return;
            }
            int i7 = i6 - 1;
            float f3 = (fArr4[i7] + fArr4[i6]) / 2.0f;
            double[] dArr2 = this.mPosition;
            double d4 = dArr2[i6] - dArr2[i7];
            double[] dArr3 = this.mArea;
            dArr3[i6] = (d4 * ((double) f3)) + dArr3[i7];
            i6++;
        }
    }

    public void setType(int i2, String str) {
        this.mType = i2;
        this.mCustomType = str;
        if (str != null) {
            this.mCustomCurve = MonotonicCurveFit.buildWave(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.mPosition) + " period=" + Arrays.toString(this.mPeriod);
    }
}
