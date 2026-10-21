package android.hardware.camera2.params;

import android.app.m;
import android.hardware.camera2.utils.HashCodeHelpers;
import com.android.internal.util.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class LensShadingMap {
    public static final float MINIMUM_GAIN_FACTOR = 1.0f;
    private final int mColumns;
    private final float[] mElements;
    private final int mRows;

    public LensShadingMap(float[] fArr, int i2, int i3) {
        this.mRows = Preconditions.checkArgumentPositive(i2, "rows must be positive");
        this.mColumns = Preconditions.checkArgumentPositive(i3, "columns must be positive");
        this.mElements = (float[]) Preconditions.checkNotNull(fArr, "elements must not be null");
        if (fArr.length == getGainFactorCount()) {
            Preconditions.checkArrayElementsInRange(fArr, 1.0f, Float.MAX_VALUE, "elements");
            return;
        }
        throw new IllegalArgumentException("elements must be " + getGainFactorCount() + " length, received " + fArr.length);
    }

    public void copyGainFactors(float[] fArr, int i2) {
        Preconditions.checkArgumentNonnegative(i2, "offset must not be negative");
        Preconditions.checkNotNull(fArr, "destination must not be null");
        if (fArr.length + i2 < getGainFactorCount()) {
            throw new ArrayIndexOutOfBoundsException("destination too small to fit elements");
        }
        System.arraycopy(this.mElements, 0, fArr, i2, getGainFactorCount());
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LensShadingMap)) {
            return false;
        }
        LensShadingMap lensShadingMap = (LensShadingMap) obj;
        return this.mRows == lensShadingMap.mRows && this.mColumns == lensShadingMap.mColumns && Arrays.equals(this.mElements, lensShadingMap.mElements);
    }

    public int getColumnCount() {
        return this.mColumns;
    }

    public float getGainFactor(int i2, int i3, int i4) {
        int i5;
        if (i2 < 0 || i2 > 4) {
            throw new IllegalArgumentException("colorChannel out of range");
        }
        if (i3 < 0 || i3 >= (i5 = this.mColumns)) {
            throw new IllegalArgumentException("column out of range");
        }
        if (i4 < 0 || i4 >= this.mRows) {
            throw new IllegalArgumentException("row out of range");
        }
        return this.mElements[(((i4 * i5) + i3) * 4) + i2];
    }

    public int getGainFactorCount() {
        return this.mRows * this.mColumns * 4;
    }

    public RggbChannelVector getGainFactorVector(int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 >= (i4 = this.mColumns)) {
            throw new IllegalArgumentException("column out of range");
        }
        if (i3 < 0 || i3 >= this.mRows) {
            throw new IllegalArgumentException("row out of range");
        }
        int iD = m.D(i3, i4, i2, 4);
        float[] fArr = this.mElements;
        return new RggbChannelVector(fArr[iD + 0], fArr[iD + 1], fArr[iD + 2], fArr[iD + 3]);
    }

    public int getRowCount() {
        return this.mRows;
    }

    public int hashCode() {
        return HashCodeHelpers.hashCode(this.mRows, this.mColumns, HashCodeHelpers.hashCode(this.mElements));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LensShadingMap{");
        String[] strArr = {"R:(", "G_even:(", "G_odd:(", "B:("};
        for (int i2 = 0; i2 < 4; i2++) {
            sb.append(strArr[i2]);
            for (int i3 = 0; i3 < this.mRows; i3++) {
                sb.append("[");
                for (int i4 = 0; i4 < this.mColumns; i4++) {
                    sb.append(getGainFactor(i2, i4, i3));
                    if (i4 < this.mColumns - 1) {
                        sb.append(", ");
                    }
                }
                sb.append("]");
                if (i3 < this.mRows - 1) {
                    sb.append(", ");
                }
            }
            sb.append(")");
            if (i2 < 3) {
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }
}
