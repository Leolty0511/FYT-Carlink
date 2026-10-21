package android.gesture;

import android.graphics.RectF;
import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class GestureUtils {
    private static final float NONUNIFORM_SCALE = (float) Math.sqrt(2.0d);
    private static final float SCALING_THRESHOLD = 0.26f;

    private GestureUtils() {
    }

    public static void closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                Log.e(GestureConstants.LOG_TAG, "Could not close stream", e2);
            }
        }
    }

    public static float[] computeCentroid(float[] fArr) {
        int length = fArr.length;
        float f2 = 0.0f;
        int i2 = 0;
        float f3 = 0.0f;
        while (i2 < length) {
            f2 += fArr[i2];
            int i3 = i2 + 1;
            f3 += fArr[i3];
            i2 = i3 + 1;
        }
        float f4 = length;
        return new float[]{(f2 * 2.0f) / f4, (f3 * 2.0f) / f4};
    }

    private static float[][] computeCoVariance(float[] fArr) {
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) float.class, 2, 2);
        fArr2[0][0] = 0.0f;
        fArr2[0][1] = 0.0f;
        fArr2[1][0] = 0.0f;
        fArr2[1][1] = 0.0f;
        int length = fArr.length;
        int i2 = 0;
        while (i2 < length) {
            float f2 = fArr[i2];
            int i3 = i2 + 1;
            float f3 = fArr[i3];
            float[] fArr3 = fArr2[0];
            fArr3[0] = fArr3[0] + (f2 * f2);
            float[] fArr4 = fArr2[0];
            fArr4[1] = fArr4[1] + (f2 * f3);
            fArr2[1][0] = fArr2[0][1];
            float[] fArr5 = fArr2[1];
            fArr5[1] = fArr5[1] + (f3 * f3);
            i2 = i3 + 1;
        }
        float[] fArr6 = fArr2[0];
        float f4 = length / 2;
        fArr6[0] = fArr6[0] / f4;
        float[] fArr7 = fArr2[0];
        fArr7[1] = fArr7[1] / f4;
        float[] fArr8 = fArr2[1];
        fArr8[0] = fArr8[0] / f4;
        float[] fArr9 = fArr2[1];
        fArr9[1] = fArr9[1] / f4;
        return fArr2;
    }

    private static float[] computeOrientation(float[][] fArr) {
        float[] fArr2 = new float[2];
        if (fArr[0][1] == 0.0f || fArr[1][0] == 0.0f) {
            fArr2[0] = 1.0f;
            fArr2[1] = 0.0f;
        }
        float f2 = ((-fArr[0][0]) - fArr[1][1]) / 2.0f;
        float fSqrt = (float) Math.sqrt(Math.pow(f2, 2.0d) - ((double) ((fArr[0][0] * fArr[1][1]) - (fArr[0][1] * fArr[1][0]))));
        float f3 = -f2;
        float f4 = f3 + fSqrt;
        float f5 = f3 - fSqrt;
        if (f4 == f5) {
            fArr2[0] = 0.0f;
            fArr2[1] = 0.0f;
        } else {
            if (f4 <= f5) {
                f4 = f5;
            }
            fArr2[0] = 1.0f;
            fArr2[1] = (f4 - fArr[0][0]) / fArr[0][1];
        }
        return fArr2;
    }

    public static OrientedBoundingBox computeOrientedBoundingBox(ArrayList<GesturePoint> arrayList) {
        int size = arrayList.size();
        float[] fArr = new float[size * 2];
        for (int i2 = 0; i2 < size; i2++) {
            GesturePoint gesturePoint = arrayList.get(i2);
            int i3 = i2 * 2;
            fArr[i3] = gesturePoint.f131x;
            fArr[i3 + 1] = gesturePoint.f132y;
        }
        return computeOrientedBoundingBox(fArr, computeCentroid(fArr));
    }

    public static float computeStraightness(float[] fArr) {
        float fComputeTotalLength = computeTotalLength(fArr);
        float f2 = fArr[2] - fArr[0];
        float f3 = fArr[3] - fArr[1];
        return ((float) Math.sqrt((f2 * f2) + (f3 * f3))) / fComputeTotalLength;
    }

    public static float computeTotalLength(float[] fArr) {
        int length = fArr.length - 4;
        float fSqrt = 0.0f;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 2;
            float f2 = fArr[i3] - fArr[i2];
            float f3 = fArr[i2 + 3] - fArr[i2 + 1];
            fSqrt = (float) (((double) fSqrt) + Math.sqrt((f2 * f2) + (f3 * f3)));
            i2 = i3;
        }
        return fSqrt;
    }

    public static float cosineDistance(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f2 = 0.0f;
        for (int i2 = 0; i2 < length; i2++) {
            f2 += fArr[i2] * fArr2[i2];
        }
        return (float) Math.acos(f2);
    }

    public static float minimumCosineDistance(float[] fArr, float[] fArr2, int i2) {
        double dAcos;
        int length = fArr.length;
        float f2 = 0.0f;
        float f3 = 0.0f;
        for (int i3 = 0; i3 < length; i3 += 2) {
            int i4 = i3 + 1;
            f2 += (fArr[i3] * fArr2[i3]) + (fArr[i4] * fArr2[i4]);
            f3 += (fArr[i3] * fArr2[i4]) - (fArr[i4] * fArr2[i3]);
        }
        if (f2 == 0.0f) {
            return 1.5707964f;
        }
        double d2 = f3 / f2;
        double dAtan = Math.atan(d2);
        if (i2 <= 2 || Math.abs(dAtan) < 3.141592653589793d / ((double) i2)) {
            double dCos = Math.cos(dAtan);
            dAcos = Math.acos((((double) f2) * dCos) + (((double) f3) * d2 * dCos));
        } else {
            dAcos = Math.acos(f2);
        }
        return (float) dAcos;
    }

    private static void plot(float f2, float f3, float[] fArr, int i2) {
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f3 < 0.0f) {
            f3 = 0.0f;
        }
        double d2 = f2;
        int iFloor = (int) Math.floor(d2);
        int iCeil = (int) Math.ceil(d2);
        double d3 = f3;
        int iFloor2 = (int) Math.floor(d3);
        int iCeil2 = (int) Math.ceil(d3);
        float f4 = iFloor;
        if (f2 == f4 && f3 == iFloor2) {
            int i3 = (iCeil2 * i2) + iCeil;
            if (fArr[i3] < 1.0f) {
                fArr[i3] = 1.0f;
                return;
            }
            return;
        }
        double dPow = Math.pow(f4 - f2, 2.0d);
        double dPow2 = Math.pow(iFloor2 - f3, 2.0d);
        double dPow3 = Math.pow(iCeil - f2, 2.0d);
        double dPow4 = Math.pow(iCeil2 - f3, 2.0d);
        float fSqrt = (float) Math.sqrt(dPow + dPow2);
        float fSqrt2 = (float) Math.sqrt(dPow2 + dPow3);
        float fSqrt3 = (float) Math.sqrt(dPow + dPow4);
        float fSqrt4 = (float) Math.sqrt(dPow3 + dPow4);
        float f5 = fSqrt + fSqrt2 + fSqrt3 + fSqrt4;
        float f6 = fSqrt / f5;
        int i4 = iFloor2 * i2;
        int i5 = i4 + iFloor;
        if (f6 > fArr[i5]) {
            fArr[i5] = f6;
        }
        float f7 = fSqrt2 / f5;
        int i6 = i4 + iCeil;
        if (f7 > fArr[i6]) {
            fArr[i6] = f7;
        }
        float f8 = fSqrt3 / f5;
        int i7 = iCeil2 * i2;
        int i8 = iFloor + i7;
        if (f8 > fArr[i8]) {
            fArr[i8] = f8;
        }
        float f9 = fSqrt4 / f5;
        int i9 = i7 + iCeil;
        if (f9 > fArr[i9]) {
            fArr[i9] = f9;
        }
    }

    public static float[] rotate(float[] fArr, float f2) {
        double d2 = f2;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        int length = fArr.length;
        for (int i2 = 0; i2 < length; i2 += 2) {
            int i3 = i2 + 1;
            float f3 = (fArr[i2] * fCos) - (fArr[i3] * fSin);
            float f4 = (fArr[i2] * fSin) + (fArr[i3] * fCos);
            fArr[i2] = f3;
            fArr[i3] = f4;
        }
        return fArr;
    }

    public static float[] scale(float[] fArr, float f2, float f3) {
        int length = fArr.length;
        for (int i2 = 0; i2 < length; i2 += 2) {
            fArr[i2] = fArr[i2] * f2;
            int i3 = i2 + 1;
            fArr[i3] = fArr[i3] * f3;
        }
        return fArr;
    }

    public static float[] spatialSampling(Gesture gesture, int i2) {
        return spatialSampling(gesture, i2, false);
    }

    public static float squaredEuclideanDistance(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f2 = 0.0f;
        for (int i2 = 0; i2 < length; i2++) {
            float f3 = fArr[i2] - fArr2[i2];
            f2 += f3 * f3;
        }
        return f2 / length;
    }

    public static float[] temporalSampling(GestureStroke gestureStroke, int i2) {
        float f2 = gestureStroke.length / (i2 - 1);
        int i3 = 2;
        int i4 = i2 * 2;
        float[] fArr = new float[i4];
        float[] fArr2 = gestureStroke.points;
        int i5 = 0;
        float f3 = fArr2[0];
        float f4 = fArr2[1];
        fArr[0] = f3;
        fArr[1] = f4;
        int length = fArr2.length / 2;
        float f5 = Float.MIN_VALUE;
        float f6 = Float.MIN_VALUE;
        float f7 = Float.MIN_VALUE;
        float f8 = 0.0f;
        while (i5 < length) {
            if (f6 == f5) {
                i5++;
                if (i5 >= length) {
                    break;
                }
                int i6 = i5 * 2;
                float f9 = fArr2[i6];
                f7 = fArr2[i6 + 1];
                f6 = f9;
            }
            float f10 = f6 - f3;
            float f11 = f7 - f4;
            float f12 = f6;
            float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            float f13 = f8 + fSqrt;
            if (f13 >= f2) {
                float f14 = (f2 - f8) / fSqrt;
                f3 += f10 * f14;
                f4 += f14 * f11;
                fArr[i3] = f3;
                int i7 = i3 + 1;
                fArr[i7] = f4;
                i3 = i7 + 1;
                f6 = f12;
                f8 = 0.0f;
            } else {
                f8 = f13;
                f4 = f7;
                f3 = f12;
                f6 = Float.MIN_VALUE;
                f7 = Float.MIN_VALUE;
            }
            f5 = Float.MIN_VALUE;
        }
        while (i3 < i4) {
            fArr[i3] = f3;
            fArr[i3 + 1] = f4;
            i3 += 2;
        }
        return fArr;
    }

    public static float[] translate(float[] fArr, float f2, float f3) {
        int length = fArr.length;
        for (int i2 = 0; i2 < length; i2 += 2) {
            fArr[i2] = fArr[i2] + f2;
            int i3 = i2 + 1;
            fArr[i3] = fArr[i3] + f3;
        }
        return fArr;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0128  */
    /* JADX WARN: Code duplicated, block: B:69:0x0137 A[LOOP:4: B:67:0x0133->B:69:0x0137, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:70:0x0142  */
    /* JADX WARN: Code duplicated, block: B:72:0x0146  */
    /* JADX WARN: Code duplicated, block: B:75:0x0155 A[LOOP:5: B:73:0x0151->B:75:0x0155, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0026  */
    /* JADX WARN: Code duplicated, block: B:85:0x0167 A[SYNTHETIC] */
    public static float[] spatialSampling(Gesture gesture, int i2, boolean z2) {
        float f2;
        float f3;
        float f4;
        float f5;
        float fCeil;
        float f6;
        float fCeil2;
        float f7;
        float f8 = i2 - 1;
        float[] fArr = new float[i2 * i2];
        float f9 = 0.0f;
        Arrays.fill(fArr, 0.0f);
        RectF boundingBox = gesture.getBoundingBox();
        float fWidth = boundingBox.width();
        float fHeight = boundingBox.height();
        float f10 = f8 / fWidth;
        float f11 = f8 / fHeight;
        if (z2) {
            if (f10 >= f11) {
                f10 = f11;
            }
            f11 = f10;
        } else {
            float f12 = fWidth / fHeight;
            if (f12 > 1.0f) {
                f12 = 1.0f / f12;
            }
            if (f12 < SCALING_THRESHOLD) {
                if (f10 >= f11) {
                    f10 = f11;
                }
                f11 = f10;
            } else if (f10 > f11) {
                float f13 = NONUNIFORM_SCALE * f11;
                if (f13 < f10) {
                    f10 = f13;
                }
            } else {
                float f14 = NONUNIFORM_SCALE * f10;
                if (f14 < f11) {
                    f11 = f14;
                }
            }
        }
        float f15 = -boundingBox.centerX();
        float f16 = -boundingBox.centerY();
        float f17 = f8 / 2.0f;
        ArrayList<GestureStroke> strokes = gesture.getStrokes();
        int size = strokes.size();
        int i3 = 0;
        while (i3 < size) {
            float[] fArr2 = strokes.get(i3).points;
            int length = fArr2.length;
            float[] fArr3 = new float[length];
            for (int i4 = 0; i4 < length; i4 += 2) {
                fArr3[i4] = ((fArr2[i4] + f15) * f10) + f17;
                int i5 = i4 + 1;
                fArr3[i5] = ((fArr2[i5] + f16) * f11) + f17;
            }
            float f18 = -1.0f;
            int i6 = 0;
            float f19 = -1.0f;
            while (i6 < length) {
                float f20 = fArr3[i6] < f9 ? f9 : fArr3[i6];
                int i7 = i6 + 1;
                float f21 = fArr3[i7] < f9 ? f9 : fArr3[i7];
                float f22 = f20 > f8 ? f8 : f20;
                if (f21 <= f8) {
                    f8 = f21;
                }
                plot(f22, f8, fArr, i2);
                if (f18 != -1.0f) {
                    if (f18 > f22) {
                        f2 = f16;
                        f3 = f15;
                        float fCeil3 = (float) Math.ceil(f22);
                        f5 = f19;
                        float f23 = (f5 - f8) / (f18 - f22);
                        while (fCeil3 < f18) {
                            plot(fCeil3, ((fCeil3 - f22) * f23) + f8, fArr, i2);
                            fCeil3 += 1.0f;
                            f17 = f17;
                        }
                        f4 = f17;
                    } else {
                        f2 = f16;
                        f3 = f15;
                        f4 = f17;
                        f5 = f19;
                        if (f18 < f22) {
                            float f24 = (f5 - f8) / (f18 - f22);
                            for (float fCeil4 = (float) Math.ceil(f18); fCeil4 < f22; fCeil4 += 1.0f) {
                                plot(fCeil4, ((fCeil4 - f22) * f24) + f8, fArr, i2);
                            }
                        }
                        if (f5 > f8) {
                            f7 = (f18 - f22) / (f5 - f8);
                            for (fCeil2 = (float) Math.ceil(f8); fCeil2 < f5; fCeil2 += 1.0f) {
                                plot(((fCeil2 - f8) * f7) + f22, fCeil2, fArr, i2);
                            }
                        } else if (f5 < f8) {
                            f6 = (f18 - f22) / (f5 - f8);
                            for (fCeil = (float) Math.ceil(f5); fCeil < f8; fCeil += 1.0f) {
                                plot(((fCeil - f8) * f6) + f22, fCeil, fArr, i2);
                            }
                        }
                    }
                    if (f5 > f8) {
                        f7 = (f18 - f22) / (f5 - f8);
                        while (fCeil2 < f5) {
                            plot(((fCeil2 - f8) * f7) + f22, fCeil2, fArr, i2);
                        }
                    } else if (f5 < f8) {
                        f6 = (f18 - f22) / (f5 - f8);
                        while (fCeil < f8) {
                            plot(((fCeil - f8) * f6) + f22, fCeil, fArr, i2);
                        }
                    }
                } else {
                    f2 = f16;
                    f3 = f15;
                    f4 = f17;
                    f10 = f10;
                }
                i6 += 2;
                f19 = f8;
                f18 = f22;
                f10 = f10;
                f8 = f8;
                f15 = f3;
                f17 = f4;
                f9 = 0.0f;
                f16 = f2;
            }
            i3++;
            f15 = f15;
            f9 = 0.0f;
            f16 = f16;
        }
        return fArr;
    }

    public static float computeStraightness(float[] fArr, float f2) {
        float f3 = fArr[2] - fArr[0];
        float f4 = fArr[3] - fArr[1];
        return ((float) Math.sqrt((f3 * f3) + (f4 * f4))) / f2;
    }

    public static OrientedBoundingBox computeOrientedBoundingBox(float[] fArr) {
        int length = fArr.length;
        float[] fArr2 = new float[length];
        for (int i2 = 0; i2 < length; i2++) {
            fArr2[i2] = fArr[i2];
        }
        return computeOrientedBoundingBox(fArr2, computeCentroid(fArr2));
    }

    private static OrientedBoundingBox computeOrientedBoundingBox(float[] fArr, float[] fArr2) {
        float fAtan2;
        translate(fArr, -fArr2[0], -fArr2[1]);
        float[] fArrComputeOrientation = computeOrientation(computeCoVariance(fArr));
        if (fArrComputeOrientation[0] == 0.0f && fArrComputeOrientation[1] == 0.0f) {
            fAtan2 = -1.5707964f;
        } else {
            fAtan2 = (float) Math.atan2(fArrComputeOrientation[1], fArrComputeOrientation[0]);
            rotate(fArr, -fAtan2);
        }
        int length = fArr.length;
        float f2 = Float.MIN_VALUE;
        int i2 = 0;
        float f3 = Float.MAX_VALUE;
        float f4 = Float.MAX_VALUE;
        float f5 = Float.MIN_VALUE;
        while (i2 < length) {
            if (fArr[i2] < f3) {
                f3 = fArr[i2];
            }
            if (fArr[i2] > f2) {
                f2 = fArr[i2];
            }
            int i3 = i2 + 1;
            if (fArr[i3] < f4) {
                f4 = fArr[i3];
            }
            if (fArr[i3] > f5) {
                f5 = fArr[i3];
            }
            i2 = i3 + 1;
        }
        return new OrientedBoundingBox((float) (((double) (fAtan2 * 180.0f)) / 3.141592653589793d), fArr2[0], fArr2[1], f2 - f3, f5 - f4);
    }
}
