package com.android.internal.util;

import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.UUID;
import java.util.function.IntFunction;
import libcore.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class BitUtils {
    private BitUtils() {
    }

    public static long bitAt(int i2) {
        return 1 << i2;
    }

    public static int bytesToBEInt(byte[] bArr) {
        return uint8(bArr[3]) + (uint8(bArr[0]) << 24) + (uint8(bArr[1]) << 16) + (uint8(bArr[2]) << 8);
    }

    public static int bytesToLEInt(byte[] bArr) {
        return Integer.reverseBytes(bytesToBEInt(bArr));
    }

    public static String flagsToString(int i2, IntFunction<String> intFunction) {
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (i2 != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i2);
            i2 &= ~iNumberOfTrailingZeros;
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append((String) intFunction.apply(iNumberOfTrailingZeros));
            i3++;
        }
        TextUtils.wrap(sb, "[", "]");
        return sb.toString();
    }

    public static int getUint16(ByteBuffer byteBuffer, int i2) {
        return uint16(byteBuffer.getShort(i2));
    }

    public static long getUint32(ByteBuffer byteBuffer, int i2) {
        return uint32(byteBuffer.getInt(i2));
    }

    public static int getUint8(ByteBuffer byteBuffer, int i2) {
        return uint8(byteBuffer.get(i2));
    }

    public static boolean isBitSet(long j2, int i2) {
        return (j2 & bitAt(i2)) != 0;
    }

    public static boolean maskedEquals(byte b2, byte b3, byte b4) {
        return (b2 & b4) == (b3 & b4);
    }

    public static long packBits(int[] iArr) {
        long j2 = 0;
        for (int i2 : iArr) {
            j2 |= (long) (1 << i2);
        }
        return j2;
    }

    public static void put(ByteBuffer byteBuffer, int i2, byte[] bArr) {
        int iPosition = byteBuffer.position();
        byteBuffer.position(i2);
        byteBuffer.put(bArr);
        byteBuffer.position(iPosition);
    }

    public static int uint16(short s2) {
        return s2 & 65535;
    }

    public static long uint32(int i2) {
        return ((long) i2) & 4294967295L;
    }

    public static int uint8(byte b2) {
        return b2 & 255;
    }

    public static int[] unpackBits(long j2) {
        int[] iArr = new int[Long.bitCount(j2)];
        int i2 = 0;
        int i3 = 0;
        while (j2 > 0) {
            if ((j2 & 1) == 1) {
                iArr[i2] = i3;
                i2++;
            }
            j2 >>= 1;
            i3++;
        }
        return iArr;
    }

    public static boolean maskedEquals(long j2, long j3, long j4) {
        return (j2 & j4) == (j3 & j4);
    }

    public static boolean maskedEquals(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr2 == null) {
            return bArr == bArr2;
        }
        Preconditions.checkArgument(bArr.length == bArr2.length, "Inputs must be of same size");
        if (bArr3 == null) {
            return Arrays.equals(bArr, bArr2);
        }
        Preconditions.checkArgument(bArr.length == bArr3.length, "Mask must be of same size as inputs");
        for (int i2 = 0; i2 < bArr3.length; i2++) {
            if (!maskedEquals(bArr[i2], bArr2[i2], bArr3[i2])) {
                return false;
            }
        }
        return true;
    }

    public static boolean maskedEquals(UUID uuid, UUID uuid2, UUID uuid3) {
        if (uuid3 == null) {
            return Objects.equal(uuid, uuid2);
        }
        return maskedEquals(uuid.getLeastSignificantBits(), uuid2.getLeastSignificantBits(), uuid3.getLeastSignificantBits()) && maskedEquals(uuid.getMostSignificantBits(), uuid2.getMostSignificantBits(), uuid3.getMostSignificantBits());
    }
}
