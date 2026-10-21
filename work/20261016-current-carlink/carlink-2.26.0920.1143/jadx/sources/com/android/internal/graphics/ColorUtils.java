package com.android.internal.graphics;

import android.app.m;
import android.graphics.Color;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    public interface ContrastCalculator {
        double calculateContrast(int i2, int i3, int i4);
    }

    private ColorUtils() {
    }

    public static int HSLToColor(float[] fArr) {
        int iA;
        int iA2;
        int iRound;
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        float fAbs = (1.0f - Math.abs((f4 * 2.0f) - 1.0f)) * f3;
        float f5 = f4 - (0.5f * fAbs);
        float fAbs2 = (1.0f - Math.abs(((f2 / 60.0f) % 2.0f) - 1.0f)) * fAbs;
        switch (((int) f2) / 60) {
            case 0:
                iA = android.renderscript.a.a(fAbs, f5, 255.0f);
                iA2 = android.renderscript.a.a(fAbs2, f5, 255.0f);
                iRound = Math.round(f5 * 255.0f);
                break;
            case 1:
                iA = android.renderscript.a.a(fAbs2, f5, 255.0f);
                iA2 = android.renderscript.a.a(fAbs, f5, 255.0f);
                iRound = Math.round(f5 * 255.0f);
                break;
            case 2:
                iA = Math.round(f5 * 255.0f);
                iA2 = android.renderscript.a.a(fAbs, f5, 255.0f);
                iRound = android.renderscript.a.a(fAbs2, f5, 255.0f);
                break;
            case 3:
                iA = Math.round(f5 * 255.0f);
                iA2 = android.renderscript.a.a(fAbs2, f5, 255.0f);
                iRound = android.renderscript.a.a(fAbs, f5, 255.0f);
                break;
            case 4:
                iA = android.renderscript.a.a(fAbs2, f5, 255.0f);
                iA2 = Math.round(f5 * 255.0f);
                iRound = android.renderscript.a.a(fAbs, f5, 255.0f);
                break;
            case 5:
            case 6:
                iA = android.renderscript.a.a(fAbs, f5, 255.0f);
                iA2 = Math.round(f5 * 255.0f);
                iRound = android.renderscript.a.a(fAbs2, f5, 255.0f);
                break;
            default:
                iRound = 0;
                iA = 0;
                iA2 = 0;
                break;
        }
        return Color.rgb(constrain(iA, 0, 255), constrain(iA2, 0, 255), constrain(iRound, 0, 255));
    }

    public static int LABToColor(double d2, double d3, double d4) {
        double[] tempDouble3Array = getTempDouble3Array();
        LABToXYZ(d2, d3, d4, tempDouble3Array);
        return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static void LABToXYZ(double d2, double d3, double d4, double[] dArr) {
        double d5 = (d2 + 16.0d) / 116.0d;
        double d6 = (d3 / 500.0d) + d5;
        double d7 = d5 - (d4 / 200.0d);
        double dPow = Math.pow(d6, 3.0d);
        if (dPow <= XYZ_EPSILON) {
            dPow = ((d6 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        double dPow2 = d2 > 7.9996247999999985d ? Math.pow(d5, 3.0d) : d2 / XYZ_KAPPA;
        double dPow3 = Math.pow(d7, 3.0d);
        if (dPow3 <= XYZ_EPSILON) {
            dPow3 = ((d7 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        dArr[0] = dPow * XYZ_WHITE_REFERENCE_X;
        dArr[1] = dPow2 * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = dPow3 * XYZ_WHITE_REFERENCE_Z;
    }

    public static void RGBToHSL(int i2, int i3, int i4, float[] fArr) {
        float f2;
        float fAbs;
        float f3 = i2 / 255.0f;
        float f4 = i3 / 255.0f;
        float f5 = i4 / 255.0f;
        float fMax = Math.max(f3, Math.max(f4, f5));
        float fMin = Math.min(f3, Math.min(f4, f5));
        float f6 = fMax - fMin;
        float f7 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f2 = 0.0f;
            fAbs = 0.0f;
        } else {
            if (fMax == f3) {
                f2 = ((f4 - f5) / f6) % 6.0f;
            } else {
                f2 = fMax == f4 ? ((f5 - f3) / f6) + 2.0f : 4.0f + ((f3 - f4) / f6);
            }
            fAbs = f6 / (1.0f - Math.abs((2.0f * f7) - 1.0f));
        }
        float f8 = (f2 * 60.0f) % 360.0f;
        if (f8 < 0.0f) {
            f8 += 360.0f;
        }
        fArr[0] = constrain(f8, 0.0f, 360.0f);
        fArr[1] = constrain(fAbs, 0.0f, 1.0f);
        fArr[2] = constrain(f7, 0.0f, 1.0f);
    }

    public static void RGBToLAB(int i2, int i3, int i4, double[] dArr) {
        RGBToXYZ(i2, i3, i4, dArr);
        XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
    }

    public static void RGBToXYZ(int i2, int i3, int i4, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d2 = ((double) i2) / 255.0d;
        double dPow = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = ((double) i3) / 255.0d;
        double dPow2 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        double d4 = ((double) i4) / 255.0d;
        double dPow3 = d4 < 0.04045d ? d4 / 12.92d : Math.pow((d4 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * XYZ_WHITE_REFERENCE_Y;
        dArr[1] = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * XYZ_WHITE_REFERENCE_Y;
    }

    public static int XYZToColor(double d2, double d3, double d4) {
        double d5 = (((-0.4986d) * d4) + (((-1.5372d) * d3) + (3.2406d * d2))) / XYZ_WHITE_REFERENCE_Y;
        double d6 = ((0.0415d * d4) + ((1.8758d * d3) + ((-0.9689d) * d2))) / XYZ_WHITE_REFERENCE_Y;
        double d7 = ((1.057d * d4) + (((-0.204d) * d3) + (0.0557d * d2))) / XYZ_WHITE_REFERENCE_Y;
        return Color.rgb(constrain((int) Math.round((d5 > 0.0031308d ? (Math.pow(d5, 0.4166666666666667d) * 1.055d) - 0.055d : d5 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d6 > 0.0031308d ? (Math.pow(d6, 0.4166666666666667d) * 1.055d) - 0.055d : d6 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d7 > 0.0031308d ? (Math.pow(d7, 0.4166666666666667d) * 1.055d) - 0.055d : d7 * 12.92d) * 255.0d), 0, 255));
    }

    public static void XYZToLAB(double d2, double d3, double d4, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outLab must have a length of 3.");
        }
        double dPivotXyzComponent = pivotXyzComponent(d2 / XYZ_WHITE_REFERENCE_X);
        double dPivotXyzComponent2 = pivotXyzComponent(d3 / XYZ_WHITE_REFERENCE_Y);
        double dPivotXyzComponent3 = pivotXyzComponent(d4 / XYZ_WHITE_REFERENCE_Z);
        dArr[0] = Math.max(0.0d, (116.0d * dPivotXyzComponent2) - 16.0d);
        dArr[1] = (dPivotXyzComponent - dPivotXyzComponent2) * 500.0d;
        dArr[2] = (dPivotXyzComponent2 - dPivotXyzComponent3) * 200.0d;
    }

    private static int binaryAlphaSearch(int i2, int i3, float f2, ContrastCalculator contrastCalculator) {
        int i4 = 255;
        int i5 = 0;
        for (int i6 = 0; i6 <= 10 && i4 - i5 > 1; i6++) {
            int i7 = (i5 + i4) / 2;
            if (contrastCalculator.calculateContrast(i2, i3, i7) < f2) {
                i5 = i7;
            } else {
                i4 = i7;
            }
        }
        return i4;
    }

    public static int blendARGB(int i2, int i3, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb((int) ((Color.alpha(i3) * f2) + (Color.alpha(i2) * f3)), (int) ((Color.red(i3) * f2) + (Color.red(i2) * f3)), (int) ((Color.green(i3) * f2) + (Color.green(i2) * f3)), (int) ((Color.blue(i3) * f2) + (Color.blue(i2) * f3)));
    }

    public static void blendHSL(float[] fArr, float[] fArr2, float f2, float[] fArr3) {
        if (fArr3.length != 3) {
            throw new IllegalArgumentException("result must have a length of 3.");
        }
        float f3 = 1.0f - f2;
        fArr3[0] = circularInterpolate(fArr[0], fArr2[0], f2);
        fArr3[1] = (fArr2[1] * f2) + (fArr[1] * f3);
        fArr3[2] = (fArr2[2] * f2) + (fArr[2] * f3);
    }

    public static void blendLAB(double[] dArr, double[] dArr2, double d2, double[] dArr3) {
        if (dArr3.length != 3) {
            throw new IllegalArgumentException("outResult must have a length of 3.");
        }
        double d3 = 1.0d - d2;
        dArr3[0] = (dArr2[0] * d2) + (dArr[0] * d3);
        dArr3[1] = (dArr2[1] * d2) + (dArr[1] * d3);
        dArr3[2] = (dArr2[2] * d2) + (dArr[2] * d3);
    }

    public static double calculateContrast(int i2, int i3) {
        if (Color.alpha(i3) != 255) {
            throw new IllegalArgumentException(m.d(i3, new StringBuilder("background can not be translucent: #")));
        }
        if (Color.alpha(i2) < 255) {
            i2 = compositeColors(i2, i3);
        }
        double dCalculateLuminance = calculateLuminance(i2) + 0.05d;
        double dCalculateLuminance2 = calculateLuminance(i3) + 0.05d;
        return Math.max(dCalculateLuminance, dCalculateLuminance2) / Math.min(dCalculateLuminance, dCalculateLuminance2);
    }

    public static double calculateLuminance(int i2) {
        double[] tempDouble3Array = getTempDouble3Array();
        colorToXYZ(i2, tempDouble3Array);
        return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
    }

    public static int calculateMinimumAlpha(int i2, int i3, float f2) {
        if (Color.alpha(i3) != 255) {
            throw new IllegalArgumentException(m.d(i3, new StringBuilder("background can not be translucent: #")));
        }
        ContrastCalculator contrastCalculator = new ContrastCalculator() { // from class: com.android.internal.graphics.b
            @Override // com.android.internal.graphics.ColorUtils.ContrastCalculator
            public final double calculateContrast(int i4, int i5, int i6) {
                return ColorUtils.lambda$calculateMinimumAlpha$1(i4, i5, i6);
            }
        };
        if (lambda$calculateMinimumAlpha$1(i2, i3, 255) < f2) {
            return -1;
        }
        return binaryAlphaSearch(setAlphaComponent(i2, 255), i3, f2, contrastCalculator);
    }

    public static int calculateMinimumBackgroundAlpha(int i2, int i3, float f2) {
        int alphaComponent = setAlphaComponent(i3, 255);
        final int alphaComponent2 = setAlphaComponent(i2, 255);
        return binaryAlphaSearch(i2, alphaComponent, f2, new ContrastCalculator() { // from class: com.android.internal.graphics.a
            @Override // com.android.internal.graphics.ColorUtils.ContrastCalculator
            public final double calculateContrast(int i4, int i5, int i6) {
                return ColorUtils.lambda$calculateMinimumBackgroundAlpha$0(alphaComponent2, i4, i5, i6);
            }
        });
    }

    public static float circularInterpolate(float f2, float f3, float f4) {
        if (Math.abs(f3 - f2) > 180.0f) {
            if (f3 > f2) {
                f2 += 360.0f;
            } else {
                f3 += 360.0f;
            }
        }
        return (((f3 - f2) * f4) + f2) % 360.0f;
    }

    public static void colorToHSL(int i2, float[] fArr) {
        RGBToHSL(Color.red(i2), Color.green(i2), Color.blue(i2), fArr);
    }

    public static void colorToLAB(int i2, double[] dArr) {
        RGBToLAB(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
    }

    public static void colorToXYZ(int i2, double[] dArr) {
        RGBToXYZ(Color.red(i2), Color.green(i2), Color.blue(i2), dArr);
    }

    private static int compositeAlpha(int i2, int i3) {
        return 255 - (((255 - i2) * (255 - i3)) / 255);
    }

    public static int compositeColors(int i2, int i3) {
        int iAlpha = Color.alpha(i3);
        int iAlpha2 = Color.alpha(i2);
        int iCompositeAlpha = compositeAlpha(iAlpha2, iAlpha);
        return Color.argb(iCompositeAlpha, compositeComponent(Color.red(i2), iAlpha2, Color.red(i3), iAlpha, iCompositeAlpha), compositeComponent(Color.green(i2), iAlpha2, Color.green(i3), iAlpha, iCompositeAlpha), compositeComponent(Color.blue(i2), iAlpha2, Color.blue(i3), iAlpha, iCompositeAlpha));
    }

    private static int compositeComponent(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            return 0;
        }
        return (((255 - i3) * (i4 * i5)) + ((i2 * 255) * i3)) / (i6 * 255);
    }

    private static float constrain(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 > f4 ? f4 : f2;
    }

    public static double distanceEuclidean(double[] dArr, double[] dArr2) {
        return Math.sqrt(Math.pow(dArr[2] - dArr2[2], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d) + Math.pow(dArr[0] - dArr2[0], 2.0d));
    }

    private static double[] getTempDouble3Array() {
        ThreadLocal<double[]> threadLocal = TEMP_ARRAY;
        double[] dArr = threadLocal.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        threadLocal.set(dArr2);
        return dArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$calculateMinimumAlpha$1(int i2, int i3, int i4) {
        return calculateContrast(setAlphaComponent(i2, i4), i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$calculateMinimumBackgroundAlpha$0(int i2, int i3, int i4, int i5) {
        return calculateContrast(i3, setAlphaComponent(blendARGB(i2, i4, i5 / 255.0f), 255));
    }

    private static double pivotXyzComponent(double d2) {
        return d2 > XYZ_EPSILON ? Math.pow(d2, 0.3333333333333333d) : ((d2 * XYZ_KAPPA) + 16.0d) / 116.0d;
    }

    public static int setAlphaComponent(int i2, int i3) {
        if (i3 < 0 || i3 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i2 & 16777215) | (i3 << 24);
    }

    private static int constrain(int i2, int i3, int i4) {
        if (i2 < i3) {
            return i3;
        }
        return i2 > i4 ? i4 : i2;
    }
}
