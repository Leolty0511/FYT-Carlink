package android.hardware.camera2.params;

import android.accessibilityservice.c;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class RggbChannelVector {
    public static final int BLUE = 3;
    public static final int COUNT = 4;
    public static final int GREEN_EVEN = 1;
    public static final int GREEN_ODD = 2;
    public static final int RED = 0;
    private final float mBlue;
    private final float mGreenEven;
    private final float mGreenOdd;
    private final float mRed;

    public RggbChannelVector(float f2, float f3, float f4, float f5) {
        this.mRed = Preconditions.checkArgumentFinite(f2, "red");
        this.mGreenEven = Preconditions.checkArgumentFinite(f3, "greenEven");
        this.mGreenOdd = Preconditions.checkArgumentFinite(f4, "greenOdd");
        this.mBlue = Preconditions.checkArgumentFinite(f5, "blue");
    }

    private String toShortString() {
        return String.format("{R:%f, G_even:%f, G_odd:%f, B:%f}", Float.valueOf(this.mRed), Float.valueOf(this.mGreenEven), Float.valueOf(this.mGreenOdd), Float.valueOf(this.mBlue));
    }

    public void copyTo(float[] fArr, int i2) {
        Preconditions.checkNotNull(fArr, "destination must not be null");
        if (fArr.length - i2 < 4) {
            throw new ArrayIndexOutOfBoundsException("destination too small to fit elements");
        }
        fArr[i2 + 0] = this.mRed;
        fArr[i2 + 1] = this.mGreenEven;
        fArr[i2 + 2] = this.mGreenOdd;
        fArr[i2 + 3] = this.mBlue;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RggbChannelVector)) {
            return false;
        }
        RggbChannelVector rggbChannelVector = (RggbChannelVector) obj;
        return this.mRed == rggbChannelVector.mRed && this.mGreenEven == rggbChannelVector.mGreenEven && this.mGreenOdd == rggbChannelVector.mGreenOdd && this.mBlue == rggbChannelVector.mBlue;
    }

    public float getBlue() {
        return this.mBlue;
    }

    public float getComponent(int i2) {
        if (i2 < 0 || i2 >= 4) {
            throw new IllegalArgumentException("Color channel out of range");
        }
        if (i2 == 0) {
            return this.mRed;
        }
        if (i2 == 1) {
            return this.mGreenEven;
        }
        if (i2 == 2) {
            return this.mGreenOdd;
        }
        if (i2 == 3) {
            return this.mBlue;
        }
        throw new AssertionError(c.d("Unhandled case ", i2));
    }

    public float getGreenEven() {
        return this.mGreenEven;
    }

    public float getGreenOdd() {
        return this.mGreenOdd;
    }

    public final float getRed() {
        return this.mRed;
    }

    public int hashCode() {
        return ((Float.floatToIntBits(this.mRed) ^ Float.floatToIntBits(this.mGreenEven)) ^ Float.floatToIntBits(this.mGreenOdd)) ^ Float.floatToIntBits(this.mBlue);
    }

    public String toString() {
        return String.format("RggbChannelVector%s", toShortString());
    }
}
