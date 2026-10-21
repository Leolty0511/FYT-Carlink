package android.util;

import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class SparseLongArray implements Cloneable {
    private int[] mKeys;
    private int mSize;
    private long[] mValues;

    public SparseLongArray() {
        this(10);
    }

    public void append(int i2, long j2) {
        int i3 = this.mSize;
        if (i3 != 0 && i2 <= this.mKeys[i3 - 1]) {
            put(i2, j2);
            return;
        }
        this.mKeys = GrowingArrayUtils.append(this.mKeys, i3, i2);
        this.mValues = GrowingArrayUtils.append(this.mValues, this.mSize, j2);
        this.mSize++;
    }

    public void clear() {
        this.mSize = 0;
    }

    public void delete(int i2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            removeAt(iBinarySearch);
        }
    }

    public long get(int i2) {
        return get(i2, 0L);
    }

    public int indexOfKey(int i2) {
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
    }

    public int indexOfValue(long j2) {
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (this.mValues[i2] == j2) {
                return i2;
            }
        }
        return -1;
    }

    public int keyAt(int i2) {
        return this.mKeys[i2];
    }

    public void put(int i2, long j2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = j2;
            return;
        }
        int i3 = ~iBinarySearch;
        this.mKeys = GrowingArrayUtils.insert(this.mKeys, this.mSize, i3, i2);
        this.mValues = GrowingArrayUtils.insert(this.mValues, this.mSize, i3, j2);
        this.mSize++;
    }

    public void removeAt(int i2) {
        int[] iArr = this.mKeys;
        int i3 = i2 + 1;
        System.arraycopy(iArr, i3, iArr, i2, this.mSize - i3);
        long[] jArr = this.mValues;
        System.arraycopy(jArr, i3, jArr, i2, this.mSize - i3);
        this.mSize--;
    }

    public void removeAtRange(int i2, int i3) {
        int iMin = Math.min(i3, this.mSize - i2);
        int[] iArr = this.mKeys;
        int i4 = i2 + iMin;
        System.arraycopy(iArr, i4, iArr, i2, this.mSize - i4);
        long[] jArr = this.mValues;
        System.arraycopy(jArr, i4, jArr, i2, this.mSize - i4);
        this.mSize -= iMin;
    }

    public int size() {
        return this.mSize;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i2));
            sb.append('=');
            sb.append(valueAt(i2));
        }
        sb.append('}');
        return sb.toString();
    }

    public long valueAt(int i2) {
        return this.mValues[i2];
    }

    public SparseLongArray(int i2) {
        if (i2 == 0) {
            this.mKeys = EmptyArray.INT;
            this.mValues = EmptyArray.LONG;
        } else {
            long[] jArrNewUnpaddedLongArray = ArrayUtils.newUnpaddedLongArray(i2);
            this.mValues = jArrNewUnpaddedLongArray;
            this.mKeys = new int[jArrNewUnpaddedLongArray.length];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseLongArray m35clone() {
        SparseLongArray sparseLongArray = null;
        try {
            SparseLongArray sparseLongArray2 = (SparseLongArray) super.clone();
            try {
                sparseLongArray2.mKeys = (int[]) this.mKeys.clone();
                sparseLongArray2.mValues = (long[]) this.mValues.clone();
                return sparseLongArray2;
            } catch (CloneNotSupportedException unused) {
                sparseLongArray = sparseLongArray2;
                return sparseLongArray;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public long get(int i2, long j2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        return iBinarySearch < 0 ? j2 : this.mValues[iBinarySearch];
    }
}
