package android.hardware.camera2;

import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes.dex */
public final class Rational {
    private final int mDenominator;
    private final int mNumerator;

    public Rational(int i2, int i3) {
        if (i3 < 0) {
            i2 = -i2;
            i3 = -i3;
        }
        this.mNumerator = i2;
        this.mDenominator = i3;
    }

    private boolean isInf() {
        return this.mDenominator == 0 && this.mNumerator > 0;
    }

    private boolean isNaN() {
        return this.mDenominator == 0 && this.mNumerator == 0;
    }

    private boolean isNegInf() {
        return this.mDenominator == 0 && this.mNumerator < 0;
    }

    public boolean equals(Object obj) {
        int i2;
        if (obj != null && (obj instanceof Rational)) {
            Rational rational = (Rational) obj;
            int i3 = this.mDenominator;
            if (i3 != 0 && (i2 = rational.mDenominator) != 0) {
                if (this.mNumerator == rational.mNumerator && i3 == i2) {
                    return true;
                }
                int iGcd = gcd();
                int iGcd2 = rational.gcd();
                return this.mNumerator / iGcd == rational.mNumerator / iGcd2 && this.mDenominator / iGcd == rational.mDenominator / iGcd2;
            }
            if (isNaN() && rational.isNaN()) {
                return true;
            }
            if ((isInf() && rational.isInf()) || (isNegInf() && rational.isNegInf())) {
                return true;
            }
        }
        return false;
    }

    public int gcd() {
        int i2 = this.mNumerator;
        int i3 = this.mDenominator;
        while (true) {
            int i4 = i3;
            int i5 = i2;
            i2 = i4;
            if (i2 == 0) {
                return Math.abs(i5);
            }
            i3 = i5 % i2;
        }
    }

    public int getDenominator() {
        return this.mDenominator;
    }

    public int getNumerator() {
        if (this.mDenominator == 0) {
            return 0;
        }
        return this.mNumerator;
    }

    public int hashCode() {
        return Long.valueOf(((((long) this.mNumerator) & ExpandableListView.PACKED_POSITION_VALUE_NULL) << 32) | (ExpandableListView.PACKED_POSITION_VALUE_NULL & ((long) this.mDenominator))).hashCode();
    }

    public float toFloat() {
        return this.mNumerator / this.mDenominator;
    }

    public String toString() {
        if (isNaN()) {
            return "NaN";
        }
        if (isInf()) {
            return "Infinity";
        }
        if (isNegInf()) {
            return "-Infinity";
        }
        return this.mNumerator + "/" + this.mDenominator;
    }
}
