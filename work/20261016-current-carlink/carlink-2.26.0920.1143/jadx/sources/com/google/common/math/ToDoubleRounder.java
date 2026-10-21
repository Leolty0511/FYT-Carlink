package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import java.lang.Comparable;
import java.lang.Number;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@J2ktIncompatible
@GwtIncompatible
abstract class ToDoubleRounder<X extends Number & Comparable<X>> {

    /* JADX INFO: renamed from: com.google.common.math.ToDoubleRounder$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UNNECESSARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public abstract X minus(X x2, X x3);

    public final double roundToDouble(X x2, RoundingMode roundingMode) {
        Number x3;
        double dNextUp;
        Preconditions.checkNotNull(x2, "x");
        Preconditions.checkNotNull(roundingMode, "mode");
        double dRoundToDoubleArbitrarily = roundToDoubleArbitrarily(x2);
        if (Double.isInfinite(dRoundToDoubleArbitrarily)) {
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return ((double) sign(x2)) * Double.MAX_VALUE;
                case 5:
                    return dRoundToDoubleArbitrarily == Double.POSITIVE_INFINITY ? Double.MAX_VALUE : Double.NEGATIVE_INFINITY;
                case 6:
                    return dRoundToDoubleArbitrarily == Double.POSITIVE_INFINITY ? Double.POSITIVE_INFINITY : -1.7976931348623157E308d;
                case 7:
                    return dRoundToDoubleArbitrarily;
                case 8:
                    throw new ArithmeticException(x2 + " cannot be represented precisely as a double");
            }
        }
        Number x4 = toX(dRoundToDoubleArbitrarily, RoundingMode.UNNECESSARY);
        int iCompareTo = ((Comparable) x2).compareTo(x4);
        int[] iArr = AnonymousClass1.$SwitchMap$java$math$RoundingMode;
        switch (iArr[roundingMode.ordinal()]) {
            case 1:
                if (sign(x2) >= 0) {
                    return iCompareTo >= 0 ? dRoundToDoubleArbitrarily : DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                }
                return iCompareTo <= 0 ? dRoundToDoubleArbitrarily : Math.nextUp(dRoundToDoubleArbitrarily);
            case 2:
            case 3:
            case 4:
                if (iCompareTo >= 0) {
                    dNextUp = Math.nextUp(dRoundToDoubleArbitrarily);
                    if (dNextUp == Double.POSITIVE_INFINITY) {
                        return dRoundToDoubleArbitrarily;
                    }
                    x3 = toX(dNextUp, RoundingMode.CEILING);
                } else {
                    double dNextDown = DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                    if (dNextDown == Double.NEGATIVE_INFINITY) {
                        return dRoundToDoubleArbitrarily;
                    }
                    Number x5 = toX(dNextDown, RoundingMode.FLOOR);
                    x3 = x4;
                    x4 = x5;
                    dNextUp = dRoundToDoubleArbitrarily;
                    dRoundToDoubleArbitrarily = dNextDown;
                }
                int iCompareTo2 = ((Comparable) minus(x2, x4)).compareTo(minus(x3, x2));
                if (iCompareTo2 < 0) {
                    return dRoundToDoubleArbitrarily;
                }
                if (iCompareTo2 > 0) {
                    return dNextUp;
                }
                int i2 = iArr[roundingMode.ordinal()];
                if (i2 == 2) {
                    return (Double.doubleToRawLongBits(dRoundToDoubleArbitrarily) & 1) == 0 ? dRoundToDoubleArbitrarily : dNextUp;
                }
                if (i2 == 3) {
                    return sign(x2) >= 0 ? dRoundToDoubleArbitrarily : dNextUp;
                }
                if (i2 == 4) {
                    return sign(x2) >= 0 ? dNextUp : dRoundToDoubleArbitrarily;
                }
                throw new AssertionError("impossible");
            case 5:
                return iCompareTo >= 0 ? dRoundToDoubleArbitrarily : DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
            case 6:
                return iCompareTo <= 0 ? dRoundToDoubleArbitrarily : Math.nextUp(dRoundToDoubleArbitrarily);
            case 7:
                if (sign(x2) >= 0) {
                    return iCompareTo <= 0 ? dRoundToDoubleArbitrarily : Math.nextUp(dRoundToDoubleArbitrarily);
                }
                return iCompareTo >= 0 ? dRoundToDoubleArbitrarily : DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
            case 8:
                MathPreconditions.checkRoundingUnnecessary(iCompareTo == 0);
                return dRoundToDoubleArbitrarily;
            default:
                throw new AssertionError("impossible");
        }
    }

    public abstract double roundToDoubleArbitrarily(X x2);

    public abstract int sign(X x2);

    public abstract X toX(double d2, RoundingMode roundingMode);
}
