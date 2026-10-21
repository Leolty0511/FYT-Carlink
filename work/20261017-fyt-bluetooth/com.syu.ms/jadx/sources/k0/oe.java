package k0;

import android.net.ProxyProperties;
import android.opengl.GLES10;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class oe extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8779b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8782e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8785h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8788k;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8791n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8780c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8781d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 18}, new int[]{11, 13}, new int[]{19, 67}, new int[]{20, 68}, new int[]{21, 6}, new int[]{22, 21}, new int[]{64, 29}, new int[]{65, 6}, new int[]{66, 15}, new int[]{67, 63}, new int[]{68, 1}, new int[]{69, 58}, new int[]{70, 5}, new int[]{71, 12}, new int[]{72, 25}, new int[]{73, 5}, new int[]{74, 34}, new int[]{75, 35}, new int[]{76, 32}, new int[]{77, 33}, new int[]{78, 31}, new int[]{79, 30}, new int[]{84, 8}, new int[]{85, 7}, new int[]{86, 30}, new int[]{87, 31}, new int[]{88, 18}, new int[]{89, 24}, new int[]{90, 54}, new int[]{91, 2}, new int[]{92, 16}, new int[]{93, 5}, new int[]{94, 0}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8783f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8784g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 12}, new int[]{19, 3}, new int[]{20, 4}, new int[]{6, 4}, new int[]{22, 3}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8786i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f8787j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{6, 12}, new int[]{22, 6}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8789l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f8790m = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 4}, new int[]{7, 2}, new int[]{9, 12}, new int[]{22, 3}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8792o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f8793p = {new int[]{1, 5}, new int[]{2, 2}, new int[]{7, 7}, new int[]{4, 8}, new int[]{6, 12}, new int[]{9, 3}, new int[]{22, 4}, new int[]{8, 1}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8794q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8795r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f8796s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f8797t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f8798u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f8799v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f8800w = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f8801x = new g();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public byte f8802y = 5;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f8803z = new h();
    public Runnable A = new i();
    public Runnable B = new j();
    public Runnable C = new a();
    public boolean D = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (oe.this.D) {
                z.k.s(227, 144, 2, 56, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.m();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oe.this.g3((byte) 2, u0.b.i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oe.this.g3((byte) 4, u0.b.j3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oe.this.g3((byte) 3, u0.b.k3);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oe.this.j3(h0.c.f2437h);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (oe.this.f8800w.equals(h0.c.f2452q)) {
                z2 = false;
            } else {
                oe.this.f8800w = h0.c.f2452q;
                if (oe.this.f8800w == null) {
                    oe.this.f8800w = ProxyProperties.LOCAL_EXCL_LIST;
                }
                z2 = true;
            }
            if (z2) {
                oe oeVar = oe.this;
                oeVar.i3(oeVar.f8800w);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(oe.this.A);
            oe.this.f8802y = (byte) 5;
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oe oeVar = oe.this;
            byte b2 = (byte) (oeVar.f8802y - 1);
            oeVar.f8802y = b2;
            if (b2 <= 0) {
                l0.b0.p0(oeVar.A);
                oe.this.f8802y = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 22:
                    case 26:
                        z.k.s(227, 131, 1, 0);
                        break;
                    case 23:
                    case 27:
                        z.k.s(227, 131, 1, 1);
                        break;
                    case 24:
                    case 28:
                        z.k.s(227, 131, 1, 2);
                        break;
                    case 25:
                    case 29:
                        z.k.s(227, 131, 1, 4);
                        break;
                    case 30:
                        z.k.s(227, 131, 1, 5);
                        break;
                }
            }
            z.k.s(227, 144, 2, 48, 0);
            z.k.s(227, 144, 2, 39, 0);
            z.k.s(227, 144, 2, 23, 0);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public static String h3(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\\') {
                i2 = i3 + 1;
                char cCharAt2 = str.charAt(i3);
                if (cCharAt2 == 'u') {
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < 4) {
                        int i6 = i2 + 1;
                        char cCharAt3 = str.charAt(i2);
                        switch (cCharAt3) {
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                i5 = ((i5 << 4) + cCharAt3) - 48;
                                break;
                            default:
                                switch (cCharAt3) {
                                    case 'A':
                                    case 'B':
                                    case 'C':
                                    case 'D':
                                    case 'E':
                                    case 'F':
                                        i5 = (((i5 << 4) + 10) + cCharAt3) - 65;
                                        break;
                                    default:
                                        switch (cCharAt3) {
                                            case 'a':
                                            case 'b':
                                            case 'c':
                                            case 'd':
                                            case 'e':
                                            case 'f':
                                                i5 = (((i5 << 4) + 10) + cCharAt3) - 97;
                                                break;
                                            default:
                                                throw new IllegalArgumentException("Malformed   \\uxxxx   encoding.");
                                        }
                                        break;
                                }
                                break;
                        }
                        i4++;
                        i2 = i6;
                    }
                    stringBuffer.append((char) i5);
                } else {
                    if (cCharAt2 == 't') {
                        cCharAt2 = '\t';
                    } else if (cCharAt2 == 'r') {
                        cCharAt2 = '\r';
                    } else if (cCharAt2 == 'n') {
                        cCharAt2 = '\n';
                    } else if (cCharAt2 == 'f') {
                        cCharAt2 = '\f';
                    }
                    stringBuffer.append(cCharAt2);
                }
            } else {
                stringBuffer.append(cCharAt);
                i2 = i3;
            }
        }
        return stringBuffer.toString();
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f8803z, 1);
        qt.y(this.B);
        qt.y(this.C);
        l0.b0.b(this.f8795r);
        h0.d.f2464c.a(this.f8799v, 1);
        h0.d.f2466e.a(this.f8801x, 1);
        u0.c.f17388o.a(this.f8796s, 1);
        u0.c.f17389p.a(this.f8797t, 1);
        u0.c.f17390q.a(this.f8798u, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int i4;
        int[][] iArr6;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == -108) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 1) == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
            }
            byte b3 = bArr[i2 + 3];
            if (b3 == 1) {
                u0.d.I3(23, 1);
                qt.y0(Process.MEDIA_UID, 1);
            }
            if (b3 == 2) {
                u0.d.I3(23, 0);
                qt.y0(Process.MEDIA_UID, 0);
                return;
            } else if (b3 == 3) {
                u0.d.I3(23, 0);
                qt.y0(Process.MEDIA_UID, 3);
                return;
            } else {
                if (b3 != 4) {
                    return;
                }
                u0.d.I3(23, 0);
                qt.y0(Process.MEDIA_UID, 2);
                return;
            }
        }
        if (b2 == 23) {
            qt.y0(155, bArr[i2 + 3] & 255);
            qt.y0(156, bArr[i2 + 4] & 255);
            qt.y0(157, bArr[i2 + 5] & 255);
            qt.y0(158, bArr[i2 + 6] & 255);
            qt.y0(159, bArr[i2 + 7] & 255);
            int i8 = i2 + 9;
            qt.y0(160, (bArr[i8] >> 7) & 1);
            qt.y0(161, (bArr[i8] >> 4) & 3);
            return;
        }
        if (b2 == 39) {
            if (nt.a()) {
                int i9 = nt.f8637c;
                if (i9 == 12 || i9 == 16 || i9 == 17 || i9 == 20 || i9 == 22 || i9 == 23 || i9 == 24 || i9 == 25 || i9 == 26 || i9 == 27 || i9 == 28 || i9 == 29 || i9 == 30) {
                    int i10 = bArr[i2 + 2] & 255;
                    if (i10 == 0) {
                        u0.d.A3(0);
                        return;
                    } else {
                        u0.d.A3((i10 * 5) + 605);
                        return;
                    }
                }
                int i11 = bArr[i2 + 2] & 255;
                int i12 = (i11 >> 7) & 1;
                int i13 = i11 & 127;
                if (i12 == 0) {
                    u0.d.A3((i13 * 5) + 1000);
                    return;
                } else {
                    u0.d.A3(1000 - (i13 * 5));
                    return;
                }
            }
            return;
        }
        if (b2 == 41) {
            if (nt.f8637c == 13) {
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, GLES10.GL_CLEAR);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 51) {
            int i14 = nt.f8637c;
            if (i14 != 12 && i14 != 16 && i14 != 17 && i14 != 22 && i14 != 23 && i14 != 24 && i14 != 25 && i14 != 26 && i14 != 27 && i14 != 28 && i14 != 29 && i14 != 30) {
                qt.y0(105, bArr[i2 + 2] & 255);
                return;
            }
            qt.y0(101, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(104, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(102, (bArr[i2 + 8] & 255) | ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280));
            return;
        }
        if (b2 == 56) {
            int i15 = i2 + 2;
            qt.y0(99, (bArr[i15] >> 3) & 1);
            qt.y0(100, (bArr[i15] >> 0) & 3);
            qt.y0(101, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(102, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(103, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(104, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b2 == 64) {
            qt.y0(109, bArr[i2 + 2] & 255);
            int i16 = i2 + 3;
            qt.y0(110, (bArr[i16] >> 6) & 3);
            qt.y0(111, (bArr[i16] >> 5) & 1);
            qt.y0(112, (bArr[i16] >> 4) & 1);
            qt.y0(113, (bArr[i16] >> 3) & 1);
            qt.y0(114, (bArr[i16] >> 2) & 1);
            qt.y0(115, (bArr[i16] >> 1) & 1);
            qt.y0(135, (bArr[i16] >> 0) & 1);
            int i17 = i2 + 4;
            qt.y0(116, (bArr[i17] >> 6) & 3);
            qt.y0(117, (bArr[i17] >> 4) & 3);
            qt.y0(118, (bArr[i17] >> 3) & 1);
            qt.y0(119, (bArr[i17] >> 2) & 1);
            qt.y0(120, (bArr[i17] >> 1) & 1);
            qt.y0(121, (bArr[i17] >> 0) & 1);
            int i18 = i2 + 5;
            qt.y0(122, (bArr[i18] >> 7) & 1);
            qt.y0(123, (bArr[i18] >> 6) & 1);
            qt.y0(136, (bArr[i18] >> 5) & 1);
            qt.y0(137, (bArr[i18] >> 4) & 1);
            qt.y0(138, (bArr[i18] >> 3) & 1);
            qt.y0(124, (bArr[i18] >> 2) & 1);
            qt.y0(125, (bArr[i18] >> 1) & 1);
            qt.y0(126, (bArr[i18] >> 0) & 1);
            int i19 = i2 + 6;
            qt.y0(127, (bArr[i19] >> 7) & 1);
            qt.y0(128, (bArr[i19] >> 6) & 1);
            qt.y0(129, (bArr[i19] >> 5) & 1);
            qt.y0(130, (bArr[i19] >> 4) & 1);
            qt.y0(139, (bArr[i19] >> 2) & 3);
            qt.y0(140, (bArr[i19] >> 1) & 1);
            qt.y0(141, (bArr[i19] >> 0) & 1);
            int i20 = i2 + 7;
            qt.y0(131, (bArr[i20] >> 7) & 1);
            qt.y0(132, (bArr[i20] >> 6) & 1);
            qt.y0(133, (bArr[i20] >> 5) & 1);
            qt.y0(142, (bArr[i20] >> 4) & 1);
            qt.y0(143, (bArr[i20] >> 1) & 3);
            qt.y0(134, (bArr[i20] >> 0) & 1);
            return;
        }
        if (b2 == 72) {
            qt.y0(166, bArr[i2 + 2] & 255);
            qt.y0(167, bArr[i2 + 4] & 255);
            qt.y0(168, bArr[i2 + 5] & 255);
            qt.y0(169, bArr[i2 + 6] & 255);
            qt.y0(170, bArr[i2 + 7] & 255);
            qt.y0(171, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 96) {
            qt.y0(144, bArr[i2 + 2] & 255);
            int i21 = i2 + 3;
            qt.y0(145, (bArr[i21] >> 6) & 3);
            qt.y0(146, (bArr[i21] >> 4) & 3);
            qt.y0(147, (bArr[i21] >> 2) & 3);
            qt.y0(148, (bArr[i21] >> 0) & 3);
            int i22 = i2 + 4;
            qt.y0(149, (bArr[i22] >> 4) & 15);
            qt.y0(150, (bArr[i22] >> 3) & 1);
            qt.y0(151, (bArr[i22] >> 2) & 1);
            qt.y0(152, (bArr[i22] >> 1) & 1);
            qt.y0(153, bArr[i2 + 5] & 255);
            qt.y0(154, (bArr[i2 + 6] >> 6) & 3);
            return;
        }
        if (b2 == 97) {
            int i23 = i2 + 2;
            qt.y0(162, (bArr[i23] >> 4) & 15);
            qt.y0(163, (bArr[i23] >> 0) & 15);
            qt.y0(164, (bArr[i2 + 3] >> 0) & 255);
            qt.y0(165, (bArr[i2 + 4] >> 7) & 1);
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    switch (nt.f8637c) {
                        case 12:
                        case 16:
                        case 17:
                            this.f8780c = b4 & 255;
                            int i24 = 0;
                            while (true) {
                                iArr = this.f8781d;
                                if (i24 < iArr.length) {
                                    int i25 = this.f8780c;
                                    if (i25 != iArr[i24][0]) {
                                        i24++;
                                    } else if (i25 != 0) {
                                        this.f8779b = i24;
                                    }
                                }
                            }
                            int i26 = this.f8780c;
                            if (i26 == 3) {
                                for (int i27 = 0; i27 < (b5 & 255); i27++) {
                                    if (u0.b.D != 1) {
                                        l0.b0.l0(35, 0);
                                        l0.b0.l0(35, 1);
                                    } else {
                                        l0.b0.l0(67, 0);
                                        l0.b0.l0(67, 1);
                                    }
                                }
                            } else if (i26 == 4) {
                                for (int i28 = 0; i28 < (b5 & 255); i28++) {
                                    if (u0.b.D != 1) {
                                        l0.b0.l0(34, 0);
                                        l0.b0.l0(34, 1);
                                    } else {
                                        l0.b0.l0(68, 0);
                                        l0.b0.l0(68, 1);
                                    }
                                }
                            } else if (i26 == 6) {
                                if ((b5 & 255) == 1) {
                                    int i29 = h0.c.E;
                                    if (i29 != 3) {
                                        if (i29 == 4) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else if (i29 != 5) {
                                            l0.b0.l0(12, 0);
                                            l0.b0.l0(12, 1);
                                        }
                                    }
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                }
                                break;
                            } else if (i26 != 9 && i26 != 10) {
                                int i30 = b5 & 255;
                                if (i30 == 1) {
                                    if (i24 < iArr.length) {
                                        l0.b0.l0(iArr[i24][1], 0);
                                    }
                                } else if (i30 == 0) {
                                    int i31 = this.f8779b;
                                    if (i31 < iArr.length && i31 != 255) {
                                        l0.b0.l0(iArr[i31][1], 1);
                                    }
                                    this.f8779b = 255;
                                }
                            } else if ((b5 & 255) == 1) {
                                int i32 = h0.c.E;
                                if (i32 == 3 || i32 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                            break;
                        case 13:
                        default:
                            this.f8780c = b4 & 255;
                            int i33 = 0;
                            while (true) {
                                iArr6 = this.f8781d;
                                if (i33 < iArr6.length) {
                                    int i34 = this.f8780c;
                                    if (i34 != iArr6[i33][0]) {
                                        i33++;
                                    } else if (i34 != 0) {
                                        this.f8779b = i33;
                                    }
                                }
                            }
                            int i35 = this.f8780c;
                            if (i35 == 3) {
                                for (int i36 = 0; i36 < (b5 & 255); i36++) {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                }
                            } else if (i35 == 4) {
                                for (int i37 = 0; i37 < (b5 & 255); i37++) {
                                    l0.b0.l0(3, 0);
                                    l0.b0.l0(3, 1);
                                }
                            } else if (i35 != 6) {
                                if (i35 == 9 || i35 == 10) {
                                    if ((b5 & 255) == 1) {
                                        int i38 = h0.c.E;
                                        if (i38 == 3 || i38 == 5) {
                                            l0.b0.l0(26, 0);
                                            l0.b0.l0(26, 1);
                                        } else {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        }
                                    }
                                } else if (i35 == 78) {
                                    for (int i39 = 0; i39 < (b5 & 255); i39++) {
                                        l0.b0.l0(31, 0);
                                        l0.b0.l0(31, 1);
                                    }
                                } else if (i35 != 79) {
                                    int i40 = b5 & 255;
                                    if (i40 == 1) {
                                        if (i33 < iArr6.length) {
                                            l0.b0.l0(iArr6[i33][1], 0);
                                        }
                                    } else if (i40 == 0) {
                                        int i41 = this.f8779b;
                                        if (i41 < iArr6.length && i41 != 255) {
                                            l0.b0.l0(iArr6[i41][1], 1);
                                        }
                                        this.f8779b = 255;
                                    }
                                } else {
                                    for (int i42 = 0; i42 < (b5 & 255); i42++) {
                                        l0.b0.l0(30, 0);
                                        l0.b0.l0(30, 1);
                                    }
                                }
                            } else if ((b5 & 255) == 1) {
                                int i43 = h0.c.E;
                                if (i43 != 3) {
                                    if (i43 == 4) {
                                        l0.b0.l0(18, 0);
                                        l0.b0.l0(18, 1);
                                    } else if (i43 != 5) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    }
                                }
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            }
                            break;
                        case 14:
                            this.f8783f = b4 & 255;
                            int i44 = 0;
                            while (true) {
                                iArr2 = this.f8784g;
                                if (i44 < iArr2.length) {
                                    int i45 = this.f8783f;
                                    if (i45 != iArr2[i44][0]) {
                                        i44++;
                                    } else if (i45 != 0) {
                                        this.f8782e = i44;
                                    }
                                }
                            }
                            int i46 = this.f8783f;
                            if (i46 != 6) {
                                if (i46 != 22) {
                                    int i47 = b5 & 255;
                                    if (i47 == 1) {
                                        if (i44 < iArr2.length) {
                                            l0.b0.l0(iArr2[i44][1], 0);
                                        }
                                    } else if (i47 == 0) {
                                        int i48 = this.f8782e;
                                        if (i48 < iArr2.length && i48 != 255) {
                                            l0.b0.l0(iArr2[i48][1], 1);
                                        }
                                        this.f8782e = 255;
                                    }
                                } else if ((b5 & 255) == 1) {
                                    int i49 = h0.c.E;
                                    if (i49 == 3 || i49 == 4 || i49 == 5) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    }
                                }
                            } else if ((b5 & 255) == 1) {
                                if (h0.c.E != 4) {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                            break;
                        case 15:
                            this.f8786i = b4 & 255;
                            int i50 = 0;
                            while (true) {
                                iArr3 = this.f8787j;
                                if (i50 < iArr3.length) {
                                    int i51 = this.f8786i;
                                    if (i51 != iArr3[i50][0]) {
                                        i50++;
                                    } else if (i51 != 0) {
                                        this.f8785h = i50;
                                    }
                                }
                            }
                            int i52 = b5 & 255;
                            if (i52 == 1) {
                                if (i50 < iArr3.length) {
                                    l0.b0.l0(iArr3[i50][1], 0);
                                }
                            } else if (i52 == 0) {
                                int i53 = this.f8785h;
                                if (i53 < iArr3.length && i53 != 255) {
                                    l0.b0.l0(iArr3[i53][1], 1);
                                }
                                this.f8785h = 255;
                            }
                            break;
                        case 18:
                            this.f8789l = b4 & 255;
                            int i54 = 0;
                            while (true) {
                                iArr4 = this.f8790m;
                                if (i54 < iArr4.length) {
                                    int i55 = this.f8789l;
                                    if (i55 != iArr4[i54][0]) {
                                        i54++;
                                    } else if (i55 != 0) {
                                        this.f8788k = i54;
                                    }
                                }
                            }
                            int i56 = b5 & 255;
                            if (i56 == 1) {
                                if (i54 < iArr4.length) {
                                    l0.b0.l0(iArr4[i54][1], 0);
                                }
                            } else if (i56 == 0) {
                                int i57 = this.f8788k;
                                if (i57 < iArr4.length && i57 != 255) {
                                    l0.b0.l0(iArr4[i57][1], 1);
                                }
                                this.f8788k = 255;
                            }
                            break;
                        case 19:
                            this.f8792o = b4 & 255;
                            int i58 = 0;
                            while (true) {
                                iArr5 = this.f8793p;
                                if (i58 < iArr5.length) {
                                    int i59 = this.f8792o;
                                    if (i59 != iArr5[i58][0]) {
                                        i58++;
                                    } else if (i59 != 0) {
                                        this.f8791n = i58;
                                    }
                                }
                            }
                            int i60 = b5 & 255;
                            if (i60 == 1) {
                                if (i58 < iArr5.length) {
                                    l0.b0.l0(iArr5[i58][1], 0);
                                }
                            } else if (i60 == 0) {
                                if (this.f8788k < iArr5.length && (i4 = this.f8791n) != 255) {
                                    l0.b0.l0(iArr5[i4][1], 1);
                                }
                                this.f8791n = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i61 = bArr[i2 + 2] & 255;
                int i62 = bArr[i2 + 3] & 255;
                int i63 = i2 + 4;
                int i64 = bArr[i63] & 255;
                int i65 = i2 + 5;
                int i66 = bArr[i65] & 255;
                int i67 = bArr[i2 + 6] & 255;
                qt.y0(10, (i61 >> 7) & 1);
                qt.y0(11, (i61 >> 6) & 1);
                qt.y0(12, (i61 >> 5) & 1);
                qt.y0(13, (i61 >> 3) & 1);
                qt.y0(14, (i61 >> 2) & 1);
                qt.y0(65, (i61 >> 1) & 1);
                qt.y0(18, (i62 >> 7) & 1);
                qt.y0(19, (i62 >> 6) & 1);
                qt.y0(20, (i62 >> 5) & 1);
                qt.y0(21, i62 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i64 = bArr[i65] & 255;
                    i66 = bArr[i63] & 255;
                }
                int i68 = i64 & 255;
                if (i68 == 0) {
                    qt.y0(27, -2);
                } else if (i68 != 255) {
                    qt.y0(27, i68);
                } else {
                    qt.y0(27, -3);
                }
                int i69 = i66 & 255;
                if (i69 == 0) {
                    qt.y0(28, -2);
                } else if (i69 != 255) {
                    qt.y0(28, i69);
                } else {
                    qt.y0(28, -3);
                }
                int i70 = (i67 >> 2) & 3;
                if (i70 == 0) {
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                } else if (i70 == 1) {
                    i5 = 0;
                    i7 = 0;
                    i6 = 1;
                } else if (i70 != 2) {
                    i5 = 0;
                    i7 = 0;
                    i6 = 0;
                } else {
                    i7 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                qt.y0(70, i5);
                qt.y0(71, i7);
                qt.y0(34, i6);
                qt.y0(16, (i67 >> 6) & 1);
                qt.y0(54, (i67 >> 1) & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i71 = i2 + 2;
                int i72 = bArr[i71] & 255;
                int i73 = i2 + 3;
                int i74 = bArr[i73] & 255;
                int i75 = i2 + 4;
                int i76 = bArr[i75] & 255;
                int i77 = i2 + 5;
                int i78 = bArr[i77] & 255;
                if (i72 == 0 && i74 == 0 && i76 == 0 && i78 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i72 || l0.c0.f13014h != i74 || l0.c0.f13015i != i76 || l0.c0.f13016j != i78) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i72;
                l0.c0.f13014h = i74;
                l0.c0.f13015i = i76;
                l0.c0.f13016j = i78;
                u0.d.D2(l0.c0.l1(bArr[i71] & 255));
                u0.d.E2(l0.c0.l1(bArr[i73] & 255));
                u0.d.F2(l0.c0.l1(bArr[i75] & 255));
                u0.d.G2(l0.c0.l1(bArr[i77] & 255));
                break;
            case 36:
                int i79 = bArr[i2 + 2] & 255;
                if ((i79 & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (i79 >> 7) & 1);
                        qt.y0(2, (i79 >> 6) & 1);
                    } else {
                        qt.y0(1, (i79 >> 6) & 1);
                        qt.y0(2, (i79 >> 7) & 1);
                    }
                    qt.y0(4, (i79 >> 5) & 1);
                    qt.y0(3, (i79 >> 4) & 1);
                    qt.y0(5, (i79 >> 3) & 1);
                    qt.y0(0, (i79 >> 2) & 1);
                }
                break;
            case 37:
                qt.y0(106, ((bArr[i2 + 2] & 255) >> 1) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.p0(this.f8795r);
        qt.p0(this.B);
        qt.p0(this.C);
        u0.c.f17386m.d(this.f8803z);
        l0.b0.p0(this.A);
        h0.d.f2464c.d(this.f8799v);
        h0.d.f2466e.d(this.f8801x);
        u0.c.f17388o.d(this.f8796s);
        u0.c.f17389p.d(this.f8797t);
        u0.c.f17390q.d(this.f8798u);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 172) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 198, 3, iArr[0], iArr[1], 0);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (iArr[0] == 1) {
                this.D = true;
                return;
            } else {
                this.D = false;
                return;
            }
        }
        if (i2 == 2) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 130, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1005 && iArr != null && iArr.length > 0) {
            int i3 = iArr[0];
            if (i3 == 0) {
                qt.y0(Process.MEDIA_UID, 0);
                z.k.s(227, 198, 3, 4, 2, 0);
                return;
            }
            if (i3 == 1) {
                qt.y0(Process.MEDIA_UID, 1);
                z.k.s(227, 198, 3, 4, 1, 0);
            } else if (i3 == 2) {
                qt.y0(Process.MEDIA_UID, 2);
                z.k.s(227, 198, 3, 4, 4, 0);
            } else {
                if (i3 != 3) {
                    return;
                }
                qt.y0(Process.MEDIA_UID, 3);
                z.k.s(227, 198, 3, 4, 3, 0);
            }
        }
    }

    public final void g3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[37];
        iArr[0] = 227;
        iArr[1] = 203;
        iArr[2] = 34;
        iArr[3] = b2;
        iArr[4] = 2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 6] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 5] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void i3(String str) {
        try {
            String strH3 = h3(str);
            if (strH3 == null) {
                return;
            }
            int length = strH3.length() <= 15 ? strH3.length() : 15;
            int[] iArr = new int[38];
            iArr[0] = -29;
            iArr[1] = -53;
            iArr[2] = 34;
            iArr[3] = 5;
            iArr[4] = 3;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i2 << 1;
                iArr[i3 + 5] = (byte) (strH3.charAt(i2) & 255);
                iArr[i3 + 6] = (byte) ((strH3.charAt(i2) >> '\b') & 255);
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void j3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 33 ? str.length() : 33;
        int[] iArr = new int[37];
        iArr[0] = -29;
        iArr[1] = -53;
        iArr[2] = 34;
        iArr[3] = 1;
        iArr[4] = 1;
        int i2 = length + 5;
        for (int i3 = 5; i3 < i2; i3++) {
            iArr[i3] = (byte) (str.charAt(i3 - 5) & 255);
        }
        iArr[i2] = -1;
        z.k.s(iArr);
    }
}
