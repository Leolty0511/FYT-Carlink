package android.hardware.camera2.params;

import android.accessibilityservice.c;
import android.app.m;
import android.hardware.camera2.utils.HashCodeHelpers;
import android.util.Rational;
import com.android.internal.util.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ColorSpaceTransform {
    private static final int COLUMNS = 3;
    private static final int COUNT = 9;
    private static final int COUNT_INT = 18;
    private static final int OFFSET_DENOMINATOR = 1;
    private static final int OFFSET_NUMERATOR = 0;
    private static final int RATIONAL_SIZE = 2;
    private static final int ROWS = 3;
    private final int[] mElements;

    public ColorSpaceTransform(Rational[] rationalArr) {
        Preconditions.checkNotNull(rationalArr, "elements must not be null");
        if (rationalArr.length != 9) {
            throw new IllegalArgumentException("elements must be 9 length");
        }
        this.mElements = new int[18];
        for (int i2 = 0; i2 < rationalArr.length; i2++) {
            Preconditions.checkNotNull(rationalArr, c.e("element[", i2, "] must not be null"));
            int i3 = i2 * 2;
            this.mElements[i3 + 0] = rationalArr[i2].getNumerator();
            this.mElements[i3 + 1] = rationalArr[i2].getDenominator();
        }
    }

    private String toShortString() {
        StringBuilder sb = new StringBuilder("(");
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            sb.append("[");
            int i4 = 0;
            while (i4 < 3) {
                int[] iArr = this.mElements;
                int i5 = iArr[i2 + 0];
                int i6 = iArr[i2 + 1];
                sb.append(i5);
                sb.append("/");
                sb.append(i6);
                if (i4 < 2) {
                    sb.append(", ");
                }
                i4++;
                i2 += 2;
            }
            sb.append("]");
            if (i3 < 2) {
                sb.append(", ");
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void copyElements(Rational[] rationalArr, int i2) {
        Preconditions.checkArgumentNonnegative(i2, "offset must not be negative");
        Preconditions.checkNotNull(rationalArr, "destination must not be null");
        if (rationalArr.length - i2 < 9) {
            throw new ArrayIndexOutOfBoundsException("destination too small to fit elements");
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < 9) {
            int[] iArr = this.mElements;
            rationalArr[i3 + i2] = new Rational(iArr[i4 + 0], iArr[i4 + 1]);
            i3++;
            i4 += 2;
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorSpaceTransform)) {
            return false;
        }
        ColorSpaceTransform colorSpaceTransform = (ColorSpaceTransform) obj;
        int i2 = 0;
        int i3 = 0;
        while (i2 < 9) {
            int[] iArr = this.mElements;
            int i4 = i3 + 0;
            int i5 = iArr[i4];
            int i6 = i3 + 1;
            int i7 = iArr[i6];
            int[] iArr2 = colorSpaceTransform.mElements;
            if (!new Rational(i5, i7).equals((Object) new Rational(iArr2[i4], iArr2[i6]))) {
                return false;
            }
            i2++;
            i3 += 2;
        }
        return true;
    }

    public Rational getElement(int i2, int i3) {
        if (i2 < 0 || i2 >= 3) {
            throw new IllegalArgumentException("column out of range");
        }
        if (i3 < 0 || i3 >= 3) {
            throw new IllegalArgumentException("row out of range");
        }
        int[] iArr = this.mElements;
        int iD = m.D(i3, 3, i2, 2);
        return new Rational(iArr[iD + 0], iArr[iD + 1]);
    }

    public int hashCode() {
        return HashCodeHelpers.hashCode(this.mElements);
    }

    public String toString() {
        return String.format("ColorSpaceTransform%s", toShortString());
    }

    public void copyElements(int[] iArr, int i2) {
        Preconditions.checkArgumentNonnegative(i2, "offset must not be negative");
        Preconditions.checkNotNull(iArr, "destination must not be null");
        if (iArr.length - i2 < 18) {
            throw new ArrayIndexOutOfBoundsException("destination too small to fit elements");
        }
        for (int i3 = 0; i3 < 18; i3++) {
            iArr[i3 + i2] = this.mElements[i3];
        }
    }

    public ColorSpaceTransform(int[] iArr) {
        Preconditions.checkNotNull(iArr, "elements must not be null");
        if (iArr.length == 18) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                Preconditions.checkNotNull(iArr, "element " + i2 + " must not be null");
            }
            this.mElements = Arrays.copyOf(iArr, iArr.length);
            return;
        }
        throw new IllegalArgumentException("elements must be 18 length");
    }
}
