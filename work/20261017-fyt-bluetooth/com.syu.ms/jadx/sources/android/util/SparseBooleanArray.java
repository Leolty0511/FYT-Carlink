package android.util;

import u.a;

/* JADX INFO: loaded from: classes.dex */
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
        if (i3 >= this.mKeys.length) {
            int iH = a.h(i3 + 1);
            int[] iArr = new int[iH];
            boolean[] zArr = new boolean[iH];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            boolean[] zArr2 = this.mValues;
            System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
            this.mKeys = iArr;
            this.mValues = zArr;
        }
        this.mKeys[i3] = i2;
        this.mValues[i3] = z2;
        this.mSize = i3 + 1;
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

    public boolean get(int i2) {
        return get(i2, false);
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
        int i4 = this.mSize;
        if (i4 >= this.mKeys.length) {
            int iH = a.h(i4 + 1);
            int[] iArr = new int[iH];
            boolean[] zArr = new boolean[iH];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            boolean[] zArr2 = this.mValues;
            System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
            this.mKeys = iArr;
            this.mValues = zArr;
        }
        int i5 = this.mSize;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.mKeys;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            boolean[] zArr3 = this.mValues;
            System.arraycopy(zArr3, i3, zArr3, i6, this.mSize - i3);
        }
        this.mKeys[i3] = i2;
        this.mValues[i3] = z2;
        this.mSize++;
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
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_BOOLEANS;
        } else {
            int iH = a.h(i2);
            this.mKeys = new int[iH];
            this.mValues = new boolean[iH];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseBooleanArray m16clone() {
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
