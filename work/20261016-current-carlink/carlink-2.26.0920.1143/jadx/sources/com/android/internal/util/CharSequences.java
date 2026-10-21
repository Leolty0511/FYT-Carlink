package com.android.internal.util;

/* JADX INFO: loaded from: classes3.dex */
public class CharSequences {
    public static int compareToIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int i2 = length < length2 ? length : length2;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 + 1;
            int i6 = i4 + 1;
            int lowerCase = Character.toLowerCase(charSequence.charAt(i3)) - Character.toLowerCase(charSequence2.charAt(i4));
            if (lowerCase != 0) {
                return lowerCase;
            }
            i3 = i5;
            i4 = i6;
        }
        return length - length2;
    }

    public static boolean equals(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i2) != charSequence2.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    public static CharSequence forAsciiBytes(final byte[] bArr) {
        return new CharSequence() { // from class: com.android.internal.util.CharSequences.1
            @Override // java.lang.CharSequence
            public char charAt(int i2) {
                return (char) bArr[i2];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return bArr.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i2, int i3) {
                return CharSequences.forAsciiBytes(bArr, i2, i3);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return new String(bArr);
            }
        };
    }

    public static void validate(int i2, int i3, int i4) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i3 > i4) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 > i3) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static CharSequence forAsciiBytes(final byte[] bArr, final int i2, final int i3) {
        validate(i2, i3, bArr.length);
        return new CharSequence() { // from class: com.android.internal.util.CharSequences.2
            @Override // java.lang.CharSequence
            public char charAt(int i4) {
                return (char) bArr[i4 + i2];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return i3 - i2;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i4, int i5) {
                int i6 = i2;
                int i7 = i4 - i6;
                int i8 = i5 - i6;
                CharSequences.validate(i7, i8, length());
                return CharSequences.forAsciiBytes(bArr, i7, i8);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return new String(bArr, i2, length());
            }
        };
    }
}
