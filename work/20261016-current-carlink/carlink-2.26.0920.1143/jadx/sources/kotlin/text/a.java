package kotlin.text;

import c0.d;
import e0.f;
import f0.c;
import f0.g;
import f0.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Pair;
import t.b;
import z.l;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends b {
    /* JADX WARN: Multi-variable type inference failed */
    public static final String G(final String str) {
        Comparable comparable;
        b.h(str, "<this>");
        final List listAsList = Arrays.asList("\r\n", "\n", "\r");
        b.g(listAsList, "asList(this)");
        int i2 = 0;
        final Object[] objArr = 0 == true ? 1 : 0;
        List listI = kotlin.sequences.b.I(new f(new c(str, 0, 0, new p() { // from class: kotlin.text.StringsKt__StringsKt$rangesDelimitedBy$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            /* JADX WARN: Code duplicated, block: B:54:0x00cb A[EDGE_INSN: B:54:0x00cb->B:55:0x00cc BREAK  A[LOOP:0: B:26:0x0062->B:37:0x0092]] */
            public final Pair<Integer, Integer> invoke(CharSequence charSequence, int i3) {
                Object next;
                Pair pair;
                String str2;
                Object next2;
                String str3;
                b.h(charSequence, "$this$$receiver");
                boolean z2 = objArr;
                List list = listAsList;
                if (z2 || list.size() != 1) {
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    d dVar = new d(i3, charSequence.length());
                    boolean z3 = charSequence instanceof String;
                    int i4 = dVar.f353d;
                    int i5 = dVar.c;
                    if (!z3) {
                        if ((i4 > 0 && i3 <= i5) || (i4 < 0 && i5 <= i3)) {
                            while (true) {
                                Iterator it = list.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it.next();
                                    str2 = (String) next;
                                } while (!h.P(str2, charSequence, i3, str2.length(), z2));
                                String str4 = (String) next;
                                if (str4 == null) {
                                    if (i3 == i5) {
                                        pair = null;
                                        break;
                                    }
                                    i3 += i4;
                                } else {
                                    pair = new Pair(Integer.valueOf(i3), str4);
                                    break;
                                }
                            }
                        } else {
                            pair = null;
                            break;
                        }
                    } else if ((i4 > 0 && i3 <= i5) || (i4 < 0 && i5 <= i3)) {
                        while (true) {
                            Iterator it2 = list.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next2 = null;
                                    break;
                                }
                                next2 = it2.next();
                                str3 = (String) next2;
                            } while (!g.I(i3, str3, (String) charSequence, str3.length(), z2));
                            String str5 = (String) next2;
                            if (str5 == null) {
                                if (i3 == i5) {
                                    pair = null;
                                    break;
                                }
                                i3 += i4;
                            } else {
                                pair = new Pair(Integer.valueOf(i3), str5);
                                break;
                            }
                        }
                    } else {
                        pair = null;
                        break;
                    }
                } else {
                    int size = list.size();
                    if (size == 0) {
                        throw new NoSuchElementException("List is empty.");
                    }
                    if (size != 1) {
                        throw new IllegalArgumentException("List has more than one element.");
                    }
                    String str6 = (String) list.get(0);
                    int iN = h.N(charSequence, str6, i3, false, 4);
                    if (iN < 0) {
                        pair = null;
                        break;
                    }
                    pair = new Pair(Integer.valueOf(iN), str6);
                }
                if (pair != null) {
                    return new Pair<>(pair.getFirst(), Integer.valueOf(((String) pair.getSecond()).length()));
                }
                return null;
            }

            @Override // z.p
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke((CharSequence) obj, ((Number) obj2).intValue());
            }
        }), new l() { // from class: kotlin.text.StringsKt__StringsKt$splitToSequence$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // z.l
            public final String invoke(d dVar) {
                b.h(dVar, "it");
                CharSequence charSequence = str;
                b.h(charSequence, "<this>");
                return charSequence.subSequence(Integer.valueOf(dVar.f352b).intValue(), Integer.valueOf(dVar.c).intValue() + 1).toString();
            }
        }));
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : listI) {
            if (true ^ g.H((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str2 : arrayList) {
            int length = str2.length();
            int length2 = 0;
            while (true) {
                if (length2 >= length) {
                    length2 = -1;
                    break;
                }
                if (!b.r(str2.charAt(length2))) {
                    break;
                }
                length2++;
            }
            if (length2 == -1) {
                length2 = str2.length();
            }
            arrayList2.add(Integer.valueOf(length2));
        }
        Iterator it = arrayList2.iterator();
        if (it.hasNext()) {
            comparable = (Comparable) it.next();
            while (it.hasNext()) {
                Comparable comparable2 = (Comparable) it.next();
                if (comparable.compareTo(comparable2) > 0) {
                    comparable = comparable2;
                }
            }
        } else {
            comparable = null;
        }
        Integer num = (Integer) comparable;
        int iIntValue = num != null ? num.intValue() : 0;
        int size = (listI.size() * 0) + str.length();
        StringsKt__IndentKt$getIndentFunction$1 stringsKt__IndentKt$getIndentFunction$1 = new l() { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$1
            @Override // z.l
            public final String invoke(String str3) {
                b.h(str3, "line");
                return str3;
            }
        };
        int size2 = listI.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        int i3 = 0;
        for (Object obj2 : listI) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            String str3 = (String) obj2;
            if ((i3 == 0 || i3 == size2) && g.H(str3)) {
                str3 = null;
            } else {
                b.h(str3, "<this>");
                if ((iIntValue >= 0) != true) {
                    throw new IllegalArgumentException(android.accessibilityservice.c.e("Requested character count ", iIntValue, " is less than zero.").toString());
                }
                int length3 = str3.length();
                if (iIntValue <= length3) {
                    length3 = iIntValue;
                }
                String strSubstring = str3.substring(length3);
                b.g(strSubstring, "this as java.lang.String).substring(startIndex)");
                String str4 = (String) stringsKt__IndentKt$getIndentFunction$1.invoke((Object) strSubstring);
                if (str4 != null) {
                    str3 = str4;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i3 = i4;
        }
        StringBuilder sb = new StringBuilder(size);
        sb.append((CharSequence) "");
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) "\n");
            }
            if (next == null ? true : next instanceof CharSequence) {
                sb.append((CharSequence) next);
            } else if (next instanceof Character) {
                sb.append(((Character) next).charValue());
            } else {
                sb.append((CharSequence) String.valueOf(next));
            }
        }
        sb.append((CharSequence) "");
        String string = sb.toString();
        b.g(string, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return string;
    }
}
