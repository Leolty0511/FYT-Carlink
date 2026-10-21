package android.hardware.camera2.params;

import android.accessibilityservice.c;
import android.graphics.PointF;
import android.hardware.camera2.utils.HashCodeHelpers;
import com.android.internal.util.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class TonemapCurve {
    public static final int CHANNEL_BLUE = 2;
    public static final int CHANNEL_GREEN = 1;
    public static final int CHANNEL_RED = 0;
    public static final float LEVEL_BLACK = 0.0f;
    public static final float LEVEL_WHITE = 1.0f;
    private static final int MIN_CURVE_LENGTH = 4;
    private static final int OFFSET_POINT_IN = 0;
    private static final int OFFSET_POINT_OUT = 1;
    public static final int POINT_SIZE = 2;
    private static final int TONEMAP_MIN_CURVE_POINTS = 2;
    private final float[] mBlue;
    private final float[] mGreen;
    private boolean mHashCalculated = false;
    private int mHashCode;
    private final float[] mRed;

    public TonemapCurve(float[] fArr, float[] fArr2, float[] fArr3) {
        Preconditions.checkNotNull(fArr, "red must not be null");
        Preconditions.checkNotNull(fArr2, "green must not be null");
        Preconditions.checkNotNull(fArr3, "blue must not be null");
        checkArgumentArrayLengthDivisibleBy(fArr, 2, "red");
        checkArgumentArrayLengthDivisibleBy(fArr2, 2, "green");
        checkArgumentArrayLengthDivisibleBy(fArr3, 2, "blue");
        checkArgumentArrayLengthNoLessThan(fArr, 4, "red");
        checkArgumentArrayLengthNoLessThan(fArr2, 4, "green");
        checkArgumentArrayLengthNoLessThan(fArr3, 4, "blue");
        Preconditions.checkArrayElementsInRange(fArr, 0.0f, 1.0f, "red");
        Preconditions.checkArrayElementsInRange(fArr2, 0.0f, 1.0f, "green");
        Preconditions.checkArrayElementsInRange(fArr3, 0.0f, 1.0f, "blue");
        this.mRed = Arrays.copyOf(fArr, fArr.length);
        this.mGreen = Arrays.copyOf(fArr2, fArr2.length);
        this.mBlue = Arrays.copyOf(fArr3, fArr3.length);
    }

    private static void checkArgumentArrayLengthDivisibleBy(float[] fArr, int i2, String str) {
        if (fArr.length % i2 == 0) {
            return;
        }
        throw new IllegalArgumentException(str + " size must be divisible by " + i2);
    }

    private static void checkArgumentArrayLengthNoLessThan(float[] fArr, int i2, String str) {
        if (fArr.length >= i2) {
            return;
        }
        throw new IllegalArgumentException(str + " size must be at least " + i2);
    }

    private static int checkArgumentColorChannel(int i2) {
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            return i2;
        }
        throw new IllegalArgumentException("colorChannel out of range");
    }

    private String curveToString(int i2) {
        checkArgumentColorChannel(i2);
        StringBuilder sb = new StringBuilder("[");
        float[] curve = getCurve(i2);
        int length = curve.length / 2;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            sb.append("(");
            sb.append(curve[i4]);
            sb.append(", ");
            sb.append(curve[i4 + 1]);
            sb.append("), ");
            i3++;
            i4 += 2;
        }
        sb.setLength(sb.length() - 2);
        sb.append("]");
        return sb.toString();
    }

    private float[] getCurve(int i2) {
        if (i2 == 0) {
            return this.mRed;
        }
        if (i2 == 1) {
            return this.mGreen;
        }
        if (i2 == 2) {
            return this.mBlue;
        }
        throw new AssertionError("colorChannel out of range");
    }

    public void copyColorCurve(int i2, float[] fArr, int i3) {
        Preconditions.checkArgumentNonnegative(i3, "offset must not be negative");
        Preconditions.checkNotNull(fArr, "destination must not be null");
        if (fArr.length + i3 < getPointCount(i2) * 2) {
            throw new ArrayIndexOutOfBoundsException("destination too small to fit elements");
        }
        float[] curve = getCurve(i2);
        System.arraycopy(curve, 0, fArr, i3, curve.length);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TonemapCurve)) {
            return false;
        }
        TonemapCurve tonemapCurve = (TonemapCurve) obj;
        return Arrays.equals(this.mRed, tonemapCurve.mRed) && Arrays.equals(this.mGreen, tonemapCurve.mGreen) && Arrays.equals(this.mBlue, tonemapCurve.mBlue);
    }

    public PointF getPoint(int i2, int i3) {
        checkArgumentColorChannel(i2);
        if (i3 < 0 || i3 >= getPointCount(i2)) {
            throw new IllegalArgumentException("index out of range");
        }
        float[] curve = getCurve(i2);
        int i4 = i3 * 2;
        return new PointF(curve[i4 + 0], curve[i4 + 1]);
    }

    public int getPointCount(int i2) {
        checkArgumentColorChannel(i2);
        return getCurve(i2).length / 2;
    }

    public int hashCode() {
        if (this.mHashCalculated) {
            return this.mHashCode;
        }
        int iHashCodeGeneric = HashCodeHelpers.hashCodeGeneric(this.mRed, this.mGreen, this.mBlue);
        this.mHashCode = iHashCodeGeneric;
        this.mHashCalculated = true;
        return iHashCodeGeneric;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TonemapCurve{R:");
        sb.append(curveToString(0));
        sb.append(", G:");
        sb.append(curveToString(1));
        sb.append(", B:");
        return c.n(sb, curveToString(2), "}");
    }
}
