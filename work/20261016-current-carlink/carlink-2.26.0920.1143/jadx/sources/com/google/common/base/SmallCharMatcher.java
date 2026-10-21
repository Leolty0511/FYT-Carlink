package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.util.BitSet;

/* JADX INFO: loaded from: classes3.dex */
@J2ktIncompatible
@GwtIncompatible
@ElementTypesAreNonnullByDefault
final class SmallCharMatcher extends CharMatcher.NamedFastMatcher {
    private static final int C1 = -862048943;
    private static final int C2 = 461845907;
    private static final double DESIRED_LOAD_FACTOR = 0.5d;
    static final int MAX_SIZE = 1023;
    private final boolean containsZero;
    private final long filter;
    private final char[] table;

    private SmallCharMatcher(char[] cArr, long j2, boolean z2, String str) {
        super(str);
        this.table = cArr;
        this.filter = j2;
        this.containsZero = z2;
    }

    private boolean checkFilter(int i2) {
        return 1 == ((this.filter >> i2) & 1);
    }

    @VisibleForTesting
    public static int chooseTableSize(int i2) {
        if (i2 == 1) {
            return 2;
        }
        int iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
        while (((double) iHighestOneBit) * DESIRED_LOAD_FACTOR < i2) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static CharMatcher from(BitSet bitSet, String str) {
        int i2;
        int iCardinality = bitSet.cardinality();
        boolean z2 = bitSet.get(0);
        int iChooseTableSize = chooseTableSize(iCardinality);
        char[] cArr = new char[iChooseTableSize];
        int i3 = iChooseTableSize - 1;
        int iNextSetBit = bitSet.nextSetBit(0);
        long j2 = 0;
        while (iNextSetBit != -1) {
            long j3 = (1 << iNextSetBit) | j2;
            int iSmear = smear(iNextSetBit);
            while (true) {
                i2 = iSmear & i3;
                if (cArr[i2] == 0) {
                    break;
                }
                iSmear = i2 + 1;
            }
            cArr[i2] = (char) iNextSetBit;
            iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1);
            j2 = j3;
        }
        return new SmallCharMatcher(cArr, j2, z2, str);
    }

    public static int smear(int i2) {
        return Integer.rotateLeft(i2 * C1, 15) * C2;
    }

    @Override // com.google.common.base.CharMatcher
    public boolean matches(char c) {
        if (c == 0) {
            return this.containsZero;
        }
        if (!checkFilter(c)) {
            return false;
        }
        int length = this.table.length - 1;
        int iSmear = smear(c) & length;
        int i2 = iSmear;
        do {
            char c2 = this.table[i2];
            if (c2 == 0) {
                return false;
            }
            if (c2 == c) {
                return true;
            }
            i2 = (i2 + 1) & length;
        } while (i2 != iSmear);
        return false;
    }

    @Override // com.google.common.base.CharMatcher
    public void setBits(BitSet bitSet) {
        if (this.containsZero) {
            bitSet.set(0);
        }
        for (char c : this.table) {
            if (c != 0) {
                bitSet.set(c);
            }
        }
    }
}
