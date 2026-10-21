package android.util;

import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class SparseBooleanArray implements Cloneable {
    private int[] mKeys;
    private int mSize;
    private boolean[] mValues;

    public SparseBooleanArray() {
        this(10);
    }

    public void append(int i2, boolean z2) {
        int i3 = this.mSize;
        if (i3 != 0 && i2 <= this.mKeys[i3 - 1]) {
            put(i2, z2);
            return;
        }
        this.mKeys = GrowingArrayUtils.append(this.mKeys, i3, i2);
        this.mValues = GrowingArrayUtils.append(this.mValues, this.mSize, z2);
        this.mSize++;
    }

    public void clear() {
        this.mSize = 0;
    }

    public void delete(int i2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            int[] iArr = this.mKeys;
            int i3 = iBinarySearch + 1;
            System.arraycopy(iArr, i3, iArr, iBinarySearch, this.mSize - i3);
            boolean[] zArr = this.mValues;
            System.arraycopy(zArr, i3, zArr, iBinarySearch, this.mSize - i3);
            this.mSize--;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SparseBooleanArray)) {
            return false;
        }
        SparseBooleanArray sparseBooleanArray = (SparseBooleanArray) obj;
        if (this.mSize != sparseBooleanArray.mSize) {
            return false;
        }
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (this.mKeys[i2] != sparseBooleanArray.mKeys[i2] || this.mValues[i2] != sparseBooleanArray.mValues[i2]) {
                return false;
            }
        }
        return true;
    }

    public boolean get(int i2) {
        return get(i2, false);
    }

    public int hashCode() {
        int i2 = this.mSize;
        for (int i3 = 0; i3 < this.mSize; i3++) {
            i2 = ((i2 * 31) + this.mKeys[i3]) | (this.mValues[i3] ? 1 : 0);
        }
        return i2;
    }

    public int indexOfKey(int i2) {
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
    }

    public int indexOfValue(boolean z2) {
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (this.mValues[i2] == z2) {
                return i2;
            }
        }
        return -1;
    }

    public int keyAt(int i2) {
        return this.mKeys[i2];
    }

    public void put(int i2, boolean z2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = z2;
            return;
        }
        int i3 = ~iBinarySearch;
        this.mKeys = GrowingArrayUtils.insert(this.mKeys, this.mSize, i3, i2);
        this.mValues = GrowingArrayUtils.insert(this.mValues, this.mSize, i3, z2);
        this.mSize++;
    }

    public void removeAt(int i2) {
        int[] iArr = this.mKeys;
        int i3 = i2 + 1;
        System.arraycopy(iArr, i3, iArr, i2, this.mSize - i3);
        boolean[] zArr = this.mValues;
        System.arraycopy(zArr, i3, zArr, i2, this.mSize - i3);
        this.mSize--;
    }

    public void setKeyAt(int i2, int i3) {
        this.mKeys[i2] = i3;
    }

    public void setValueAt(int i2, boolean z2) {
        this.mValues[i2] = z2;
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

    public boolean valueAt(int i2) {
        return this.mValues[i2];
    }

    public SparseBooleanArray(int i2) {
        if (i2 == 0) {
            this.mKeys = EmptyArray.INT;
            this.mValues = EmptyArray.BOOLEAN;
        } else {
            int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(i2);
            this.mKeys = iArrNewUnpaddedIntArray;
            this.mValues = new boolean[iArrNewUnpaddedIntArray.length];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseBooleanArray m33clone() {
        SparseBooleanArray sparseBooleanArray = null;
        try {
            SparseBooleanArray sparseBooleanArray2 = (SparseBooleanArray) super.clone();
            try {
                sparseBooleanArray2.mKeys = (int[]) this.mKeys.clone();
                sparseBooleanArray2.mValues = (boolean[]) this.mValues.clone();
                return sparseBooleanArray2;
            } catch (CloneNotSupportedException unused) {
                sparseBooleanArray = sparseBooleanArray2;
                return sparseBooleanArray;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public boolean get(int i2, boolean z2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        return iBinarySearch < 0 ? z2 : this.mValues[iBinarySearch];
    }
}
