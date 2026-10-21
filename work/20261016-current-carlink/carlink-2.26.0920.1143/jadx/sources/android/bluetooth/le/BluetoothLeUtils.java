package android.bluetooth.le;

import android.bluetooth.BluetoothAdapter;
import android.util.SparseArray;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothLeUtils {
    public static void checkAdapterStateOn(BluetoothAdapter bluetoothAdapter) {
        if (bluetoothAdapter == null || !bluetoothAdapter.isLeEnabled()) {
            throw new IllegalStateException("BT Adapter is not turned ON");
        }
    }

    public static boolean equals(SparseArray<byte[]> sparseArray, SparseArray<byte[]> sparseArray2) {
        if (sparseArray == sparseArray2) {
            return true;
        }
        if (sparseArray == null || sparseArray2 == null || sparseArray.size() != sparseArray2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            if (sparseArray.keyAt(i2) != sparseArray2.keyAt(i2) || !Arrays.equals(sparseArray.valueAt(i2), sparseArray2.valueAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String toString(SparseArray<byte[]> sparseArray) {
        if (sparseArray == null) {
            return "null";
        }
        if (sparseArray.size() == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            sb.append(sparseArray.keyAt(i2));
            sb.append("=");
            sb.append(Arrays.toString(sparseArray.valueAt(i2)));
        }
        sb.append('}');
        return sb.toString();
    }

    public static <T> boolean equals(Map<T, byte[]> map, Map<T, byte[]> map2) {
        if (map == map2) {
            return true;
        }
        if (map == null || map2 == null || map.size() != map2.size()) {
            return false;
        }
        Set<T> setKeySet = map.keySet();
        if (!setKeySet.equals(map2.keySet())) {
            return false;
        }
        for (T t2 : setKeySet) {
            if (!Objects.deepEquals(map.get(t2), map2.get(t2))) {
                return false;
            }
        }
        return true;
    }

    public static <T> String toString(Map<T, byte[]> map) {
        if (map == null) {
            return "null";
        }
        if (map.isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder("{");
        Iterator<Map.Entry<T, byte[]>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            T key = it.next().getKey();
            sb.append(key);
            sb.append("=");
            sb.append(Arrays.toString(map.get(key)));
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
