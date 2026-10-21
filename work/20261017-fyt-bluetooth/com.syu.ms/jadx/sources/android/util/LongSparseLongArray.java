package android.util;

import u.a;

/* JADX INFO: loaded from: classes.dex */
public class LongSparseLongArray implements Cloneable {
    private long[] mKeys;
    private int mSize;
    private long[] mValues;

    public LongSparseLongArray() {
        this(10);
    }

    private void growKeyAndValueArrays(int i2) {
        int i3 = a.i(i2);
        long[] jArr = new long[i3];
        long[] jArr2 = new long[i3];
        long[] jArr3 = this.mKeys;
        System.arraycopy(jArr3, 0, jArr, 0, jArr3.length);
        long[] jArr4 = this.mValues;
        System.arraycopy(jArr4, 0, jArr2, 0, jArr4.length);
        this.mKeys = jArr;
        this.mValues = jArr2;
    }

    public void append(long j2, long j3) {
        int i2 = this.mSize;
        if (i2 != 0 && j2 <= this.mKeys[i2 - 1]) {
            put(j2, j3);
            return;
        }
        if (i2 >= this.mKeys.length) {
            growKeyAndValueArrays(i2 + 1);
        }
        this.mKeys[i2] = j2;
        this.mValues[i2] = j3;
        this.mSize = i2 + 1;
    }

    public void clear() {
        this.mSize = 0;
    }

    public void delete(long j2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j2);
        if (iBinarySearch >= 0) {
            removeAt(iBinarySearch);
        }
    }

    public long get(long j2) {
        return get(j2, 0L);
    }

    public int indexOfKey(long j2) {
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, j2);
    }

    public int indexOfValue(long j2) {
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (this.mValues[i2] == j2) {
                return i2;
            }
        }
        return -1;
    }

    public long keyAt(int i2) {
        return this.mKeys[i2];
    }

    public void put(long j2, long j3) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j2);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = j3;
            return;
        }
        int i2 = ~iBinarySearch;
        int i3 = this.mSize;
        if (i3 >= this.mKeys.length) {
            growKeyAndValueArrays(i3 + 1);
        }
        int i4 = this.mSize;
        if (i4 - i2 != 0) {
            long[] jArr = this.mKeys;
            int i5 = i2 + 1;
            System.arraycopy(jArr, i2, jArr, i5, i4 - i2);
            long[] jArr2 = this.mValues;
            System.arraycopy(jArr2, i2, jArr2, i5, this.mSize - i2);
        }
        this.mKeys[i2] = j2;
        this.mValues[i2] = j3;
        this.mSize++;
    }

    public void removeAt(int i2) {
        long[] jArr = this.mKeys;
        int i3 = i2 + 1;
        System.arraycopy(jArr, i3, jArr, i2, this.mSize - i3);
        long[] jArr2 = this.mValues;
        System.arraycopy(jArr2, i3, jArr2, i2, this.mSize - i3);
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

    public LongSparseLongArray(int i2) {
        if (i2 == 0) {
            long[] jArr = ContainerHelpers.EMPTY_LONGS;
            this.mKeys = jArr;
            this.mValues = jArr;
        } else {
            int i3 = a.i(i2);
            this.mKeys = new long[i3];
            this.mValues = new long[i3];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseLongArray m14clone() {
        LongSparseLongArray longSparseLongArray = null;
        try {
            LongSparseLongArray longSparseLongArray2 = (LongSparseLongArray) super.clone();
            try {
                longSparseLongArray2.mKeys = (long[]) this.mKeys.clone();
                longSparseLongArray2.mValues = (long[]) this.mValues.clone();
                return longSparseLongArray2;
            } catch (CloneNotSupportedException unused) {
                longSparseLongArray = longSparseLongArray2;
                return longSparseLongArray;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public long get(long j2, long j3) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j2);
        return iBinarySearch < 0 ? j3 : this.mValues[iBinarySearch];
    }
}
