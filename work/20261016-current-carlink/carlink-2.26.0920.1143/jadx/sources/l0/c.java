package l0;

import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1072b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public char[] f1076g;

    public c(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f1071a = name;
        this.f1072b = name.length();
    }

    public final int a(int i2) {
        int i3;
        int i4;
        int i5 = i2 + 1;
        int i6 = this.f1072b;
        String str = this.f1071a;
        if (i5 >= i6) {
            throw new IllegalStateException("Malformed DN: " + str);
        }
        char[] cArr = this.f1076g;
        char c = cArr[i2];
        if (c >= '0' && c <= '9') {
            i3 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i3 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                throw new IllegalStateException("Malformed DN: " + str);
            }
            i3 = c - '7';
        }
        char c2 = cArr[i5];
        if (c2 >= '0' && c2 <= '9') {
            i4 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i4 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + str);
            }
            i4 = c2 - '7';
        }
        return (i3 << 4) + i4;
    }

    public final char b() {
        int i2;
        int i3 = this.c + 1;
        this.c = i3;
        int i4 = this.f1072b;
        if (i3 == i4) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1071a);
        }
        char c = this.f1076g[i3];
        if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
            switch (c) {
                default:
                    switch (c) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            int iA = a(i3);
                            this.c++;
                            if (iA >= 128) {
                                if (iA >= 192 && iA <= 247) {
                                    if (iA <= 223) {
                                        iA &= 31;
                                        i2 = 1;
                                    } else if (iA <= 239) {
                                        iA &= 15;
                                        i2 = 2;
                                    } else {
                                        iA &= 7;
                                        i2 = 3;
                                    }
                                    for (int i5 = 0; i5 < i2; i5++) {
                                        int i6 = this.c + 1;
                                        this.c = i6;
                                        if (i6 != i4 && this.f1076g[i6] == '\\') {
                                            int i7 = i6 + 1;
                                            this.c = i7;
                                            int iA2 = a(i7);
                                            this.c++;
                                            if ((iA2 & 192) == 128) {
                                                iA = (iA << 6) + (iA2 & 63);
                                            }
                                        }
                                    }
                                }
                                return '?';
                            }
                            return (char) iA;
                    }
                case '*':
                case '+':
                case ',':
                    return c;
            }
        }
        return c;
    }

    public final String c() {
        int i2;
        int i3;
        int i4;
        char c;
        int i5;
        char c2;
        char c3;
        while (true) {
            i2 = this.c;
            i3 = this.f1072b;
            if (i2 >= i3 || this.f1076g[i2] != ' ') {
                break;
            }
            this.c = i2 + 1;
        }
        if (i2 == i3) {
            return null;
        }
        this.f1073d = i2;
        this.c = i2 + 1;
        while (true) {
            i4 = this.c;
            if (i4 >= i3 || (c3 = this.f1076g[i4]) == '=' || c3 == ' ') {
                break;
            }
            this.c = i4 + 1;
        }
        String str = this.f1071a;
        if (i4 >= i3) {
            throw new IllegalStateException("Unexpected end of DN: " + str);
        }
        this.f1074e = i4;
        if (this.f1076g[i4] == ' ') {
            while (true) {
                i5 = this.c;
                if (i5 >= i3 || (c2 = this.f1076g[i5]) == '=' || c2 != ' ') {
                    break;
                }
                this.c = i5 + 1;
            }
            if (this.f1076g[i5] != '=' || i5 == i3) {
                throw new IllegalStateException("Unexpected end of DN: " + str);
            }
        }
        this.c++;
        while (true) {
            int i6 = this.c;
            if (i6 >= i3 || this.f1076g[i6] != ' ') {
                break;
            }
            this.c = i6 + 1;
        }
        int i7 = this.f1074e;
        int i8 = this.f1073d;
        if (i7 - i8 > 4) {
            char[] cArr = this.f1076g;
            if (cArr[i8 + 3] == '.' && (((c = cArr[i8]) == 'O' || c == 'o') && ((cArr[i8 + 1] == 'I' || cArr[i8 + 1] == 'i') && (cArr[i8 + 2] == 'D' || cArr[i8 + 2] == 'd')))) {
                this.f1073d = i8 + 4;
            }
        }
        char[] cArr2 = this.f1076g;
        int i9 = this.f1073d;
        return new String(cArr2, i9, i7 - i9);
    }
}
