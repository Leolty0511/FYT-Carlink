package k0;

import android.media.AudioFormat;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ql extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static int F;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f9622w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f9623x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f9624y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f9625z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9626b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9629e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9627c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9628d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{36, 18}, new int[]{37, -1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9630f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9631g = {new int[]{1, 0}, new int[]{22, 29}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 31}, new int[]{26, 30}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9632h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9633i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9634j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9635k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.g0 f9636l = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9637m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f9638n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f9639o = 3;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9640p = 4;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f9641q = 5;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f9642r = 6;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f9643s = 7;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f9644t = 8;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f9645u = 9;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f9646v = 10;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ql.this.f9635k);
            ql.this.f9633i = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ql qlVar = ql.this;
            int i2 = qlVar.f9633i - 1;
            qlVar.f9633i = i2;
            if (i2 <= 0) {
                l0.b0.p0(qlVar.f9635k);
                ql.this.f9633i = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            switch (nt.f8633a) {
                case 3604933:
                    z.k.s(227, 114, 21, 37, 36, 1, 1, 3, 107, 111, 251, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    break;
                case 3801541:
                    z.k.s(227, 114, 21, 37, 37, 1, 1, 3, 107, 107, 251, 251, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    break;
                case 3867077:
                case 3932613:
                    z.k.s(227, 114, 21, 37, 0, 0, 1, 3, 107, 255, 255, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    break;
                case 3998149:
                    z.k.s(227, 114, 21, 37, 1, 1, 1, 3, 107, 251, 251, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    break;
                case 4981188:
                    z.k.s(227, 114, 21, 37, 20, 1, 1, 3, 107, 175, 251, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    break;
            }
            z.k.s(227, 202, 8, 0, 0, 0, 0, 0, 0, 0, 0);
            ql qlVar2 = ql.this;
            qlVar2.d3(qlVar2.f9636l.b(1, 0), ql.this.f9636l.b(7, 0), ql.this.f9636l.b(2, 0), ql.this.f9636l.b(3, 0), ql.this.f9636l.b(4, 0), ql.this.f9636l.b(5, 0), ql.this.f9636l.b(6, 0), ql.this.f9636l.b(8, 0));
            ql qlVar3 = ql.this;
            qlVar3.e3(qlVar3.f9636l.b(9, 0), ql.this.f9636l.b(10, 0));
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f9636l.a();
        u0.c.f17386m.a(this.f9634j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        mtVar.f8317l = 0;
        if (nt.f8633a == 15991239) {
            mtVar.f8317l = 1;
        }
        if (App.c().getResources().getConfiguration().orientation != 1) {
            this.f7886a.f8314i = 1;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8314i = 0;
        mtVar2.f8322q = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9627c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f9628d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f9627c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f9626b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f9627c;
            if (i9 == 36) {
                if ((b4 & 255) == 1) {
                    int i10 = h0.c.E;
                    if (i10 != 3 && i10 != 5) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
                return;
            }
            if (i9 != 37) {
                int i11 = b4 & 255;
                if (i11 == 1) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i11 == 0) {
                        int i12 = this.f9626b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f9626b = 255;
                        return;
                    }
                    return;
                }
            }
            if (nt.f8633a != 15991239) {
                if ((b4 & 255) == 1) {
                    l0.b0.l0(24, 0);
                    l0.b0.l0(24, 1);
                    return;
                }
                return;
            }
            if (this.f9632h != b4) {
                if (o1.u.S(a.b.Q)) {
                    if (b4 == 2 && this.f9632h == 1) {
                        l0.b0.l0(5, 0);
                        l0.b0.l0(5, 1);
                    }
                } else if (b4 == 2 && this.f9632h == 1) {
                    o1.u.z();
                }
                this.f9632h = b4;
                return;
            }
            return;
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f9630f = b5 & 255;
            int i13 = 0;
            while (true) {
                iArr2 = this.f9631g;
                if (i13 >= iArr2.length) {
                    break;
                }
                int i14 = this.f9630f;
                if (i14 == iArr2[i13][0]) {
                    if (i14 == 0) {
                        break;
                    }
                    this.f9629e = i13;
                    break;
                }
                i13++;
            }
            switch (this.f9630f) {
                case 23:
                    for (int i15 = 0; i15 < (b6 & 255); i15++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 24:
                    for (int i16 = 0; i16 < (b6 & 255); i16++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 25:
                    if (u0.b.D != 1) {
                        for (int i17 = 0; i17 < (b6 & 255); i17++) {
                            l0.b0.l0(4, 0);
                        }
                        l0.b0.l0(4, 1);
                    } else {
                        for (int i18 = 0; i18 < (b6 & 255); i18++) {
                            l0.b0.l0(68, 0);
                        }
                        l0.b0.l0(68, 1);
                    }
                    break;
                case 26:
                    if (u0.b.D != 1) {
                        for (int i19 = 0; i19 < (b6 & 255); i19++) {
                            l0.b0.l0(3, 0);
                        }
                        l0.b0.l0(3, 1);
                    } else {
                        for (int i20 = 0; i20 < (b6 & 255); i20++) {
                            l0.b0.l0(67, 0);
                        }
                        l0.b0.l0(67, 1);
                    }
                    break;
                default:
                    int i21 = b6 & 255;
                    if (i21 == 1) {
                        if (i13 < iArr2.length) {
                            l0.b0.l0(iArr2[i13][1], 0);
                        }
                    } else if (i21 == 0) {
                        int i22 = this.f9629e;
                        if (i22 < iArr2.length && i22 != 255) {
                            l0.b0.l0(iArr2[i22][1], 1);
                        }
                        this.f9629e = 255;
                    }
                    break;
            }
        }
        if (b2 == 3) {
            int i23 = i2 + 2;
            qt.y0(21, (bArr[i23] >> 0) & 15);
            qt.y0(16, (bArr[i23] >> 4) & 1);
            qt.y0(12, (bArr[i23] >> 5) & 1);
            qt.y0(11, (bArr[i23] >> 6) & 1);
            int i24 = i2 + 3;
            int i25 = bArr[i24] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i25 != 3) {
                if (i25 == 4) {
                    i4 = 0;
                    i5 = 1;
                } else if (i25 == 5) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i25 == 7) {
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                } else if (i25 != 8) {
                    i4 = 0;
                    i5 = 0;
                } else {
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                }
                i6 = i5;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(14, (bArr[i24] >> 5) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i26 = i2 + 4;
                if ((bArr[i26] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i26] & 255) == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i26] & 255);
                }
                int i27 = i2 + 5;
                if ((bArr[i27] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i27] & 255) == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i27] & 255);
                }
            } else {
                int i28 = i2 + 4;
                if ((bArr[i28] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i28] & 255) == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i28] & 255);
                }
                int i29 = i2 + 5;
                if ((bArr[i29] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i29] & 255) == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i29] & 255);
                }
            }
            int i30 = i2 + 6;
            qt.y0(29, (bArr[i30] >> 4) & 15);
            qt.y0(30, (bArr[i30] >> 0) & 15);
            u0.d.B3((bArr[i2 + 7] * 10) + 1000);
            int i31 = i2 + 8;
            qt.y0(13, (bArr[i31] >> 2) & 1);
            qt.y0(67, (bArr[i31] >> 3) & 1);
            return;
        }
        if (b2 == 27) {
            int i32 = i2 + 2;
            qt.y0(42, (bArr[i32] >> 0) & 1);
            qt.y0(47, (bArr[i32] >> 2) & 1);
            qt.y0(46, (bArr[i32] >> 3) & 1);
            qt.y0(43, (bArr[i32] >> 4) & 1);
            int i33 = i2 + 3;
            if ((bArr[i33] & 255) == 0) {
                qt.y0(40, -2);
            } else if ((bArr[i33] & 255) == 31) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, bArr[i33] & 255);
            }
            qt.y0(44, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 38) {
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 4096, false, AudioFormat.CHANNEL_OUT_7POINT1);
            return;
        }
        if (b2 == 39) {
            qt.y0(111, bArr[i2 + 2] & 255);
            qt.y0(112, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 54) {
            int i34 = i2 + 2;
            qt.y0(99, (bArr[i34] >> 6) & 3);
            qt.y0(100, (bArr[i34] >> 4) & 3);
            qt.y0(101, (bArr[i34] >> 2) & 3);
            qt.y0(102, (bArr[i34] >> 1) & 1);
            qt.y0(103, (bArr[i34] >> 0) & 1);
            int i35 = i2 + 3;
            qt.y0(104, (bArr[i35] >> 7) & 1);
            qt.y0(105, (bArr[i35] >> 6) & 1);
            qt.y0(106, (bArr[i35] >> 5) & 1);
            qt.y0(107, (bArr[i35] >> 4) & 1);
            qt.y0(108, (bArr[i35] >> 3) & 1);
            qt.y0(109, (bArr[i35] >> 1) & 3);
            qt.y0(121, (bArr[i35] >> 0) & 1);
            qt.y0(66, (bArr[i35] >> 0) & 1);
            int i36 = i2 + 5;
            qt.y0(122, (bArr[i36] >> 7) & 1);
            qt.y0(123, (bArr[i36] >> 6) & 1);
            qt.y0(124, (bArr[i36] >> 5) & 1);
            qt.y0(125, (bArr[i36] >> 4) & 1);
            qt.y0(126, (bArr[i36] >> 3) & 1);
            qt.y0(127, (bArr[i36] >> 2) & 1);
            qt.y0(128, (bArr[i36] >> 0) & 1);
            return;
        }
        if (b2 == 55) {
            switch (bArr[i2 + 2]) {
                case 1:
                    qt.y0(130, bArr[i2 + 3] & 255);
                    break;
                case 2:
                    qt.y0(131, bArr[i2 + 3] & 255);
                    break;
                case 3:
                    qt.y0(132, bArr[i2 + 3] & 255);
                    break;
                case 4:
                    qt.y0(133, bArr[i2 + 3] & 255);
                    break;
                case 5:
                    qt.y0(134, bArr[i2 + 3] & 255);
                    break;
                case 6:
                    qt.y0(135, bArr[i2 + 3] & 255);
                    break;
                case 7:
                    qt.y0(136, bArr[i2 + 3] & 255);
                    break;
                case 8:
                    qt.y0(137, bArr[i2 + 3] & 255);
                    break;
                case 9:
                    qt.y0(138, bArr[i2 + 3] & 255);
                    break;
                case 10:
                    qt.y0(139, bArr[i2 + 3] & 255);
                    break;
            }
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i37 = i2 + 2;
                int i38 = bArr[i37] & 255;
                int i39 = i2 + 3;
                int i40 = bArr[i39] & 255;
                int i41 = i2 + 4;
                int i42 = bArr[i41] & 255;
                int i43 = i2 + 5;
                int i44 = bArr[i43] & 255;
                if (i38 == 0 && i40 == 0 && i42 == 0 && i44 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i38 || l0.c0.f13014h != i40 || l0.c0.f13015i != i42 || l0.c0.f13016j != i44) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i38;
                l0.c0.f13014h = i40;
                l0.c0.f13015i = i42;
                l0.c0.f13016j = i44;
                u0.d.D2(l0.c0.b1(bArr[i37] & 255));
                u0.d.E2(l0.c0.b1(bArr[i39] & 255));
                u0.d.F2(l0.c0.b1(bArr[i41] & 255));
                u0.d.G2(l0.c0.b1(bArr[i43] & 255));
                break;
            case 36:
                byte b7 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b7 >> 7) & 1);
                    qt.y0(2, (b7 >> 6) & 1);
                } else {
                    qt.y0(1, (b7 >> 6) & 1);
                    qt.y0(2, (b7 >> 7) & 1);
                }
                qt.y0(3, (b7 >> 4) & 1);
                qt.y0(4, (b7 >> 5) & 1);
                qt.y0(5, (b7 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9636l.j();
        u0.c.f17386m.d(this.f9634j);
        l0.b0.p0(this.f9635k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 129) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 113, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 119, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 198, 8, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]);
            e3(iArr[2] & 15, (iArr[2] >> 4) & 15);
            return;
        }
        if (i2 == 3) {
            d3(iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7]);
        } else if (i2 == 4) {
            z.k.s(227, 134, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        } else if (i2 == 20 && nt.U == 1) {
            o1.x.x(nt.f8643f, 1001, iArr[0]);
        }
    }

    public final void d3(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        f9622w = i2;
        D = i3;
        f9623x = i4;
        f9624y = i5;
        f9625z = i6;
        A = i7;
        B = i8;
        C = i9;
        qt.y0(111, i2);
        qt.y0(112, D);
        qt.y0(113, f9623x);
        qt.y0(114, f9624y);
        qt.y0(115, f9625z);
        qt.y0(116, A);
        qt.y0(117, B);
        qt.y0(118, C);
        z.k.s(227, 196, 8, f9622w, D, f9623x, f9624y, f9625z, A, B, C);
        int iB = this.f9636l.b(1, 0);
        int i10 = f9622w;
        if (iB != i10) {
            this.f9636l.g(1, i10);
        }
        int iB2 = this.f9636l.b(7, 0);
        int i11 = D;
        if (iB2 != i11) {
            this.f9636l.g(7, i11);
        }
        int iB3 = this.f9636l.b(2, 0);
        int i12 = f9623x;
        if (iB3 != i12) {
            this.f9636l.g(2, i12);
        }
        int iB4 = this.f9636l.b(3, 0);
        int i13 = f9624y;
        if (iB4 != i13) {
            this.f9636l.g(3, i13);
        }
        int iB5 = this.f9636l.b(4, 0);
        int i14 = f9625z;
        if (iB5 != i14) {
            this.f9636l.g(4, i14);
        }
        int iB6 = this.f9636l.b(5, 0);
        int i15 = A;
        if (iB6 != i15) {
            this.f9636l.g(5, i15);
        }
        int iB7 = this.f9636l.b(6, 0);
        int i16 = B;
        if (iB7 != i16) {
            this.f9636l.g(6, i16);
        }
        int iB8 = this.f9636l.b(8, 0);
        int i17 = C;
        if (iB8 != i17) {
            this.f9636l.g(8, i17);
        }
    }

    public final void e3(int i2, int i3) {
        E = i2;
        F = i3;
        qt.y0(119, i2);
        qt.y0(120, F);
        int iB = this.f9636l.b(9, 0);
        int i4 = E;
        if (iB != i4) {
            this.f9636l.g(9, i4);
        }
        int iB2 = this.f9636l.b(10, 0);
        int i5 = F;
        if (iB2 != i5) {
            this.f9636l.g(10, i5);
        }
    }
}
