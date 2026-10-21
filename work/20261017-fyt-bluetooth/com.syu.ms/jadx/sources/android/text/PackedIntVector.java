package android.text;

import u.a;

/* JADX INFO: loaded from: classes.dex */
class PackedIntVector {
    private final int mColumns;
    private int[] mValueGap;
    private int mRows = 0;
    private int mRowGapStart = 0;
    private int mRowGapLength = 0;
    private int[] mValues = null;

    public PackedIntVector(int i2) {
        this.mColumns = i2;
        this.mValueGap = new int[i2 * 2];
    }

    private final void growBuffer() {
        int i2 = this.mColumns;
        int iH = a.h((size() + 1) * i2) / i2;
        int[] iArr = new int[iH * i2];
        int[] iArr2 = this.mValueGap;
        int i3 = this.mRowGapStart;
        int i4 = this.mRows - (this.mRowGapLength + i3);
        int[] iArr3 = this.mValues;
        if (iArr3 != null) {
            System.arraycopy(iArr3, 0, iArr, 0, i2 * i3);
            System.arraycopy(this.mValues, (this.mRows - i4) * i2, iArr, (iH - i4) * i2, i4 * i2);
        }
        for (int i5 = 0; i5 < i2; i5++) {
            if (iArr2[i5] >= i3) {
                iArr2[i5] = iArr2[i5] + (iH - this.mRows);
                if (iArr2[i5] < i3) {
                    iArr2[i5] = i3;
                }
            }
        }
        this.mRowGapLength += iH - this.mRows;
        this.mRows = iH;
        this.mValues = iArr;
    }

    private final void moveRowGapTo(int i2) {
        int i3 = this.mRowGapStart;
        if (i2 == i3) {
            return;
        }
        if (i2 > i3) {
            int i4 = this.mRowGapLength;
            int i5 = (i2 + i4) - (i3 + i4);
            int i6 = this.mColumns;
            int[] iArr = this.mValueGap;
            int[] iArr2 = this.mValues;
            int i7 = i3 + i4;
            for (int i8 = i7; i8 < i7 + i5; i8++) {
                int i9 = (i8 - i7) + this.mRowGapStart;
                for (int i10 = 0; i10 < i6; i10++) {
                    int i11 = iArr2[(i8 * i6) + i10];
                    if (i8 >= iArr[i10]) {
                        i11 += iArr[i10 + i6];
                    }
                    if (i9 >= iArr[i10]) {
                        i11 -= iArr[i10 + i6];
                    }
                    iArr2[(i9 * i6) + i10] = i11;
                }
            }
        } else {
            int i12 = i3 - i2;
            int i13 = this.mColumns;
            int[] iArr3 = this.mValueGap;
            int[] iArr4 = this.mValues;
            int i14 = i3 + this.mRowGapLength;
            for (int i15 = (i2 + i12) - 1; i15 >= i2; i15--) {
                int i16 = ((i15 - i2) + i14) - i12;
                for (int i17 = 0; i17 < i13; i17++) {
                    int i18 = iArr4[(i15 * i13) + i17];
                    if (i15 >= iArr3[i17]) {
                        i18 += iArr3[i17 + i13];
                    }
                    if (i16 >= iArr3[i17]) {
                        i18 -= iArr3[i17 + i13];
                    }
                    iArr4[(i16 * i13) + i17] = i18;
                }
            }
        }
        this.mRowGapStart = i2;
    }

    private final void moveValueGapTo(int i2, int i3) {
        int[] iArr = this.mValueGap;
        int[] iArr2 = this.mValues;
        int i4 = this.mColumns;
        if (i3 == iArr[i2]) {
            return;
        }
        if (i3 > iArr[i2]) {
            for (int i5 = iArr[i2]; i5 < i3; i5++) {
                int i6 = (i5 * i4) + i2;
                iArr2[i6] = iArr2[i6] + iArr[i2 + i4];
            }
        } else {
            for (int i7 = i3; i7 < iArr[i2]; i7++) {
                int i8 = (i7 * i4) + i2;
                iArr2[i8] = iArr2[i8] - iArr[i2 + i4];
            }
        }
        iArr[i2] = i3;
    }

    private void setValueInternal(int i2, int i3, int i4) {
        if (i2 >= this.mRowGapStart) {
            i2 += this.mRowGapLength;
        }
        int[] iArr = this.mValueGap;
        if (i2 >= iArr[i3]) {
            i4 -= iArr[this.mColumns + i3];
        }
        this.mValues[(i2 * this.mColumns) + i3] = i4;
    }

    public void adjustValuesBelow(int i2, int i3, int i4) {
        if ((i2 | i3) < 0 || i2 > size() || i3 >= width()) {
            throw new IndexOutOfBoundsException(i2 + ", " + i3);
        }
        if (i2 >= this.mRowGapStart) {
            i2 += this.mRowGapLength;
        }
        moveValueGapTo(i3, i2);
        int[] iArr = this.mValueGap;
        int i5 = i3 + this.mColumns;
        iArr[i5] = iArr[i5] + i4;
    }

    public void deleteAt(int i2, int i3) {
        int i4;
        if ((i2 | i3) >= 0 && (i4 = i2 + i3) <= size()) {
            moveRowGapTo(i4);
            this.mRowGapStart -= i3;
            this.mRowGapLength += i3;
        } else {
            throw new IndexOutOfBoundsException(i2 + ", " + i3);
        }
    }

    public int getValue(int i2, int i3) {
        int i4 = this.mColumns;
        if ((i2 | i3) < 0 || i2 >= size() || i3 >= i4) {
            throw new IndexOutOfBoundsException(i2 + ", " + i3);
        }
        if (i2 >= this.mRowGapStart) {
            i2 += this.mRowGapLength;
        }
        int i5 = this.mValues[(i2 * i4) + i3];
        int[] iArr = this.mValueGap;
        return i2 >= iArr[i3] ? i5 + iArr[i3 + i4] : i5;
    }

    public void insertAt(int i2, int[] iArr) {
        if (i2 < 0 || i2 > size()) {
            throw new IndexOutOfBoundsException("row " + i2);
        }
        if (iArr != null && iArr.length < width()) {
            throw new IndexOutOfBoundsException("value count " + iArr.length);
        }
        moveRowGapTo(i2);
        if (this.mRowGapLength == 0) {
            growBuffer();
        }
        this.mRowGapStart++;
        this.mRowGapLength--;
        if (iArr == null) {
            for (int i3 = this.mColumns - 1; i3 >= 0; i3--) {
                setValueInternal(i2, i3, 0);
            }
            return;
        }
        for (int i4 = this.mColumns - 1; i4 >= 0; i4--) {
            setValueInternal(i2, i4, iArr[i4]);
        }
    }

    public void setValue(int i2, int i3, int i4) {
        int i5;
        if ((i2 | i3) < 0 || i2 >= size() || i3 >= (i5 = this.mColumns)) {
            throw new IndexOutOfBoundsException(i2 + ", " + i3);
        }
        if (i2 >= this.mRowGapStart) {
            i2 += this.mRowGapLength;
        }
        int[] iArr = this.mValueGap;
        if (i2 >= iArr[i3]) {
            i4 -= iArr[i3 + i5];
        }
        this.mValues[(i2 * i5) + i3] = i4;
    }

    public int size() {
        return this.mRows - this.mRowGapLength;
    }

    public int width() {
        return this.mColumns;
    }
}
