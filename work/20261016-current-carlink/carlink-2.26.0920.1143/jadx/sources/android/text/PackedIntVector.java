package android.text;

import android.accessibilityservice.c;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.GrowingArrayUtils;

/* JADX INFO: loaded from: classes2.dex */
public class PackedIntVector {
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
        int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(GrowingArrayUtils.growSize(size()) * i2);
        int length = iArrNewUnpaddedIntArray.length / i2;
        int[] iArr = this.mValueGap;
        int i3 = this.mRowGapStart;
        int i4 = this.mRows - (this.mRowGapLength + i3);
        int[] iArr2 = this.mValues;
        if (iArr2 != null) {
            System.arraycopy(iArr2, 0, iArrNewUnpaddedIntArray, 0, i2 * i3);
            System.arraycopy(this.mValues, (this.mRows - i4) * i2, iArrNewUnpaddedIntArray, (length - i4) * i2, i4 * i2);
        }
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = iArr[i5];
            if (i6 >= i3) {
                int i7 = (length - this.mRows) + i6;
                iArr[i5] = i7;
                if (i7 < i3) {
                    iArr[i5] = i3;
                }
            }
        }
        this.mRowGapLength = (length - this.mRows) + this.mRowGapLength;
        this.mRows = length;
        this.mValues = iArrNewUnpaddedIntArray;
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
                    int i12 = iArr[i10];
                    if (i8 >= i12) {
                        i11 += iArr[i10 + i6];
                    }
                    if (i9 >= i12) {
                        i11 -= iArr[i10 + i6];
                    }
                    iArr2[(i9 * i6) + i10] = i11;
                }
            }
        } else {
            int i13 = i3 - i2;
            int i14 = this.mColumns;
            int[] iArr3 = this.mValueGap;
            int[] iArr4 = this.mValues;
            int i15 = i3 + this.mRowGapLength;
            for (int i16 = (i2 + i13) - 1; i16 >= i2; i16--) {
                int i17 = ((i16 - i2) + i15) - i13;
                for (int i18 = 0; i18 < i14; i18++) {
                    int i19 = iArr4[(i16 * i14) + i18];
                    int i20 = iArr3[i18];
                    if (i16 >= i20) {
                        i19 += iArr3[i18 + i14];
                    }
                    if (i17 >= i20) {
                        i19 -= iArr3[i18 + i14];
                    }
                    iArr4[(i17 * i14) + i18] = i19;
                }
            }
        }
        this.mRowGapStart = i2;
    }

    private final void moveValueGapTo(int i2, int i3) {
        int[] iArr = this.mValueGap;
        int[] iArr2 = this.mValues;
        int i4 = this.mColumns;
        int i5 = iArr[i2];
        if (i3 == i5) {
            return;
        }
        if (i3 > i5) {
            while (i5 < i3) {
                int i6 = (i5 * i4) + i2;
                iArr2[i6] = iArr2[i6] + iArr[i2 + i4];
                i5++;
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
            throw new IndexOutOfBoundsException(c.d("row ", i2));
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
            int i3 = this.mColumns;
            while (true) {
                i3--;
                if (i3 < 0) {
                    return;
                } else {
                    setValueInternal(i2, i3, 0);
                }
            }
        } else {
            int i4 = this.mColumns;
            while (true) {
                i4--;
                if (i4 < 0) {
                    return;
                } else {
                    setValueInternal(i2, i4, iArr[i4]);
                }
            }
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
