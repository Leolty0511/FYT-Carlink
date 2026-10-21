package com.google.common.primitives;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
public final class Chars {
    public static final int BYTES = 2;

    @GwtCompatible
    public static class CharArrayAsList extends AbstractList<Character> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final char[] array;
        final int end;
        final int start;

        public CharArrayAsList(char[] cArr) {
            this(cArr, 0, cArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Character) && Chars.indexOf(this.array, ((Character) obj).charValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CharArrayAsList)) {
                return super.equals(obj);
            }
            CharArrayAsList charArrayAsList = (CharArrayAsList) obj;
            int size = size();
            if (charArrayAsList.size() != size) {
                return false;
            }
            for (int i2 = 0; i2 < size; i2++) {
                if (this.array[this.start + i2] != charArrayAsList.array[charArrayAsList.start + i2]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                iHashCode = (iHashCode * 31) + Chars.hashCode(this.array[i2]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            if (!(obj instanceof Character) || (iIndexOf = Chars.indexOf(this.array, ((Character) obj).charValue(), this.start, this.end)) < 0) {
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
            if (!(obj instanceof Character) || (iLastIndexOf = Chars.lastIndexOf(this.array, ((Character) obj).charValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iLastIndexOf - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Character> subList(int i2, int i3) {
            Preconditions.checkPositionIndexes(i2, i3, size());
            if (i2 == i3) {
                return Collections.emptyList();
            }
            char[] cArr = this.array;
            int i4 = this.start;
            return new CharArrayAsList(cArr, i2 + i4, i4 + i3);
        }

        public char[] toCharArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 3);
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

        public CharArrayAsList(char[] cArr, int i2, int i3) {
            this.array = cArr;
            this.start = i2;
            this.end = i3;
        }

        @Override // java.util.AbstractList, java.util.List
        public Character get(int i2) {
            Preconditions.checkElementIndex(i2, size());
            return Character.valueOf(this.array[this.start + i2]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Character set(int i2, Character ch) {
            Preconditions.checkElementIndex(i2, size());
            char[] cArr = this.array;
            int i3 = this.start;
            char c = cArr[i3 + i2];
            cArr[i3 + i2] = ((Character) Preconditions.checkNotNull(ch)).charValue();
            return Character.valueOf(c);
        }
    }

    public enum LexicographicalComparator implements Comparator<char[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(char[] cArr, char[] cArr2) {
            int iMin = Math.min(cArr.length, cArr2.length);
            for (int i2 = 0; i2 < iMin; i2++) {
                int iCompare = Chars.compare(cArr[i2], cArr2[i2]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return cArr.length - cArr2.length;
        }
    }

    private Chars() {
    }

    public static List<Character> asList(char... cArr) {
        return cArr.length == 0 ? Collections.emptyList() : new CharArrayAsList(cArr);
    }

    public static char checkedCast(long j2) {
        char c = (char) j2;
        Preconditions.checkArgument(((long) c) == j2, "Out of range: %s", j2);
        return c;
    }

    public static int compare(char c, char c2) {
        return c - c2;
    }

    public static char[] concat(char[]... cArr) {
        int length = 0;
        for (char[] cArr2 : cArr) {
            length += cArr2.length;
        }
        char[] cArr3 = new char[length];
        int length2 = 0;
        for (char[] cArr4 : cArr) {
            System.arraycopy(cArr4, 0, cArr3, length2, cArr4.length);
            length2 += cArr4.length;
        }
        return cArr3;
    }

    public static char constrainToRange(char c, char c2, char c3) {
        Preconditions.checkArgument(c2 <= c3, "min (%s) must be less than or equal to max (%s)", c2, c3);
        if (c < c2) {
            return c2;
        }
        return c < c3 ? c : c3;
    }

    public static boolean contains(char[] cArr, char c) {
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    public static char[] ensureCapacity(char[] cArr, int i2, int i3) {
        Preconditions.checkArgument(i2 >= 0, "Invalid minLength: %s", i2);
        Preconditions.checkArgument(i3 >= 0, "Invalid padding: %s", i3);
        return cArr.length < i2 ? Arrays.copyOf(cArr, i2 + i3) : cArr;
    }

    @GwtIncompatible
    public static char fromByteArray(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return fromBytes(bArr[0], bArr[1]);
    }

    @GwtIncompatible
    public static char fromBytes(byte b2, byte b3) {
        return (char) ((b2 << 8) | (b3 & 255));
    }

    public static int hashCode(char c) {
        return c;
    }

    public static int indexOf(char[] cArr, char c) {
        return indexOf(cArr, c, 0, cArr.length);
    }

    public static String join(String str, char... cArr) {
        Preconditions.checkNotNull(str);
        int length = cArr.length;
        if (length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(((length - 1) * str.length()) + length);
        sb.append(cArr[0]);
        for (int i2 = 1; i2 < length; i2++) {
            sb.append(str);
            sb.append(cArr[i2]);
        }
        return sb.toString();
    }

    public static int lastIndexOf(char[] cArr, char c) {
        return lastIndexOf(cArr, c, 0, cArr.length);
    }

    public static Comparator<char[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    public static char max(char... cArr) {
        Preconditions.checkArgument(cArr.length > 0);
        char c = cArr[0];
        for (int i2 = 1; i2 < cArr.length; i2++) {
            char c2 = cArr[i2];
            if (c2 > c) {
                c = c2;
            }
        }
        return c;
    }

    public static char min(char... cArr) {
        Preconditions.checkArgument(cArr.length > 0);
        char c = cArr[0];
        for (int i2 = 1; i2 < cArr.length; i2++) {
            char c2 = cArr[i2];
            if (c2 < c) {
                c = c2;
            }
        }
        return c;
    }

    public static void reverse(char[] cArr) {
        Preconditions.checkNotNull(cArr);
        reverse(cArr, 0, cArr.length);
    }

    public static void rotate(char[] cArr, int i2) {
        rotate(cArr, i2, 0, cArr.length);
    }

    public static char saturatedCast(long j2) {
        if (j2 > 65535) {
            return (char) 65535;
        }
        if (j2 < 0) {
            return (char) 0;
        }
        return (char) j2;
    }

    public static void sortDescending(char[] cArr) {
        Preconditions.checkNotNull(cArr);
        sortDescending(cArr, 0, cArr.length);
    }

    public static char[] toArray(Collection<Character> collection) {
        if (collection instanceof CharArrayAsList) {
            return ((CharArrayAsList) collection).toCharArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        char[] cArr = new char[length];
        for (int i2 = 0; i2 < length; i2++) {
            cArr[i2] = ((Character) Preconditions.checkNotNull(array[i2])).charValue();
        }
        return cArr;
    }

    @GwtIncompatible
    public static byte[] toByteArray(char c) {
        return new byte[]{(byte) (c >> '\b'), (byte) c};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(char[] cArr, char c, int i2, int i3) {
        while (i2 < i3) {
            if (cArr[i2] == c) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(char[] cArr, char c, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            if (cArr[i4] == c) {
                return i4;
            }
        }
        return -1;
    }

    public static void rotate(char[] cArr, int i2, int i3, int i4) {
        Preconditions.checkNotNull(cArr);
        Preconditions.checkPositionIndexes(i3, i4, cArr.length);
        if (cArr.length <= 1) {
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
        reverse(cArr, i3, i7);
        reverse(cArr, i7, i4);
        reverse(cArr, i3, i4);
    }

    public static int indexOf(char[] cArr, char[] cArr2) {
        Preconditions.checkNotNull(cArr, "array");
        Preconditions.checkNotNull(cArr2, TypedValues.AttributesType.S_TARGET);
        if (cArr2.length == 0) {
            return 0;
        }
        for (int i2 = 0; i2 < (cArr.length - cArr2.length) + 1; i2++) {
            for (int i3 = 0; i3 < cArr2.length; i3++) {
                if (cArr[i2 + i3] != cArr2[i3]) {
                }
            }
            return i2;
        }
        return -1;
    }

    public static void reverse(char[] cArr, int i2, int i3) {
        Preconditions.checkNotNull(cArr);
        Preconditions.checkPositionIndexes(i2, i3, cArr.length);
        for (int i4 = i3 - 1; i2 < i4; i4--) {
            char c = cArr[i2];
            cArr[i2] = cArr[i4];
            cArr[i4] = c;
            i2++;
        }
    }

    public static void sortDescending(char[] cArr, int i2, int i3) {
        Preconditions.checkNotNull(cArr);
        Preconditions.checkPositionIndexes(i2, i3, cArr.length);
        Arrays.sort(cArr, i2, i3);
        reverse(cArr, i2, i3);
    }
}
