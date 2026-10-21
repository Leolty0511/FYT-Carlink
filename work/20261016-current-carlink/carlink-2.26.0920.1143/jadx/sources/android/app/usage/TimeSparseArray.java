package android.app.usage;

import android.app.m;
import android.util.LongSparseArray;

/* JADX INFO: loaded from: classes.dex */
public class TimeSparseArray<E> extends LongSparseArray<E> {
    public TimeSparseArray() {
    }

    public int closestIndexOnOrAfter(long j2) {
        int size = size();
        int i2 = size - 1;
        int i3 = 0;
        long jKeyAt = -1;
        int iB = -1;
        while (i3 <= i2) {
            iB = m.b(i2, i3, 2, i3);
            jKeyAt = keyAt(iB);
            if (j2 > jKeyAt) {
                i3 = iB + 1;
            } else {
                if (j2 >= jKeyAt) {
                    return iB;
                }
                i2 = iB - 1;
            }
        }
        if (j2 < jKeyAt) {
            return iB;
        }
        if (j2 <= jKeyAt || i3 >= size) {
            return -1;
        }
        return i3;
    }

    public int closestIndexOnOrBefore(long j2) {
        int iClosestIndexOnOrAfter = closestIndexOnOrAfter(j2);
        if (iClosestIndexOnOrAfter < 0) {
            return size() - 1;
        }
        return keyAt(iClosestIndexOnOrAfter) == j2 ? iClosestIndexOnOrAfter : iClosestIndexOnOrAfter - 1;
    }

    public TimeSparseArray(int i2) {
        super(i2);
    }
}
