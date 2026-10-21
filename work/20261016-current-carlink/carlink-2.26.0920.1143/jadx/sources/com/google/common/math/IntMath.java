package com.google.common.math;

import android.app.backup.FullBackup;
import android.os.UserHandle;
import com.android.internal.logging.nano.MetricsProto;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
public final class IntMath {

    @VisibleForTesting
    static final int FLOOR_SQRT_MAX_INT = 46340;

    @VisibleForTesting
    static final int MAX_POWER_OF_SQRT2_UNSIGNED = -1257966797;

    @VisibleForTesting
    static final int MAX_SIGNED_POWER_OF_TWO = 1073741824;

    @VisibleForTesting
    static final byte[] maxLog10ForLeadingZeros = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    @VisibleForTesting
    static final int[] powersOf10 = {1, 10, 100, 1000, 10000, UserHandle.PER_USER_RANGE, 1000000, 10000000, 100000000, 1000000000};

    @VisibleForTesting
    static final int[] halfPowersOf10 = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
    private static final int[] factorials = {1, 1, 2, 6, 24, 120, MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_RECEIVE_WAP_PUSH, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    @VisibleForTesting
    static int[] biggestBinomials = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, MetricsProto.MetricsEvent.ACTION_SELECT_SUPPORT_FRAGMENT, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* JADX INFO: renamed from: com.google.common.math.IntMath$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private IntMath() {
    }

    public static int binomial(int i2, int i3) {
        MathPreconditions.checkNonNegative("n", i2);
        MathPreconditions.checkNonNegative(FullBackup.KEY_VALUE_DATA_TOKEN, i3);
        int i4 = 0;
        Preconditions.checkArgument(i3 <= i2, "k (%s) > n (%s)", i3, i2);
        if (i3 > (i2 >> 1)) {
            i3 = i2 - i3;
        }
        int[] iArr = biggestBinomials;
        if (i3 >= iArr.length || i2 > iArr[i3]) {
            return Integer.MAX_VALUE;
        }
        if (i3 == 0) {
            return 1;
        }
        if (i3 == 1) {
            return i2;
        }
        long j2 = 1;
        while (i4 < i3) {
            long j3 = j2 * ((long) (i2 - i4));
            i4++;
            j2 = j3 / ((long) i4);
        }
        return (int) j2;
    }

    public static int ceilingPowerOfTwo(int i2) {
        MathPreconditions.checkPositive("x", i2);
        if (i2 <= 1073741824) {
            return 1 << (-Integer.numberOfLeadingZeros(i2 - 1));
        }
        throw new ArithmeticException(android.accessibilityservice.c.e("ceilingPowerOfTwo(", i2, ") not representable as an int"));
    }

    public static int checkedAdd(int i2, int i3) {
        long j2 = ((long) i2) + ((long) i3);
        int i4 = (int) j2;
        MathPreconditions.checkNoOverflow(j2 == ((long) i4), "checkedAdd", i2, i3);
        return i4;
    }

    public static int checkedMultiply(int i2, int i3) {
        long j2 = ((long) i2) * ((long) i3);
        int i4 = (int) j2;
        MathPreconditions.checkNoOverflow(j2 == ((long) i4), "checkedMultiply", i2, i3);
        return i4;
    }

    public static int checkedPow(int i2, int i3) {
        MathPreconditions.checkNonNegative("exponent", i3);
        if (i2 == -2) {
            MathPreconditions.checkNoOverflow(i3 < 32, "checkedPow", i2, i3);
            return (i3 & 1) == 0 ? 1 << i3 : (-1) << i3;
        }
        if (i2 == -1) {
            return (i3 & 1) == 0 ? 1 : -1;
        }
        if (i2 == 0) {
            return i3 == 0 ? 1 : 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            MathPreconditions.checkNoOverflow(i3 < 31, "checkedPow", i2, i3);
            return 1 << i3;
        }
        int iCheckedMultiply = 1;
        while (i3 != 0) {
            if (i3 == 1) {
                return checkedMultiply(iCheckedMultiply, i2);
            }
            if ((i3 & 1) != 0) {
                iCheckedMultiply = checkedMultiply(iCheckedMultiply, i2);
            }
            i3 >>= 1;
            if (i3 > 0) {
                MathPreconditions.checkNoOverflow((-46340 <= i2) & (i2 <= FLOOR_SQRT_MAX_INT), "checkedPow", i2, i3);
                i2 *= i2;
            }
        }
        return iCheckedMultiply;
    }

    public static int checkedSubtract(int i2, int i3) {
        long j2 = ((long) i2) - ((long) i3);
        int i4 = (int) j2;
        MathPreconditions.checkNoOverflow(j2 == ((long) i4), "checkedSubtract", i2, i3);
        return i4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x0057  */
    /* JADX WARN: Code duplicated, block: B:38:0x005a  */
    /* JADX WARN: Code duplicated, block: B:42:? A[RETURN, SYNTHETIC] */
    public static int divide(int i2, int i3, RoundingMode roundingMode) {
        Preconditions.checkNotNull(roundingMode);
        if (i3 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i4 = i2 / i3;
        int i5 = i2 - (i3 * i4);
        if (i5 == 0) {
            return i4;
        }
        boolean z2 = true;
        int i6 = ((i2 ^ i3) >> 31) | 1;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(i5 == 0);
                z2 = false;
                if (z2) {
                    return i4 + i6;
                }
                return i4;
            case 2:
                z2 = false;
                if (z2) {
                    return i4 + i6;
                }
                return i4;
            case 3:
                if (i6 >= 0) {
                    z2 = false;
                }
                if (z2) {
                    return i4 + i6;
                }
                return i4;
            case 4:
                if (z2) {
                    return i4 + i6;
                }
                return i4;
            case 5:
                if (i6 <= 0) {
                    z2 = false;
                }
                if (z2) {
                    return i4 + i6;
                }
                return i4;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i5);
                int iAbs2 = iAbs - (Math.abs(i3) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i4 & 1) != 0))) {
                            z2 = false;
                        }
                    }
                } else if (iAbs2 <= 0) {
                    z2 = false;
                }
                if (z2) {
                    return i4 + i6;
                }
                return i4;
            default:
                throw new AssertionError();
        }
    }

    public static int factorial(int i2) {
        MathPreconditions.checkNonNegative("n", i2);
        int[] iArr = factorials;
        if (i2 < iArr.length) {
            return iArr[i2];
        }
        return Integer.MAX_VALUE;
    }

    public static int floorPowerOfTwo(int i2) {
        MathPreconditions.checkPositive("x", i2);
        return Integer.highestOneBit(i2);
    }

    public static int gcd(int i2, int i3) {
        MathPreconditions.checkNonNegative(FullBackup.APK_TREE_TOKEN, i2);
        MathPreconditions.checkNonNegative("b", i3);
        if (i2 == 0) {
            return i3;
        }
        if (i3 == 0) {
            return i2;
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i2);
        int iNumberOfTrailingZeros2 = i2 >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros3 = Integer.numberOfTrailingZeros(i3);
        int i4 = i3 >> iNumberOfTrailingZeros3;
        while (iNumberOfTrailingZeros2 != i4) {
            int i5 = iNumberOfTrailingZeros2 - i4;
            int i6 = (i5 >> 31) & i5;
            int i7 = (i5 - i6) - i6;
            i4 += i6;
            iNumberOfTrailingZeros2 = i7 >> Integer.numberOfTrailingZeros(i7);
        }
        return iNumberOfTrailingZeros2 << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros3);
    }

    public static boolean isPowerOfTwo(int i2) {
        return (i2 > 0) & ((i2 & (i2 + (-1))) == 0);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean isPrime(int i2) {
        return LongMath.isPrime(i2);
    }

    @VisibleForTesting
    public static int lessThanBranchFree(int i2, int i3) {
        return (~(~(i2 - i3))) >>> 31;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static int log10(int i2, RoundingMode roundingMode) {
        int iLessThanBranchFree;
        MathPreconditions.checkPositive("x", i2);
        int iLog10Floor = log10Floor(i2);
        int i3 = powersOf10[iLog10Floor];
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(i2 == i3);
            case 2:
            case 3:
                return iLog10Floor;
            case 4:
            case 5:
                iLessThanBranchFree = lessThanBranchFree(i3, i2);
                return iLessThanBranchFree + iLog10Floor;
            case 6:
            case 7:
            case 8:
                iLessThanBranchFree = lessThanBranchFree(halfPowersOf10[iLog10Floor], i2);
                return iLessThanBranchFree + iLog10Floor;
            default:
                throw new AssertionError();
        }
    }

    private static int log10Floor(int i2) {
        byte b2 = maxLog10ForLeadingZeros[Integer.numberOfLeadingZeros(i2)];
        return b2 - lessThanBranchFree(i2, powersOf10[b2]);
    }

    public static int log2(int i2, RoundingMode roundingMode) {
        MathPreconditions.checkPositive("x", i2);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(i2));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i2 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i2);
                return lessThanBranchFree(MAX_POWER_OF_SQRT2_UNSIGNED >>> iNumberOfLeadingZeros, i2) + (31 - iNumberOfLeadingZeros);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i2);
    }

    public static int mean(int i2, int i3) {
        return (i2 & i3) + ((i2 ^ i3) >> 1);
    }

    public static int mod(int i2, int i3) {
        if (i3 <= 0) {
            throw new ArithmeticException(android.accessibilityservice.c.e("Modulus ", i3, " must be > 0"));
        }
        int i4 = i2 % i3;
        return i4 >= 0 ? i4 : i4 + i3;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static int pow(int i2, int i3) {
        MathPreconditions.checkNonNegative("exponent", i3);
        if (i2 == -2) {
            if (i3 < 32) {
                return (i3 & 1) == 0 ? 1 << i3 : -(1 << i3);
            }
            return 0;
        }
        if (i2 == -1) {
            return (i3 & 1) == 0 ? 1 : -1;
        }
        if (i2 == 0) {
            return i3 == 0 ? 1 : 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            if (i3 < 32) {
                return 1 << i3;
            }
            return 0;
        }
        int i4 = 1;
        while (i3 != 0) {
            if (i3 == 1) {
                return i2 * i4;
            }
            i4 *= (i3 & 1) == 0 ? 1 : i2;
            i2 *= i2;
            i3 >>= 1;
        }
        return i4;
    }

    public static int saturatedAdd(int i2, int i3) {
        return Ints.saturatedCast(((long) i2) + ((long) i3));
    }

    public static int saturatedMultiply(int i2, int i3) {
        return Ints.saturatedCast(((long) i2) * ((long) i3));
    }

    public static int saturatedPow(int i2, int i3) {
        MathPreconditions.checkNonNegative("exponent", i3);
        if (i2 == -2) {
            if (i3 >= 32) {
                return (i3 & 1) + Integer.MAX_VALUE;
            }
            return (i3 & 1) == 0 ? 1 << i3 : (-1) << i3;
        }
        if (i2 == -1) {
            return (i3 & 1) == 0 ? 1 : -1;
        }
        if (i2 == 0) {
            return i3 == 0 ? 1 : 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            if (i3 >= 31) {
                return Integer.MAX_VALUE;
            }
            return 1 << i3;
        }
        int i4 = ((i2 >>> 31) & i3 & 1) + Integer.MAX_VALUE;
        int iSaturatedMultiply = 1;
        while (i3 != 0) {
            if (i3 == 1) {
                return saturatedMultiply(iSaturatedMultiply, i2);
            }
            if ((i3 & 1) != 0) {
                iSaturatedMultiply = saturatedMultiply(iSaturatedMultiply, i2);
            }
            i3 >>= 1;
            if (i3 > 0) {
                if ((-46340 > i2) || (i2 > FLOOR_SQRT_MAX_INT)) {
                    return i4;
                }
                i2 *= i2;
            }
        }
        return iSaturatedMultiply;
    }

    public static int saturatedSubtract(int i2, int i3) {
        return Ints.saturatedCast(((long) i2) - ((long) i3));
    }

    @GwtIncompatible
    public static int sqrt(int i2, RoundingMode roundingMode) {
        int iLessThanBranchFree;
        MathPreconditions.checkNonNegative("x", i2);
        int iSqrtFloor = sqrtFloor(i2);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(iSqrtFloor * iSqrtFloor == i2);
            case 2:
            case 3:
                return iSqrtFloor;
            case 4:
            case 5:
                iLessThanBranchFree = lessThanBranchFree(iSqrtFloor * iSqrtFloor, i2);
                return iLessThanBranchFree + iSqrtFloor;
            case 6:
            case 7:
            case 8:
                iLessThanBranchFree = lessThanBranchFree((iSqrtFloor * iSqrtFloor) + iSqrtFloor, i2);
                return iLessThanBranchFree + iSqrtFloor;
            default:
                throw new AssertionError();
        }
    }

    private static int sqrtFloor(int i2) {
        return (int) Math.sqrt(i2);
    }
}
