package android.util;

import u.a;

/* JADX INFO: loaded from: classes.dex */
public class SparseLongArray implements Cloneable {
    private int[] mKeys;
    private int mSize;
    private long[] mValues;

    public SparseLongArray() {
        this(10);
    }

    private void growKeyAndValueArrays(int i2) {
        int i3 = a.i(i2);
        int[] iArr = new int[i3];
        long[] jArr = new long[i3];
        int[] iArr2 = this.mKeys;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        long[] jArr2 = this.mValues;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
        this.mKeys = iArr;
        this.mValues = jArr;
    }

    public void append(int i2, long j2) {
        int i3 = this.mSize;
        if (i3 != 0 && i2 <= this.mKeys[i3 - 1]) {
            put(i2, j2);
            return;
        }
        if (i3 >= this.mKeys.length) {
            growKeyAndValueArrays(i3 + 1);
        }
        this.mKeys[i3] = i2;
        this.mValues[i3] = j2;
        this.mSize = i3 + 1;
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
        int i4 = this.mSize;
        if (i4 >= this.mKeys.length) {
            growKeyAndValueArrays(i4 + 1);
        }
        int i5 = this.mSize;
        if (i5 - i3 != 0) {
            int[] iArr = this.mKeys;
            int i6 = i3 + 1;
            System.arraycopy(iArr, i3, iArr, i6, i5 - i3);
            long[] jArr = this.mValues;
            System.arraycopy(jArr, i3, jArr, i6, this.mSize - i3);
        }
        this.mKeys[i3] = i2;
        this.mValues[i3] = j2;
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
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_LONGS;
        } else {
            int i3 = a.i(i2);
            this.mKeys = new int[i3];
            this.mValues = new long[i3];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseLongArray m18clone() {
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
