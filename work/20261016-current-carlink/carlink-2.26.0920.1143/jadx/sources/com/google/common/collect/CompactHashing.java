package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
@GwtIncompatible
@ElementTypesAreNonnullByDefault
final class CompactHashing {
    private static final int BYTE_MASK = 255;
    private static final int BYTE_MAX_SIZE = 256;
    static final int DEFAULT_SIZE = 3;
    static final int HASH_TABLE_BITS_MASK = 31;
    private static final int HASH_TABLE_BITS_MAX_BITS = 5;
    static final int MAX_SIZE = 1073741823;
    private static final int MIN_HASH_TABLE_SIZE = 4;
    static final int MODIFICATION_COUNT_INCREMENT = 32;
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_MAX_SIZE = 65536;
    static final byte UNSET = 0;

    private CompactHashing() {
    }

    public static Object createTable(int i2) {
        if (i2 < 2 || i2 > 1073741824 || Integer.highestOneBit(i2) != i2) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("must be power of 2 between 2^1 and 2^30: ", i2));
        }
        if (i2 <= 256) {
            return new byte[i2];
        }
        return i2 <= 65536 ? new short[i2] : new int[i2];
    }

    public static int getHashPrefix(int i2, int i3) {
        return i2 & (~i3);
    }

    public static int getNext(int i2, int i3) {
        return i2 & i3;
    }

    public static int maskCombine(int i2, int i3, int i4) {
        return (i2 & (~i4)) | (i3 & i4);
    }

    public static int newCapacity(int i2) {
        return (i2 + 1) * (i2 < 32 ? 4 : 2);
    }

    public static int remove(Object obj, Object obj2, int i2, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iSmearedHash = Hashing.smearedHash(obj);
        int i3 = iSmearedHash & i2;
        int iTableGet = tableGet(obj3, i3);
        if (iTableGet == 0) {
            return -1;
        }
        int hashPrefix = getHashPrefix(iSmearedHash, i2);
        int i4 = -1;
        while (true) {
            int i5 = iTableGet - 1;
            int i6 = iArr[i5];
            if (getHashPrefix(i6, i2) == hashPrefix && Objects.equal(obj, objArr[i5]) && (objArr2 == null || Objects.equal(obj2, objArr2[i5]))) {
                int next = getNext(i6, i2);
                if (i4 == -1) {
                    tableSet(obj3, i3, next);
                } else {
                    iArr[i4] = maskCombine(iArr[i4], next, i2);
                }
                return i5;
            }
            int next2 = getNext(i6, i2);
            if (next2 == 0) {
                return -1;
            }
            i4 = i5;
            iTableGet = next2;
        }
    }

    public static void tableClear(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    public static int tableGet(Object obj, int i2) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i2] & 255;
        }
        return obj instanceof short[] ? ((short[]) obj)[i2] & 65535 : ((int[]) obj)[i2];
    }

    public static void tableSet(Object obj, int i2, int i3) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i2] = (byte) i3;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i2] = (short) i3;
        } else {
            ((int[]) obj)[i2] = i3;
        }
    }

    public static int tableSize(int i2) {
        return Math.max(4, Hashing.closedTableSize(i2 + 1, 1.0d));
    }
}
