package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ArcCurveFit extends CurveFit {
    public static final int ARC_START_FLIP = 3;
    public static final int ARC_START_HORIZONTAL = 2;
    public static final int ARC_START_LINEAR = 0;
    public static final int ARC_START_VERTICAL = 1;
    private static final int START_HORIZONTAL = 2;
    private static final int START_LINEAR = 3;
    private static final int START_VERTICAL = 1;
    Arc[] mArcs;
    private boolean mExtrapolate = true;
    private final double[] mTime;

    public static class Arc {
        private static final double EPSILON = 0.001d;
        private static final String TAG = "Arc";
        private static double[] ourPercent = new double[91];
        boolean linear;
        double mArcDistance;
        double mArcVelocity;
        double mEllipseA;
        double mEllipseB;
        double mEllipseCenterX;
        double mEllipseCenterY;
        double[] mLut;
        double mOneOverDeltaTime;
        double mTime1;
        double mTime2;
        double mTmpCosAngle;
        double mTmpSinAngle;
        boolean mVertical;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        public Arc(int i2, double d2, double d3, double d4, double d5, double d6, double d7) {
            this.linear = false;
            this.mVertical = i2 == 1;
            this.mTime1 = d2;
            this.mTime2 = d3;
            this.mOneOverDeltaTime = 1.0d / (d3 - d2);
            if (3 == i2) {
                this.linear = true;
            }
            double d8 = d6 - d4;
            double d9 = d7 - d5;
            if (!this.linear && Math.abs(d8) >= EPSILON && Math.abs(d9) >= EPSILON) {
                this.mLut = new double[101];
                boolean z2 = this.mVertical;
                this.mEllipseA = d8 * ((double) (z2 ? -1 : 1));
                this.mEllipseB = d9 * ((double) (z2 ? 1 : -1));
                this.mEllipseCenterX = z2 ? d6 : d4;
                this.mEllipseCenterY = z2 ? d5 : d7;
                buildTable(d4, d5, d6, d7);
                this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
                return;
            }
            this.linear = true;
            this.mX1 = d4;
            this.mX2 = d6;
            this.mY1 = d5;
            this.mY2 = d7;
            double dHypot = Math.hypot(d9, d8);
            this.mArcDistance = dHypot;
            this.mArcVelocity = dHypot * this.mOneOverDeltaTime;
            double d10 = this.mTime2;
            double d11 = this.mTime1;
            this.mEllipseCenterX = d8 / (d10 - d11);
            this.mEllipseCenterY = d9 / (d10 - d11);
        }

        private void buildTable(double d2, double d3, double d4, double d5) {
            double dHypot;
            double d6 = d4 - d2;
            double d7 = d3 - d5;
            int i2 = 0;
            double d8 = 0.0d;
            double d9 = 0.0d;
            double d10 = 0.0d;
            while (true) {
                double[] dArr = ourPercent;
                if (i2 >= dArr.length) {
                    break;
                }
                double d11 = d8;
                double radians = Math.toRadians((((double) i2) * 90.0d) / ((double) (dArr.length - 1)));
                double dSin = Math.sin(radians) * d6;
                double dCos = Math.cos(radians) * d7;
                if (i2 > 0) {
                    dHypot = Math.hypot(dSin - d9, dCos - d10) + d11;
                    ourPercent[i2] = dHypot;
                } else {
                    dHypot = d11;
                }
                i2++;
                d10 = dCos;
                d8 = dHypot;
                d9 = dSin;
            }
            double d12 = d8;
            this.mArcDistance = d12;
            int i3 = 0;
            while (true) {
                double[] dArr2 = ourPercent;
                if (i3 >= dArr2.length) {
                    break;
                }
                dArr2[i3] = dArr2[i3] / d12;
                i3++;
            }
            int i4 = 0;
            while (true) {
                double[] dArr3 = this.mLut;
                if (i4 >= dArr3.length) {
                    return;
                }
                double length = ((double) i4) / ((double) (dArr3.length - 1));
                int iBinarySearch = Arrays.binarySearch(ourPercent, length);
                if (iBinarySearch >= 0) {
                    this.mLut[i4] = ((double) iBinarySearch) / ((double) (ourPercent.length - 1));
                } else if (iBinarySearch == -1) {
                    this.mLut[i4] = 0.0d;
                } else {
                    int i5 = -iBinarySearch;
                    int i6 = i5 - 2;
                    double[] dArr4 = ourPercent;
                    double d13 = dArr4[i6];
                    this.mLut[i4] = (((length - d13) / (dArr4[i5 - 1] - d13)) + ((double) i6)) / ((double) (dArr4.length - 1));
                }
                i4++;
            }
        }

        public double getDX() {
            double d2 = this.mEllipseA * this.mTmpCosAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d2, (-this.mEllipseB) * this.mTmpSinAngle);
            if (this.mVertical) {
                d2 = -d2;
            }
            return d2 * dHypot;
        }

        public double getDY() {
            double d2 = this.mEllipseA * this.mTmpCosAngle;
            double d3 = (-this.mEllipseB) * this.mTmpSinAngle;
            double dHypot = this.mArcVelocity / Math.hypot(d2, d3);
            return this.mVertical ? (-d3) * dHypot : d3 * dHypot;
        }

        public double getLinearDX(double d2) {
            return this.mEllipseCenterX;
        }

        public double getLinearDY(double d2) {
            return this.mEllipseCenterY;
        }

        public double getLinearX(double d2) {
            double d3 = (d2 - this.mTime1) * this.mOneOverDeltaTime;
            double d4 = this.mX1;
            return ((this.mX2 - d4) * d3) + d4;
        }

        public double getLinearY(double d2) {
            double d3 = (d2 - this.mTime1) * this.mOneOverDeltaTime;
            double d4 = this.mY1;
            return ((this.mY2 - d4) * d3) + d4;
        }

        public double getX() {
            return (this.mEllipseA * this.mTmpSinAngle) + this.mEllipseCenterX;
        }

        public double getY() {
            return (this.mEllipseB * this.mTmpCosAngle) + this.mEllipseCenterY;
        }

        public double lookup(double d2) {
            if (d2 <= 0.0d) {
                return 0.0d;
            }
            if (d2 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.mLut;
            double length = d2 * ((double) (dArr.length - 1));
            int i2 = (int) length;
            double d3 = length - ((double) i2);
            double d4 = dArr[i2];
            return ((dArr[i2 + 1] - d4) * d3) + d4;
        }

        public void setPoint(double d2) {
            double dLookup = lookup((this.mVertical ? this.mTime2 - d2 : d2 - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
            this.mTmpSinAngle = Math.sin(dLookup);
            this.mTmpCosAngle = Math.cos(dLookup);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c  */
    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.mTime = dArr;
        this.mArcs = new Arc[dArr.length - 1];
        int i2 = 1;
        int i3 = 1;
        int i4 = 0;
        while (true) {
            Arc[] arcArr = this.mArcs;
            if (i4 >= arcArr.length) {
                return;
            }
            int i5 = iArr[i4];
            if (i5 == 0) {
                i3 = 3;
            } else if (i5 == 1) {
                i2 = 1;
                i3 = i2;
            } else {
                if (i5 != 2) {
                    if (i5 == 3) {
                        if (i2 != 1) {
                            i2 = 1;
                        }
                        i3 = i2;
                    }
                }
                i2 = 2;
                i3 = i2;
            }
            double d2 = dArr[i4];
            int i6 = i4 + 1;
            double d3 = dArr[i6];
            double[] dArr3 = dArr2[i4];
            double d4 = dArr3[0];
            double d5 = dArr3[1];
            double[] dArr4 = dArr2[i6];
            arcArr[i4] = new Arc(i3, d2, d3, d4, d5, dArr4[0], dArr4[1]);
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d2, double[] dArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d3 = arc.mTime1;
            if (d2 < d3) {
                double d4 = d2 - d3;
                if (arc.linear) {
                    dArr[0] = (this.mArcs[0].getLinearDX(d3) * d4) + arc.getLinearX(d3);
                    dArr[1] = (d4 * this.mArcs[0].getLinearDY(d3)) + this.mArcs[0].getLinearY(d3);
                    return;
                }
                arc.setPoint(d3);
                dArr[0] = (this.mArcs[0].getDX() * d4) + this.mArcs[0].getX();
                dArr[1] = (d4 * this.mArcs[0].getDY()) + this.mArcs[0].getY();
                return;
            }
            if (d2 > arcArr[arcArr.length - 1].mTime2) {
                double d5 = arcArr[arcArr.length - 1].mTime2;
                double d6 = d2 - d5;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (arc2.linear) {
                    dArr[0] = (this.mArcs[length].getLinearDX(d5) * d6) + arc2.getLinearX(d5);
                    dArr[1] = (d6 * this.mArcs[length].getLinearDY(d5)) + this.mArcs[length].getLinearY(d5);
                    return;
                }
                arc2.setPoint(d2);
                dArr[0] = (this.mArcs[length].getDX() * d6) + this.mArcs[length].getX();
                dArr[1] = (d6 * this.mArcs[length].getDY()) + this.mArcs[length].getY();
                return;
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d7 = arcArr2[0].mTime1;
            if (d2 < d7) {
                d2 = d7;
            }
            if (d2 > arcArr2[arcArr2.length - 1].mTime2) {
                d2 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i2 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i2 >= arcArr3.length) {
                return;
            }
            Arc arc3 = arcArr3[i2];
            if (d2 <= arc3.mTime2) {
                if (arc3.linear) {
                    dArr[0] = arc3.getLinearX(d2);
                    dArr[1] = this.mArcs[i2].getLinearY(d2);
                    return;
                } else {
                    arc3.setPoint(d2);
                    dArr[0] = this.mArcs[i2].getX();
                    dArr[1] = this.mArcs[i2].getY();
                    return;
                }
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d2, double[] dArr) {
        Arc[] arcArr = this.mArcs;
        double d3 = arcArr[0].mTime1;
        if (d2 < d3) {
            d2 = d3;
        } else if (d2 > arcArr[arcArr.length - 1].mTime2) {
            d2 = arcArr[arcArr.length - 1].mTime2;
        }
        int i2 = 0;
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i2 >= arcArr2.length) {
                return;
            }
            Arc arc = arcArr2[i2];
            if (d2 <= arc.mTime2) {
                if (arc.linear) {
                    dArr[0] = arc.getLinearDX(d2);
                    dArr[1] = this.mArcs[i2].getLinearDY(d2);
                    return;
                } else {
                    arc.setPoint(d2);
                    dArr[0] = this.mArcs[i2].getDX();
                    dArr[1] = this.mArcs[i2].getDY();
                    return;
                }
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mTime;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d2, int i2) {
        Arc[] arcArr = this.mArcs;
        int i3 = 0;
        double d3 = arcArr[0].mTime1;
        if (d2 < d3) {
            d2 = d3;
        }
        if (d2 > arcArr[arcArr.length - 1].mTime2) {
            d2 = arcArr[arcArr.length - 1].mTime2;
        }
        while (true) {
            Arc[] arcArr2 = this.mArcs;
            if (i3 >= arcArr2.length) {
                return Double.NaN;
            }
            Arc arc = arcArr2[i3];
            if (d2 <= arc.mTime2) {
                if (arc.linear) {
                    if (i2 == 0) {
                        return arc.getLinearDX(d2);
                    }
                    return arc.getLinearDY(d2);
                }
                arc.setPoint(d2);
                if (i2 == 0) {
                    return this.mArcs[i3].getDX();
                }
                return this.mArcs[i3].getDY();
            }
            i3++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d2, float[] fArr) {
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d3 = arc.mTime1;
            if (d2 < d3) {
                double d4 = d2 - d3;
                if (arc.linear) {
                    fArr[0] = (float) ((this.mArcs[0].getLinearDX(d3) * d4) + arc.getLinearX(d3));
                    fArr[1] = (float) ((d4 * this.mArcs[0].getLinearDY(d3)) + this.mArcs[0].getLinearY(d3));
                    return;
                }
                arc.setPoint(d3);
                fArr[0] = (float) ((this.mArcs[0].getDX() * d4) + this.mArcs[0].getX());
                fArr[1] = (float) ((d4 * this.mArcs[0].getDY()) + this.mArcs[0].getY());
                return;
            }
            if (d2 > arcArr[arcArr.length - 1].mTime2) {
                double d5 = arcArr[arcArr.length - 1].mTime2;
                double d6 = d2 - d5;
                int length = arcArr.length - 1;
                Arc arc2 = arcArr[length];
                if (arc2.linear) {
                    fArr[0] = (float) ((this.mArcs[length].getLinearDX(d5) * d6) + arc2.getLinearX(d5));
                    fArr[1] = (float) ((d6 * this.mArcs[length].getLinearDY(d5)) + this.mArcs[length].getLinearY(d5));
                    return;
                }
                arc2.setPoint(d2);
                fArr[0] = (float) this.mArcs[length].getX();
                fArr[1] = (float) this.mArcs[length].getY();
                return;
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d7 = arcArr2[0].mTime1;
            if (d2 < d7) {
                d2 = d7;
            } else if (d2 > arcArr2[arcArr2.length - 1].mTime2) {
                d2 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        int i2 = 0;
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i2 >= arcArr3.length) {
                return;
            }
            Arc arc3 = arcArr3[i2];
            if (d2 <= arc3.mTime2) {
                if (arc3.linear) {
                    fArr[0] = (float) arc3.getLinearX(d2);
                    fArr[1] = (float) this.mArcs[i2].getLinearY(d2);
                    return;
                } else {
                    arc3.setPoint(d2);
                    fArr[0] = (float) this.mArcs[i2].getX();
                    fArr[1] = (float) this.mArcs[i2].getY();
                    return;
                }
            }
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d2, int i2) {
        int i3 = 0;
        if (this.mExtrapolate) {
            Arc[] arcArr = this.mArcs;
            Arc arc = arcArr[0];
            double d3 = arc.mTime1;
            if (d2 < d3) {
                double d4 = d2 - d3;
                if (arc.linear) {
                    if (i2 == 0) {
                        return (d4 * this.mArcs[0].getLinearDX(d3)) + arc.getLinearX(d3);
                    }
                    return (d4 * this.mArcs[0].getLinearDY(d3)) + arc.getLinearY(d3);
                }
                arc.setPoint(d3);
                if (i2 == 0) {
                    return (d4 * this.mArcs[0].getDX()) + this.mArcs[0].getX();
                }
                return (d4 * this.mArcs[0].getDY()) + this.mArcs[0].getY();
            }
            if (d2 > arcArr[arcArr.length - 1].mTime2) {
                double d5 = arcArr[arcArr.length - 1].mTime2;
                double d6 = d2 - d5;
                int length = arcArr.length - 1;
                if (i2 == 0) {
                    return (d6 * this.mArcs[length].getLinearDX(d5)) + arcArr[length].getLinearX(d5);
                }
                return (d6 * this.mArcs[length].getLinearDY(d5)) + arcArr[length].getLinearY(d5);
            }
        } else {
            Arc[] arcArr2 = this.mArcs;
            double d7 = arcArr2[0].mTime1;
            if (d2 < d7) {
                d2 = d7;
            } else if (d2 > arcArr2[arcArr2.length - 1].mTime2) {
                d2 = arcArr2[arcArr2.length - 1].mTime2;
            }
        }
        while (true) {
            Arc[] arcArr3 = this.mArcs;
            if (i3 >= arcArr3.length) {
                return Double.NaN;
            }
            Arc arc2 = arcArr3[i3];
            if (d2 <= arc2.mTime2) {
                if (arc2.linear) {
                    if (i2 == 0) {
                        return arc2.getLinearX(d2);
                    }
                    return arc2.getLinearY(d2);
                }
                arc2.setPoint(d2);
                if (i2 == 0) {
                    return this.mArcs[i3].getX();
                }
                return this.mArcs[i3].getY();
            }
            i3++;
        }
    }
}
