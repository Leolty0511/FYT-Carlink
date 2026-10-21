package com.google.common.math;

import android.app.backup.FullBackup;
import android.app.job.JobInfo;
import android.telephony.PreciseDisconnectCause;
import android.util.TimeUtils;
import com.android.internal.logging.nano.MetricsProto;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import com.google.common.primitives.UnsignedLongs;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
public final class LongMath {

    @VisibleForTesting
    static final long FLOOR_SQRT_MAX_LONG = 3037000499L;

    @VisibleForTesting
    static final long MAX_POWER_OF_SQRT2_UNSIGNED = -5402926248376769404L;

    @VisibleForTesting
    static final long MAX_SIGNED_POWER_OF_TWO = 4611686018427387904L;
    private static final int SIEVE_30 = -545925251;

    @VisibleForTesting
    static final byte[] maxLog10ForLeadingZeros = {19, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, 17, 17, 17, 16, 16, 16, 15, 15, 15, 15, 14, 14, 14, Ascii.CR, Ascii.CR, Ascii.CR, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.VT, Ascii.VT, Ascii.VT, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0};

    @VisibleForTesting
    @J2ktIncompatible
    @GwtIncompatible
    static final long[] powersOf10 = {1, 10, 100, 1000, JobInfo.MIN_BACKOFF_MILLIS, 100000, TimeUtils.NANOS_PER_MS, 10000000, 100000000, 1000000000, 10000000000L, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};

    @VisibleForTesting
    @J2ktIncompatible
    @GwtIncompatible
    static final long[] halfPowersOf10 = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};
    static final long[] factorials = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};
    static final int[] biggestBinomials = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, 1733, MetricsProto.MetricsEvent.ACTION_APPOP_REQUEST_SYSTEM_ALERT_WINDOW, MetricsProto.MetricsEvent.DIALOG_REMOVE_USER, 361, 265, 206, 169, 143, 125, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};

    @VisibleForTesting
    static final int[] biggestSimpleBinomials = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, PreciseDisconnectCause.SIP_NOT_SUPPORTED, MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_WRITE_CALL_LOG, 419, 287, 214, 169, 139, 119, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};
    private static final long[][] millerRabinBaseSets = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    /* JADX INFO: renamed from: com.google.common.math.LongMath$1, reason: invalid class name */
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

    public enum MillerRabinTester {
        SMALL { // from class: com.google.common.math.LongMath.MillerRabinTester.1
            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long mulMod(long j2, long j3, long j4) {
                return (j2 * j3) % j4;
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long squareMod(long j2, long j3) {
                return (j2 * j2) % j3;
            }
        },
        LARGE { // from class: com.google.common.math.LongMath.MillerRabinTester.2
            private long plusMod(long j2, long j3, long j4) {
                long j5 = j2 + j3;
                return j2 >= j4 - j3 ? j5 - j4 : j5;
            }

            private long times2ToThe32Mod(long j2, long j3) {
                int i2 = 32;
                do {
                    int iMin = Math.min(i2, Long.numberOfLeadingZeros(j2));
                    j2 = UnsignedLongs.remainder(j2 << iMin, j3);
                    i2 -= iMin;
                } while (i2 > 0);
                return j2;
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long mulMod(long j2, long j3, long j4) {
                long j5 = j2 >>> 32;
                long j6 = j3 >>> 32;
                long j7 = j2 & 4294967295L;
                long j8 = j3 & 4294967295L;
                long jTimes2ToThe32Mod = (j5 * j8) + times2ToThe32Mod(j5 * j6, j4);
                if (jTimes2ToThe32Mod < 0) {
                    jTimes2ToThe32Mod = UnsignedLongs.remainder(jTimes2ToThe32Mod, j4);
                }
                Long.signum(j7);
                return plusMod(times2ToThe32Mod((j6 * j7) + jTimes2ToThe32Mod, j4), UnsignedLongs.remainder(j7 * j8, j4), j4);
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long squareMod(long j2, long j3) {
                long j4 = j2 >>> 32;
                long j5 = j2 & 4294967295L;
                long jTimes2ToThe32Mod = times2ToThe32Mod(j4 * j4, j3);
                long jRemainder = j4 * j5 * 2;
                if (jRemainder < 0) {
                    jRemainder = UnsignedLongs.remainder(jRemainder, j3);
                }
                return plusMod(times2ToThe32Mod(jTimes2ToThe32Mod + jRemainder, j3), UnsignedLongs.remainder(j5 * j5, j3), j3);
            }
        };

        private long powMod(long j2, long j3, long j4) {
            long jMulMod = 1;
            while (j3 != 0) {
                if ((j3 & 1) != 0) {
                    jMulMod = mulMod(jMulMod, j2, j4);
                }
                j2 = squareMod(j2, j4);
                j3 >>= 1;
            }
            return jMulMod;
        }

        public static boolean test(long j2, long j3) {
            return (j3 <= LongMath.FLOOR_SQRT_MAX_LONG ? SMALL : LARGE).testWitness(j2, j3);
        }

        private boolean testWitness(long j2, long j3) {
            long j4 = j3 - 1;
            int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j4);
            long j5 = j4 >> iNumberOfTrailingZeros;
            long j6 = j2 % j3;
            if (j6 == 0) {
                return true;
            }
            long jPowMod = powMod(j6, j5, j3);
            if (jPowMod == 1) {
                return true;
            }
            int i2 = 0;
            while (jPowMod != j4) {
                i2++;
                if (i2 == iNumberOfTrailingZeros) {
                    return false;
                }
                jPowMod = squareMod(jPowMod, j3);
            }
            return true;
        }

        public abstract long mulMod(long j2, long j3, long j4);

        public abstract long squareMod(long j2, long j3);

        /* synthetic */ MillerRabinTester(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private LongMath() {
    }

    public static long binomial(int i2, int i3) {
        MathPreconditions.checkNonNegative("n", i2);
        MathPreconditions.checkNonNegative(FullBackup.KEY_VALUE_DATA_TOKEN, i3);
        Preconditions.checkArgument(i3 <= i2, "k (%s) > n (%s)", i3, i2);
        if (i3 > (i2 >> 1)) {
            i3 = i2 - i3;
        }
        long jMultiplyFraction = 1;
        if (i3 == 0) {
            return 1L;
        }
        if (i3 == 1) {
            return i2;
        }
        long[] jArr = factorials;
        if (i2 < jArr.length) {
            return jArr[i2] / (jArr[i3] * jArr[i2 - i3]);
        }
        int[] iArr = biggestBinomials;
        if (i3 >= iArr.length || i2 > iArr[i3]) {
            return Long.MAX_VALUE;
        }
        int[] iArr2 = biggestSimpleBinomials;
        if (i3 < iArr2.length && i2 <= iArr2[i3]) {
            int i4 = i2 - 1;
            long j2 = i2;
            for (int i5 = 2; i5 <= i3; i5++) {
                j2 = (j2 * ((long) i4)) / ((long) i5);
                i4--;
            }
            return j2;
        }
        long j3 = i2;
        int iLog2 = log2(j3, RoundingMode.CEILING);
        int i6 = i2 - 1;
        int i7 = iLog2;
        int i8 = 2;
        long j4 = j3;
        long j5 = 1;
        while (i8 <= i3) {
            i7 += iLog2;
            if (i7 < 63) {
                j4 *= (long) i6;
                j5 *= (long) i8;
            } else {
                jMultiplyFraction = multiplyFraction(jMultiplyFraction, j4, j5);
                j4 = i6;
                j5 = i8;
                i7 = iLog2;
            }
            i8++;
            i6--;
        }
        return multiplyFraction(jMultiplyFraction, j4, j5);
    }

    public static long ceilingPowerOfTwo(long j2) {
        MathPreconditions.checkPositive("x", j2);
        if (j2 <= 4611686018427387904L) {
            return 1 << (-Long.numberOfLeadingZeros(j2 - 1));
        }
        throw new ArithmeticException("ceilingPowerOfTwo(" + j2 + ") is not representable as a long");
    }

    public static long checkedAdd(long j2, long j3) {
        long j4 = j2 + j3;
        MathPreconditions.checkNoOverflow(((j2 ^ j3) < 0) | ((j2 ^ j4) >= 0), "checkedAdd", j2, j3);
        return j4;
    }

    public static long checkedMultiply(long j2, long j3) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(~j3) + Long.numberOfLeadingZeros(j3) + Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2);
        if (iNumberOfLeadingZeros > 65) {
            return j2 * j3;
        }
        MathPreconditions.checkNoOverflow(iNumberOfLeadingZeros >= 64, "checkedMultiply", j2, j3);
        MathPreconditions.checkNoOverflow((j2 >= 0) | (j3 != Long.MIN_VALUE), "checkedMultiply", j2, j3);
        long j4 = j2 * j3;
        MathPreconditions.checkNoOverflow(j2 == 0 || j4 / j2 == j3, "checkedMultiply", j2, j3);
        return j4;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static long checkedPow(long j2, int i2) {
        MathPreconditions.checkNonNegative("exponent", i2);
        long jCheckedMultiply = 1;
        if ((j2 >= -2) && (j2 <= 2)) {
            int i3 = (int) j2;
            if (i3 == -2) {
                MathPreconditions.checkNoOverflow(i2 < 64, "checkedPow", j2, i2);
                return (i2 & 1) == 0 ? 1 << i2 : (-1) << i2;
            }
            if (i3 == -1) {
                return (i2 & 1) == 0 ? 1L : -1L;
            }
            if (i3 == 0) {
                return i2 == 0 ? 1L : 0L;
            }
            if (i3 == 1) {
                return 1L;
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            MathPreconditions.checkNoOverflow(i2 < 63, "checkedPow", j2, i2);
            return 1 << i2;
        }
        long j3 = j2;
        int i4 = i2;
        while (i4 != 0) {
            if (i4 == 1) {
                return checkedMultiply(jCheckedMultiply, j3);
            }
            if ((i4 & 1) != 0) {
                jCheckedMultiply = checkedMultiply(jCheckedMultiply, j3);
            }
            long j4 = jCheckedMultiply;
            int i5 = i4 >> 1;
            if (i5 > 0) {
                MathPreconditions.checkNoOverflow(-3037000499L <= j3 && j3 <= FLOOR_SQRT_MAX_LONG, "checkedPow", j3, i5);
                j3 *= j3;
            }
            i4 = i5;
            jCheckedMultiply = j4;
        }
        return jCheckedMultiply;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static long checkedSubtract(long j2, long j3) {
        long j4 = j2 - j3;
        MathPreconditions.checkNoOverflow(((j2 ^ j3) >= 0) | ((j2 ^ j4) >= 0), "checkedSubtract", j2, j3);
        return j4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x0057  */
    /* JADX WARN: Code duplicated, block: B:30:0x005a  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @J2ktIncompatible
    @GwtIncompatible
    public static long divide(long j2, long j3, RoundingMode roundingMode) {
        Preconditions.checkNotNull(roundingMode);
        long j4 = j2 / j3;
        long j5 = j2 - (j3 * j4);
        if (j5 == 0) {
            return j4;
        }
        boolean z2 = true;
        int i2 = ((int) ((j2 ^ j3) >> 63)) | 1;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(j5 == 0);
                z2 = false;
                if (z2) {
                    return j4 + ((long) i2);
                }
                return j4;
            case 2:
                z2 = false;
                if (z2) {
                    return j4 + ((long) i2);
                }
                return j4;
            case 3:
                if (i2 >= 0) {
                    z2 = false;
                }
                if (z2) {
                    return j4 + ((long) i2);
                }
                return j4;
            case 4:
                if (z2) {
                    return j4 + ((long) i2);
                }
                return j4;
            case 5:
                if (i2 <= 0) {
                    z2 = false;
                }
                if (z2) {
                    return j4 + ((long) i2);
                }
                return j4;
            case 6:
            case 7:
            case 8:
                long jAbs = Math.abs(j5);
                long jAbs2 = jAbs - (Math.abs(j3) - jAbs);
                if (jAbs2 != 0 ? jAbs2 <= 0 : roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j4) == 0)) {
                    z2 = false;
                }
                if (z2) {
                    return j4 + ((long) i2);
                }
                return j4;
            default:
                throw new AssertionError();
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static long factorial(int i2) {
        MathPreconditions.checkNonNegative("n", i2);
        long[] jArr = factorials;
        if (i2 < jArr.length) {
            return jArr[i2];
        }
        return Long.MAX_VALUE;
    }

    public static boolean fitsInInt(long j2) {
        return ((long) ((int) j2)) == j2;
    }

    public static long floorPowerOfTwo(long j2) {
        MathPreconditions.checkPositive("x", j2);
        return 1 << (63 - Long.numberOfLeadingZeros(j2));
    }

    public static long gcd(long j2, long j3) {
        MathPreconditions.checkNonNegative(FullBackup.APK_TREE_TOKEN, j2);
        MathPreconditions.checkNonNegative("b", j3);
        if (j2 == 0) {
            return j3;
        }
        if (j3 == 0) {
            return j2;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j2);
        long jNumberOfTrailingZeros = j2 >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j3);
        long j4 = j3 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j4) {
            long j5 = jNumberOfTrailingZeros - j4;
            long j6 = (j5 >> 63) & j5;
            long j7 = (j5 - j6) - j6;
            j4 += j6;
            jNumberOfTrailingZeros = j7 >> Long.numberOfTrailingZeros(j7);
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    public static boolean isPowerOfTwo(long j2) {
        return (j2 > 0) & ((j2 & (j2 - 1)) == 0);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static boolean isPrime(long j2) {
        if (j2 < 2) {
            MathPreconditions.checkNonNegative("n", j2);
            return false;
        }
        if (j2 < 66) {
            return ((722865708377213483 >> (((int) j2) + (-2))) & 1) != 0;
        }
        if (((1 << ((int) (j2 % 30))) & SIEVE_30) != 0 || j2 % 7 == 0 || j2 % 11 == 0 || j2 % 13 == 0) {
            return false;
        }
        if (j2 < 289) {
            return true;
        }
        for (long[] jArr : millerRabinBaseSets) {
            if (j2 <= jArr[0]) {
                for (int i2 = 1; i2 < jArr.length; i2++) {
                    if (!MillerRabinTester.test(jArr[i2], j2)) {
                        return false;
                    }
                }
                return true;
            }
        }
        throw new AssertionError();
    }

    @VisibleForTesting
    public static int lessThanBranchFree(long j2, long j3) {
        return (int) ((~(~(j2 - j3))) >>> 63);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static int log10(long j2, RoundingMode roundingMode) {
        int iLessThanBranchFree;
        MathPreconditions.checkPositive("x", j2);
        int iLog10Floor = log10Floor(j2);
        long j3 = powersOf10[iLog10Floor];
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(j2 == j3);
            case 2:
            case 3:
                return iLog10Floor;
            case 4:
            case 5:
                iLessThanBranchFree = lessThanBranchFree(j3, j2);
                return iLessThanBranchFree + iLog10Floor;
            case 6:
            case 7:
            case 8:
                iLessThanBranchFree = lessThanBranchFree(halfPowersOf10[iLog10Floor], j2);
                return iLessThanBranchFree + iLog10Floor;
            default:
                throw new AssertionError();
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static int log10Floor(long j2) {
        byte b2 = maxLog10ForLeadingZeros[Long.numberOfLeadingZeros(j2)];
        return b2 - lessThanBranchFree(j2, powersOf10[b2]);
    }

    public static int log2(long j2, RoundingMode roundingMode) {
        MathPreconditions.checkPositive("x", j2);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(j2));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 64 - Long.numberOfLeadingZeros(j2 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(j2);
                return lessThanBranchFree(MAX_POWER_OF_SQRT2_UNSIGNED >>> iNumberOfLeadingZeros, j2) + (63 - iNumberOfLeadingZeros);
            default:
                throw new AssertionError("impossible");
        }
        return 63 - Long.numberOfLeadingZeros(j2);
    }

    public static long mean(long j2, long j3) {
        return (j2 & j3) + ((j2 ^ j3) >> 1);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static int mod(long j2, int i2) {
        return (int) mod(j2, i2);
    }

    public static long multiplyFraction(long j2, long j3, long j4) {
        if (j2 == 1) {
            return j3 / j4;
        }
        long jGcd = gcd(j2, j4);
        return (j3 / (j4 / jGcd)) * (j2 / jGcd);
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static long pow(long j2, int i2) {
        MathPreconditions.checkNonNegative("exponent", i2);
        if (-2 > j2 || j2 > 2) {
            long j3 = 1;
            while (i2 != 0) {
                if (i2 == 1) {
                    return j3 * j2;
                }
                j3 *= (i2 & 1) == 0 ? 1L : j2;
                j2 *= j2;
                i2 >>= 1;
            }
            return j3;
        }
        int i3 = (int) j2;
        if (i3 == -2) {
            if (i2 < 64) {
                return (i2 & 1) == 0 ? 1 << i2 : -(1 << i2);
            }
            return 0L;
        }
        if (i3 == -1) {
            return (i2 & 1) == 0 ? 1L : -1L;
        }
        if (i3 == 0) {
            return i2 == 0 ? 1L : 0L;
        }
        if (i3 == 1) {
            return 1L;
        }
        if (i3 != 2) {
            throw new AssertionError();
        }
        if (i2 < 64) {
            return 1 << i2;
        }
        return 0L;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static double roundToDouble(long j2, RoundingMode roundingMode) {
        double dNextUp;
        long jCeil;
        double d2 = j2;
        long jFloor = (long) d2;
        int iCompare = jFloor == Long.MAX_VALUE ? -1 : Longs.compare(j2, jFloor);
        int[] iArr = AnonymousClass1.$SwitchMap$java$math$RoundingMode;
        switch (iArr[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(iCompare == 0);
                return d2;
            case 2:
                if (j2 >= 0) {
                    return iCompare >= 0 ? d2 : DoubleUtils.nextDown(d2);
                }
                return iCompare <= 0 ? d2 : Math.nextUp(d2);
            case 3:
                return iCompare >= 0 ? d2 : DoubleUtils.nextDown(d2);
            case 4:
                if (j2 >= 0) {
                    return iCompare <= 0 ? d2 : Math.nextUp(d2);
                }
                return iCompare >= 0 ? d2 : DoubleUtils.nextDown(d2);
            case 5:
                return iCompare <= 0 ? d2 : Math.nextUp(d2);
            case 6:
            case 7:
            case 8:
                if (iCompare >= 0) {
                    dNextUp = Math.nextUp(d2);
                    jCeil = (long) Math.ceil(dNextUp);
                } else {
                    double dNextDown = DoubleUtils.nextDown(d2);
                    jFloor = (long) Math.floor(dNextDown);
                    dNextUp = d2;
                    d2 = dNextDown;
                    jCeil = jFloor;
                }
                long j3 = j2 - jFloor;
                long j4 = jCeil - j2;
                if (jCeil == Long.MAX_VALUE) {
                    j4++;
                }
                int iCompare2 = Longs.compare(j3, j4);
                if (iCompare2 < 0) {
                    return d2;
                }
                if (iCompare2 > 0) {
                    return dNextUp;
                }
                int i2 = iArr[roundingMode.ordinal()];
                if (i2 == 6) {
                    return j2 >= 0 ? d2 : dNextUp;
                }
                if (i2 == 7) {
                    return j2 >= 0 ? dNextUp : d2;
                }
                if (i2 == 8) {
                    return (DoubleUtils.getSignificand(d2) & 1) == 0 ? d2 : dNextUp;
                }
                throw new AssertionError("impossible");
            default:
                throw new AssertionError("impossible");
        }
    }

    public static long saturatedAdd(long j2, long j3) {
        long j4 = j2 + j3;
        return (((j3 ^ j2) > 0L ? 1 : ((j3 ^ j2) == 0L ? 0 : -1)) < 0) | ((j2 ^ j4) >= 0) ? j4 : ((j4 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    public static long saturatedMultiply(long j2, long j3) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros(~j3) + Long.numberOfLeadingZeros(j3) + Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2);
        if (iNumberOfLeadingZeros > 65) {
            return j2 * j3;
        }
        long j4 = ((j2 ^ j3) >>> 63) + Long.MAX_VALUE;
        if ((iNumberOfLeadingZeros < 64) || ((j3 == Long.MIN_VALUE) & (j2 < 0))) {
            return j4;
        }
        long j5 = j2 * j3;
        return (j2 == 0 || j5 / j2 == j3) ? j5 : j4;
    }

    public static long saturatedPow(long j2, int i2) {
        MathPreconditions.checkNonNegative("exponent", i2);
        long jSaturatedMultiply = 1;
        if (!(j2 >= -2) || !(j2 <= 2)) {
            long j3 = ((j2 >>> 63) & ((long) (i2 & 1))) + Long.MAX_VALUE;
            while (i2 != 0) {
                if (i2 == 1) {
                    return saturatedMultiply(jSaturatedMultiply, j2);
                }
                if ((i2 & 1) != 0) {
                    jSaturatedMultiply = saturatedMultiply(jSaturatedMultiply, j2);
                }
                i2 >>= 1;
                if (i2 > 0) {
                    if ((-3037000499L > j2) || (j2 > FLOOR_SQRT_MAX_LONG)) {
                        return j3;
                    }
                    j2 *= j2;
                }
            }
            return jSaturatedMultiply;
        }
        int i3 = (int) j2;
        if (i3 == -2) {
            if (i2 >= 64) {
                return ((long) (i2 & 1)) + Long.MAX_VALUE;
            }
            return (i2 & 1) == 0 ? 1 << i2 : (-1) << i2;
        }
        if (i3 == -1) {
            return (i2 & 1) == 0 ? 1L : -1L;
        }
        if (i3 == 0) {
            return i2 == 0 ? 1L : 0L;
        }
        if (i3 == 1) {
            return 1L;
        }
        if (i3 != 2) {
            throw new AssertionError();
        }
        if (i2 >= 63) {
            return Long.MAX_VALUE;
        }
        return 1 << i2;
    }

    public static long saturatedSubtract(long j2, long j3) {
        long j4 = j2 - j3;
        return (((j3 ^ j2) > 0L ? 1 : ((j3 ^ j2) == 0L ? 0 : -1)) >= 0) | ((j2 ^ j4) >= 0) ? j4 : ((j4 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static long sqrt(long j2, RoundingMode roundingMode) {
        MathPreconditions.checkNonNegative("x", j2);
        if (fitsInInt(j2)) {
            return IntMath.sqrt((int) j2, roundingMode);
        }
        long jSqrt = (long) Math.sqrt(j2);
        long j3 = jSqrt * jSqrt;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(j3 == j2);
                return jSqrt;
            case 2:
            case 3:
                return j2 < j3 ? jSqrt - 1 : jSqrt;
            case 4:
            case 5:
                return j2 > j3 ? jSqrt + 1 : jSqrt;
            case 6:
            case 7:
            case 8:
                long j4 = jSqrt - ((long) (j2 >= j3 ? 0 : 1));
                return j4 + ((long) lessThanBranchFree((j4 * j4) + j4, j2));
            default:
                throw new AssertionError();
        }
    }

    @J2ktIncompatible
    @GwtIncompatible
    public static long mod(long j2, long j3) {
        if (j3 <= 0) {
            throw new ArithmeticException("Modulus must be positive");
        }
        long j4 = j2 % j3;
        return j4 >= 0 ? j4 : j4 + j3;
    }
}
