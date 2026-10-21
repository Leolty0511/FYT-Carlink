package android.text;

import android.net.wifi.WifiEnterpriseConfig;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
class PackedObjectVector<E> {
    private int mColumns;
    private Object[] mValues = EmptyArray.OBJECT;
    private int mRows = 0;
    private int mRowGapStart = 0;
    private int mRowGapLength = 0;

    public PackedObjectVector(int i2) {
        this.mColumns = i2;
    }

    private void growBuffer() {
        Object[] objArrNewUnpaddedObjectArray = ArrayUtils.newUnpaddedObjectArray(GrowingArrayUtils.growSize(size()) * this.mColumns);
        int length = objArrNewUnpaddedObjectArray.length;
        int i2 = this.mColumns;
        int i3 = length / i2;
        int i4 = this.mRows;
        int i5 = this.mRowGapStart;
        int i6 = i4 - (this.mRowGapLength + i5);
        System.arraycopy(this.mValues, 0, objArrNewUnpaddedObjectArray, 0, i2 * i5);
        Object[] objArr = this.mValues;
        int i7 = this.mRows - i6;
        int i8 = this.mColumns;
        System.arraycopy(objArr, i7 * i8, objArrNewUnpaddedObjectArray, (i3 - i6) * i8, i6 * i8);
        this.mRowGapLength = (i3 - this.mRows) + this.mRowGapLength;
        this.mRows = i3;
        this.mValues = objArrNewUnpaddedObjectArray;
    }

    private void moveRowGapTo(int i2) {
        int i3 = this.mRowGapStart;
        if (i2 == i3) {
            return;
        }
        if (i2 > i3) {
            int i4 = this.mRowGapLength;
            int i5 = (i2 + i4) - (i3 + i4);
            int i6 = i3 + i4;
            while (true) {
                int i7 = this.mRowGapStart;
                int i8 = this.mRowGapLength;
                if (i6 >= i7 + i8 + i5) {
                    break;
                }
                int i9 = (i6 - (i8 + i7)) + i7;
                int i10 = 0;
                while (true) {
                    int i11 = this.mColumns;
                    if (i10 < i11) {
                        Object[] objArr = this.mValues;
                        objArr[(i11 * i9) + i10] = objArr[(i6 * i11) + i10];
                        i10++;
                    }
                }
                i6++;
            }
        } else {
            int i12 = i3 - i2;
            for (int i13 = (i2 + i12) - 1; i13 >= i2; i13--) {
                int i14 = (((i13 - i2) + this.mRowGapStart) + this.mRowGapLength) - i12;
                int i15 = 0;
                while (true) {
                    int i16 = this.mColumns;
                    if (i15 < i16) {
                        Object[] objArr2 = this.mValues;
                        objArr2[(i16 * i14) + i15] = objArr2[(i13 * i16) + i15];
                        i15++;
                    }
                }
            }
        }
        this.mRowGapStart = i2;
    }

    public void deleteAt(int i2, int i3) {
        moveRowGapTo(i2 + i3);
        this.mRowGapStart -= i3;
        this.mRowGapLength += i3;
        size();
    }

    public void dump() {
        for (int i2 = 0; i2 < this.mRows; i2++) {
            int i3 = 0;
            while (true) {
                int i4 = this.mColumns;
                if (i3 < i4) {
                    Object obj = this.mValues[(i4 * i2) + i3];
                    int i5 = this.mRowGapStart;
                    if (i2 < i5 || i2 >= i5 + this.mRowGapLength) {
                        System.out.print(obj + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    } else {
                        System.out.print("(" + obj + ") ");
                    }
                    i3++;
                }
            }
            System.out.print(" << \n");
        }
        System.out.print("-----\n\n");
    }

    public E getValue(int i2, int i3) {
        if (i2 >= this.mRowGapStart) {
            i2 += this.mRowGapLength;
        }
        return (E) this.mValues[(i2 * this.mColumns) + i3];
    }

    public void insertAt(int i2, E[] eArr) {
        moveRowGapTo(i2);
        if (this.mRowGapLength == 0) {
            growBuffer();
        }
        this.mRowGapStart++;
        this.mRowGapLength--;
        int i3 = 0;
        if (eArr == null) {
            while (i3 < this.mColumns) {
                setValue(i2, i3, null);
                i3++;
            }
        } else {
            while (i3 < this.mColumns) {
                setValue(i2, i3, eArr[i3]);
                i3++;
            }
        }
    }

    public void setValue(int i2, int i3, E e2) {
        if (i2 >= this.mRowGapStart) {
            i2 += this.mRowGapLength;
        }
        this.mValues[(i2 * this.mColumns) + i3] = e2;
    }

    public int size() {
        return this.mRows - this.mRowGapLength;
    }

    public int width() {
        return this.mColumns;
    }
}
