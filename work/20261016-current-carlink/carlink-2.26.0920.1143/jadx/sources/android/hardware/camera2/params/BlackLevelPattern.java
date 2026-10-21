package android.hardware.camera2.params;

import com.android.internal.util.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class BlackLevelPattern {
    public static final int COUNT = 4;
    private final int[] mCfaOffsets;

    public BlackLevelPattern(int[] iArr) {
        if (iArr == null) {
            throw new NullPointerException("Null offsets array passed to constructor");
        }
        if (iArr.length < 4) {
            throw new IllegalArgumentException("Invalid offsets array length");
        }
        this.mCfaOffsets = Arrays.copyOf(iArr, 4);
    }

    public void copyTo(int[] iArr, int i2) {
        Preconditions.checkNotNull(iArr, "destination must not be null");
        if (i2 < 0) {
            throw new IllegalArgumentException("Null offset passed to copyTo");
        }
        if (iArr.length - i2 < 4) {
            throw new ArrayIndexOutOfBoundsException("destination too small to fit elements");
        }
        for (int i3 = 0; i3 < 4; i3++) {
            iArr[i2 + i3] = this.mCfaOffsets[i3];
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof BlackLevelPattern) {
            return Arrays.equals(((BlackLevelPattern) obj).mCfaOffsets, this.mCfaOffsets);
        }
        return false;
    }

    public int getOffsetForIndex(int i2, int i3) {
        if (i3 < 0 || i2 < 0) {
            throw new IllegalArgumentException("column, row arguments must be positive");
        }
        return this.mCfaOffsets[(i2 & 1) | ((i3 & 1) << 1)];
    }

    public int hashCode() {
        return Arrays.hashCode(this.mCfaOffsets);
    }

    public String toString() {
        return String.format("BlackLevelPattern([%d, %d], [%d, %d])", Integer.valueOf(this.mCfaOffsets[0]), Integer.valueOf(this.mCfaOffsets[1]), Integer.valueOf(this.mCfaOffsets[2]), Integer.valueOf(this.mCfaOffsets[3]));
    }
}
