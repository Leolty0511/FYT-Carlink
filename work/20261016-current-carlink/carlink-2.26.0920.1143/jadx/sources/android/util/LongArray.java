package android.util;

import com.android.internal.app.DumpHeapActivity;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import java.util.Arrays;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class LongArray implements Cloneable {
    private static final int MIN_CAPACITY_INCREMENT = 12;
    private int mSize;
    private long[] mValues;

    private LongArray(long[] jArr, int i2) {
        this.mValues = jArr;
        this.mSize = Preconditions.checkArgumentInRange(i2, 0, jArr.length, DumpHeapActivity.KEY_SIZE);
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
            long[] jArrNewUnpaddedLongArray = ArrayUtils.newUnpaddedLongArray(i4);
            System.arraycopy(this.mValues, 0, jArrNewUnpaddedLongArray, 0, i3);
            this.mValues = jArrNewUnpaddedLongArray;
        }
    }

    public static LongArray fromArray(long[] jArr, int i2) {
        return wrap(Arrays.copyOf(jArr, i2));
    }

    public static LongArray wrap(long[] jArr) {
        return new LongArray(jArr, jArr.length);
    }

    public void add(long j2) {
        add(this.mSize, j2);
    }

    public void addAll(LongArray longArray) {
        int i2 = longArray.mSize;
        ensureCapacity(i2);
        System.arraycopy(longArray.mValues, 0, this.mValues, this.mSize, i2);
        this.mSize += i2;
    }

    public void clear() {
        this.mSize = 0;
    }

    public long get(int i2) {
        checkBounds(i2);
        return this.mValues[i2];
    }

    public int indexOf(long j2) {
        int i2 = this.mSize;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.mValues[i3] == j2) {
                return i3;
            }
        }
        return -1;
    }

    public void remove(int i2) {
        checkBounds(i2);
        long[] jArr = this.mValues;
        System.arraycopy(jArr, i2 + 1, jArr, i2, (this.mSize - i2) - 1);
        this.mSize--;
    }

    public void resize(int i2) {
        Preconditions.checkArgumentNonnegative(i2);
        long[] jArr = this.mValues;
        if (i2 <= jArr.length) {
            Arrays.fill(jArr, i2, jArr.length, 0L);
        } else {
            ensureCapacity(i2 - this.mSize);
        }
        this.mSize = i2;
    }

    public void set(int i2, long j2) {
        checkBounds(i2);
        this.mValues[i2] = j2;
    }

    public int size() {
        return this.mSize;
    }

    public long[] toArray() {
        return Arrays.copyOf(this.mValues, this.mSize);
    }

    public void add(int i2, long j2) {
        ensureCapacity(1);
        int i3 = this.mSize;
        int i4 = i3 - i2;
        this.mSize = i3 + 1;
        checkBounds(i2);
        if (i4 != 0) {
            long[] jArr = this.mValues;
            System.arraycopy(jArr, i2, jArr, i2 + 1, i4);
        }
        this.mValues[i2] = j2;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongArray m29clone() {
        LongArray longArray = null;
        try {
            LongArray longArray2 = (LongArray) super.clone();
            try {
                longArray2.mValues = (long[]) this.mValues.clone();
                return longArray2;
            } catch (CloneNotSupportedException unused) {
                longArray = longArray2;
                return longArray;
            }
        } catch (CloneNotSupportedException unused2) {
        }
    }

    public LongArray() {
        this(10);
    }

    public LongArray(int i2) {
        if (i2 == 0) {
            this.mValues = EmptyArray.LONG;
        } else {
            this.mValues = ArrayUtils.newUnpaddedLongArray(i2);
        }
        this.mSize = 0;
    }
}
