package android.util;

import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class LongSparseLongArray implements Cloneable {
    private long[] mKeys;
    private int mSize;
    private long[] mValues;

    public LongSparseLongArray() {
        this(10);
    }

    public void append(long j2, long j3) {
        int i2 = this.mSize;
        if (i2 != 0 && j2 <= this.mKeys[i2 - 1]) {
            put(j2, j3);
            return;
        }
        this.mKeys = GrowingArrayUtils.append(this.mKeys, i2, j2);
        this.mValues = GrowingArrayUtils.append(this.mValues, this.mSize, j3);
        this.mSize++;
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
        this.mKeys = GrowingArrayUtils.insert(this.mKeys, this.mSize, i2, j2);
        this.mValues = GrowingArrayUtils.insert(this.mValues, this.mSize, i2, j3);
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
            this.mKeys = EmptyArray.LONG;
            this.mValues = EmptyArray.LONG;
        } else {
            long[] jArrNewUnpaddedLongArray = ArrayUtils.newUnpaddedLongArray(i2);
            this.mKeys = jArrNewUnpaddedLongArray;
            this.mValues = new long[jArrNewUnpaddedLongArray.length];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseLongArray m31clone() {
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
