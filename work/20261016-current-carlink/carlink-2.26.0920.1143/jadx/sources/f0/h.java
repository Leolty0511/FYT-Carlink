package f0;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h extends g {
    public static boolean K(String str, String str2) {
        t.b.h(str, "<this>");
        return N(str, str2, 0, false, 2) >= 0;
    }

    public static final int L(CharSequence charSequence) {
        t.b.h(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int M(CharSequence charSequence, String str, int i2, boolean z2) {
        t.b.h(charSequence, "<this>");
        t.b.h(str, TypedValues.Custom.S_STRING);
        if (!z2 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i2);
        }
        int length = charSequence.length();
        if (i2 < 0) {
            i2 = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        c0.d dVar = new c0.d(i2, length);
        boolean z3 = charSequence instanceof String;
        int i3 = dVar.f353d;
        int i4 = dVar.c;
        if (z3) {
            if ((i3 > 0 && i2 <= i4) || (i3 < 0 && i4 <= i2)) {
                while (!g.I(i2, str, (String) charSequence, str.length(), z2)) {
                    if (i2 != i4) {
                        i2 += i3;
                    }
                }
                return i2;
            }
            return -1;
        }
        if ((i3 > 0 && i2 <= i4) || (i3 < 0 && i4 <= i2)) {
            while (!P(str, charSequence, i2, str.length(), z2)) {
                if (i2 != i4) {
                    i2 += i3;
                }
            }
            return i2;
        }
        return -1;
    }

    public static /* synthetic */ int N(CharSequence charSequence, String str, int i2, boolean z2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z2 = false;
        }
        return M(charSequence, str, i2, z2);
    }

    public static int O(String str, char c, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return str.indexOf(c, i2);
    }

    public static final boolean P(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z2) {
        t.b.h(charSequence, "<this>");
        t.b.h(charSequence2, "other");
        if (i2 < 0 || charSequence.length() - i3 < 0 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!t.b.m(charSequence.charAt(0 + i4), charSequence2.charAt(i2 + i4), z2)) {
                return false;
            }
        }
        return true;
    }

    public static String Q(String str) {
        t.b.h(str, "<this>");
        t.b.h(str, "missingDelimiterValue");
        int iLastIndexOf = str.lastIndexOf(46, L(str));
        if (iLastIndexOf == -1) {
            return str;
        }
        String strSubstring = str.substring(iLastIndexOf + 1, str.length());
        t.b.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }
}
