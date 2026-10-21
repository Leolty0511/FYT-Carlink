package com.google.common.primitives;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible
public final class Longs {
    public static final int BYTES = 8;
    public static final long MAX_POWER_OF_TWO = 4611686018427387904L;

    public static final class AsciiDigits {
        private static final byte[] asciiDigits;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i2 = 0; i2 < 10; i2++) {
                bArr[i2 + 48] = (byte) i2;
            }
            for (int i3 = 0; i3 < 26; i3++) {
                byte b2 = (byte) (i3 + 10);
                bArr[i3 + 65] = b2;
                bArr[i3 + 97] = b2;
            }
            asciiDigits = bArr;
        }

        private AsciiDigits() {
        }

        public static int digit(char c) {
            if (c < 128) {
                return asciiDigits[c];
            }
            return -1;
        }
    }

    public enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Longs.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i2 = 0; i2 < iMin; i2++) {
                int iCompare = Longs.compare(jArr[i2], jArr2[i2]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    @GwtCompatible
    public static class LongArrayAsList extends AbstractList<Long> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final long[] array;
        final int end;
        final int start;

        public LongArrayAsList(long[] jArr) {
            this(jArr, 0, jArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Long) && Longs.indexOf(this.array, ((Long) obj).longValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LongArrayAsList)) {
                return super.equals(obj);
            }
            LongArrayAsList longArrayAsList = (LongArrayAsList) obj;
            int size = size();
            if (longArrayAsList.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (this.array[this.start + i2] != longArrayAsList.array[longArrayAsList.start + i2]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                iHashCode = (iHashCode * 31) + Longs.hashCode(this.array[i2]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            if (!(obj instanceof Long) || (iIndexOf = Longs.indexOf(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iIndexOf - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            if (!(obj instanceof Long) || (iLastIndexOf = Longs.lastIndexOf(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iLastIndexOf - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i2, int i3) {
            Preconditions.checkPositionIndexes(i2, i3, size());
            if (i2 == i3) {
                return Collections.emptyList();
            }
            long[] jArr = this.array;
            int i4 = this.start;
            return new LongArrayAsList(jArr, i2 + i4, i4 + i3);
        }

        public long[] toLongArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 10);
            sb.append('[');
            sb.append(this.array[this.start]);
            int i2 = this.start;
            while (true) {
                i2++;
                if (i2 >= this.end) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append(this.array[i2]);
            }
        }

        public LongArrayAsList(long[] jArr, int i2, int i3) {
            this.array = jArr;
            this.start = i2;
            this.end = i3;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long get(int i2) {
            Preconditions.checkElementIndex(i2, size());
            return Long.valueOf(this.array[this.start + i2]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Long set(int i2, Long l2) {
            Preconditions.checkElementIndex(i2, size());
            long[] jArr = this.array;
            int i3 = this.start;
            long j2 = jArr[i3 + i2];
            jArr[i3 + i2] = ((Long) Preconditions.checkNotNull(l2)).longValue();
            return Long.valueOf(j2);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public Spliterator.OfLong spliterator() {
            return Spliterators.spliterator(this.array, this.start, this.end, 0);
        }
    }

    public static final class LongConverter extends Converter<String, Long> implements Serializable {
        static final LongConverter INSTANCE = new LongConverter();
        private static final long serialVersionUID = 1;

        private LongConverter() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return "Longs.stringConverter()";
        }

        @Override // com.google.common.base.Converter
        public String doBackward(Long l2) {
            return l2.toString();
        }

        @Override // com.google.common.base.Converter
        public Long doForward(String str) {
            return Long.decode(str);
        }
    }

    private Longs() {
    }

    public static List<Long> asList(long... jArr) {
        return jArr.length == 0 ? Collections.emptyList() : new LongArrayAsList(jArr);
    }

    public static int compare(long j2, long j3) {
        if (j2 < j3) {
            return -1;
        }
        return j2 > j3 ? 1 : 0;
    }

    public static long[] concat(long[]... jArr) {
        int length = 0;
        for (long[] jArr2 : jArr) {
            length += jArr2.length;
        }
        long[] jArr3 = new long[length];
        int length2 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, length2, jArr4.length);
            length2 += jArr4.length;
        }
        return jArr3;
    }

    public static long constrainToRange(long j2, long j3, long j4) {
        Preconditions.checkArgument(j3 <= j4, "min (%s) must be less than or equal to max (%s)", j3, j4);
        return Math.min(Math.max(j2, j3), j4);
    }

    public static boolean contains(long[] jArr, long j2) {
        for (long j3 : jArr) {
            if (j3 == j2) {
                return true;
            }
        }
        return false;
    }

    public static long[] ensureCapacity(long[] jArr, int i2, int i3) {
        Preconditions.checkArgument(i2 >= 0, "Invalid minLength: %s", i2);
        Preconditions.checkArgument(i3 >= 0, "Invalid padding: %s", i3);
        return jArr.length < i2 ? Arrays.copyOf(jArr, i2 + i3) : jArr;
    }

    public static long fromByteArray(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 8, "array too small: %s < %s", bArr.length, 8);
        return fromBytes(bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]);
    }

    public static long fromBytes(byte b2, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9) {
        return ((((long) b3) & 255) << 48) | ((((long) b2) & 255) << 56) | ((((long) b4) & 255) << 40) | ((((long) b5) & 255) << 32) | ((((long) b6) & 255) << 24) | ((((long) b7) & 255) << 16) | ((((long) b8) & 255) << 8) | (((long) b9) & 255);
    }

    public static int hashCode(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static int indexOf(long[] jArr, long j2) {
        return indexOf(jArr, j2, 0, jArr.length);
    }

    public static String join(String str, long... jArr) {
        Preconditions.checkNotNull(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 10);
        sb.append(jArr[0]);
        for (int i2 = 1; i2 < jArr.length; i2++) {
            sb.append(str);
            sb.append(jArr[i2]);
        }
        return sb.toString();
    }

    public static int lastIndexOf(long[] jArr, long j2) {
        return lastIndexOf(jArr, j2, 0, jArr.length);
    }

    public static Comparator<long[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    public static long max(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long j2 = jArr[0];
        for (int i2 = 1; i2 < jArr.length; i2++) {
            long j3 = jArr[i2];
            if (j3 > j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    public static long min(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long j2 = jArr[0];
        for (int i2 = 1; i2 < jArr.length; i2++) {
            long j3 = jArr[i2];
            if (j3 < j2) {
                j2 = j3;
            }
        }
        return j2;
    }

    public static void reverse(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        reverse(jArr, 0, jArr.length);
    }

    public static void rotate(long[] jArr, int i2) {
        rotate(jArr, i2, 0, jArr.length);
    }

    public static void sortDescending(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sortDescending(jArr, 0, jArr.length);
    }

    public static Converter<String, Long> stringConverter() {
        return LongConverter.INSTANCE;
    }

    public static long[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof LongArrayAsList) {
            return ((LongArrayAsList) collection).toLongArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i2 = 0; i2 < length; i2++) {
            jArr[i2] = ((Number) Preconditions.checkNotNull(array[i2])).longValue();
        }
        return jArr;
    }

    public static byte[] toByteArray(long j2) {
        byte[] bArr = new byte[8];
        for (int i2 = 7; i2 >= 0; i2--) {
            bArr[i2] = (byte) (255 & j2);
            j2 >>= 8;
        }
        return bArr;
    }

    public static Long tryParse(String str) {
        return tryParse(str, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(long[] jArr, long j2, int i2, int i3) {
        while (i2 < i3) {
            if (jArr[i2] == j2) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(long[] jArr, long j2, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            if (jArr[i4] == j2) {
                return i4;
            }
        }
        return -1;
    }

    public static void rotate(long[] jArr, int i2, int i3, int i4) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i3, i4, jArr.length);
        if (jArr.length <= 1) {
            return;
        }
        int i5 = i4 - i3;
        int i6 = (-i2) % i5;
        if (i6 < 0) {
            i6 += i5;
        }
        int i7 = i6 + i3;
        if (i7 == i3) {
            return;
        }
        reverse(jArr, i3, i7);
        reverse(jArr, i7, i4);
        reverse(jArr, i3, i4);
    }

    public static Long tryParse(String str, int i2) {
        if (((String) Preconditions.checkNotNull(str)).isEmpty()) {
            return null;
        }
        if (i2 < 2 || i2 > 36) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("radix must be between MIN_RADIX and MAX_RADIX but was ", i2));
        }
        int i3 = str.charAt(0) == '-' ? 1 : 0;
        if (i3 == str.length()) {
            return null;
        }
        int i4 = i3 + 1;
        int iDigit = AsciiDigits.digit(str.charAt(i3));
        if (iDigit < 0 || iDigit >= i2) {
            return null;
        }
        long j2 = -iDigit;
        long j3 = i2;
        long j4 = Long.MIN_VALUE / j3;
        while (i4 < str.length()) {
            int i5 = i4 + 1;
            int iDigit2 = AsciiDigits.digit(str.charAt(i4));
            if (iDigit2 < 0 || iDigit2 >= i2 || j2 < j4) {
                return null;
            }
            long j5 = j2 * j3;
            long j6 = iDigit2;
            if (j5 < j6 - Long.MIN_VALUE) {
                return null;
            }
            j2 = j5 - j6;
            i4 = i5;
        }
        if (i3 != 0) {
            return Long.valueOf(j2);
        }
        if (j2 == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j2);
    }

    public static int indexOf(long[] jArr, long[] jArr2) {
        Preconditions.checkNotNull(jArr, "array");
        Preconditions.checkNotNull(jArr2, TypedValues.AttributesType.S_TARGET);
        if (jArr2.length == 0) {
            return 0;
        }
        for (int i2 = 0; i2 < (jArr.length - jArr2.length) + 1; i2++) {
            for (int i3 = 0; i3 < jArr2.length; i3++) {
                if (jArr[i2 + i3] != jArr2[i3]) {
                }
            }
            return i2;
        }
        return -1;
    }

    public static void reverse(long[] jArr, int i2, int i3) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i2, i3, jArr.length);
        for (int i4 = i3 - 1; i2 < i4; i4--) {
            long j2 = jArr[i2];
            jArr[i2] = jArr[i4];
            jArr[i4] = j2;
            i2++;
        }
    }

    public static void sortDescending(long[] jArr, int i2, int i3) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i2, i3, jArr.length);
        Arrays.sort(jArr, i2, i3);
        reverse(jArr, i2, i3);
    }
}
