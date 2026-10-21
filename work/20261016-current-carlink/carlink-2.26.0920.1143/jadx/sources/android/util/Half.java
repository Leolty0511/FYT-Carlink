package android.util;

import sun.misc.FloatingDecimal;

/* JADX INFO: loaded from: classes2.dex */
public final class Half extends Number implements Comparable<Half> {
    public static final short EPSILON = 5120;
    private static final int FP16_COMBINED = 32767;
    private static final int FP16_EXPONENT_BIAS = 15;
    private static final int FP16_EXPONENT_MASK = 31;
    private static final int FP16_EXPONENT_MAX = 31744;
    private static final int FP16_EXPONENT_SHIFT = 10;
    private static final int FP16_SIGNIFICAND_MASK = 1023;
    private static final int FP16_SIGN_MASK = 32768;
    private static final int FP16_SIGN_SHIFT = 15;
    private static final int FP32_EXPONENT_BIAS = 127;
    private static final int FP32_EXPONENT_MASK = 255;
    private static final int FP32_EXPONENT_SHIFT = 23;
    private static final int FP32_SIGNIFICAND_MASK = 8388607;
    private static final int FP32_SIGN_SHIFT = 31;
    public static final short LOWEST_VALUE = -1025;
    public static final int MAX_EXPONENT = 15;
    public static final short MAX_VALUE = 31743;
    public static final int MIN_EXPONENT = -14;
    public static final short MIN_NORMAL = 1024;
    public static final short MIN_VALUE = 1;
    public static final short NEGATIVE_INFINITY = -1024;
    public static final short NEGATIVE_ZERO = Short.MIN_VALUE;
    public static final short NaN = 32256;
    public static final short POSITIVE_INFINITY = 31744;
    public static final short POSITIVE_ZERO = 0;
    public static final int SIZE = 16;
    private final short mValue;
    private static final int FP32_DENORMAL_MAGIC = 1056964608;
    private static final float FP32_DENORMAL_FLOAT = Float.intBitsToFloat(FP32_DENORMAL_MAGIC);

    public Half(short s2) {
        this.mValue = s2;
    }

    public static short abs(short s2) {
        return (short) (s2 & Short.MAX_VALUE);
    }

    public static short ceil(short s2) {
        int i2 = s2 & 65535;
        int i3 = i2 & 32767;
        if (i3 < 15360) {
            i2 = ((-((~(i2 >> 15)) & (i3 == 0 ? 0 : 1))) & 15360) | (32768 & i2);
        } else if (i3 < 25600) {
            int i4 = (1 << (25 - (i3 >> 10))) - 1;
            i2 = (i2 + (i4 & ((i2 >> 15) - 1))) & (~i4);
        }
        return (short) i2;
    }

    public static int compare(short s2, short s3) {
        if (less(s2, s3)) {
            return -1;
        }
        if (greater(s2, s3)) {
            return 1;
        }
        if ((s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            s2 = 32256;
        }
        if ((s3 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            s3 = 32256;
        }
        if (s2 == s3) {
            return 0;
        }
        return s2 < s3 ? -1 : 1;
    }

    public static short copySign(short s2, short s3) {
        return (short) ((s2 & Short.MAX_VALUE) | (s3 & NEGATIVE_ZERO));
    }

    public static boolean equals(short s2, short s3) {
        if ((s2 & Short.MAX_VALUE) <= FP16_EXPONENT_MAX && (s3 & Short.MAX_VALUE) <= FP16_EXPONENT_MAX) {
            return s2 == s3 || ((s2 | s3) & 32767) == 0;
        }
        return false;
    }

    public static short floor(short s2) {
        int i2 = s2 & 65535;
        int i3 = i2 & 32767;
        if (i3 < 15360) {
            i2 = ((i2 <= 32768 ? 0 : 65535) & 15360) | (i2 & 32768);
        } else if (i3 < 25600) {
            int i4 = (1 << (25 - (i3 >> 10))) - 1;
            i2 = (i2 + ((-(i2 >> 15)) & i4)) & (~i4);
        }
        return (short) i2;
    }

    public static int getExponent(short s2) {
        return ((s2 >>> 10) & 31) - 15;
    }

    public static int getSign(short s2) {
        return (s2 & NEGATIVE_ZERO) == 0 ? 1 : -1;
    }

    public static int getSignificand(short s2) {
        return s2 & 1023;
    }

    public static boolean greater(short s2, short s3) {
        if ((s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX || (s3 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return false;
        }
        int i2 = s2 & NEGATIVE_ZERO;
        int i3 = s2 & 65535;
        if (i2 != 0) {
            i3 = 32768 - i3;
        }
        return i3 > ((s3 & NEGATIVE_ZERO) != 0 ? 32768 - (s3 & 65535) : s3 & 65535);
    }

    public static boolean greaterEquals(short s2, short s3) {
        if ((s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX || (s3 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return false;
        }
        int i2 = s2 & NEGATIVE_ZERO;
        int i3 = s2 & 65535;
        if (i2 != 0) {
            i3 = 32768 - i3;
        }
        return i3 >= ((s3 & NEGATIVE_ZERO) != 0 ? 32768 - (s3 & 65535) : s3 & 65535);
    }

    public static int halfToIntBits(short s2) {
        if ((s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return 32256;
        }
        return s2 & 65535;
    }

    public static int halfToRawIntBits(short s2) {
        return s2 & 65535;
    }

    public static short halfToShortBits(short s2) {
        return (s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX ? NaN : s2;
    }

    public static short intBitsToHalf(int i2) {
        return (short) (i2 & 65535);
    }

    public static boolean isInfinite(short s2) {
        return (s2 & Short.MAX_VALUE) == FP16_EXPONENT_MAX;
    }

    public static boolean isNaN(short s2) {
        return (s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX;
    }

    public static boolean isNormalized(short s2) {
        int i2 = s2 & FP16_EXPONENT_MAX;
        return (i2 == 0 || i2 == FP16_EXPONENT_MAX) ? false : true;
    }

    public static boolean less(short s2, short s3) {
        if ((s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX || (s3 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return false;
        }
        int i2 = s2 & NEGATIVE_ZERO;
        int i3 = s2 & 65535;
        if (i2 != 0) {
            i3 = 32768 - i3;
        }
        return i3 < ((s3 & NEGATIVE_ZERO) != 0 ? 32768 - (s3 & 65535) : s3 & 65535);
    }

    public static boolean lessEquals(short s2, short s3) {
        if ((s2 & Short.MAX_VALUE) > FP16_EXPONENT_MAX || (s3 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return false;
        }
        int i2 = s2 & NEGATIVE_ZERO;
        int i3 = s2 & 65535;
        if (i2 != 0) {
            i3 = 32768 - i3;
        }
        return i3 <= ((s3 & NEGATIVE_ZERO) != 0 ? 32768 - (s3 & 65535) : s3 & 65535);
    }

    public static short max(short s2, short s3) {
        int i2;
        int i3 = s2 & Short.MAX_VALUE;
        if (i3 > FP16_EXPONENT_MAX || (i2 = s3 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return NaN;
        }
        if (i3 == 0 && i2 == 0) {
            return (s2 & NEGATIVE_ZERO) != 0 ? s3 : s2;
        }
        return ((s2 & NEGATIVE_ZERO) != 0 ? 32768 - (s2 & 65535) : s2 & 65535) > ((s3 & NEGATIVE_ZERO) != 0 ? 32768 - (65535 & s3) : s3 & 65535) ? s2 : s3;
    }

    public static short min(short s2, short s3) {
        int i2;
        int i3 = s2 & Short.MAX_VALUE;
        if (i3 > FP16_EXPONENT_MAX || (i2 = s3 & Short.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return NaN;
        }
        if (i3 == 0 && i2 == 0) {
            return (s2 & NEGATIVE_ZERO) != 0 ? s2 : s3;
        }
        return ((s2 & NEGATIVE_ZERO) != 0 ? 32768 - (s2 & 65535) : s2 & 65535) < ((s3 & NEGATIVE_ZERO) != 0 ? 32768 - (65535 & s3) : s3 & 65535) ? s2 : s3;
    }

    public static short parseHalf(String str) {
        return toHalf(FloatingDecimal.parseFloat(str));
    }

    public static short round(short s2) {
        int i2 = s2 & 65535;
        int i3 = i2 & 32767;
        if (i3 < 15360) {
            i2 = (i2 & 32768) | ((i3 < 14336 ? 0 : 65535) & 15360);
        } else if (i3 < 25600) {
            int i4 = 25 - (i3 >> 10);
            i2 = (i2 + (1 << (i4 - 1))) & (~((1 << i4) - 1));
        }
        return (short) i2;
    }

    public static float toFloat(short s2) {
        int i2;
        int i3;
        int i4 = s2 & 65535;
        int i5 = 32768 & i4;
        int i6 = (i4 >>> 10) & 31;
        int i7 = i4 & 1023;
        if (i6 != 0) {
            int i8 = i7 << 13;
            int i9 = i6 == 31 ? 255 : (i6 - 15) + 127;
            i2 = i8;
            i3 = i9;
        } else {
            if (i7 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i7 + FP32_DENORMAL_MAGIC) - FP32_DENORMAL_FLOAT;
                return i5 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i3 = 0;
            i2 = 0;
        }
        return Float.intBitsToFloat((i3 << 23) | (i5 << 16) | i2);
    }

    public static short toHalf(float f2) {
        int i2;
        int i3;
        int iFloatToRawIntBits = Float.floatToRawIntBits(f2);
        int i4 = iFloatToRawIntBits >>> 31;
        int i5 = (iFloatToRawIntBits >>> 23) & 255;
        int i6 = iFloatToRawIntBits & FP32_SIGNIFICAND_MASK;
        int i7 = 31;
        int i8 = 0;
        if (i5 == 255) {
            if (i6 != 0) {
                i3 = 512;
                i8 = i3;
            }
            i2 = (i4 << 15) | (i7 << 10) | i8;
        } else {
            int i9 = (i5 - 127) + 15;
            if (i9 >= 31) {
                i7 = 49;
            } else if (i9 > 0) {
                i8 = i6 >> 13;
                if ((i6 & 4096) != 0) {
                    i2 = (((i9 << 10) | i8) + 1) | (i4 << 15);
                } else {
                    i7 = i9;
                }
            } else if (i9 < -10) {
                i7 = 0;
            } else {
                int i10 = (i6 | 8388608) >> (1 - i9);
                if ((i10 & 4096) != 0) {
                    i10 += 8192;
                }
                i3 = i10 >> 13;
                i7 = 0;
                i8 = i3;
            }
            i2 = (i4 << 15) | (i7 << 10) | i8;
        }
        return (short) i2;
    }

    public static String toHexString(short s2) {
        StringBuilder sb = new StringBuilder();
        int i2 = s2 & 65535;
        int i3 = i2 >>> 15;
        int i4 = (i2 >>> 10) & 31;
        int i5 = i2 & 1023;
        if (i4 != 31) {
            if (i3 == 1) {
                sb.append('-');
            }
            if (i4 != 0) {
                sb.append("0x1.");
                sb.append(Integer.toHexString(i5).replaceFirst("0{2,}$", ""));
                sb.append('p');
                sb.append(Integer.toString(i4 - 15));
            } else if (i5 == 0) {
                sb.append("0x0.0p0");
            } else {
                sb.append("0x0.");
                sb.append(Integer.toHexString(i5).replaceFirst("0{2,}$", ""));
                sb.append("p-14");
            }
        } else if (i5 == 0) {
            if (i3 != 0) {
                sb.append('-');
            }
            sb.append("Infinity");
        } else {
            sb.append("NaN");
        }
        return sb.toString();
    }

    public static short trunc(short s2) {
        int i2;
        int i3 = s2 & 65535;
        int i4 = i3 & 32767;
        if (i4 >= 15360) {
            i2 = i4 < 25600 ? ~((1 << (25 - (i4 >> 10))) - 1) : 32768;
            return (short) i3;
        }
        i3 &= i2;
        return (short) i3;
    }

    public static Half valueOf(short s2) {
        return new Half(s2);
    }

    @Override // java.lang.Number
    public byte byteValue() {
        return (byte) toFloat(this.mValue);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return toFloat(this.mValue);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return toFloat(this.mValue);
    }

    public short halfValue() {
        return this.mValue;
    }

    public int hashCode() {
        return hashCode(this.mValue);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) toFloat(this.mValue);
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) toFloat(this.mValue);
    }

    @Override // java.lang.Number
    public short shortValue() {
        return (short) toFloat(this.mValue);
    }

    public String toString() {
        return toString(this.mValue);
    }

    public static int hashCode(short s2) {
        return halfToIntBits(s2);
    }

    public static String toString(short s2) {
        return Float.toString(toFloat(s2));
    }

    public static Half valueOf(float f2) {
        return new Half(f2);
    }

    @Override // java.lang.Comparable
    public int compareTo(Half half) {
        return compare(this.mValue, half.mValue);
    }

    public boolean equals(Object obj) {
        return (obj instanceof Half) && halfToIntBits(((Half) obj).mValue) == halfToIntBits(this.mValue);
    }

    public boolean isNaN() {
        return isNaN(this.mValue);
    }

    public Half(float f2) {
        this.mValue = toHalf(f2);
    }

    public static Half valueOf(String str) {
        return new Half(str);
    }

    public Half(double d2) {
        this.mValue = toHalf((float) d2);
    }

    public Half(String str) {
        this.mValue = toHalf(Float.parseFloat(str));
    }
}
