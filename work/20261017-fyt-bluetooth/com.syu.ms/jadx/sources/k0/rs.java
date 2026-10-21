package k0;

import android.opengl.GLES10;
import android.os.SystemProperties;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class rs extends lt {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f10052r = 255;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f10053s = 20;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f10054t = 30;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f10055u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10057c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10058d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 6}, new int[]{13, 29}, new int[]{51, 25}, new int[]{52, 24}, new int[]{53, 38}, new int[]{54, 54}, new int[]{55, 5}, new int[]{56, 67}, new int[]{57, 68}, new int[]{61, 62}, new int[]{63, 0}, new int[]{68, 34}, new int[]{69, 35}, new int[]{70, 32}, new int[]{71, 33}, new int[]{72, 29}, new int[]{73, 6}, new int[]{74, 30}, new int[]{75, 31}, new int[]{129, -1}, new int[]{130, -1}, new int[]{131, -1}, new int[]{132, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10059e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10060f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f10061g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10062h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10063i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10064j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f10065k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f10066l = 10;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f10067m = 11;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f10068n = 23;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10069o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10070p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10071q = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = rs.f10052r;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && rs.f10052r == 13) {
                    y0.h.u0(rs.f10054t);
                }
                rs.f10052r = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rs.this.f10071q);
            rs.this.f10069o = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rs rsVar = rs.this;
            int i2 = rsVar.f10069o - 1;
            rsVar.f10069o = i2;
            if (i2 <= 0) {
                l0.b0.p0(rsVar.f10071q);
                rs.this.f10069o = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 48, 0);
                rs rsVar2 = rs.this;
                rsVar2.g3(rsVar2.f10065k.b(23, 0));
                rs rsVar3 = rs.this;
                rsVar3.h3(rsVar3.f10065k.b(10, 20));
                rs rsVar4 = rs.this;
                rsVar4.f3(rsVar4.f10065k.b(11, 30));
                if (o1.u.S(a.b.Q) || u0.b.D == 13) {
                    return;
                }
                y0.h.u0(rs.f10054t);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f10065k.a();
        u0.c.f17386m.a(this.f10070p, 1);
        u0.c.f17374a.a(this.f10064j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
        mtVar.f8317l = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 53) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        if (b2 == 100) {
            qt.y0(99, bArr[i2 + 2] & 255);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f10057c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f10058d;
                    if (i4 < iArr.length) {
                        int i5 = this.f10057c;
                        if (i5 != iArr[i4][0]) {
                            i4++;
                        } else if (i5 != 0) {
                            this.f10056b = i4;
                        }
                    }
                }
                int i6 = this.f10057c;
                if (i6 == 54) {
                    if ((b4 & 255) == 1) {
                        if (o1.u.a0()) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        } else {
                            o1.u.z();
                        }
                    }
                    break;
                } else if (i6 == 63) {
                    int i7 = this.f10063i;
                    if (i7 != b4) {
                        if (b4 == 2 && i7 == 1) {
                            if (u0.b.f17332j == 0) {
                                u0.d.N(1);
                            } else {
                                u0.d.N(0);
                            }
                        } else if (b4 == 0 && i7 == 1 && u0.b.f17332j == 0) {
                            u0.d.N(1);
                        }
                        this.f10063i = b4;
                    }
                    break;
                } else {
                    switch (i6) {
                        case 129:
                            for (int i8 = 0; i8 < (b4 & 255); i8++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 130:
                            for (int i9 = 0; i9 < (b4 & 255); i9++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case 131:
                            for (int i10 = 0; i10 < (b4 & 255); i10++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 132:
                            for (int i11 = 0; i11 < (b4 & 255); i11++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        default:
                            int i12 = b4 & 255;
                            if (i12 == 1) {
                                if (i4 < iArr.length) {
                                    l0.b0.l0(iArr[i4][1], 0);
                                }
                            } else if (i12 == 0) {
                                int i13 = this.f10056b;
                                if (i13 < iArr.length && i13 != 255) {
                                    l0.b0.l0(iArr[i13][1], 1);
                                }
                                this.f10056b = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i14 = bArr[i2 + 2] & 255;
                int i15 = bArr[i2 + 3] & 255;
                int i16 = i2 + 4;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 5;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 6;
                byte b5 = bArr[i20];
                qt.y0(10, (i14 >> 7) & 1);
                qt.y0(11, (i14 >> 6) & 1);
                qt.y0(12, (i14 >> 5) & 1);
                qt.y0(13, (i14 >> 3) & 1);
                qt.y0(62, (i14 >> 2) & 1);
                qt.y0(16, (i14 >> 0) & 1);
                qt.y0(15, (i14 >> 1) & 1);
                qt.y0(18, (i15 >> 7) & 1);
                qt.y0(19, (i15 >> 6) & 1);
                qt.y0(20, (i15 >> 5) & 1);
                qt.y0(21, bArr[i2 + 7] & 255);
                qt.y0(37, (bArr[i20] >> 6) & 1);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i17 = bArr[i18] & 255;
                    i19 = bArr[i16] & 255;
                }
                if (i17 == 0) {
                    qt.y0(27, -2);
                } else if (i17 == 127) {
                    qt.y0(27, -3);
                } else if (i17 < 31 || i17 > 59) {
                    qt.y0(27, -1);
                } else if (((bArr[i20] >> 6) & 1) == 1) {
                    qt.y0(27, (i17 * 9) + 320);
                } else {
                    qt.y0(27, i17 * 5);
                }
                if (i19 == 0) {
                    qt.y0(28, -2);
                } else if (i19 == 127) {
                    qt.y0(28, -3);
                } else if (i19 < 31 || i19 > 59) {
                    qt.y0(28, -1);
                } else if (((bArr[i20] >> 6) & 1) == 1) {
                    qt.y0(28, (i19 * 9) + 320);
                } else {
                    qt.y0(28, i19 * 5);
                }
                qt.y0(67, (bArr[i20] >> 0) & 1);
                qt.y0(66, (bArr[i20] >> 1) & 1);
                qt.y0(53, (bArr[i20] >> 2) & 1);
                qt.y0(65, (bArr[i20] >> 3) & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2]));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3]));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4]));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5]));
                break;
            case 35:
                int i21 = i2 + 2;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 3;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = 255 & bArr[i27];
                if (i22 == 0 && i24 == 0 && i26 == 0 && i28 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i28;
                u0.d.D2(l0.c0.K0(bArr[i21]));
                u0.d.E2(l0.c0.K0(bArr[i23]));
                u0.d.F2(l0.c0.K0(bArr[i25]));
                u0.d.G2(l0.c0.K0(bArr[i27]));
                break;
            case 36:
                int i29 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i29 >> 7) & 1);
                    qt.y0(2, (i29 >> 6) & 1);
                } else {
                    qt.y0(1, (i29 >> 6) & 1);
                    qt.y0(2, (i29 >> 7) & 1);
                }
                qt.y0(3, (i29 >> 4) & 1);
                qt.y0(4, (i29 >> 5) & 1);
                qt.y0(5, (i29 >> 3) & 1);
                qt.y0(0, (i29 >> 2) & 1);
                int i30 = i2 + 3;
                if (this.f10059e != ((bArr[i30] >> 0) & 1) || this.f10060f != ((bArr[i30] >> 4) & 1)) {
                    int i31 = (bArr[i30] >> 0) & 1;
                    this.f10059e = i31;
                    int i32 = (bArr[i30] >> 4) & 1;
                    this.f10060f = i32;
                    if (u0.b.f17357r0 == 0) {
                        if (i31 == 1 || i32 == 1) {
                            if (!o1.u.a0()) {
                                qt.y0(98, 1);
                                this.f10061g = true;
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f10062h = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i31 == 0 && i32 == 0) {
                            n1.b bVarP = a.f.p();
                            LogType logType = LogType.CANBUS;
                            bVarP.t(logType, "Jumppage out 111  = " + this.f10061g + "----JumpPage.isCarUiTop() = " + o1.u.a0());
                            if (this.f10061g && o1.u.a0()) {
                                qt.y0(98, 0);
                                y0.h.t0(this.f10062h);
                                a.i.a0(100L);
                                a.f.p().t(logType, "Jumppage out 22222  = " + this.f10061g + "----JumpPage.isCarUiTop() = " + o1.u.a0());
                                o1.u.k();
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            a.f.p().t(logType, "Jumppage out 333333  = " + this.f10061g + "----JumpPage.isCarUiTop() = " + o1.u.a0());
                            this.f10061g = false;
                        }
                    }
                }
                int i33 = i2 + 6;
                l0.c0.a((bArr[i33] >> 2) & 1, (bArr[i33] >> 3) & 1, 0);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f10065k.j();
        u0.c.f17386m.d(this.f10070p);
        l0.b0.p0(this.f10071q);
        u0.c.f17374a.d(this.f10064j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 103) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if ((iArr[0] & 255) == 253) {
                h3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 252) {
                f3(iArr[1]);
                return;
            } else if ((iArr[0] & 255) == 244) {
                g3(iArr[1]);
                return;
            } else {
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 168, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 != 6) {
            return;
        }
        if (iArr[0] == 0 && !SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
            y0.h.u0(f10053s);
        }
        if (nt.U == 1) {
            o1.x.x(nt.f8643f, 1001, iArr[0]);
        }
    }

    public final void f3(int i2) {
        qt.y0(101, i2);
        f10054t = i2;
        int iB = this.f10065k.b(11, 30);
        int i3 = f10054t;
        if (iB != i3) {
            this.f10065k.g(11, i3);
        }
    }

    public final void g3(int i2) {
        qt.y0(102, i2);
        f10055u = i2;
        if (this.f10065k.b(23, 0) != f10055u) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(f10055u)));
            this.f10065k.g(23, f10055u);
        }
    }

    public final void h3(int i2) {
        qt.y0(100, i2);
        f10053s = i2;
        int iB = this.f10065k.b(10, 20);
        int i3 = f10053s;
        if (iB != i3) {
            this.f10065k.g(10, i3);
        }
    }
}
