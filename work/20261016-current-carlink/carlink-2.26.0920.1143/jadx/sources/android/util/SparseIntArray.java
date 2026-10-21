package android.util;

import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import java.util.Arrays;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class SparseIntArray implements Cloneable {
    private int[] mKeys;
    private int mSize;
    private int[] mValues;

    public SparseIntArray() {
        this(10);
    }

    public void append(int i2, int i3) {
        int i4 = this.mSize;
        if (i4 != 0 && i2 <= this.mKeys[i4 - 1]) {
            put(i2, i3);
            return;
        }
        this.mKeys = GrowingArrayUtils.append(this.mKeys, i4, i2);
        this.mValues = GrowingArrayUtils.append(this.mValues, this.mSize, i3);
        this.mSize++;
    }

    public void clear() {
        this.mSize = 0;
    }

    public int[] copyKeys() {
        if (size() == 0) {
            return null;
        }
        return Arrays.copyOf(this.mKeys, size());
    }

    public void delete(int i2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            removeAt(iBinarySearch);
        }
    }

    public int get(int i2) {
        return get(i2, 0);
    }

    public int indexOfKey(int i2) {
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
    }

    public int indexOfValue(int i2) {
        for (int i3 = 0; i3 < this.mSize; i3++) {
            if (this.mValues[i3] == i2) {
                return i3;
            }
        }
        return -1;
    }

    public int keyAt(int i2) {
        return this.mKeys[i2];
    }

    public void put(int i2, int i3) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = i3;
            return;
        }
        int i4 = ~iBinarySearch;
        this.mKeys = GrowingArrayUtils.insert(this.mKeys, this.mSize, i4, i2);
        this.mValues = GrowingArrayUtils.insert(this.mValues, this.mSize, i4, i3);
        this.mSize++;
    }

    public void removeAt(int i2) {
        int[] iArr = this.mKeys;
        int i3 = i2 + 1;
        System.arraycopy(iArr, i3, iArr, i2, this.mSize - i3);
        int[] iArr2 = this.mValues;
        System.arraycopy(iArr2, i3, iArr2, i2, this.mSize - i3);
        this.mSize--;
    }

    public void setValueAt(int i2, int i3) {
        this.mValues[i2] = i3;
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

    public int valueAt(int i2) {
        return this.mValues[i2];
    }

    public SparseIntArray(int i2) {
        if (i2 == 0) {
            this.mKeys = EmptyArray.INT;
            this.mValues = EmptyArray.INT;
        } else {
            int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(i2);
            this.mKeys = iArrNewUnpaddedIntArray;
            this.mValues = new int[iArrNewUnpaddedIntArray.length];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseIntArray m34clone() {
        SparseIntArray sparseIntArray = null;
        try {
            SparseIntArray sparseIntArray2 = (SparseIntArray) super.clone();
            try {
                sparseIntArray2.mKeys = (int[]) this.mKeys.clone();
                sparseIntArray2.mValues = (int[]) this.mValues.clone();
                return sparseIntArray2;
            } catch (CloneNotSupportedException unused) {
                sparseIntArray = sparseIntArray2;
                return sparseIntArray;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public int get(int i2, int i3) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        return iBinarySearch < 0 ? i3 : this.mValues[iBinarySearch];
    }
}
