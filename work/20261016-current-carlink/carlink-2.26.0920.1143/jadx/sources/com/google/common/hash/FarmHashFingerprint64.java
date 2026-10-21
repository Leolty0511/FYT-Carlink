package com.google.common.hash;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
final class FarmHashFingerprint64 extends AbstractNonStreamingHashFunction {
    static final HashFunction FARMHASH_FINGERPRINT_64 = new FarmHashFingerprint64();
    private static final long K0 = -4348849565147123417L;
    private static final long K1 = -5435081209227447693L;
    private static final long K2 = -7286425919675154353L;

    @VisibleForTesting
    public static long fingerprint(byte[] bArr, int i2, int i3) {
        if (i3 <= 32) {
            return i3 <= 16 ? hashLength0to16(bArr, i2, i3) : hashLength17to32(bArr, i2, i3);
        }
        return i3 <= 64 ? hashLength33To64(bArr, i2, i3) : hashLength65Plus(bArr, i2, i3);
    }

    private static long hashLength0to16(byte[] bArr, int i2, int i3) {
        if (i3 >= 8) {
            long j2 = (((long) i3) * 2) + K2;
            long jLoad64 = LittleEndianByteArray.load64(bArr, i2) + K2;
            long jLoad65 = LittleEndianByteArray.load64(bArr, (i2 + i3) - 8);
            return hashLength16((Long.rotateRight(jLoad65, 37) * j2) + jLoad64, (Long.rotateRight(jLoad64, 25) + jLoad65) * j2, j2);
        }
        if (i3 >= 4) {
            return hashLength16(((long) i3) + ((((long) LittleEndianByteArray.load32(bArr, i2)) & 4294967295L) << 3), ((long) LittleEndianByteArray.load32(bArr, (i2 + i3) - 4)) & 4294967295L, ((long) (i3 * 2)) + K2);
        }
        if (i3 <= 0) {
            return K2;
        }
        return shiftMix((((long) ((bArr[i2] & 255) + ((bArr[(i3 >> 1) + i2] & 255) << 8))) * K2) ^ (((long) (i3 + ((bArr[(i3 - 1) + i2] & 255) << 2))) * K0)) * K2;
    }

    private static long hashLength16(long j2, long j3, long j4) {
        long j5 = (j2 ^ j3) * j4;
        long j6 = ((j5 ^ (j5 >>> 47)) ^ j3) * j4;
        return (j6 ^ (j6 >>> 47)) * j4;
    }

    private static long hashLength17to32(byte[] bArr, int i2, int i3) {
        long j2 = (((long) i3) * 2) + K2;
        long jLoad64 = LittleEndianByteArray.load64(bArr, i2) * K1;
        long jLoad65 = LittleEndianByteArray.load64(bArr, i2 + 8);
        int i4 = i2 + i3;
        long jLoad66 = LittleEndianByteArray.load64(bArr, i4 - 8) * j2;
        return hashLength16((LittleEndianByteArray.load64(bArr, i4 - 16) * K2) + Long.rotateRight(jLoad66, 30) + Long.rotateRight(jLoad64 + jLoad65, 43), jLoad66 + Long.rotateRight(jLoad65 + K2, 18) + jLoad64, j2);
    }

    private static long hashLength33To64(byte[] bArr, int i2, int i3) {
        long j2 = (((long) i3) * 2) + K2;
        long jLoad64 = LittleEndianByteArray.load64(bArr, i2) * K2;
        long jLoad65 = LittleEndianByteArray.load64(bArr, i2 + 8);
        int i4 = i2 + i3;
        long jLoad66 = LittleEndianByteArray.load64(bArr, i4 - 8) * j2;
        long jRotateRight = Long.rotateRight(jLoad66, 30) + Long.rotateRight(jLoad64 + jLoad65, 43) + (LittleEndianByteArray.load64(bArr, i4 - 16) * K2);
        long jHashLength16 = hashLength16(jRotateRight, jLoad66 + Long.rotateRight(jLoad65 + K2, 18) + jLoad64, j2);
        long jLoad67 = LittleEndianByteArray.load64(bArr, i2 + 16) * j2;
        long jLoad68 = LittleEndianByteArray.load64(bArr, i2 + 24);
        long jLoad69 = (jRotateRight + LittleEndianByteArray.load64(bArr, i4 - 32)) * j2;
        return hashLength16(((jHashLength16 + LittleEndianByteArray.load64(bArr, i4 - 24)) * j2) + Long.rotateRight(jLoad69, 30) + Long.rotateRight(jLoad67 + jLoad68, 43), Long.rotateRight(jLoad68 + jLoad64, 18) + jLoad67 + jLoad69, j2);
    }

    private static long hashLength65Plus(byte[] bArr, int i2, int i3) {
        long j2 = 81;
        long j3 = (j2 * K1) + 113;
        long jShiftMix = shiftMix((j3 * K2) + 113) * K2;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long jLoad64 = (j2 * K2) + LittleEndianByteArray.load64(bArr, i2);
        int i4 = i3 - 1;
        int i5 = ((i4 / 64) * 64) + i2;
        int i6 = i4 & 63;
        int i7 = (i5 + i6) - 63;
        int i8 = i2;
        while (true) {
            long jRotateRight = Long.rotateRight(jLoad64 + j3 + jArr[0] + LittleEndianByteArray.load64(bArr, i8 + 8), 37) * K1;
            long jRotateRight2 = Long.rotateRight(j3 + jArr[1] + LittleEndianByteArray.load64(bArr, i8 + 48), 42) * K1;
            long j4 = jRotateRight ^ jArr2[1];
            long jLoad65 = jArr[0] + LittleEndianByteArray.load64(bArr, i8 + 40) + jRotateRight2;
            long jRotateRight3 = Long.rotateRight(jShiftMix + jArr2[0], 33) * K1;
            weakHashLength32WithSeeds(bArr, i8, jArr[1] * K1, j4 + jArr2[0], jArr);
            weakHashLength32WithSeeds(bArr, i8 + 32, jRotateRight3 + jArr2[1], jLoad65 + LittleEndianByteArray.load64(bArr, i8 + 16), jArr2);
            int i9 = i8 + 64;
            if (i9 == i5) {
                long j5 = K1 + ((j4 & 255) << 1);
                long j6 = jArr2[0] + ((long) i6);
                jArr2[0] = j6;
                long j7 = jArr[0] + j6;
                jArr[0] = j7;
                jArr2[0] = jArr2[0] + j7;
                long jRotateRight4 = Long.rotateRight(jRotateRight3 + jLoad65 + jArr[0] + LittleEndianByteArray.load64(bArr, i7 + 8), 37) * j5;
                long jRotateRight5 = Long.rotateRight(jLoad65 + jArr[1] + LittleEndianByteArray.load64(bArr, i7 + 48), 42) * j5;
                long j8 = jRotateRight4 ^ (jArr2[1] * 9);
                long jLoad66 = (jArr[0] * 9) + LittleEndianByteArray.load64(bArr, i7 + 40) + jRotateRight5;
                long jRotateRight6 = Long.rotateRight(j4 + jArr2[0], 33) * j5;
                weakHashLength32WithSeeds(bArr, i7, jArr[1] * j5, j8 + jArr2[0], jArr);
                weakHashLength32WithSeeds(bArr, i7 + 32, jRotateRight6 + jArr2[1], jLoad66 + LittleEndianByteArray.load64(bArr, i7 + 16), jArr2);
                return hashLength16((shiftMix(jLoad66) * K0) + hashLength16(jArr[0], jArr2[0], j5) + j8, hashLength16(jArr[1], jArr2[1], j5) + jRotateRight6, j5);
            }
            i8 = i9;
            jShiftMix = j4;
            j3 = jLoad65;
            jLoad64 = jRotateRight3;
        }
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
        long jRotateRight = Long.rotateRight(j5, 44) + Long.rotateRight(j3 + j4 + jLoad67, 21);
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
        return "Hashing.farmHashFingerprint64()";
    }
}
