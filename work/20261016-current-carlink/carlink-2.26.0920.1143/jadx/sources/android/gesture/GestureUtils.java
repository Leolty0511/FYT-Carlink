package android.gesture;

import android.accessibilityservice.c;
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
        float f3 = 0.0f;
        int i2 = 0;
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
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 2, 2);
        float[] fArr3 = fArr2[0];
        fArr3[0] = 0.0f;
        fArr3[1] = 0.0f;
        float[] fArr4 = fArr2[1];
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        int length = fArr.length;
        int i2 = 0;
        while (i2 < length) {
            float f2 = fArr[i2];
            int i3 = i2 + 1;
            float f3 = fArr[i3];
            float[] fArr5 = fArr2[0];
            fArr5[0] = (f2 * f2) + fArr5[0];
            float f4 = (f2 * f3) + fArr5[1];
            fArr5[1] = f4;
            float[] fArr6 = fArr2[1];
            fArr6[0] = f4;
            fArr6[1] = (f3 * f3) + fArr6[1];
            i2 = i3 + 1;
        }
        float[] fArr7 = fArr2[0];
        float f5 = length / 2;
        fArr7[0] = fArr7[0] / f5;
        fArr7[1] = fArr7[1] / f5;
        float[] fArr8 = fArr2[1];
        fArr8[0] = fArr8[0] / f5;
        fArr8[1] = fArr8[1] / f5;
        return fArr2;
    }

    private static float[] computeOrientation(float[][] fArr) {
        float[] fArr2 = new float[2];
        float[] fArr3 = fArr[0];
        if (fArr3[1] == 0.0f || fArr[1][0] == 0.0f) {
            fArr2[0] = 1.0f;
            fArr2[1] = 0.0f;
        }
        float f2 = fArr3[0];
        float[] fArr4 = fArr[1];
        float f3 = fArr4[1];
        float f4 = ((-f2) - f3) / 2.0f;
        float fSqrt = (float) Math.sqrt(Math.pow(f4, 2.0d) - ((double) ((f2 * f3) - (fArr3[1] * fArr4[0]))));
        float f5 = -f4;
        float f6 = f5 + fSqrt;
        float f7 = f5 - fSqrt;
        if (f6 == f7) {
            fArr2[0] = 0.0f;
            fArr2[1] = 0.0f;
        } else {
            if (f6 <= f7) {
                f6 = f7;
            }
            fArr2[0] = 1.0f;
            float[] fArr5 = fArr[0];
            fArr2[1] = (f6 - fArr5[0]) / fArr5[1];
        }
        return fArr2;
    }

    public static OrientedBoundingBox computeOrientedBoundingBox(ArrayList<GesturePoint> arrayList) {
        int size = arrayList.size();
        float[] fArr = new float[size * 2];
        for (int i2 = 0; i2 < size; i2++) {
            GesturePoint gesturePoint = arrayList.get(i2);
            int i3 = i2 * 2;
            fArr[i3] = gesturePoint.f62x;
            fArr[i3 + 1] = gesturePoint.f63y;
        }
        return computeOrientedBoundingBox(fArr, computeCentroid(fArr));
    }

    public static float computeStraightness(float[] fArr) {
        return ((float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1])) / computeTotalLength(fArr);
    }

    public static float computeTotalLength(float[] fArr) {
        int length = fArr.length - 4;
        float fHypot = 0.0f;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 2;
            fHypot = (float) (Math.hypot(fArr[i3] - fArr[i2], fArr[i2 + 3] - fArr[i2 + 1]) + ((double) fHypot));
            i2 = i3;
        }
        return fHypot;
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
            float f4 = fArr[i3];
            float f5 = fArr2[i3];
            int i4 = i3 + 1;
            float f6 = fArr[i4];
            float f7 = fArr2[i4];
            f2 += (f6 * f7) + (f4 * f5);
            f3 += (f4 * f7) - (f6 * f5);
        }
        if (f2 == 0.0f) {
            return 1.5707964f;
        }
        double d2 = f3 / f2;
        double dAtan = Math.atan(d2);
        if (i2 <= 2 || Math.abs(dAtan) < 3.141592653589793d / ((double) i2)) {
            double dCos = Math.cos(dAtan);
            dAcos = Math.acos((((double) f3) * d2 * dCos) + (((double) f2) * dCos));
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
            float f3 = fArr[i2];
            int i3 = i2 + 1;
            float f4 = fArr[i3];
            fArr[i2] = (f3 * fCos) - (f4 * fSin);
            fArr[i3] = (f4 * fCos) + (f3 * fSin);
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
        int i6 = 1;
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
                int i7 = i5 * 2;
                float f9 = fArr2[i7];
                f7 = fArr2[i7 + i6];
                f6 = f9;
            }
            float f10 = f6 - f3;
            float f11 = f7 - f4;
            float f12 = f6;
            float f13 = f4;
            float fHypot = (float) Math.hypot(f10, f11);
            float f14 = f8 + fHypot;
            if (f14 >= f2) {
                float f15 = (f2 - f8) / fHypot;
                float f16 = (f10 * f15) + f3;
                f4 = (f15 * f11) + f13;
                fArr[i3] = f16;
                int i8 = i3 + 1;
                fArr[i8] = f4;
                i6 = 1;
                i3 = i8 + 1;
                f3 = f16;
                f6 = f12;
                f8 = 0.0f;
            } else {
                i6 = 1;
                f8 = f14;
                f4 = f7;
                f3 = f12;
                f6 = Float.MIN_VALUE;
                f7 = Float.MIN_VALUE;
            }
            f5 = Float.MIN_VALUE;
        }
        float f17 = f4;
        while (i3 < i4) {
            fArr[i3] = f3;
            fArr[i3 + 1] = f17;
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

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    public static float[] spatialSampling(Gesture gesture, int i2, boolean z2) {
        float f2;
        float f3;
        float f4;
        float f5 = i2 - 1;
        float[] fArr = new float[i2 * i2];
        float f6 = 0.0f;
        Arrays.fill(fArr, 0.0f);
        RectF boundingBox = gesture.getBoundingBox();
        float fWidth = boundingBox.width();
        float fHeight = boundingBox.height();
        float f7 = f5 / fWidth;
        float f8 = f5 / fHeight;
        if (z2) {
            if (f7 >= f8) {
                f7 = f8;
            }
            f8 = f7;
        } else {
            float f9 = fWidth / fHeight;
            if (f9 > 1.0f) {
                f9 = 1.0f / f9;
            }
            if (f9 < SCALING_THRESHOLD) {
                if (f7 >= f8) {
                    f7 = f8;
                }
                f8 = f7;
            } else if (f7 > f8) {
                float f10 = NONUNIFORM_SCALE * f8;
                if (f10 < f7) {
                    f7 = f10;
                }
            } else {
                float f11 = NONUNIFORM_SCALE * f7;
                if (f11 < f8) {
                    f8 = f11;
                }
            }
        }
        float f12 = -boundingBox.centerX();
        float f13 = -boundingBox.centerY();
        float f14 = f5 / 2.0f;
        ArrayList<GestureStroke> strokes = gesture.getStrokes();
        int size = strokes.size();
        int i3 = 0;
        while (i3 < size) {
            float[] fArr2 = strokes.get(i3).points;
            int length = fArr2.length;
            float[] fArr3 = new float[length];
            for (int i4 = 0; i4 < length; i4 += 2) {
                fArr3[i4] = ((fArr2[i4] + f12) * f7) + f14;
                int i5 = i4 + 1;
                fArr3[i5] = ((fArr2[i5] + f13) * f8) + f14;
            }
            float f15 = -1.0f;
            float f16 = f13;
            float f17 = f12;
            float f18 = -1.0f;
            int i6 = 0;
            float f19 = -1.0f;
            while (i6 < length) {
                float f20 = fArr3[i6];
                if (f20 < f6) {
                    f20 = f6;
                }
                float f21 = fArr3[i6 + 1];
                if (f21 >= f6) {
                    f6 = f21;
                }
                float f22 = f14;
                float f23 = f20 > f5 ? f5 : f20;
                if (f6 > f5) {
                    f6 = f5;
                }
                plot(f23, f6, fArr, i2);
                if (f15 != f19) {
                    if (f15 > f23) {
                        f3 = f7;
                        f4 = f8;
                        float fCeil = (float) Math.ceil(f23);
                        float f24 = (f18 - f6) / (f15 - f23);
                        while (fCeil < f15) {
                            plot(fCeil, c.a(fCeil, f23, f24, f6), fArr, i2);
                            fCeil += 1.0f;
                            f5 = f5;
                        }
                        f2 = f5;
                    } else {
                        f2 = f5;
                        f3 = f7;
                        f4 = f8;
                        if (f15 < f23) {
                            float f25 = (f18 - f6) / (f15 - f23);
                            for (float fCeil2 = (float) Math.ceil(f15); fCeil2 < f23; fCeil2 += 1.0f) {
                                plot(fCeil2, c.a(fCeil2, f23, f25, f6), fArr, i2);
                            }
                        }
                    }
                    if (f18 > f6) {
                        float f26 = (f15 - f23) / (f18 - f6);
                        for (float fCeil3 = (float) Math.ceil(f6); fCeil3 < f18; fCeil3 += 1.0f) {
                            plot(c.a(fCeil3, f6, f26, f23), fCeil3, fArr, i2);
                        }
                    } else if (f18 < f6) {
                        float f27 = (f15 - f23) / (f18 - f6);
                        for (float fCeil4 = (float) Math.ceil(f18); fCeil4 < f6; fCeil4 += 1.0f) {
                            plot(c.a(fCeil4, f6, f27, f23), fCeil4, fArr, i2);
                        }
                    }
                } else {
                    f2 = f5;
                    f3 = f7;
                    f4 = f8;
                }
                i6 += 2;
                f15 = f23;
                f7 = f3;
                f8 = f4;
                f14 = f22;
                f19 = -1.0f;
                f18 = f6;
                f6 = 0.0f;
                f5 = f2;
            }
            i3++;
            f6 = 0.0f;
            f13 = f16;
            f12 = f17;
        }
        return fArr;
    }

    public static float computeStraightness(float[] fArr, float f2) {
        return ((float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1])) / f2;
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
        float f2 = fArrComputeOrientation[0];
        if (f2 == 0.0f && fArrComputeOrientation[1] == 0.0f) {
            fAtan2 = -1.5707964f;
        } else {
            fAtan2 = (float) Math.atan2(fArrComputeOrientation[1], f2);
            rotate(fArr, -fAtan2);
        }
        int length = fArr.length;
        float f3 = Float.MIN_VALUE;
        int i2 = 0;
        float f4 = Float.MAX_VALUE;
        float f5 = Float.MAX_VALUE;
        float f6 = Float.MIN_VALUE;
        while (i2 < length) {
            float f7 = fArr[i2];
            if (f7 < f4) {
                f4 = f7;
            }
            if (f7 > f3) {
                f3 = f7;
            }
            int i3 = i2 + 1;
            float f8 = fArr[i3];
            if (f8 < f5) {
                f5 = f8;
            }
            if (f8 > f6) {
                f6 = f8;
            }
            i2 = i3 + 1;
        }
        return new OrientedBoundingBox((float) (((double) (fAtan2 * 180.0f)) / 3.141592653589793d), fArr2[0], fArr2[1], f3 - f4, f6 - f5);
    }
}
