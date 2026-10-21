package android.util;

import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class SparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArray() {
        this(10);
    }

    private void gc() {
        int i2 = this.mSize;
        int[] iArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != DELETED) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.mGarbage = false;
        this.mSize = i3;
    }

    public void append(int i2, E e2) {
        int i3 = this.mSize;
        if (i3 != 0 && i2 <= this.mKeys[i3 - 1]) {
            put(i2, e2);
            return;
        }
        if (this.mGarbage && i3 >= this.mKeys.length) {
            gc();
        }
        this.mKeys = GrowingArrayUtils.append(this.mKeys, this.mSize, i2);
        this.mValues = GrowingArrayUtils.append((E[]) this.mValues, this.mSize, e2);
        this.mSize++;
    }

    public void clear() {
        int i2 = this.mSize;
        Object[] objArr = this.mValues;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public void delete(int i2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[iBinarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[iBinarySearch] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public E get(int i2) {
        return get(i2, null);
    }

    public int indexOfKey(int i2) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
    }

    public int indexOfValue(E e2) {
        if (this.mGarbage) {
            gc();
        }
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (this.mValues[i2] == e2) {
                return i2;
            }
        }
        return -1;
    }

    public int indexOfValueByValue(E e2) {
        if (this.mGarbage) {
            gc();
        }
        for (int i2 = 0; i2 < this.mSize; i2++) {
            if (e2 == null) {
                if (this.mValues[i2] == null) {
                    return i2;
                }
            } else if (e2.equals(this.mValues[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public int keyAt(int i2) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i2];
    }

    public void put(int i2, E e2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch >= 0) {
            this.mValues[iBinarySearch] = e2;
            return;
        }
        int i3 = ~iBinarySearch;
        int i4 = this.mSize;
        if (i3 < i4) {
            Object[] objArr = this.mValues;
            if (objArr[i3] == DELETED) {
                this.mKeys[i3] = i2;
                objArr[i3] = e2;
                return;
            }
        }
        if (this.mGarbage && i4 >= this.mKeys.length) {
            gc();
            i3 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        }
        this.mKeys = GrowingArrayUtils.insert(this.mKeys, this.mSize, i3, i2);
        this.mValues = GrowingArrayUtils.insert((E[]) this.mValues, this.mSize, i3, e2);
        this.mSize++;
    }

    public void remove(int i2) {
        delete(i2);
    }

    public void removeAt(int i2) {
        Object[] objArr = this.mValues;
        Object obj = objArr[i2];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.mGarbage = true;
        }
    }

    public void removeAtRange(int i2, int i3) {
        int iMin = Math.min(this.mSize, i3 + i2);
        while (i2 < iMin) {
            removeAt(i2);
            i2++;
        }
    }

    public E removeReturnOld(int i2) {
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        if (iBinarySearch < 0) {
            return null;
        }
        Object[] objArr = this.mValues;
        E e2 = (E) objArr[iBinarySearch];
        Object obj = DELETED;
        if (e2 == obj) {
            return null;
        }
        objArr[iBinarySearch] = obj;
        this.mGarbage = true;
        return e2;
    }

    public void setValueAt(int i2, E e2) {
        if (this.mGarbage) {
            gc();
        }
        this.mValues[i2] = e2;
    }

    public int size() {
        if (this.mGarbage) {
            gc();
        }
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
            E eValueAt = valueAt(i2);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public E valueAt(int i2) {
        if (this.mGarbage) {
            gc();
        }
        return (E) this.mValues[i2];
    }

    public SparseArray(int i2) {
        this.mGarbage = false;
        if (i2 == 0) {
            this.mKeys = EmptyArray.INT;
            this.mValues = EmptyArray.OBJECT;
        } else {
            Object[] objArrNewUnpaddedObjectArray = ArrayUtils.newUnpaddedObjectArray(i2);
            this.mValues = objArrNewUnpaddedObjectArray;
            this.mKeys = new int[objArrNewUnpaddedObjectArray.length];
        }
        this.mSize = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArray<E> m32clone() {
        SparseArray<E> sparseArray = null;
        try {
            SparseArray<E> sparseArray2 = (SparseArray) super.clone();
            try {
                sparseArray2.mKeys = (int[]) this.mKeys.clone();
                sparseArray2.mValues = (Object[]) this.mValues.clone();
                return sparseArray2;
            } catch (CloneNotSupportedException unused) {
                sparseArray = sparseArray2;
                return sparseArray;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public E get(int i2, E e2) {
        E e3;
        int iBinarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i2);
        return (iBinarySearch < 0 || (e3 = (E) this.mValues[iBinarySearch]) == DELETED) ? e2 : e3;
    }
}
