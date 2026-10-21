package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes2.dex */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = "LinearCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double mTotalLength;
    private double[][] mY;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        this.mT = dArr;
        this.mY = dArr2;
        if (length2 <= 2) {
            return;
        }
        int i2 = 0;
        double d2 = 0.0d;
        while (true) {
            double d3 = d2;
            if (i2 >= dArr.length) {
                this.mTotalLength = 0.0d;
                return;
            }
            double d4 = dArr2[i2][0];
            if (i2 > 0) {
                Math.hypot(d4 - d2, d4 - d3);
            }
            i2++;
            d2 = d4;
        }
    }

    private double getLength2D(double d2) {
        if (Double.isNaN(this.mTotalLength)) {
            return 0.0d;
        }
        double[] dArr = this.mT;
        int length = dArr.length;
        if (d2 <= dArr[0]) {
            return 0.0d;
        }
        int i2 = length - 1;
        if (d2 >= dArr[i2]) {
            return this.mTotalLength;
        }
        double dHypot = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        int i3 = 0;
        while (i3 < i2) {
            double[] dArr2 = this.mY[i3];
            double d5 = dArr2[0];
            double d6 = dArr2[1];
            if (i3 > 0) {
                dHypot += Math.hypot(d5 - d3, d6 - d4);
            }
            double[] dArr3 = this.mT;
            double d7 = dArr3[i3];
            if (d2 == d7) {
                return dHypot;
            }
            int i4 = i3 + 1;
            double d8 = dArr3[i4];
            if (d2 < d8) {
                double d9 = (d2 - d7) / (d8 - d7);
                double[][] dArr4 = this.mY;
                double[] dArr5 = dArr4[i3];
                double d10 = dArr5[0];
                double[] dArr6 = dArr4[i4];
                double d11 = dArr6[0];
                double d12 = 1.0d - d9;
                return Math.hypot(d6 - ((dArr6[1] * d9) + (dArr5[1] * d12)), d5 - ((d11 * d9) + (d10 * d12))) + dHypot;
            }
            i3 = i4;
            d3 = d5;
            d4 = d6;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d2, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int i2 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d3 = dArr2[0];
            if (d2 <= d3) {
                getSlope(d3, this.mSlopeTemp);
                for (int i3 = 0; i3 < length2; i3++) {
                    dArr[i3] = ((d2 - this.mT[0]) * this.mSlopeTemp[i3]) + this.mY[0][i3];
                }
                return;
            }
            int i4 = length - 1;
            double d4 = dArr2[i4];
            if (d2 >= d4) {
                getSlope(d4, this.mSlopeTemp);
                while (i2 < length2) {
                    dArr[i2] = ((d2 - this.mT[i4]) * this.mSlopeTemp[i2]) + this.mY[i4][i2];
                    i2++;
                }
                return;
            }
        } else {
            if (d2 <= dArr2[0]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.mY[0][i5];
                }
                return;
            }
            int i6 = length - 1;
            if (d2 >= dArr2[i6]) {
                while (i2 < length2) {
                    dArr[i2] = this.mY[i6][i2];
                    i2++;
                }
                return;
            }
        }
        int i7 = 0;
        while (i7 < length - 1) {
            if (d2 == this.mT[i7]) {
                for (int i8 = 0; i8 < length2; i8++) {
                    dArr[i8] = this.mY[i7][i8];
                }
            }
            double[] dArr3 = this.mT;
            int i9 = i7 + 1;
            double d5 = dArr3[i9];
            if (d2 < d5) {
                double d6 = dArr3[i7];
                double d7 = (d2 - d6) / (d5 - d6);
                while (i2 < length2) {
                    double[][] dArr4 = this.mY;
                    dArr[i2] = (dArr4[i9][i2] * d7) + ((1.0d - d7) * dArr4[i7][i2]);
                    i2++;
                }
                return;
            }
            i7 = i9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000f A[PHI: r4
  0x000f: PHI (r4v5 double) = (r4v0 double), (r4v2 double) binds: [B:3:0x000d, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d2, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        double d3 = dArr2[0];
        if (d2 <= d3) {
            d2 = d3;
        } else {
            d3 = dArr2[length - 1];
            if (d2 >= d3) {
                d2 = d3;
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            double[] dArr3 = this.mT;
            int i3 = i2 + 1;
            double d4 = dArr3[i3];
            if (d2 <= d4) {
                double d5 = d4 - dArr3[i2];
                for (int i4 = 0; i4 < length2; i4++) {
                    double[][] dArr4 = this.mY;
                    dArr[i4] = (dArr4[i3][i4] - dArr4[i2][i4]) / d5;
                }
                return;
            }
            i2 = i3;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a A[PHI: r3
  0x000a: PHI (r3v4 double) = (r3v0 double), (r3v2 double) binds: [B:3:0x0008, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d2, int i2) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i3 = 0;
        double d3 = dArr[0];
        if (d2 < d3) {
            d2 = d3;
        } else {
            d3 = dArr[length - 1];
            if (d2 >= d3) {
                d2 = d3;
            }
        }
        while (i3 < length - 1) {
            double[] dArr2 = this.mT;
            int i4 = i3 + 1;
            double d4 = dArr2[i4];
            if (d2 <= d4) {
                double d5 = d4 - dArr2[i3];
                double[][] dArr3 = this.mY;
                return (dArr3[i4][i2] - dArr3[i3][i2]) / d5;
            }
            i3 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d2, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i2 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d3 = dArr[0];
            if (d2 <= d3) {
                getSlope(d3, this.mSlopeTemp);
                for (int i3 = 0; i3 < length2; i3++) {
                    fArr[i3] = (float) (((d2 - this.mT[0]) * this.mSlopeTemp[i3]) + this.mY[0][i3]);
                }
                return;
            }
            int i4 = length - 1;
            double d4 = dArr[i4];
            if (d2 >= d4) {
                getSlope(d4, this.mSlopeTemp);
                while (i2 < length2) {
                    fArr[i2] = (float) (((d2 - this.mT[i4]) * this.mSlopeTemp[i2]) + this.mY[i4][i2]);
                    i2++;
                }
                return;
            }
        } else {
            if (d2 <= dArr[0]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.mY[0][i5];
                }
                return;
            }
            int i6 = length - 1;
            if (d2 >= dArr[i6]) {
                while (i2 < length2) {
                    fArr[i2] = (float) this.mY[i6][i2];
                    i2++;
                }
                return;
            }
        }
        int i7 = 0;
        while (i7 < length - 1) {
            if (d2 == this.mT[i7]) {
                for (int i8 = 0; i8 < length2; i8++) {
                    fArr[i8] = (float) this.mY[i7][i8];
                }
            }
            double[] dArr2 = this.mT;
            int i9 = i7 + 1;
            double d5 = dArr2[i9];
            if (d2 < d5) {
                double d6 = dArr2[i7];
                double d7 = (d2 - d6) / (d5 - d6);
                while (i2 < length2) {
                    double[][] dArr3 = this.mY;
                    fArr[i2] = (float) ((dArr3[i9][i2] * d7) + ((1.0d - d7) * dArr3[i7][i2]));
                    i2++;
                }
                return;
            }
            i7 = i9;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d2, int i2) {
        double d3;
        double d4;
        double slope;
        double[] dArr = this.mT;
        int length = dArr.length;
        int i3 = 0;
        if (this.mExtrapolate) {
            double d5 = dArr[0];
            if (d2 <= d5) {
                d3 = this.mY[0][i2];
                d4 = d2 - d5;
                slope = getSlope(d5, i2);
            } else {
                int i4 = length - 1;
                double d6 = dArr[i4];
                if (d2 >= d6) {
                    d3 = this.mY[i4][i2];
                    d4 = d2 - d6;
                    slope = getSlope(d6, i2);
                }
            }
            return (slope * d4) + d3;
        }
        if (d2 <= dArr[0]) {
            return this.mY[0][i2];
        }
        int i5 = length - 1;
        if (d2 >= dArr[i5]) {
            return this.mY[i5][i2];
        }
        while (i3 < length - 1) {
            double[] dArr2 = this.mT;
            double d7 = dArr2[i3];
            if (d2 == d7) {
                return this.mY[i3][i2];
            }
            int i6 = i3 + 1;
            double d8 = dArr2[i6];
            if (d2 < d8) {
                double d9 = (d2 - d7) / (d8 - d7);
                double[][] dArr3 = this.mY;
                return (dArr3[i6][i2] * d9) + ((1.0d - d9) * dArr3[i3][i2]);
            }
            i3 = i6;
        }
        return 0.0d;
    }
}
