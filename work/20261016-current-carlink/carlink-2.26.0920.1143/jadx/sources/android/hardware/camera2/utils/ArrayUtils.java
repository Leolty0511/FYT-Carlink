package android.hardware.camera2.utils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ArrayUtils {
    private static final boolean DEBUG = false;
    private static final String TAG = "ArrayUtils";

    private ArrayUtils() {
        throw new AssertionError();
    }

    public static boolean contains(int[] iArr, int i2) {
        return getArrayIndex(iArr, i2) != -1;
    }

    public static int[] convertStringListToIntArray(List<String> list, String[] strArr, int[] iArr) {
        if (list == null) {
            return null;
        }
        List<Integer> listConvertStringListToIntList = convertStringListToIntList(list, strArr, iArr);
        int size = listConvertStringListToIntList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = listConvertStringListToIntList.get(i2).intValue();
        }
        return iArr2;
    }

    public static List<Integer> convertStringListToIntList(List<String> list, String[] strArr, int[] iArr) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            int arrayIndex = getArrayIndex(strArr, it.next());
            if (arrayIndex >= 0 && arrayIndex < iArr.length) {
                arrayList.add(Integer.valueOf(iArr[arrayIndex]));
            }
        }
        return arrayList;
    }

    public static <T> int getArrayIndex(T[] tArr, T t2) {
        if (tArr == null) {
            return -1;
        }
        int i2 = 0;
        for (T t3 : tArr) {
            if (Objects.equals(t3, t2)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int[] toIntArray(List<Integer> list) {
        if (list == null) {
            return null;
        }
        int[] iArr = new int[list.size()];
        Iterator<Integer> it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = it.next().intValue();
            i2++;
        }
        return iArr;
    }

    public static <T> boolean contains(T[] tArr, T t2) {
        return getArrayIndex(tArr, t2) != -1;
    }

    public static int getArrayIndex(int[] iArr, int i2) {
        if (iArr == null) {
            return -1;
        }
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (iArr[i3] == i2) {
                return i3;
            }
        }
        return -1;
    }
}
