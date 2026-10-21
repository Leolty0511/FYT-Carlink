package android.util;

import android.accessibilityservice.c;
import com.android.internal.util.Preconditions;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class Rational extends Number implements Comparable<Rational> {
    private static final long serialVersionUID = 1;
    private final int mDenominator;
    private final int mNumerator;
    public static final Rational NaN = new Rational(0, 0);
    public static final Rational POSITIVE_INFINITY = new Rational(1, 0);
    public static final Rational NEGATIVE_INFINITY = new Rational(-1, 0);
    public static final Rational ZERO = new Rational(0, 1);

    public Rational(int i2, int i3) {
        if (i3 < 0) {
            i2 = -i2;
            i3 = -i3;
        }
        if (i3 == 0 && i2 > 0) {
            this.mNumerator = 1;
            this.mDenominator = 0;
            return;
        }
        if (i3 == 0 && i2 < 0) {
            this.mNumerator = -1;
            this.mDenominator = 0;
            return;
        }
        if (i3 == 0 && i2 == 0) {
            this.mNumerator = 0;
            this.mDenominator = 0;
        } else if (i2 == 0) {
            this.mNumerator = 0;
            this.mDenominator = 1;
        } else {
            int iGcd = gcd(i2, i3);
            this.mNumerator = i2 / iGcd;
            this.mDenominator = i3 / iGcd;
        }
    }

    public static int gcd(int i2, int i3) {
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

    private static NumberFormatException invalidRational(String str) {
        throw new NumberFormatException(c.k("Invalid Rational: \"", str, "\""));
    }

    private boolean isNegInf() {
        return this.mDenominator == 0 && this.mNumerator < 0;
    }

    private boolean isPosInf() {
        return this.mDenominator == 0 && this.mNumerator > 0;
    }

    public static Rational parseRational(String str) {
        Preconditions.checkNotNull(str, "string must not be null");
        if (str.equals("NaN")) {
            return NaN;
        }
        if (str.equals("Infinity")) {
            return POSITIVE_INFINITY;
        }
        if (str.equals("-Infinity")) {
            return NEGATIVE_INFINITY;
        }
        int iIndexOf = str.indexOf(58);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(47);
        }
        if (iIndexOf < 0) {
            throw invalidRational(str);
        }
        try {
            return new Rational(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
        } catch (NumberFormatException unused) {
            throw invalidRational(str);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i2 = this.mNumerator;
        if (i2 == 0) {
            int i3 = this.mDenominator;
            if (i3 != 1 && i3 != 0) {
                throw new InvalidObjectException("Rational must be deserialized from a reduced form for zero values");
            }
            return;
        }
        int i4 = this.mDenominator;
        if (i4 != 0) {
            if (gcd(i2, i4) > 1) {
                throw new InvalidObjectException("Rational must be deserialized from a reduced form for finite values");
            }
        } else if (i2 != 1 && i2 != -1) {
            throw new InvalidObjectException("Rational must be deserialized from a reduced form for infinity values");
        }
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return ((double) this.mNumerator) / ((double) this.mDenominator);
    }

    public boolean equals(Object obj) {
        return (obj instanceof Rational) && equals((Rational) obj);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.mNumerator / this.mDenominator;
    }

    public int getDenominator() {
        return this.mDenominator;
    }

    public int getNumerator() {
        return this.mNumerator;
    }

    public int hashCode() {
        int i2 = this.mNumerator;
        return ((i2 >>> 16) | (i2 << 16)) ^ this.mDenominator;
    }

    @Override // java.lang.Number
    public int intValue() {
        if (isPosInf()) {
            return Integer.MAX_VALUE;
        }
        if (isNegInf()) {
            return Integer.MIN_VALUE;
        }
        if (isNaN()) {
            return 0;
        }
        return this.mNumerator / this.mDenominator;
    }

    public boolean isFinite() {
        return this.mDenominator != 0;
    }

    public boolean isInfinite() {
        return this.mNumerator != 0 && this.mDenominator == 0;
    }

    public boolean isNaN() {
        return this.mDenominator == 0 && this.mNumerator == 0;
    }

    public boolean isZero() {
        return isFinite() && this.mNumerator == 0;
    }

    @Override // java.lang.Number
    public long longValue() {
        if (isPosInf()) {
            return Long.MAX_VALUE;
        }
        if (isNegInf()) {
            return Long.MIN_VALUE;
        }
        if (isNaN()) {
            return 0L;
        }
        return this.mNumerator / this.mDenominator;
    }

    @Override // java.lang.Number
    public short shortValue() {
        return (short) intValue();
    }

    public float toFloat() {
        return floatValue();
    }

    public String toString() {
        if (isNaN()) {
            return "NaN";
        }
        if (isPosInf()) {
            return "Infinity";
        }
        if (isNegInf()) {
            return "-Infinity";
        }
        return this.mNumerator + "/" + this.mDenominator;
    }

    private boolean equals(Rational rational) {
        return this.mNumerator == rational.mNumerator && this.mDenominator == rational.mDenominator;
    }

    @Override // java.lang.Comparable
    public int compareTo(Rational rational) {
        Preconditions.checkNotNull(rational, "another must not be null");
        if (equals(rational)) {
            return 0;
        }
        if (isNaN()) {
            return 1;
        }
        if (rational.isNaN()) {
            return -1;
        }
        if (isPosInf() || rational.isNegInf()) {
            return 1;
        }
        if (isNegInf() || rational.isPosInf()) {
            return -1;
        }
        long j2 = ((long) this.mNumerator) * ((long) rational.mDenominator);
        long j3 = ((long) rational.mNumerator) * ((long) this.mDenominator);
        if (j2 < j3) {
            return -1;
        }
        return j2 > j3 ? 1 : 0;
    }
}
