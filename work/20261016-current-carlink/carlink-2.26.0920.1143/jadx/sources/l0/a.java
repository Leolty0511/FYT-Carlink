package l0;

import android.provider.DocumentsContract;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements HostnameVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f1069a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f1070b;

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", DocumentsContract.EXTRA_INFO, "lg", "ne", "net", "or", "org"};
        f1070b = strArr;
        Arrays.sort(strArr);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x009b  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ac  */
    public static void a(String str, String[] strArr, String[] strArr2, boolean z2) throws SSLException {
        boolean z3;
        boolean z4;
        String str2;
        LinkedList linkedList = new LinkedList();
        if (strArr != null && strArr.length > 0 && (str2 = strArr[0]) != null) {
            linkedList.add(str2);
        }
        if (strArr2 != null) {
            for (String str3 : strArr2) {
                if (str3 != null) {
                    linkedList.add(str3);
                }
            }
        }
        if (linkedList.isEmpty()) {
            throw new SSLException(android.accessibilityservice.c.k("Certificate for <", str, "> doesn't contain CN or DNS subjectAlt"));
        }
        StringBuffer stringBuffer = new StringBuffer();
        String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        Iterator it = linkedList.iterator();
        boolean zEquals = false;
        while (it.hasNext()) {
            String lowerCase2 = ((String) it.next()).toLowerCase(Locale.ENGLISH);
            stringBuffer.append(" <");
            stringBuffer.append(lowerCase2);
            stringBuffer.append('>');
            if (it.hasNext()) {
                stringBuffer.append(" OR");
            }
            if (!lowerCase2.startsWith("*.") || lowerCase2.indexOf(46, 2) == -1) {
                z3 = false;
            } else {
                int length = lowerCase2.length();
                if (length < 7 || length > 9) {
                    z4 = true;
                } else {
                    int i2 = length - 3;
                    if (lowerCase2.charAt(i2) != '.') {
                        z4 = true;
                    } else if (Arrays.binarySearch(f1070b, lowerCase2.substring(2, i2)) < 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                }
                if (!z4 || f1069a.matcher(str).matches()) {
                    z3 = false;
                } else {
                    z3 = true;
                }
            }
            if (z3) {
                boolean zEndsWith = lowerCase.endsWith(lowerCase2.substring(1));
                if (zEndsWith && z2) {
                    int i3 = 0;
                    for (int i4 = 0; i4 < lowerCase.length(); i4++) {
                        if (lowerCase.charAt(i4) == '.') {
                            i3++;
                        }
                    }
                    int i5 = 0;
                    for (int i6 = 0; i6 < lowerCase2.length(); i6++) {
                        if (lowerCase2.charAt(i6) == '.') {
                            i5++;
                        }
                    }
                    zEquals = i3 == i5;
                } else {
                    zEquals = zEndsWith;
                }
            } else {
                zEquals = lowerCase.equals(lowerCase2);
            }
            if (zEquals) {
                break;
            }
        }
        if (zEquals) {
            return;
        }
        throw new SSLException("hostname in certificate didn't match: <" + str + "> !=" + ((Object) stringBuffer));
    }

    public final void b(X509Certificate x509Certificate, String str) throws SSLException {
        String[] strArr;
        Collection<List<?>> subjectAlternativeNames;
        String str2;
        char[] cArr;
        char c;
        int i2;
        char c2;
        c cVar = new c(x509Certificate.getSubjectX500Principal());
        cVar.c = 0;
        cVar.f1073d = 0;
        cVar.f1074e = 0;
        cVar.f1075f = 0;
        String str3 = cVar.f1071a;
        cVar.f1076g = str3.toCharArray();
        List listEmptyList = Collections.emptyList();
        String strC = cVar.c();
        if (strC != null) {
            while (true) {
                int i3 = cVar.c;
                int i4 = cVar.f1072b;
                if (i3 >= i4) {
                    break;
                }
                char c3 = cVar.f1076g[i3];
                char c4 = '\\';
                char c5 = ';';
                if (c3 == '\"') {
                    int i5 = i3 + 1;
                    cVar.c = i5;
                    cVar.f1073d = i5;
                    cVar.f1074e = i5;
                    while (true) {
                        int i6 = cVar.c;
                        if (i6 == i4) {
                            throw new IllegalStateException("Unexpected end of DN: ".concat(str3));
                        }
                        char[] cArr2 = cVar.f1076g;
                        char c6 = cArr2[i6];
                        if (c6 == '\"') {
                            cVar.c = i6 + 1;
                            while (true) {
                                int i7 = cVar.c;
                                if (i7 >= i4 || cVar.f1076g[i7] != ' ') {
                                    break;
                                } else {
                                    cVar.c = i7 + 1;
                                }
                            }
                            char[] cArr3 = cVar.f1076g;
                            int i8 = cVar.f1073d;
                            str2 = new String(cArr3, i8, cVar.f1074e - i8);
                            break;
                        }
                        if (c6 == '\\') {
                            cArr2[cVar.f1074e] = cVar.b();
                        } else {
                            cArr2[cVar.f1074e] = c6;
                        }
                        cVar.c++;
                        cVar.f1074e++;
                        c5 = ';';
                    }
                } else if (c3 == '#') {
                    if (i3 + 4 >= i4) {
                        throw new IllegalStateException("Unexpected end of DN: ".concat(str3));
                    }
                    cVar.f1073d = i3;
                    cVar.c = i3 + 1;
                    while (true) {
                        int i9 = cVar.c;
                        if (i9 == i4 || (c = (cArr = cVar.f1076g)[i9]) == '+' || c == ',' || c == ';') {
                            cVar.f1074e = i9;
                            break;
                        }
                        if (c == ' ') {
                            cVar.f1074e = i9;
                            cVar.c = i9 + 1;
                            while (true) {
                                int i10 = cVar.c;
                                if (i10 >= i4 || cVar.f1076g[i10] != ' ') {
                                    break;
                                } else {
                                    cVar.c = i10 + 1;
                                }
                            }
                        } else {
                            if (c >= 'A' && c <= 'F') {
                                cArr[i9] = (char) (c + ' ');
                            }
                            cVar.c = i9 + 1;
                        }
                    }
                    int i11 = cVar.f1074e;
                    int i12 = cVar.f1073d;
                    int i13 = i11 - i12;
                    if (i13 < 5 || (i13 & 1) == 0) {
                        throw new IllegalStateException("Unexpected end of DN: ".concat(str3));
                    }
                    int i14 = i13 / 2;
                    byte[] bArr = new byte[i14];
                    int i15 = i12 + 1;
                    for (int i16 = 0; i16 < i14; i16++) {
                        bArr[i16] = (byte) cVar.a(i15);
                        i15 += 2;
                    }
                    str2 = new String(cVar.f1076g, cVar.f1073d, i13);
                } else if (c3 == '+' || c3 == ',' || c3 == ';') {
                    str2 = "";
                } else {
                    cVar.f1073d = i3;
                    cVar.f1074e = i3;
                    while (true) {
                        int i17 = cVar.c;
                        if (i17 >= i4) {
                            char[] cArr4 = cVar.f1076g;
                            int i18 = cVar.f1073d;
                            str2 = new String(cArr4, i18, cVar.f1074e - i18);
                            break;
                        }
                        char[] cArr5 = cVar.f1076g;
                        char c7 = cArr5[i17];
                        if (c7 != ' ') {
                            if (c7 != ';') {
                                if (c7 == c4) {
                                    int i19 = cVar.f1074e;
                                    cVar.f1074e = i19 + 1;
                                    cArr5[i19] = cVar.b();
                                    cVar.c++;
                                } else if (c7 != '+' && c7 != ',') {
                                    int i20 = cVar.f1074e;
                                    cVar.f1074e = i20 + 1;
                                    cArr5[i20] = c7;
                                    cVar.c = i17 + 1;
                                }
                                c4 = '\\';
                            }
                            int i21 = cVar.f1073d;
                            str2 = new String(cArr5, i21, cVar.f1074e - i21);
                            break;
                        }
                        int i22 = cVar.f1074e;
                        cVar.f1075f = i22;
                        cVar.c = i17 + 1;
                        cVar.f1074e = i22 + 1;
                        cArr5[i22] = ' ';
                        while (true) {
                            i2 = cVar.c;
                            if (i2 >= i4) {
                                break;
                            }
                            char[] cArr6 = cVar.f1076g;
                            if (cArr6[i2] != ' ') {
                                break;
                            }
                            int i23 = cVar.f1074e;
                            cVar.f1074e = i23 + 1;
                            cArr6[i23] = ' ';
                            cVar.c = i2 + 1;
                        }
                        if (i2 == i4 || (c2 = cVar.f1076g[i2]) == ',' || c2 == '+' || c2 == ';') {
                            char[] cArr7 = cVar.f1076g;
                            int i24 = cVar.f1073d;
                            str2 = new String(cArr7, i24, cVar.f1075f - i24);
                            break;
                        }
                        c4 = '\\';
                    }
                }
                if ("cn".equalsIgnoreCase(strC)) {
                    if (listEmptyList.isEmpty()) {
                        listEmptyList = new ArrayList();
                    }
                    listEmptyList.add(str2);
                }
                int i25 = cVar.c;
                if (i25 >= i4) {
                    break;
                }
                char c8 = cVar.f1076g[i25];
                if (c8 != ',' && c8 != c5 && c8 != '+') {
                    throw new IllegalStateException("Malformed DN: ".concat(str3));
                }
                cVar.c = i25 + 1;
                strC = cVar.c();
                if (strC == null) {
                    throw new IllegalStateException("Malformed DN: ".concat(str3));
                }
            }
        }
        String[] strArr2 = null;
        if (listEmptyList.isEmpty()) {
            strArr = null;
        } else {
            String[] strArr3 = new String[listEmptyList.size()];
            listEmptyList.toArray(strArr3);
            strArr = strArr3;
        }
        LinkedList linkedList = new LinkedList();
        try {
            subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException e2) {
            Logger.getLogger(a.class.getName()).log(Level.FINE, "Error parsing certificate.", (Throwable) e2);
            subjectAlternativeNames = null;
        }
        if (subjectAlternativeNames != null) {
            for (List<?> list : subjectAlternativeNames) {
                if (((Integer) list.get(0)).intValue() == 2) {
                    linkedList.add((String) list.get(1));
                }
            }
        }
        if (!linkedList.isEmpty()) {
            strArr2 = new String[linkedList.size()];
            linkedList.toArray(strArr2);
        }
        switch (((b) this).c) {
            case 0:
                return;
            case 1:
                a(str, strArr, strArr2, false);
                return;
            default:
                a(str, strArr, strArr2, true);
                return;
        }
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            b((X509Certificate) sSLSession.getPeerCertificates()[0], str);
            return true;
        } catch (SSLException unused) {
            return false;
        }
    }
}
