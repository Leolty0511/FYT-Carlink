package android.hardware.camera2.utils;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUtils {
    private ListUtils() {
        throw new AssertionError();
    }

    public static <T> boolean listContains(List<T> list, T t2) {
        if (list == null) {
            return false;
        }
        return list.contains(t2);
    }

    public static <T> boolean listElementsEqualTo(List<T> list, T t2) {
        return list != null && list.size() == 1 && list.contains(t2);
    }

    public static <T> T listSelectFirstFrom(List<T> list, T[] tArr) {
        if (list == null) {
            return null;
        }
        for (T t2 : tArr) {
            if (list.contains(t2)) {
                return t2;
            }
        }
        return null;
    }

    public static <T> String listToString(List<T> list) {
        if (list == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder("[");
        int size = list.size();
        Iterator<T> it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            sb.append(it.next());
            if (i2 != size - 1) {
                sb.append(',');
            }
            i2++;
        }
        sb.append(']');
        return sb.toString();
    }
}
