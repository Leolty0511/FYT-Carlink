package com.google.common.hash;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
final class Fingerprint2011 extends AbstractNonStreamingHashFunction {
    static final HashFunction FINGERPRINT_2011 = new Fingerprint2011();
    private static final long K0 = -6505348102511208375L;
    private static final long K1 = -8261664234251669945L;
    private static final long K2 = -4288712594273399085L;
    private static final long K3 = -4132994306676758123L;

    @VisibleForTesting
    public static long fingerprint(byte[] bArr, int i2, int i3) {
        long jHashLength33To64;
        if (i3 <= 32) {
            jHashLength33To64 = murmurHash64WithSeed(bArr, i2, i3, -1397348546323613475L);
        } else {
            jHashLength33To64 = i3 <= 64 ? hashLength33To64(bArr, i2, i3) : fullFingerprint(bArr, i2, i3);
        }
        long jLoad64 = K0;
        long jLoad65 = i3 >= 8 ? LittleEndianByteArray.load64(bArr, i2) : -6505348102511208375L;
        if (i3 >= 9) {
            jLoad64 = LittleEndianByteArray.load64(bArr, (i2 + i3) - 8);
        }
        long jHash128to64 = hash128to64(jHashLength33To64 + jLoad64, jLoad65);
        return (jHash128to64 == 0 || jHash128to64 == 1) ? jHash128to64 - 2 : jHash128to64;
    }

    private static long fullFingerprint(byte[] bArr, int i2, int i3) {
        long jLoad64 = LittleEndianByteArray.load64(bArr, i2);
        int i4 = i2 + i3;
        long jLoad65 = LittleEndianByteArray.load64(bArr, i4 - 16) ^ K1;
        long jLoad66 = LittleEndianByteArray.load64(bArr, i4 - 56) ^ K0;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long j2 = i3;
        weakHashLength32WithSeeds(bArr, i4 - 64, j2, jLoad65, jArr);
        weakHashLength32WithSeeds(bArr, i4 - 32, j2 * K1, K0, jArr2);
        long jShiftMix = (shiftMix(jArr[1]) * K1) + jLoad66;
        long jRotateRight = Long.rotateRight(jLoad64 + jShiftMix, 39) * K1;
        long jRotateRight2 = Long.rotateRight(jLoad65, 33) * K1;
        int i5 = i2;
        int i6 = (i3 - 1) & (-64);
        while (true) {
            long jRotateRight3 = Long.rotateRight(jRotateRight + jRotateRight2 + jArr[0] + LittleEndianByteArray.load64(bArr, i5 + 16), 37) * K1;
            long jRotateRight4 = Long.rotateRight(jRotateRight2 + jArr[1] + LittleEndianByteArray.load64(bArr, i5 + 48), 42) * K1;
            long j3 = jArr2[1] ^ jRotateRight3;
            long j4 = jRotateRight4 ^ jArr[0];
            long jRotateRight5 = Long.rotateRight(jShiftMix ^ jArr2[0], 33);
            weakHashLength32WithSeeds(bArr, i5, jArr[1] * K1, j3 + jArr2[0], jArr);
            weakHashLength32WithSeeds(bArr, i5 + 32, jRotateRight5 + jArr2[1], j4, jArr2);
            i5 += 64;
            i6 -= 64;
            if (i6 == 0) {
                return hash128to64((shiftMix(j4) * K1) + hash128to64(jArr[0], jArr2[0]) + j3, hash128to64(jArr[1], jArr2[1]) + jRotateRight5);
            }
            jShiftMix = j3;
            jRotateRight2 = j4;
            jRotateRight = jRotateRight5;
        }
    }

    @VisibleForTesting
    public static long hash128to64(long j2, long j3) {
        long j4 = (j3 ^ j2) * K3;
        long j5 = (j2 ^ (j4 ^ (j4 >>> 47))) * K3;
        return (j5 ^ (j5 >>> 47)) * K3;
    }

    private static long hashLength33To64(byte[] bArr, int i2, int i3) {
        long jLoad64 = LittleEndianByteArray.load64(bArr, i2 + 24);
        int i4 = i2 + i3;
        int i5 = i4 - 16;
        long jLoad65 = ((((long) i3) + LittleEndianByteArray.load64(bArr, i5)) * K0) + LittleEndianByteArray.load64(bArr, i2);
        long jRotateRight = Long.rotateRight(jLoad65 + jLoad64, 52);
        long jRotateRight2 = Long.rotateRight(jLoad65, 37);
        long jLoad66 = jLoad65 + LittleEndianByteArray.load64(bArr, i2 + 8);
        long jRotateRight3 = Long.rotateRight(jLoad66, 7) + jRotateRight2;
        int i6 = i2 + 16;
        long jLoad67 = jLoad66 + LittleEndianByteArray.load64(bArr, i6);
        long j2 = jLoad64 + jLoad67;
        long jRotateRight4 = Long.rotateRight(jLoad67, 31) + jRotateRight + jRotateRight3;
        long jLoad68 = LittleEndianByteArray.load64(bArr, i6) + LittleEndianByteArray.load64(bArr, i4 - 32);
        long jLoad69 = LittleEndianByteArray.load64(bArr, i4 - 8);
        long jRotateRight5 = Long.rotateRight(jLoad68 + jLoad69, 52);
        long jRotateRight6 = Long.rotateRight(jLoad68, 37);
        long jLoad610 = jLoad68 + LittleEndianByteArray.load64(bArr, i4 - 24);
        long jRotateRight7 = Long.rotateRight(jLoad610, 7) + jRotateRight6;
        long jLoad611 = jLoad610 + LittleEndianByteArray.load64(bArr, i5);
        return shiftMix((shiftMix(((jLoad611 + jLoad69 + jRotateRight4) * K0) + ((Long.rotateRight(jLoad611, 31) + jRotateRight5 + jRotateRight7 + j2) * K2)) * K0) + jRotateRight4) * K2;
    }

    @VisibleForTesting
    public static long murmurHash64WithSeed(byte[] bArr, int i2, int i3, long j2) {
        int i4 = i3 & (-8);
        int i5 = i3 & 7;
        long jLoad64Safely = j2 ^ (((long) i3) * K3);
        for (int i6 = 0; i6 < i4; i6 += 8) {
            jLoad64Safely = (jLoad64Safely ^ (shiftMix(LittleEndianByteArray.load64(bArr, i2 + i6) * K3) * K3)) * K3;
        }
        if (i5 != 0) {
            jLoad64Safely = (LittleEndianByteArray.load64Safely(bArr, i2 + i4, i5) ^ jLoad64Safely) * K3;
        }
        return shiftMix(shiftMix(jLoad64Safely) * K3);
    }

    private static long shiftMix(long j2) {
        return j2 ^ (j2 >>> 47);
    }

    private static void weakHashLength32WithSeeds(byte[] bArr, int i2, long j2, long j3, long[] jArr) {
        long jLoad64 = LittleEndianByteArray.load64(bArr, i2);
        long jLoad65 = LittleEndianByteArray.load64(bArr, i2 + 8);
        long jLoad66 = LittleEndianByteArray.load64(bArr, i2 + 16);
        long jLoad67 = LittleEndianByteArray.load64(bArr, i2 + 24);
        long j4 = j2 + jLoad64;
        long j5 = jLoad65 + j4 + jLoad66;
        long jRotateRight = Long.rotateRight(j5, 23) + Long.rotateRight(j3 + j4 + jLoad67, 51);
        jArr[0] = j5 + jLoad67;
        jArr[1] = jRotateRight + j4;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    @Override // com.google.common.hash.AbstractNonStreamingHashFunction, com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr, int i2, int i3) {
        Preconditions.checkPositionIndexes(i2, i2 + i3, bArr.length);
        return HashCode.fromLong(fingerprint(bArr, i2, i3));
    }

    public String toString() {
        return "Hashing.fingerprint2011()";
    }
}
