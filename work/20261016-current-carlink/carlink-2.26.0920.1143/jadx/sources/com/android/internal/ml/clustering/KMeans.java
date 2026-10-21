package com.android.internal.ml.clustering;

import android.accessibilityservice.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class KMeans {
    private static final boolean DEBUG = false;
    private static final String TAG = "KMeans";
    private final int mMaxIterations;
    private final Random mRandomState;
    private float mSqConvergenceEpsilon;

    public KMeans() {
        this(new Random());
    }

    public static Mean nearestMean(float[] fArr, List<Mean> list) {
        int size = list.size();
        Mean mean = null;
        float f2 = Float.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            Mean mean2 = list.get(i2);
            float fSqDistance = sqDistance(fArr, mean2.mCentroid);
            if (fSqDistance < f2) {
                mean = mean2;
                f2 = fSqDistance;
            }
        }
        return mean;
    }

    public static double score(List<Mean> list) {
        int size = list.size();
        double dSqrt = 0.0d;
        for (int i2 = 0; i2 < size; i2++) {
            Mean mean = list.get(i2);
            for (int i3 = 0; i3 < size; i3++) {
                Mean mean2 = list.get(i3);
                if (mean != mean2) {
                    dSqrt += Math.sqrt(sqDistance(mean.mCentroid, mean2.mCentroid));
                }
            }
        }
        return dSqrt;
    }

    public static float sqDistance(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float fA = 0.0f;
        for (int i2 = 0; i2 < length; i2++) {
            float f2 = fArr[i2];
            float f3 = fArr2[i2];
            fA = c.a(f2, f3, f2 - f3, fA);
        }
        return fA;
    }

    private boolean step(ArrayList<Mean> arrayList, float[][] fArr) {
        float[] fArr2;
        boolean z2 = true;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).mClosestItems.clear();
        }
        for (int length = fArr.length - 1; length >= 0; length--) {
            float[] fArr3 = fArr[length];
            nearestMean(fArr3, arrayList).mClosestItems.add(fArr3);
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            Mean mean = arrayList.get(size2);
            if (mean.mClosestItems.size() != 0) {
                float[] fArr4 = mean.mCentroid;
                mean.mCentroid = new float[fArr4.length];
                for (int i2 = 0; i2 < mean.mClosestItems.size(); i2++) {
                    int i3 = 0;
                    while (true) {
                        float[] fArr5 = mean.mCentroid;
                        if (i3 < fArr5.length) {
                            fArr5[i3] = fArr5[i3] + mean.mClosestItems.get(i2)[i3];
                            i3++;
                        }
                    }
                }
                int i4 = 0;
                while (true) {
                    fArr2 = mean.mCentroid;
                    if (i4 >= fArr2.length) {
                        break;
                    }
                    fArr2[i4] = fArr2[i4] / mean.mClosestItems.size();
                    i4++;
                }
                if (sqDistance(fArr4, fArr2) > this.mSqConvergenceEpsilon) {
                    z2 = false;
                }
            }
        }
        return z2;
    }

    public void checkDataSetSanity(float[][] fArr) {
        if (fArr == null) {
            throw new IllegalArgumentException("Data set is null.");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("Data set is empty.");
        }
        float[] fArr2 = fArr[0];
        if (fArr2 == null) {
            throw new IllegalArgumentException("Bad data set format.");
        }
        int length = fArr2.length;
        int length2 = fArr.length;
        for (int i2 = 1; i2 < length2; i2++) {
            float[] fArr3 = fArr[i2];
            if (fArr3 == null || fArr3.length != length) {
                throw new IllegalArgumentException("Bad data set format.");
            }
        }
    }

    public List<Mean> predict(int i2, float[][] fArr) {
        checkDataSetSanity(fArr);
        int length = fArr[0].length;
        ArrayList<Mean> arrayList = new ArrayList<>();
        for (int i3 = 0; i3 < i2; i3++) {
            Mean mean = new Mean(length);
            for (int i4 = 0; i4 < length; i4++) {
                mean.mCentroid[i4] = this.mRandomState.nextFloat();
            }
            arrayList.add(mean);
        }
        for (int i5 = 0; i5 < this.mMaxIterations && !step(arrayList, fArr); i5++) {
        }
        return arrayList;
    }

    public KMeans(Random random) {
        this(random, 30, 0.005f);
    }

    public static class Mean {
        float[] mCentroid;
        final ArrayList<float[]> mClosestItems = new ArrayList<>();

        public Mean(int i2) {
            this.mCentroid = new float[i2];
        }

        public float[] getCentroid() {
            return this.mCentroid;
        }

        public List<float[]> getItems() {
            return this.mClosestItems;
        }

        public String toString() {
            return "Mean(centroid: " + Arrays.toString(this.mCentroid) + ", size: " + this.mClosestItems.size() + ")";
        }

        public Mean(float... fArr) {
            this.mCentroid = fArr;
        }
    }

    public KMeans(Random random, int i2, float f2) {
        this.mRandomState = random;
        this.mMaxIterations = i2;
        this.mSqConvergenceEpsilon = f2 * f2;
    }
}
