package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class qi extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f9561r = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9563c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9564d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9565e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f9566f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9567g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9568h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9569i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9570j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9571k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9572l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f9573m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9574n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f9575o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f9576p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9577q = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qi qiVar = qi.this;
            byte b2 = (byte) (qiVar.f9566f + 1);
            qiVar.f9566f = b2;
            if (b2 > 5) {
                l0.b0.o0(qiVar.f9567g);
                qi.this.f9566f = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qi qiVar = qi.this;
            qiVar.f9569i = y0.f.Q0;
            if (u0.b.D == 13) {
                int i2 = y0.f.Q0;
                if (i2 == 0) {
                    int i3 = qiVar.f9568h & 254;
                    qiVar.f9568h = i3;
                    z.k.s(227, 132, 1, i3);
                } else {
                    if (i2 != 1) {
                        return;
                    }
                    int i4 = qiVar.f9568h | 1;
                    qiVar.f9568h = i4;
                    z.k.s(227, 132, 1, i4);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qi qiVar = qi.this;
            int i2 = qiVar.f9571k;
            int i3 = u0.b.j4;
            if (i2 != i3) {
                qiVar.f9571k = i3;
                if (u0.b.D == 13) {
                    int i4 = u0.b.j4;
                    if (i4 == 0) {
                        int i5 = qiVar.f9568h & i.a.Theme_dialogTitleDecorLayout;
                        qiVar.f9568h = i5;
                        z.k.s(227, 132, 1, i5);
                    } else {
                        if (i4 != 1) {
                            return;
                        }
                        int i6 = qiVar.f9568h | 2;
                        qiVar.f9568h = i6;
                        z.k.s(227, 132, 1, i6);
                    }
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 255, 1, 15);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(qi.this.f9576p);
            qi.this.f9574n = 12;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qi qiVar = qi.this;
            int i2 = qiVar.f9574n - 1;
            qiVar.f9574n = i2;
            if (i2 <= 0) {
                l0.b0.p0(qiVar.f9576p);
                qi.this.f9574n = 13;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 != 1 || u0.b.D == 13) {
                return;
            }
            z.k.s(227, 131, 1, 2);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = qi.f9561r;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    z.k.s(227, 131, 1, 2);
                }
                qi.f9561r = u0.b.D;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17374a.a(this.f9577q, 1);
        qt.x(this.f9573m);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == 9) {
            qt.y0(138, 255 & bArr[i2 + 2]);
            qt.x0(135, new String(bArr, i2 + 3, 16));
            qt.x0(136, new String(bArr, i2 + 19, 16));
            qt.x0(137, new String(bArr, i2 + 35, 16));
        }
        if (b3 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b3) {
            case 1:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f9563c = b4 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f9564d;
                    if (i4 < iArr.length) {
                        int i5 = this.f9563c;
                        if (i5 != iArr[i4][0]) {
                            i4++;
                        } else if (i5 != 0) {
                            this.f9562b = i4;
                        }
                    }
                }
                int i6 = this.f9563c;
                if (i6 == 3) {
                    if ((b5 & 255) == 1) {
                        if (u0.b.D != 13) {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        } else {
                            z.k.s(227, 130, 2, 3, 1);
                            z.k.s(227, 130, 2, 3, 0);
                        }
                    }
                    break;
                } else if (i6 == 4) {
                    if ((b5 & 255) == 1) {
                        if (u0.b.D != 13) {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        } else {
                            z.k.s(227, 130, 2, 4, 1);
                            z.k.s(227, 130, 2, 4, 0);
                        }
                    }
                    break;
                } else if (i6 == 10) {
                    if ((b5 & 255) == 1) {
                        int i7 = h0.c.E;
                        if (i7 == 3 || i7 == 4 || i7 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                    }
                    break;
                } else {
                    int i8 = b5 & 255;
                    if (i8 != 1) {
                        if (i8 == 0) {
                            int i9 = this.f9562b;
                            if (i9 < iArr.length && i9 != 255) {
                                l0.b0.l0(iArr[i9][1], 1);
                                l0.b0.o0(this.f9567g);
                                this.f9566f = (byte) 0;
                            }
                            this.f9562b = 255;
                        }
                        break;
                    } else if (i4 < iArr.length && (b2 = this.f9566f) == 0) {
                        this.f9566f = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i4][1], 0);
                        l0.b0.a(this.f9567g);
                        break;
                    }
                }
                break;
            case 2:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                int i10 = i2 + 4;
                byte b8 = bArr[i10];
                int i11 = i2 + 5;
                byte b9 = bArr[i11];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(11, (b6 >> 6) & 1);
                qt.y0(13, (b6 >> 3) & 1);
                qt.y0(18, (b7 >> 7) & 1);
                qt.y0(19, (b7 >> 6) & 1);
                qt.y0(20, (b7 >> 5) & 1);
                qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i12 = b8;
                int i13 = b9;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i12 = bArr[i11] & 255;
                    i13 = bArr[i10] & 255;
                }
                int i14 = i12 & 255;
                if (i12 == 1) {
                    qt.y0(27, -2);
                } else if (i12 == -1) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i14);
                }
                int i15 = i13 & 255;
                if (i13 == 1) {
                    qt.y0(28, -2);
                } else if (i13 != -1) {
                    qt.y0(28, i15);
                } else {
                    qt.y0(28, -3);
                }
                break;
            case 3:
                int i16 = i2 + 2;
                qt.y0(139, (bArr[i16] >> 6) & 1);
                if (this.f9565e != (bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME)) {
                    this.f9565e = bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME;
                    if (this.f9574n >= 13) {
                        qt.y0(98, (bArr[i16] & DhcpPacket.DHCP_DOMAIN_NAME) + 1);
                    }
                    if (this.f9565e == 2 && u0.b.D == 13) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                        u0.b.f17311c.c(0);
                    }
                }
                qt.y0(132, bArr[i2 + 3] & 127);
                break;
            case 4:
                qt.y0(115, bArr[i2 + 2] & 255);
                int i17 = i2 + 5;
                qt.y0(116, bArr[i17] & 255);
                switch (bArr[i17]) {
                    case 0:
                        qt.y0(119, ((bArr[i2 + 3] << 8) & 65280) | (255 & bArr[i2 + 4]));
                        break;
                    case 1:
                        qt.y0(120, ((bArr[i2 + 3] << 8) & 65280) | (255 & bArr[i2 + 4]));
                        break;
                    case 2:
                        qt.y0(121, ((bArr[i2 + 3] << 8) & 65280) | (255 & bArr[i2 + 4]));
                        break;
                    case 3:
                        qt.y0(122, ((bArr[i2 + 3] << 8) & 65280) | (255 & bArr[i2 + 4]));
                        break;
                    case 4:
                        qt.y0(123, ((bArr[i2 + 3] << 8) & 65280) | (255 & bArr[i2 + 4]));
                        break;
                    case 5:
                        qt.y0(124, ((bArr[i2 + 3] << 8) & 65280) | (255 & bArr[i2 + 4]));
                        break;
                    case 6:
                        qt.y0(125, ((bArr[i2 + 3] << 8) & 65280) | (255 & bArr[i2 + 4]));
                        break;
                }
                int i18 = i2 + 6;
                qt.y0(118, (bArr[i18] >> 7) & 1);
                qt.y0(117, bArr[i18] & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case 5:
                qt.y0(113, bArr[i2 + 2] & 255);
                int i19 = i2 + 3;
                qt.y0(114, bArr[i19] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(102, (bArr[i19] >> 4) & 15);
                qt.y0(101, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(99, bArr[i2 + 8] & 255);
                qt.y0(100, bArr[i2 + 9] & 255);
                break;
            case 6:
                int i20 = i2 + 2;
                qt.y0(106, (bArr[i20] >> 4) & 15);
                qt.y0(107, (bArr[i20] >> 0) & 15);
                int i21 = i2 + 3;
                qt.y0(108, (bArr[i21] >> 4) & 15);
                qt.y0(109, (bArr[i21] >> 0) & 15);
                int i22 = i2 + 4;
                qt.y0(110, (bArr[i22] >> 4) & 15);
                qt.y0(111, (bArr[i22] >> 0) & 15);
                break;
            case 7:
                String str = new String(bArr, i2 + 3, i3 - 3);
                byte b10 = bArr[i2 + 2];
                if (b10 == 0) {
                    qt.x0(104, str);
                    break;
                } else if (b10 == 1) {
                    qt.x0(103, str);
                    break;
                } else if (b10 == 3) {
                    qt.x0(105, str);
                    break;
                }
                break;
            default:
                switch (b3) {
                    case 14:
                        qt.y0(140, bArr[i2 + 2] & 255);
                        qt.y0(141, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(142, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(143, bArr[i2 + 7] & 255);
                        qt.y0(144, bArr[i2 + 8] & 255);
                        qt.y0(145, bArr[i2 + 9] & 255);
                        qt.y0(146, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 10] & 255));
                        qt.y0(147, (bArr[i2 + 12] & 255) | ((bArr[i2 + 14] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 13] << 8) & 65280));
                        break;
                    case 15:
                        qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 480);
                        break;
                    case 16:
                        int i23 = i2 + 2;
                        qt.y0(133, (bArr[i23] >> 5) & 7);
                        qt.y0(134, (bArr[i23] >> 0) & 31);
                        break;
                    case 17:
                        int i24 = bArr[i2 + 2] & 255;
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(2, (i24 >> 6) & 1);
                            qt.y0(1, (i24 >> 7) & 1);
                        } else {
                            qt.y0(2, (i24 >> 7) & 1);
                            qt.y0(1, (i24 >> 6) & 1);
                        }
                        qt.y0(4, (i24 >> 5) & 1);
                        qt.y0(3, (i24 >> 4) & 1);
                        qt.y0(5, (i24 >> 3) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.o0(this.f9573m);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        y0.g.f18110t.d(this.f9570j);
        u0.c.G.d(this.f9572l);
        u0.c.f17374a.d(this.f9577q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 148) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 131, 1, iArr[0]);
        }
    }
}
