package com.android.internal.util;

/* JADX INFO: loaded from: classes3.dex */
public final class GrowingArrayUtils {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private GrowingArrayUtils() {
    }

    public static <T> T[] append(T[] tArr, int i2, T t2) {
        if (i2 + 1 > tArr.length) {
            Object[] objArrNewUnpaddedArray = ArrayUtils.newUnpaddedArray(tArr.getClass().getComponentType(), growSize(i2));
            System.arraycopy(tArr, 0, objArrNewUnpaddedArray, 0, i2);
            tArr = (T[]) objArrNewUnpaddedArray;
        }
        tArr[i2] = t2;
        return tArr;
    }

    public static int growSize(int i2) {
        if (i2 <= 4) {
            return 8;
        }
        return i2 * 2;
    }

    public static <T> T[] insert(T[] tArr, int i2, int i3, T t2) {
        if (i2 + 1 <= tArr.length) {
            System.arraycopy(tArr, i3, tArr, i3 + 1, i2 - i3);
            tArr[i3] = t2;
            return tArr;
        }
        T[] tArr2 = (T[]) ArrayUtils.newUnpaddedArray(tArr.getClass().getComponentType(), growSize(i2));
        System.arraycopy(tArr, 0, tArr2, 0, i3);
        tArr2[i3] = t2;
        System.arraycopy(tArr, i3, tArr2, i3 + 1, tArr.length - i3);
        return tArr2;
    }

    public static int[] append(int[] iArr, int i2, int i3) {
        if (i2 + 1 > iArr.length) {
            int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(growSize(i2));
            System.arraycopy(iArr, 0, iArrNewUnpaddedIntArray, 0, i2);
            iArr = iArrNewUnpaddedIntArray;
        }
        iArr[i2] = i3;
        return iArr;
    }

    public static long[] append(long[] jArr, int i2, long j2) {
        if (i2 + 1 > jArr.length) {
            long[] jArrNewUnpaddedLongArray = ArrayUtils.newUnpaddedLongArray(growSize(i2));
            System.arraycopy(jArr, 0, jArrNewUnpaddedLongArray, 0, i2);
            jArr = jArrNewUnpaddedLongArray;
        }
        jArr[i2] = j2;
        return jArr;
    }

    public static int[] insert(int[] iArr, int i2, int i3, int i4) {
        if (i2 + 1 <= iArr.length) {
            System.arraycopy(iArr, i3, iArr, i3 + 1, i2 - i3);
            iArr[i3] = i4;
            return iArr;
        }
        int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(growSize(i2));
        System.arraycopy(iArr, 0, iArrNewUnpaddedIntArray, 0, i3);
        iArrNewUnpaddedIntArray[i3] = i4;
        System.arraycopy(iArr, i3, iArrNewUnpaddedIntArray, i3 + 1, iArr.length - i3);
        return iArrNewUnpaddedIntArray;
    }

    public static boolean[] append(boolean[] zArr, int i2, boolean z2) {
        if (i2 + 1 > zArr.length) {
            boolean[] zArrNewUnpaddedBooleanArray = ArrayUtils.newUnpaddedBooleanArray(growSize(i2));
            System.arraycopy(zArr, 0, zArrNewUnpaddedBooleanArray, 0, i2);
            zArr = zArrNewUnpaddedBooleanArray;
        }
        zArr[i2] = z2;
        return zArr;
    }

    public static long[] insert(long[] jArr, int i2, int i3, long j2) {
        if (i2 + 1 <= jArr.length) {
            System.arraycopy(jArr, i3, jArr, i3 + 1, i2 - i3);
            jArr[i3] = j2;
            return jArr;
        }
        long[] jArrNewUnpaddedLongArray = ArrayUtils.newUnpaddedLongArray(growSize(i2));
        System.arraycopy(jArr, 0, jArrNewUnpaddedLongArray, 0, i3);
        jArrNewUnpaddedLongArray[i3] = j2;
        System.arraycopy(jArr, i3, jArrNewUnpaddedLongArray, i3 + 1, jArr.length - i3);
        return jArrNewUnpaddedLongArray;
    }

    public static float[] append(float[] fArr, int i2, float f2) {
        if (i2 + 1 > fArr.length) {
            float[] fArrNewUnpaddedFloatArray = ArrayUtils.newUnpaddedFloatArray(growSize(i2));
            System.arraycopy(fArr, 0, fArrNewUnpaddedFloatArray, 0, i2);
            fArr = fArrNewUnpaddedFloatArray;
        }
        fArr[i2] = f2;
        return fArr;
    }

    public static boolean[] insert(boolean[] zArr, int i2, int i3, boolean z2) {
        if (i2 + 1 <= zArr.length) {
            System.arraycopy(zArr, i3, zArr, i3 + 1, i2 - i3);
            zArr[i3] = z2;
            return zArr;
        }
        boolean[] zArrNewUnpaddedBooleanArray = ArrayUtils.newUnpaddedBooleanArray(growSize(i2));
        System.arraycopy(zArr, 0, zArrNewUnpaddedBooleanArray, 0, i3);
        zArrNewUnpaddedBooleanArray[i3] = z2;
        System.arraycopy(zArr, i3, zArrNewUnpaddedBooleanArray, i3 + 1, zArr.length - i3);
        return zArrNewUnpaddedBooleanArray;
    }
}
