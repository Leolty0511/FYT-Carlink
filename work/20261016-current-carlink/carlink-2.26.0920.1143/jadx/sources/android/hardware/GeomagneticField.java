package android.hardware;

import android.app.m;
import android.view.WindowManager;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes.dex */
public class GeomagneticField {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final float EARTH_REFERENCE_RADIUS_KM = 6371.2f;
    private static final float EARTH_SEMI_MAJOR_AXIS_KM = 6378.137f;
    private static final float EARTH_SEMI_MINOR_AXIS_KM = 6356.7524f;
    private static final float[][] G_COEFF;
    private static final float[][] SCHMIDT_QUASI_NORM_FACTORS;
    private float mGcLatitudeRad;
    private float mGcLongitudeRad;
    private float mGcRadiusKm;
    private float mX;
    private float mY;
    private float mZ;
    private static final float[][] H_COEFF = {new float[]{0.0f}, new float[]{0.0f, 4944.4f}, new float[]{0.0f, -2707.7f, -576.1f}, new float[]{0.0f, -160.2f, 251.9f, -536.6f}, new float[]{0.0f, 286.4f, -211.2f, 164.3f, -309.1f}, new float[]{0.0f, 44.6f, 188.9f, -118.2f, 0.0f, 100.9f}, new float[]{0.0f, -20.8f, 44.1f, 61.5f, -66.3f, 3.1f, 55.0f}, new float[]{0.0f, -57.9f, -21.1f, 6.5f, 24.9f, 7.0f, -27.7f, -3.3f}, new float[]{0.0f, 11.0f, -20.0f, 11.9f, -17.4f, 16.7f, 7.0f, -10.8f, 1.7f}, new float[]{0.0f, -20.5f, 11.5f, 12.8f, -7.2f, -7.4f, 8.0f, 2.1f, -6.1f, 7.0f}, new float[]{0.0f, 2.8f, -0.1f, 4.7f, 4.4f, -7.2f, -1.0f, -3.9f, -2.0f, -2.0f, -8.3f}, new float[]{0.0f, 0.2f, 1.7f, -0.6f, -1.8f, 0.9f, -0.4f, -2.5f, -1.3f, -2.1f, -1.9f, -1.8f}, new float[]{0.0f, -0.9f, 0.3f, 2.1f, -2.5f, 0.5f, 0.6f, 0.0f, 0.1f, 0.3f, -0.9f, -0.2f, 0.9f}};
    private static final float[][] DELTA_G = {new float[]{0.0f}, new float[]{11.6f, 16.5f}, new float[]{-12.1f, -4.4f, 1.9f}, new float[]{0.4f, -4.1f, -2.9f, -7.7f}, new float[]{-1.8f, 2.3f, -8.7f, 4.6f, -2.1f}, new float[]{-1.0f, 0.6f, -1.8f, -1.0f, 0.9f, 1.0f}, new float[]{-0.2f, -0.2f, -0.1f, 2.0f, -1.7f, -0.3f, 1.7f}, new float[]{0.1f, -0.1f, -0.6f, 1.3f, 0.4f, 0.3f, -0.7f, 0.6f}, new float[]{-0.1f, 0.1f, -0.6f, 0.2f, -0.2f, 0.3f, 0.3f, -0.6f, 0.2f}, new float[]{0.0f, -0.1f, 0.0f, 0.3f, -0.4f, -0.3f, 0.1f, -0.1f, -0.4f, -0.2f}, new float[]{0.0f, 0.0f, -0.1f, 0.2f, 0.0f, -0.1f, -0.2f, 0.0f, -0.1f, -0.2f, -0.2f}, new float[]{0.0f, 0.0f, 0.0f, 0.1f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -0.1f, 0.0f}, new float[]{0.0f, 0.0f, 0.1f, 0.1f, -0.1f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, -0.1f, 0.1f}};
    private static final float[][] DELTA_H = {new float[]{0.0f}, new float[]{0.0f, -25.9f}, new float[]{0.0f, -22.5f, -11.8f}, new float[]{0.0f, 7.3f, -3.9f, -2.6f}, new float[]{0.0f, 1.1f, 2.7f, 3.9f, -0.8f}, new float[]{0.0f, 0.4f, 1.8f, 1.2f, 4.0f, -0.6f}, new float[]{0.0f, -0.2f, -2.1f, -0.4f, -0.6f, 0.5f, 0.9f}, new float[]{0.0f, 0.7f, 0.3f, -0.1f, -0.1f, -0.8f, -0.3f, 0.3f}, new float[]{0.0f, -0.1f, 0.2f, 0.4f, 0.4f, 0.1f, -0.1f, 0.4f, 0.3f}, new float[]{0.0f, 0.0f, -0.2f, 0.0f, -0.1f, 0.1f, 0.0f, -0.2f, 0.3f, 0.2f}, new float[]{0.0f, 0.1f, -0.1f, 0.0f, -0.1f, -0.1f, 0.0f, -0.1f, -0.2f, 0.0f, -0.1f}, new float[]{0.0f, 0.0f, 0.1f, 0.0f, 0.1f, 0.0f, 0.1f, 0.0f, -0.1f, -0.1f, 0.0f, -0.1f}, new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.1f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f}};
    private static final long BASE_TIME = new GregorianCalendar(WindowManager.LayoutParams.TYPE_SYSTEM_ERROR, 1, 1).getTimeInMillis();

    public static class LegendreTable {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public final float[][] mP;
        public final float[][] mPDeriv;

        public LegendreTable(int i2, float f2) {
            int i3;
            double d2 = f2;
            float fCos = (float) Math.cos(d2);
            float fSin = (float) Math.sin(d2);
            int i4 = i2 + 1;
            float[][] fArr = new float[i4][];
            this.mP = fArr;
            float[][] fArr2 = new float[i4][];
            this.mPDeriv = fArr2;
            fArr[0] = new float[]{1.0f};
            fArr2[0] = new float[]{0.0f};
            int i5 = 1;
            while (i5 <= i2) {
                int i6 = i5 + 1;
                this.mP[i5] = new float[i6];
                this.mPDeriv[i5] = new float[i6];
                for (int i7 = 0; i7 <= i5; i7++) {
                    if (i5 == i7) {
                        float[][] fArr3 = this.mP;
                        float[] fArr4 = fArr3[i5];
                        int i8 = i5 - 1;
                        float[] fArr5 = fArr3[i8];
                        int i9 = i7 - 1;
                        fArr4[i7] = fArr5[i9] * fSin;
                        float[][] fArr6 = this.mPDeriv;
                        fArr6[i5][i7] = (fArr6[i8][i9] * fSin) + (fArr5[i9] * fCos);
                    } else if (i5 == 1 || i7 == (i3 = i5 - 1)) {
                        float[][] fArr7 = this.mP;
                        float[] fArr8 = fArr7[i5];
                        int i10 = i5 - 1;
                        float[] fArr9 = fArr7[i10];
                        fArr8[i7] = fArr9[i7] * fCos;
                        float[][] fArr10 = this.mPDeriv;
                        fArr10[i5][i7] = (fArr10[i10][i7] * fCos) + ((-fSin) * fArr9[i7]);
                    } else {
                        int i11 = i5 * 2;
                        float f3 = ((i3 * i3) - (i7 * i7)) / ((i11 - 3) * (i11 - 1));
                        float[][] fArr11 = this.mP;
                        float[] fArr12 = fArr11[i5];
                        float[] fArr13 = fArr11[i3];
                        int i12 = i5 - 2;
                        fArr12[i7] = (fArr13[i7] * fCos) - (fArr11[i12][i7] * f3);
                        float[][] fArr14 = this.mPDeriv;
                        fArr14[i5][i7] = ((fArr14[i3][i7] * fCos) + ((-fSin) * fArr13[i7])) - (f3 * fArr14[i12][i7]);
                    }
                }
                i5 = i6;
            }
        }
    }

    static {
        float[][] fArr = {new float[]{0.0f}, new float[]{-29496.6f, -1586.3f}, new float[]{-2396.6f, 3026.1f, 1668.6f}, new float[]{1340.1f, -2326.2f, 1231.9f, 634.0f}, new float[]{912.6f, 808.9f, 166.7f, -357.1f, 89.4f}, new float[]{-230.9f, 357.2f, 200.3f, -141.1f, -163.0f, -7.8f}, new float[]{72.8f, 68.6f, 76.0f, -141.4f, -22.8f, 13.2f, -77.9f}, new float[]{80.5f, -75.1f, -4.7f, 45.3f, 13.9f, 10.4f, 1.7f, 4.9f}, new float[]{24.4f, 8.1f, -14.5f, -5.6f, -19.3f, 11.5f, 10.9f, -14.1f, -3.7f}, new float[]{5.4f, 9.4f, 3.4f, -5.2f, 3.1f, -12.4f, -0.7f, 8.4f, -8.5f, -10.1f}, new float[]{-2.0f, -6.3f, 0.9f, -1.1f, -0.2f, 2.5f, -0.3f, 2.2f, 3.1f, -1.0f, -2.8f}, new float[]{3.0f, -1.5f, -2.1f, 1.7f, -0.5f, 0.5f, -0.8f, 0.4f, 1.8f, 0.1f, 0.7f, 3.8f}, new float[]{-2.2f, -0.2f, 0.3f, 1.0f, -0.6f, 0.9f, -0.1f, 0.5f, -0.4f, -0.4f, 0.2f, -0.8f, 0.0f}};
        G_COEFF = fArr;
        SCHMIDT_QUASI_NORM_FACTORS = computeSchmidtQuasiNormFactors(fArr.length);
    }

    public GeomagneticField(float f2, float f3, float f4, long j2) {
        int length = G_COEFF.length;
        float fMin = Math.min(89.99999f, Math.max(-89.99999f, f2));
        computeGeocentricCoordinates(fMin, f3, f4);
        LegendreTable legendreTable = new LegendreTable(length - 1, (float) (1.5707963267948966d - ((double) this.mGcLatitudeRad)));
        int i2 = length + 2;
        float[] fArr = new float[i2];
        int i3 = 0;
        fArr[0] = 1.0f;
        int i4 = 1;
        fArr[1] = EARTH_REFERENCE_RADIUS_KM / this.mGcRadiusKm;
        for (int i5 = 2; i5 < i2; i5++) {
            fArr[i5] = fArr[i5 - 1] * fArr[1];
        }
        float[] fArr2 = new float[length];
        float[] fArr3 = new float[length];
        float f5 = 0.0f;
        fArr2[0] = 0.0f;
        fArr3[0] = 1.0f;
        fArr2[1] = (float) Math.sin(this.mGcLongitudeRad);
        fArr3[1] = (float) Math.cos(this.mGcLongitudeRad);
        for (int i6 = 2; i6 < length; i6++) {
            int i7 = i6 >> 1;
            int i8 = i6 - i7;
            fArr2[i6] = (fArr3[i8] * fArr2[i7]) + (fArr2[i8] * fArr3[i7]);
            fArr3[i6] = (fArr3[i8] * fArr3[i7]) - (fArr2[i8] * fArr2[i7]);
        }
        float fCos = 1.0f / ((float) Math.cos(this.mGcLatitudeRad));
        float f6 = (j2 - BASE_TIME) / 3.1536001E10f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        while (i4 < length) {
            while (i3 <= i4) {
                float f9 = (DELTA_G[i4][i3] * f6) + G_COEFF[i4][i3];
                float f10 = (DELTA_H[i4][i3] * f6) + H_COEFF[i4][i3];
                float f11 = fArr[i4 + 2];
                float f12 = fArr3[i3];
                float f13 = fArr2[i3];
                int i9 = length;
                float f14 = ((f10 * f13) + (f9 * f12)) * f11 * legendreTable.mPDeriv[i4][i3];
                float f15 = SCHMIDT_QUASI_NORM_FACTORS[i4][i3];
                f5 = (f14 * f15) + f5;
                float[] fArr4 = fArr2;
                float f16 = legendreTable.mP[i4][i3];
                f8 = (((f9 * f13) - (f10 * f12)) * i3 * f11 * f16 * f15 * fCos) + f8;
                f7 -= ((((f10 * f13) + (f9 * f12)) * ((i4 + 1) * f11)) * f16) * f15;
                i3++;
                legendreTable = legendreTable;
                length = i9;
                fArr2 = fArr4;
            }
            i4++;
            i3 = 0;
        }
        double radians = Math.toRadians(fMin) - ((double) this.mGcLatitudeRad);
        double d2 = f7;
        this.mX = (float) m.a(radians, d2, Math.cos(radians) * ((double) f5));
        this.mY = f8;
        this.mZ = (float) ((Math.cos(radians) * d2) + (Math.sin(radians) * ((double) (-f5))));
    }

    private void computeGeocentricCoordinates(float f2, float f3, float f4) {
        float f5 = f4 / 1000.0f;
        double radians = Math.toRadians(f2);
        float fCos = (float) Math.cos(radians);
        float fSin = (float) Math.sin(radians);
        float f6 = (fSin * 4.04083E7f * fSin) + (fCos * 4.0680636E7f * fCos);
        double d2 = f6;
        float fSqrt = ((float) Math.sqrt(d2)) * f5;
        this.mGcLatitudeRad = (float) Math.atan(((4.04083E7f + fSqrt) * (fSin / fCos)) / (fSqrt + 4.0680636E7f));
        this.mGcLongitudeRad = (float) Math.toRadians(f3);
        this.mGcRadiusKm = (float) Math.sqrt(((((1.63283074E15f * fSin) * fSin) + ((1.65491412E15f * fCos) * fCos)) / f6) + (f5 * 2.0f * ((float) Math.sqrt(d2))) + (f5 * f5));
    }

    private static float[][] computeSchmidtQuasiNormFactors(int i2) {
        float[][] fArr = new float[i2 + 1][];
        fArr[0] = new float[]{1.0f};
        int i3 = 1;
        while (i3 <= i2) {
            int i4 = i3 + 1;
            float[] fArr2 = new float[i4];
            fArr[i3] = fArr2;
            fArr2[0] = (fArr[i3 - 1][0] * ((i3 * 2) - 1)) / i3;
            int i5 = 1;
            while (i5 <= i3) {
                float[] fArr3 = fArr[i3];
                fArr3[i5] = fArr3[i5 - 1] * ((float) Math.sqrt((((i3 - i5) + 1) * (i5 == 1 ? 2 : 1)) / (i3 + i5)));
                i5++;
            }
            i3 = i4;
        }
        return fArr;
    }

    public float getDeclination() {
        return (float) Math.toDegrees(Math.atan2(this.mY, this.mX));
    }

    public float getFieldStrength() {
        float f2 = this.mX;
        float f3 = this.mY;
        float f4 = (f3 * f3) + (f2 * f2);
        float f5 = this.mZ;
        return (float) Math.sqrt((f5 * f5) + f4);
    }

    public float getHorizontalStrength() {
        return (float) Math.hypot(this.mX, this.mY);
    }

    public float getInclination() {
        return (float) Math.toDegrees(Math.atan2(this.mZ, getHorizontalStrength()));
    }

    public float getX() {
        return this.mX;
    }

    public float getY() {
        return this.mY;
    }

    public float getZ() {
        return this.mZ;
    }
}
