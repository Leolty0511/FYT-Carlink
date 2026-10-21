package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.math.BigInteger;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible
final class MathPreconditions {
    private MathPreconditions() {
    }

    public static void checkInRangeForRoundingInputs(boolean z2, double d2, RoundingMode roundingMode) {
        if (z2) {
            return;
        }
        throw new ArithmeticException("rounded value is out of range for input " + d2 + " and rounding mode " + roundingMode);
    }

    public static void checkNoOverflow(boolean z2, String str, int i2, int i3) {
        if (z2) {
            return;
        }
        StringBuilder sb = new StringBuilder("overflow: ");
        sb.append(str);
        sb.append("(");
        sb.append(i2);
        sb.append(", ");
        throw new ArithmeticException(android.accessibilityservice.c.m(sb, i3, ")"));
    }

    @CanIgnoreReturnValue
    public static int checkNonNegative(String str, int i2) {
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " (" + i2 + ") must be >= 0");
    }

    @CanIgnoreReturnValue
    public static int checkPositive(String str, int i2) {
        if (i2 > 0) {
            return i2;
        }
        throw new IllegalArgumentException(str + " (" + i2 + ") must be > 0");
    }

    public static void checkRoundingUnnecessary(boolean z2) {
        if (!z2) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    @CanIgnoreReturnValue
    public static long checkNonNegative(String str, long j2) {
        if (j2 >= 0) {
            return j2;
        }
        throw new IllegalArgumentException(str + " (" + j2 + ") must be >= 0");
    }

    @CanIgnoreReturnValue
    public static long checkPositive(String str, long j2) {
        if (j2 > 0) {
            return j2;
        }
        throw new IllegalArgumentException(str + " (" + j2 + ") must be > 0");
    }

    @CanIgnoreReturnValue
    public static BigInteger checkNonNegative(String str, BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be >= 0");
    }

    @CanIgnoreReturnValue
    public static BigInteger checkPositive(String str, BigInteger bigInteger) {
        if (bigInteger.signum() > 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be > 0");
    }

    @CanIgnoreReturnValue
    public static double checkNonNegative(String str, double d2) {
        if (d2 >= 0.0d) {
            return d2;
        }
        throw new IllegalArgumentException(str + " (" + d2 + ") must be >= 0");
    }

    public static void checkNoOverflow(boolean z2, String str, long j2, long j3) {
        if (z2) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + j2 + ", " + j3 + ")");
    }
}
