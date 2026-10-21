package f0;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g extends f {
    public static final boolean H(String str) {
        boolean z2;
        t.b.h(str, "<this>");
        if (str.length() == 0) {
            return true;
        }
        Iterable dVar = new c0.d(0, str.length() - 1);
        if ((dVar instanceof Collection) && ((Collection) dVar).isEmpty()) {
            z2 = true;
        } else {
            Iterator it = dVar.iterator();
            while (((c0.c) it).f355d) {
                if (!t.b.r(str.charAt(((t.f) it).nextInt()))) {
                    z2 = false;
                }
            }
            z2 = true;
        }
        return z2;
    }

    public static final boolean I(int i2, String str, String str2, int i3, boolean z2) {
        t.b.h(str, "<this>");
        t.b.h(str2, "other");
        return !z2 ? str.regionMatches(0, str2, i2, i3) : str.regionMatches(z2, 0, str2, i2, i3);
    }

    public static String J(String str, String str2, String str3) {
        int iM = h.M(str, str2, 0, false);
        if (iM < 0) {
            return str;
        }
        int length = str2.length();
        int i2 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i3 = 0;
        do {
            sb.append((CharSequence) str, i3, iM);
            sb.append(str3);
            i3 = iM + length;
            if (iM >= str.length()) {
                break;
            }
            iM = h.M(str, str2, iM + i2, false);
        } while (iM > 0);
        sb.append((CharSequence) str, i3, str.length());
        String string = sb.toString();
        t.b.g(string, "stringBuilder.append(this, i, length).toString()");
        return string;
    }
}
