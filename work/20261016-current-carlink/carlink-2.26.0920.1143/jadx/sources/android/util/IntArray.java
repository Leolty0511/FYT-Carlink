package android.util;

import com.android.internal.app.DumpHeapActivity;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import java.util.Arrays;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class IntArray implements Cloneable {
    private static final int MIN_CAPACITY_INCREMENT = 12;
    private int mSize;
    private int[] mValues;

    private IntArray(int[] iArr, int i2) {
        this.mValues = iArr;
        this.mSize = Preconditions.checkArgumentInRange(i2, 0, iArr.length, DumpHeapActivity.KEY_SIZE);
    }

    private void checkBounds(int i2) {
        if (i2 < 0 || this.mSize <= i2) {
            throw new ArrayIndexOutOfBoundsException(this.mSize, i2);
        }
    }

    private void ensureCapacity(int i2) {
        int i3 = this.mSize;
        int i4 = i2 + i3;
        if (i4 >= this.mValues.length) {
            int i5 = (i3 < 6 ? 12 : i3 >> 1) + i3;
            if (i5 > i4) {
                i4 = i5;
            }
            int[] iArrNewUnpaddedIntArray = ArrayUtils.newUnpaddedIntArray(i4);
            System.arraycopy(this.mValues, 0, iArrNewUnpaddedIntArray, 0, i3);
            this.mValues = iArrNewUnpaddedIntArray;
        }
    }

    public static IntArray fromArray(int[] iArr, int i2) {
        return wrap(Arrays.copyOf(iArr, i2));
    }

    public static IntArray wrap(int[] iArr) {
        return new IntArray(iArr, iArr.length);
    }

    public void add(int i2) {
        add(this.mSize, i2);
    }

    public void addAll(IntArray intArray) {
        int i2 = intArray.mSize;
        ensureCapacity(i2);
        System.arraycopy(intArray.mValues, 0, this.mValues, this.mSize, i2);
        this.mSize += i2;
    }

    public int binarySearch(int i2) {
        return ContainerHelpers.binarySearch(this.mValues, this.mSize, i2);
    }

    public void clear() {
        this.mSize = 0;
    }

    public int get(int i2) {
        checkBounds(i2);
        return this.mValues[i2];
    }

    public int indexOf(int i2) {
        int i3 = this.mSize;
        for (int i4 = 0; i4 < i3; i4++) {
            if (this.mValues[i4] == i2) {
                return i4;
            }
        }
        return -1;
    }

    public void remove(int i2) {
        checkBounds(i2);
        int[] iArr = this.mValues;
        System.arraycopy(iArr, i2 + 1, iArr, i2, (this.mSize - i2) - 1);
        this.mSize--;
    }

    public void resize(int i2) {
        Preconditions.checkArgumentNonnegative(i2);
        int[] iArr = this.mValues;
        if (i2 <= iArr.length) {
            Arrays.fill(iArr, i2, iArr.length, 0);
        } else {
            ensureCapacity(i2 - this.mSize);
        }
        this.mSize = i2;
    }

    public void set(int i2, int i3) {
        checkBounds(i2);
        this.mValues[i2] = i3;
    }

    public int size() {
        return this.mSize;
    }

    public int[] toArray() {
        return Arrays.copyOf(this.mValues, this.mSize);
    }

    public void add(int i2, int i3) {
        ensureCapacity(1);
        int i4 = this.mSize;
        int i5 = i4 - i2;
        this.mSize = i4 + 1;
        checkBounds(i2);
        if (i5 != 0) {
            int[] iArr = this.mValues;
            System.arraycopy(iArr, i2, iArr, i2 + 1, i5);
        }
        this.mValues[i2] = i3;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public IntArray m28clone() {
        IntArray intArray = (IntArray) super.clone();
        intArray.mValues = (int[]) this.mValues.clone();
        return intArray;
    }

    public IntArray() {
        this(10);
    }

    public IntArray(int i2) {
        if (i2 == 0) {
            this.mValues = EmptyArray.INT;
        } else {
            this.mValues = ArrayUtils.newUnpaddedIntArray(i2);
        }
        this.mSize = 0;
    }
}
