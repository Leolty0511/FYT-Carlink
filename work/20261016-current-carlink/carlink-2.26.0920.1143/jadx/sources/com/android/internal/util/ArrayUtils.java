package com.android.internal.util;

import android.util.ArraySet;
import dalvik.system.VMRuntime;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes3.dex */
public class ArrayUtils {
    private static final int CACHE_SIZE = 73;
    private static Object[] sCache = new Object[73];

    private ArrayUtils() {
    }

    public static <T> ArraySet<T> add(ArraySet<T> arraySet, T t2) {
        if (arraySet == null) {
            arraySet = new ArraySet<>();
        }
        arraySet.add(t2);
        return arraySet;
    }

    public static <T> T[] appendElement(Class<T> cls, T[] tArr, T t2) {
        return (T[]) appendElement(cls, tArr, t2, false);
    }

    public static int[] appendInt(int[] iArr, int i2, boolean z2) {
        if (iArr == null) {
            return new int[]{i2};
        }
        int length = iArr.length;
        if (!z2) {
            for (int i3 : iArr) {
                if (i3 == i2) {
                    return iArr;
                }
            }
        }
        int[] iArr2 = new int[length + 1];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        iArr2[length] = i2;
        return iArr2;
    }

    public static long[] appendLong(long[] jArr, long j2) {
        if (jArr == null) {
            return new long[]{j2};
        }
        int length = jArr.length;
        for (long j3 : jArr) {
            if (j3 == j2) {
                return jArr;
            }
        }
        long[] jArr2 = new long[length + 1];
        System.arraycopy(jArr, 0, jArr2, 0, length);
        jArr2[length] = j2;
        return jArr2;
    }

    public static long[] cloneOrNull(long[] jArr) {
        if (jArr != null) {
            return (long[]) jArr.clone();
        }
        return null;
    }

    public static <T> boolean contains(T[] tArr, T t2) {
        return indexOf(tArr, t2) != -1;
    }

    public static <T> boolean containsAll(T[] tArr, T[] tArr2) {
        if (tArr2 == null) {
            return true;
        }
        for (T t2 : tArr2) {
            if (!contains(tArr, t2)) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean containsAny(T[] tArr, T[] tArr2) {
        if (tArr2 == null) {
            return false;
        }
        for (T t2 : tArr2) {
            if (contains(tArr, t2)) {
                return true;
            }
        }
        return false;
    }

    public static int[] convertToIntArray(List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            iArr[i2] = list.get(i2).intValue();
        }
        return iArr;
    }

    public static String[] defeatNullable(String[] strArr) {
        return strArr != null ? strArr : EmptyArray.STRING;
    }

    public static <T> T[] emptyArray(Class<T> cls) {
        if (cls == Object.class) {
            return (T[]) EmptyArray.OBJECT;
        }
        int iHashCode = (cls.hashCode() & Integer.MAX_VALUE) % 73;
        Object objNewInstance = sCache[iHashCode];
        if (objNewInstance == null || objNewInstance.getClass().getComponentType() != cls) {
            objNewInstance = Array.newInstance((Class<?>) cls, 0);
            sCache[iHashCode] = objNewInstance;
        }
        return (T[]) ((Object[]) objNewInstance);
    }

    public static boolean equals(byte[] bArr, byte[] bArr2, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length < i2 || bArr2.length < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (bArr[i3] != bArr2[i3]) {
                return false;
            }
        }
        return true;
    }

    public static <T> int indexOf(T[] tArr, T t2) {
        if (tArr == null) {
            return -1;
        }
        for (int i2 = 0; i2 < tArr.length; i2++) {
            if (Objects.equals(tArr[i2], t2)) {
                return i2;
            }
        }
        return -1;
    }

    public static boolean isEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static <T> T[] newUnpaddedArray(Class<T> cls, int i2) {
        return (T[]) ((Object[]) VMRuntime.getRuntime().newUnpaddedArray(cls, i2));
    }

    public static boolean[] newUnpaddedBooleanArray(int i2) {
        return (boolean[]) VMRuntime.getRuntime().newUnpaddedArray(Boolean.TYPE, i2);
    }

    public static byte[] newUnpaddedByteArray(int i2) {
        return (byte[]) VMRuntime.getRuntime().newUnpaddedArray(Byte.TYPE, i2);
    }

    public static char[] newUnpaddedCharArray(int i2) {
        return (char[]) VMRuntime.getRuntime().newUnpaddedArray(Character.TYPE, i2);
    }

    public static float[] newUnpaddedFloatArray(int i2) {
        return (float[]) VMRuntime.getRuntime().newUnpaddedArray(Float.TYPE, i2);
    }

    public static int[] newUnpaddedIntArray(int i2) {
        return (int[]) VMRuntime.getRuntime().newUnpaddedArray(Integer.TYPE, i2);
    }

    public static long[] newUnpaddedLongArray(int i2) {
        return (long[]) VMRuntime.getRuntime().newUnpaddedArray(Long.TYPE, i2);
    }

    public static Object[] newUnpaddedObjectArray(int i2) {
        return (Object[]) VMRuntime.getRuntime().newUnpaddedArray(Object.class, i2);
    }

    public static <T> boolean referenceEquals(ArrayList<T> arrayList, ArrayList<T> arrayList2) {
        if (arrayList == arrayList2) {
            return true;
        }
        int size = arrayList.size();
        if (size != arrayList2.size()) {
            return false;
        }
        boolean z2 = false;
        for (int i2 = 0; i2 < size && !z2; i2++) {
            z2 |= arrayList.get(i2) != arrayList2.get(i2);
        }
        return !z2;
    }

    public static <T> ArraySet<T> remove(ArraySet<T> arraySet, T t2) {
        if (arraySet == null) {
            return null;
        }
        arraySet.remove(t2);
        if (arraySet.isEmpty()) {
            return null;
        }
        return arraySet;
    }

    public static <T> T[] removeElement(Class<T> cls, T[] tArr, T t2) {
        if (tArr == null || !contains(tArr, t2)) {
            return tArr;
        }
        int length = tArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (Objects.equals(tArr[i2], t2)) {
                if (length == 1) {
                    return null;
                }
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, length - 1));
                System.arraycopy(tArr, 0, tArr2, 0, i2);
                System.arraycopy(tArr, i2 + 1, tArr2, i2, (length - i2) - 1);
                return tArr2;
            }
        }
        return tArr;
    }

    public static int[] removeInt(int[] iArr, int i2) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (iArr[i3] == i2) {
                int i4 = length - 1;
                int[] iArr2 = new int[i4];
                if (i3 > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, i3);
                }
                if (i3 < i4) {
                    System.arraycopy(iArr, i3 + 1, iArr2, i3, (length - i3) - 1);
                }
                return iArr2;
            }
        }
        return iArr;
    }

    public static long[] removeLong(long[] jArr, long j2) {
        if (jArr == null) {
            return null;
        }
        int length = jArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (jArr[i2] == j2) {
                int i3 = length - 1;
                long[] jArr2 = new long[i3];
                if (i2 > 0) {
                    System.arraycopy(jArr, 0, jArr2, 0, i2);
                }
                if (i2 < i3) {
                    System.arraycopy(jArr, i2 + 1, jArr2, i2, (length - i2) - 1);
                }
                return jArr2;
            }
        }
        return jArr;
    }

    public static String[] removeString(String[] strArr, String str) {
        if (strArr == null) {
            return null;
        }
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (Objects.equals(strArr[i2], str)) {
                int i3 = length - 1;
                String[] strArr2 = new String[i3];
                if (i2 > 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, i2);
                }
                if (i2 < i3) {
                    System.arraycopy(strArr, i2 + 1, strArr2, i2, (length - i2) - 1);
                }
                return strArr2;
            }
        }
        return strArr;
    }

    public static int size(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public static long total(long[] jArr) {
        long j2 = 0;
        if (jArr != null) {
            for (long j3 : jArr) {
                j2 += j3;
            }
        }
        return j2;
    }

    public static <T> T[] trimToSize(T[] tArr, int i2) {
        if (tArr == null || i2 == 0) {
            return null;
        }
        return tArr.length == i2 ? tArr : (T[]) Arrays.copyOf(tArr, i2);
    }

    public static <T> int unstableRemoveIf(ArrayList<T> arrayList, Predicate<T> predicate) {
        int i2 = 0;
        if (arrayList == null) {
            return 0;
        }
        int size = arrayList.size();
        int i3 = size - 1;
        int i4 = i3;
        while (i2 <= i4) {
            while (i2 < size && !predicate.test(arrayList.get(i2))) {
                i2++;
            }
            while (i4 > i2 && predicate.test(arrayList.get(i4))) {
                i4--;
            }
            if (i2 >= i4) {
                break;
            }
            Collections.swap(arrayList, i2, i4);
            i2++;
            i4--;
        }
        while (i3 >= i2) {
            arrayList.remove(i3);
            i3--;
        }
        return size - i2;
    }

    public static <T> T[] appendElement(Class<T> cls, T[] tArr, T t2, boolean z2) {
        T[] tArr2;
        int i2 = 0;
        if (tArr == null) {
            tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 1));
        } else {
            if (!z2 && contains(tArr, t2)) {
                return tArr;
            }
            int length = tArr.length;
            tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, length + 1));
            System.arraycopy(tArr, 0, tArr2, 0, length);
            i2 = length;
        }
        tArr2[i2] = t2;
        return tArr2;
    }

    public static <T> ArraySet<T> cloneOrNull(ArraySet<T> arraySet) {
        if (arraySet != null) {
            return new ArraySet<>((ArraySet) arraySet);
        }
        return null;
    }

    public static boolean contains(int[] iArr, int i2) {
        if (iArr == null) {
            return false;
        }
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean isEmpty(T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static <T> ArrayList<T> add(ArrayList<T> arrayList, T t2) {
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(t2);
        return arrayList;
    }

    public static boolean contains(long[] jArr, long j2) {
        if (jArr == null) {
            return false;
        }
        for (long j3 : jArr) {
            if (j3 == j2) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean containsAll(char[] cArr, char[] cArr2) {
        if (cArr2 == null) {
            return true;
        }
        for (char c : cArr2) {
            if (!contains(cArr, c)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(int[] iArr) {
        return iArr == null || iArr.length == 0;
    }

    public static <T> ArrayList<T> remove(ArrayList<T> arrayList, T t2) {
        if (arrayList == null) {
            return null;
        }
        arrayList.remove(t2);
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static boolean contains(char[] cArr, char c) {
        if (cArr == null) {
            return false;
        }
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    public static boolean isEmpty(long[] jArr) {
        return jArr == null || jArr.length == 0;
    }

    public static <T> boolean contains(Collection<T> collection, T t2) {
        if (collection != null) {
            return collection.contains(t2);
        }
        return false;
    }

    public static boolean isEmpty(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static int[] appendInt(int[] iArr, int i2) {
        return appendInt(iArr, i2, false);
    }

    public static boolean isEmpty(boolean[] zArr) {
        return zArr == null || zArr.length == 0;
    }
}
