package android.hardware.camera2.params;

import android.hardware.camera2.utils.HashCodeHelpers;
import com.android.internal.util.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ReprocessFormatsMap {
    private final int[] mEntry;
    private final int mInputCount;

    public ReprocessFormatsMap(int[] iArr) {
        Preconditions.checkNotNull(iArr, "entry must not be null");
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < iArr.length) {
            int iCheckArgumentFormatInternal = StreamConfigurationMap.checkArgumentFormatInternal(iArr[i2]);
            int i4 = length - 1;
            int i5 = i2 + 1;
            if (i4 < 1) {
                throw new IllegalArgumentException(String.format("Input %x had no output format length listed", Integer.valueOf(iCheckArgumentFormatInternal)));
            }
            int i6 = iArr[i5];
            length = i4 - 1;
            i2 = i5 + 1;
            for (int i7 = 0; i7 < i6; i7++) {
                StreamConfigurationMap.checkArgumentFormatInternal(iArr[i2 + i7]);
            }
            if (i6 > 0) {
                if (length < i6) {
                    throw new IllegalArgumentException(String.format("Input %x had too few output formats listed (actual: %d, expected: %d)", Integer.valueOf(iCheckArgumentFormatInternal), Integer.valueOf(length), Integer.valueOf(i6)));
                }
                i2 += i6;
                length -= i6;
            }
            i3++;
        }
        this.mEntry = iArr;
        this.mInputCount = i3;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof ReprocessFormatsMap) {
            return Arrays.equals(this.mEntry, ((ReprocessFormatsMap) obj).mEntry);
        }
        return false;
    }

    public int[] getInputs() {
        int[] iArr = new int[this.mInputCount];
        int length = this.mEntry.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.mEntry;
            if (i2 >= iArr2.length) {
                return StreamConfigurationMap.imageFormatToPublic(iArr);
            }
            int i4 = iArr2[i2];
            int i5 = length - 1;
            int i6 = i2 + 1;
            if (i5 < 1) {
                throw new AssertionError(String.format("Input %x had no output format length listed", Integer.valueOf(i4)));
            }
            int i7 = iArr2[i6];
            length = i5 - 1;
            i2 = i6 + 1;
            if (i7 > 0) {
                if (length < i7) {
                    throw new AssertionError(String.format("Input %x had too few output formats listed (actual: %d, expected: %d)", Integer.valueOf(i4), Integer.valueOf(length), Integer.valueOf(i7)));
                }
                i2 += i7;
                length -= i7;
            }
            iArr[i3] = i4;
            i3++;
        }
    }

    public int[] getOutputs(int i2) {
        int length = this.mEntry.length;
        int i3 = 0;
        while (true) {
            int[] iArr = this.mEntry;
            if (i3 >= iArr.length) {
                throw new IllegalArgumentException(String.format("Input format %x was not one in #getInputs", Integer.valueOf(i2)));
            }
            int i4 = iArr[i3];
            int i5 = length - 1;
            int i6 = i3 + 1;
            if (i5 < 1) {
                throw new AssertionError(String.format("Input %x had no output format length listed", Integer.valueOf(i2)));
            }
            int i7 = iArr[i6];
            int i8 = i5 - 1;
            int i9 = i6 + 1;
            if (i7 > 0 && i8 < i7) {
                throw new AssertionError(String.format("Input %x had too few output formats listed (actual: %d, expected: %d)", Integer.valueOf(i2), Integer.valueOf(i8), Integer.valueOf(i7)));
            }
            if (i4 == i2) {
                int[] iArr2 = new int[i7];
                for (int i10 = 0; i10 < i7; i10++) {
                    iArr2[i10] = this.mEntry[i9 + i10];
                }
                return StreamConfigurationMap.imageFormatToPublic(iArr2);
            }
            i3 = i9 + i7;
            length = i8 - i7;
        }
    }

    public int hashCode() {
        return HashCodeHelpers.hashCode(this.mEntry);
    }
}
