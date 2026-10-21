package k0;

import android.os.SystemProperties;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class fs extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f5295s = 255;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f5296t = 20;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f5297u = 30;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f5298v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f5299w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5301c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5302d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 6}, new int[]{13, 29}, new int[]{48, 38}, new int[]{49, 54}, new int[]{50, 9}, new int[]{51, 1}, new int[]{52, 24}, new int[]{53, 18}, new int[]{54, -1}, new int[]{55, 1}, new int[]{56, 67}, new int[]{57, 68}, new int[]{58, 6}, new int[]{61, 11}, new int[]{63, 0}, new int[]{64, 49}, new int[]{65, 40}, new int[]{66, 41}, new int[]{67, 42}, new int[]{68, 43}, new int[]{69, 44}, new int[]{70, 45}, new int[]{71, 46}, new int[]{72, 47}, new int[]{73, 48}, new int[]{74, 50}, new int[]{75, 51}, new int[]{129, -1}, new int[]{130, -1}, new int[]{131, -1}, new int[]{132, -1}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5303e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5304f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5305g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5306h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5307i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5308j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f5309k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f5310l = 10;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f5311m = 11;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f5312n = 13;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f5313o = 23;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5314p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f5315q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f5316r = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = fs.f5295s;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && fs.f5295s == 13) {
                    y0.h.u0(fs.f5297u);
                }
                fs.f5295s = u0.b.D;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(fs.this.f5316r);
            fs.this.f5314p = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fs fsVar = fs.this;
            int i2 = fsVar.f5314p - 1;
            fsVar.f5314p = i2;
            if (i2 <= 0) {
                l0.b0.p0(fsVar.f5316r);
                fs.this.f5314p = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 48, 0);
                fs fsVar2 = fs.this;
                fsVar2.h3(fsVar2.f5309k.b(23, 0));
                fs fsVar3 = fs.this;
                fsVar3.j3(fsVar3.f5309k.b(10, 20));
                fs fsVar4 = fs.this;
                fsVar4.g3(fsVar4.f5309k.b(11, 30));
                fs fsVar5 = fs.this;
                fsVar5.i3(fsVar5.f5309k.b(13, 0));
                if (o1.u.S(a.b.Q) || u0.b.D == 13) {
                    return;
                }
                y0.h.u0(fs.f5297u);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f5309k.a();
        u0.c.f17386m.a(this.f5315q, 1);
        u0.c.f17374a.a(this.f5308j, 1);
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
        if (b2 == -88) {
            qt.y0(99, bArr[i2 + 2] & 255);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 540);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f5301c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f5302d;
                    if (i4 < iArr.length) {
                        int i5 = this.f5301c;
                        if (i5 != iArr[i4][0]) {
                            i4++;
                        } else if (i5 != 0) {
                            this.f5300b = i4;
                        }
                    }
                }
                int i6 = this.f5301c;
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
                } else if (i6 == 58) {
                    int i7 = this.f5307i;
                    if (i7 != b4) {
                        if (b4 == 2 && i7 == 1) {
                            if (!o1.u.S(a.b.Q)) {
                                o1.u.z();
                            } else if (this.f5303e == 0 && this.f5304f == 0) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        } else if (b4 == 0 && i7 == 1) {
                            l0.b0.l0(6, 0);
                            l0.b0.l0(6, 1);
                        }
                        this.f5307i = b4;
                    }
                    break;
                } else if (i6 == 63) {
                    int i8 = this.f5307i;
                    if (i8 != b4) {
                        if (b4 == 2 && i8 == 1) {
                            if (u0.b.f17332j == 0) {
                                u0.d.N(1);
                            } else {
                                u0.d.N(0);
                            }
                        } else if (b4 == 0 && i8 == 1 && u0.b.f17332j == 0) {
                            u0.d.N(1);
                        }
                        this.f5307i = b4;
                    }
                    break;
                } else {
                    switch (i6) {
                        case 129:
                            for (int i9 = 0; i9 < (b4 & 255); i9++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 130:
                            for (int i10 = 0; i10 < (b4 & 255); i10++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case 131:
                            for (int i11 = 0; i11 < (b4 & 255); i11++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 132:
                            for (int i12 = 0; i12 < (b4 & 255); i12++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        default:
                            int i13 = b4 & 255;
                            if (i13 == 1) {
                                if (i4 < iArr.length) {
                                    l0.b0.l0(iArr[i4][1], 0);
                                }
                            } else if (i13 == 0) {
                                int i14 = this.f5300b;
                                if (i14 < iArr.length && i14 != 255) {
                                    l0.b0.l0(iArr[i14][1], 1);
                                }
                                this.f5300b = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i15 = bArr[i2 + 2] & 255;
                int i16 = bArr[i2 + 3] & 255;
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 6;
                byte b5 = bArr[i21];
                qt.y0(10, (i15 >> 7) & 1);
                qt.y0(11, (i15 >> 6) & 1);
                qt.y0(12, (i15 >> 5) & 1);
                qt.y0(13, (i15 >> 3) & 1);
                qt.y0(14, (i15 >> 2) & 1);
                qt.y0(16, (i15 >> 0) & 1);
                qt.y0(15, (i15 >> 1) & 1);
                qt.y0(18, (i16 >> 7) & 1);
                qt.y0(19, (i16 >> 6) & 1);
                qt.y0(20, (i16 >> 5) & 1);
                qt.y0(21, bArr[i2 + 7] & 255);
                qt.y0(37, (bArr[i21] >> 6) & 1);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i19] & 255;
                    i20 = bArr[i17] & 255;
                }
                if (i18 == 0) {
                    qt.y0(27, -2);
                } else if (i18 == 31) {
                    qt.y0(27, -3);
                } else if (i18 < 0 || i18 > 28) {
                    qt.y0(27, -1);
                } else if (((bArr[i21] >> 6) & 1) == 1) {
                    qt.y0(27, (i18 * 10) + 590);
                } else {
                    qt.y0(27, (i18 * 5) + 155);
                }
                if (i20 == 0) {
                    qt.y0(28, -2);
                } else if (i20 == 31) {
                    qt.y0(28, -3);
                } else if (i20 < 1 || i20 > 28) {
                    qt.y0(28, -1);
                } else if (((bArr[i21] >> 6) & 1) == 1) {
                    qt.y0(28, (i20 * 10) + 590);
                } else {
                    qt.y0(28, (i20 * 5) + 155);
                }
                qt.y0(67, (bArr[i21] >> 0) & 1);
                qt.y0(66, (bArr[i21] >> 1) & 1);
                qt.y0(53, (bArr[i21] >> 2) & 1);
                qt.y0(65, (bArr[i21] >> 3) & 1);
                int i22 = i2 + 9;
                qt.y0(29, (bArr[i22] >> 0) & 3);
                qt.y0(30, (bArr[i22] >> 2) & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2]));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3]));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4]));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5]));
                break;
            case 35:
                int i23 = i2 + 2;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 3;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 4;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 5;
                int i30 = 255 & bArr[i29];
                if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i24;
                l0.c0.f13014h = i26;
                l0.c0.f13015i = i28;
                l0.c0.f13016j = i30;
                u0.d.D2(l0.c0.E0(bArr[i23]));
                u0.d.E2(l0.c0.E0(bArr[i25]));
                u0.d.F2(l0.c0.E0(bArr[i27]));
                u0.d.G2(l0.c0.E0(bArr[i29]));
                break;
            case 36:
                int i31 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i31 >> 7) & 1);
                    qt.y0(2, (i31 >> 6) & 1);
                } else {
                    qt.y0(1, (i31 >> 6) & 1);
                    qt.y0(2, (i31 >> 7) & 1);
                }
                qt.y0(3, (i31 >> 4) & 1);
                qt.y0(4, (i31 >> 5) & 1);
                qt.y0(5, (i31 >> 3) & 1);
                qt.y0(0, (i31 >> 2) & 1);
                int i32 = i2 + 3;
                if (this.f5303e != ((bArr[i32] >> 0) & 1) || this.f5304f != ((bArr[i32] >> 4) & 1)) {
                    int i33 = (bArr[i32] >> 0) & 1;
                    this.f5303e = i33;
                    int i34 = (bArr[i32] >> 4) & 1;
                    this.f5304f = i34;
                    if (u0.b.f17357r0 == 0) {
                        if (i33 == 1 || i34 == 1) {
                            if (!o1.u.a0()) {
                                qt.y0(98, 1);
                                this.f5305g = true;
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f5306h = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i33 == 0 && i34 == 0) {
                            n1.b bVarP = a.f.p();
                            LogType logType = LogType.CANBUS;
                            bVarP.t(logType, "Jumppage out 111  = " + this.f5305g + "----JumpPage.isCarUiTop() = " + o1.u.a0());
                            if (this.f5305g && o1.u.a0()) {
                                qt.y0(98, 0);
                                y0.h.t0(this.f5306h);
                                a.i.a0(100L);
                                a.f.p().t(logType, "Jumppage out 22222  = " + this.f5305g + "----JumpPage.isCarUiTop() = " + o1.u.a0());
                                o1.u.k();
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            a.f.p().t(logType, "Jumppage out 333333  = " + this.f5305g + "----JumpPage.isCarUiTop() = " + o1.u.a0());
                            this.f5305g = false;
                        }
                    }
                }
                int i35 = i2 + 6;
                l0.c0.a((bArr[i35] >> 2) & 1, (bArr[i35] >> 3) & 1, 0);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5309k.j();
        u0.c.f17386m.d(this.f5315q);
        l0.b0.p0(this.f5316r);
        u0.c.f17374a.d(this.f5308j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 1) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                z.k.s(227, 168, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            }
            if (i2 != 6) {
                return;
            }
            if (iArr[0] == 0 && !SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                y0.h.u0(f5296t);
            }
            if (nt.U == 1) {
                o1.x.x(nt.f8643f, 1001, iArr[0]);
                return;
            }
            return;
        }
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        if ((iArr[0] & 255) == 253) {
            j3(iArr[1]);
            return;
        }
        if ((iArr[0] & 255) == 252) {
            g3(iArr[1]);
            return;
        }
        if ((iArr[0] & 255) == 249) {
            i3(iArr[1]);
        } else if ((iArr[0] & 255) == 244) {
            h3(iArr[1]);
        } else {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }

    public final void g3(int i2) {
        qt.y0(101, i2);
        f5297u = i2;
        int iB = this.f5309k.b(11, 30);
        int i3 = f5297u;
        if (iB != i3) {
            this.f5309k.g(11, i3);
        }
    }

    public final void h3(int i2) {
        qt.y0(102, i2);
        f5299w = i2;
        if (this.f5309k.b(23, 0) != f5299w) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(f5299w)));
            this.f5309k.g(23, f5299w);
        }
    }

    public final void i3(int i2) {
        qt.y0(103, i2);
        f5298v = i2;
        z.k.s(227, 198, 2, 177, i2);
        int iB = this.f5309k.b(13, 0);
        int i3 = f5298v;
        if (iB != i3) {
            this.f5309k.g(13, i3);
        }
    }

    public final void j3(int i2) {
        qt.y0(100, i2);
        f5296t = i2;
        int iB = this.f5309k.b(10, 20);
        int i3 = f5296t;
        if (iB != i3) {
            this.f5309k.g(10, i3);
        }
    }
}
