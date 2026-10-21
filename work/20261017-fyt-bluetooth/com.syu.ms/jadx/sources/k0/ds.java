package k0;

import android.net.ProxyProperties;
import android.opengl.GLES10;
import android.os.SystemProperties;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ds extends lt {
    public static int A = 255;
    public static int B = 0;
    public static int C = 0;
    public static int D = 0;
    public static int E = 0;
    public static int F = 0;
    public static int G = 0;
    public static int H = 20;
    public static int I = 36;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f4600z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4606g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4601b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4602c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4603d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4604e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4605f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4607h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f4608i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 6}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{51, -1}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 5}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{224, -1}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4609j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4610k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4611l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o1.g0 f4612m = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f4613n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f4614o = 7;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f4615p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f4616q = 15;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f4617r = 8;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f4618s = 9;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f4619t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f4620u = 11;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4621v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f4622w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f4623x = new d();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f4624y = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = ds.f4600z;
            int i3 = nt.Q;
            if (i2 != i3) {
                ds.f4600z = i3;
                if (u0.b.f17357r0 == 0) {
                    int i4 = ds.f4600z;
                    if (i4 == 1) {
                        if (o1.u.a0()) {
                            return;
                        }
                        SystemProperties.set("persist.lesc.video.ignore", "true");
                        a.i.a0(200L);
                        o1.u.z();
                        float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                        ds.this.f4605f = y0.f.f18037c;
                        y0.h.t0((int) f2);
                        ds.this.f4604e = true;
                        return;
                    }
                    if (i4 == 0) {
                        if (ds.this.f4604e && o1.u.a0()) {
                            o1.u.k();
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                            y0.h.t0(ds.this.f4605f);
                            a.f.p().t(LogType.CANBUS, "Out iJumppage = " + ds.this.f4604e + " ----JumpPage.isCarUiTop() = " + o1.u.a0());
                        }
                        ds.this.f4604e = false;
                    }
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 1, 53);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = ds.A;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    z.k.s(227, 198, 2, 176, 3);
                    if (ds.A == 13 && ds.E == 0) {
                        y0.h.u0(ds.I);
                    }
                }
                ds.A = u0.b.D;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ds.this.f4624y);
            ds.this.f4622w = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ds dsVar = ds.this;
            int i2 = dsVar.f4622w - 1;
            dsVar.f4622w = i2;
            if (i2 <= 0) {
                l0.b0.p0(dsVar.f4624y);
                ds.this.f4622w = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                ds dsVar2 = ds.this;
                dsVar2.r3(dsVar2.f4612m.b(7, 0));
                ds dsVar3 = ds.this;
                dsVar3.m3(dsVar3.f4612m.b(2, 0));
                ds dsVar4 = ds.this;
                dsVar4.s3(dsVar4.f4612m.b(1, 0));
                ds dsVar5 = ds.this;
                dsVar5.q3(dsVar5.f4612m.b(15, 0));
                ds dsVar6 = ds.this;
                dsVar6.p3(dsVar6.f4612m.b(10, 20));
                ds dsVar7 = ds.this;
                dsVar7.l3(dsVar7.f4612m.b(11, 36));
                if (!o1.u.S(a.b.Q) && u0.b.D != 13) {
                    a.f.p().t(LogType.CANBUS, "HandlerSound.volSrcCmd 3333333  = " + ds.I + "----DataMain.sAppId = " + u0.b.D);
                    if (ds.E == 0) {
                        y0.h.u0(ds.I);
                    }
                }
                switch (nt.f8633a) {
                    case 7995848:
                    case 10944967:
                    case 11010503:
                    case 11076039:
                    case 11141575:
                    case 11207111:
                    case 16581063:
                        if ((qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) && SystemProperties.getBoolean("persist.lsec.c8918L.dual_port", true)) {
                            SystemProperties.set("persist.lsec.c8918L.dual_port", "false");
                        }
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f4612m.a();
        u0.c.f17386m.a(this.f4623x, 1);
        u0.c.f17374a.a(this.f4611l, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8317l = 1;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        qt.x(this.f4610k);
        ot.f9022d.a(this.f4609j, 1);
        int i2 = nt.f8633a;
        if (i2 == 7995848) {
            this.f7886a.f8314i = 1;
        }
        switch (i2) {
            case 7995848:
            case 10944967:
            case 11010503:
            case 11076039:
            case 11141575:
            case 11207111:
            case 16581063:
                if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
                    if (g.f.n(11)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_0.bus_width", 0) != 4) {
                            SystemProperties.set("sys.fyt.cvbs_0.bus_width", "4");
                            qt.r0();
                        }
                        if (!SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918L");
                            qt.r0();
                        }
                    } else if (g.f.n(13)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_2.bus_width", 0) != 4) {
                            SystemProperties.set("sys.fyt.cvbs_2.bus_width", "4");
                            qt.r0();
                        }
                        if (!SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918L");
                            qt.r0();
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 53) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_AMBIENT);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4607h = b3 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f4608i;
                    if (i6 < iArr.length) {
                        int i7 = this.f4607h;
                        if (i7 != iArr[i6][0]) {
                            i6++;
                        } else if (i7 != 0) {
                            this.f4606g = i6;
                        }
                    }
                }
                int i8 = this.f4607h;
                if (i8 != 1) {
                    if (i8 != 2) {
                        if (i8 != 6) {
                            if (i8 != 224) {
                                int i9 = b4 & 255;
                                if (i9 != 1) {
                                    if (i9 == 0) {
                                        int i10 = this.f4606g;
                                        if (i10 < iArr.length) {
                                            i4 = 255;
                                            if (i10 != 255) {
                                                l0.b0.l0(iArr[i10][1], 1);
                                            }
                                        } else {
                                            i4 = 255;
                                        }
                                        this.f4606g = i4;
                                    }
                                } else if (i6 < iArr.length) {
                                    l0.b0.l0(iArr[i6][1], 0);
                                }
                                break;
                            } else if ((b4 & 255) == 1) {
                                if (!o1.u.a0()) {
                                    qt.y0(98, 1);
                                    SystemProperties.set("persist.lesc.video.ignore", "true");
                                    a.i.a0(250L);
                                    this.f4604e = true;
                                    o1.u.z();
                                    break;
                                } else if (this.f4604e && o1.u.a0()) {
                                    qt.y0(98, 0);
                                    a.i.a0(350L);
                                    SystemProperties.set("persist.lesc.video.ignore", "false");
                                    this.f4604e = false;
                                    break;
                                }
                            }
                        } else if (E == 1 && (b4 & 255) == 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                            break;
                        }
                    } else if (E == 1 && (b4 & 255) == 1) {
                        l0.b0.l0(8, 0);
                        l0.b0.l0(8, 1);
                        break;
                    }
                } else if (E == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    break;
                }
                break;
            case 33:
                int i11 = bArr[i2 + 2] & 255;
                int i12 = bArr[i2 + 3] & 255;
                int i13 = bArr[i2 + 4] & 255;
                int i14 = i2 + 5;
                int i15 = bArr[i14] & 255;
                int i16 = bArr[i2 + 6] & 255;
                int i17 = bArr[i2 + 7] & 255;
                int i18 = bArr[i2 + 8] & 255;
                qt.y0(10, (i11 >> 7) & 1);
                qt.y0(11, (i11 >> 6) & 1);
                qt.y0(12, (i11 >> 5) & 1);
                qt.y0(13, (i11 >> 3) & 1);
                qt.y0(62, (i11 >> 2) & 1);
                qt.y0(15, (i11 >> 1) & 1);
                qt.y0(16, (i11 >> 0) & 1);
                qt.y0(18, (i12 >> 7) & 1);
                qt.y0(19, (i12 >> 6) & 1);
                qt.y0(20, (i12 >> 5) & 1);
                qt.y0(21, i12 & 15);
                int i19 = (i16 >> 6) & 1;
                qt.y0(37, i19);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i13 = bArr[i14] & 255;
                    i15 = bArr[i14] & 255;
                }
                if (i13 == 0) {
                    qt.y0(27, -2);
                } else if (i13 == 127) {
                    qt.y0(27, -3);
                } else if (i13 < 31 || i13 > 59) {
                    qt.y0(27, -1);
                } else if (i19 == 1) {
                    qt.y0(27, (i13 * 10) + i.a.Theme_findOnPagePreviousDrawable);
                } else {
                    qt.y0(27, i13 * 5);
                }
                if (i15 == 0) {
                    qt.y0(28, -2);
                } else if (i15 == 127) {
                    qt.y0(28, -3);
                } else if (i15 < 31 || i15 > 59) {
                    qt.y0(28, -1);
                } else if (i19 == 1) {
                    qt.y0(28, (i15 * 10) + i.a.Theme_findOnPagePreviousDrawable);
                } else {
                    qt.y0(28, i15 * 5);
                }
                qt.y0(67, (i16 >> 0) & 1);
                qt.y0(53, (i16 >> 2) & 1);
                qt.y0(65, (i16 >> 3) & 1);
                if (i17 == 0) {
                    qt.y0(40, -2);
                } else if (i17 == 127) {
                    qt.y0(40, -3);
                } else if (i17 < 31 || i17 > 59) {
                    qt.y0(40, -1);
                } else if (i19 == 1) {
                    qt.y0(40, (i17 * 10) + i.a.Theme_findOnPagePreviousDrawable);
                } else {
                    qt.y0(40, i17 * 5);
                }
                qt.y0(42, (i18 >> 7) & 1);
                qt.y0(43, (i18 >> 6) & 1);
                qt.y0(46, (i18 >> 5) & 1);
                qt.y0(47, (i18 >> 4) & 1);
                qt.y0(67, (i18 >> 3) & 1);
                qt.y0(44, 7 & i18);
                int i20 = i2 + 9;
                qt.y0(29, (bArr[i20] >> 0) & 3);
                qt.y0(30, (bArr[i20] >> 2) & 3);
                qt.y0(31, (bArr[i20] >> 4) & 3);
                qt.y0(32, (bArr[i20] >> 6) & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.x1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.x1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.x1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.x1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i21 = i2 + 2;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 3;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = bArr[i27] & 255;
                if (i22 == 0 && i24 == 0 && i26 == 0 && i28 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 6;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i28;
                u0.d.D2(l0.c0.x1(bArr[i21] & 255));
                u0.d.E2(l0.c0.x1(bArr[i23] & 255));
                u0.d.F2(l0.c0.x1(bArr[i25] & 255));
                u0.d.G2(l0.c0.x1(bArr[i27] & 255));
                break;
            case 36:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b5 >> 6) & 1);
                    qt.y0(1, (b5 >> 7) & 1);
                } else {
                    qt.y0(2, (b5 >> 7) & 1);
                    qt.y0(1, (b5 >> 6) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                int i29 = i2 + 3;
                if (this.f4601b != ((bArr[i29] >> 0) & 1) || this.f4602c != ((bArr[i29] >> 4) & 1)) {
                    this.f4601b = (bArr[i29] >> 0) & 1;
                    int i30 = (bArr[i29] >> 4) & 1;
                    this.f4602c = i30;
                    if (u0.b.f17357r0 == 0) {
                        if (i30 == 1) {
                            y0.h.k(1);
                        } else {
                            y0.h.k(0);
                        }
                        int i31 = this.f4601b;
                        if (i31 == 1 || (i5 = this.f4602c) == 1) {
                            if (!o1.u.a0()) {
                                qt.y0(98, 1);
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                this.f4604e = true;
                                o1.u.z();
                            }
                            u0.d.C2(0);
                            float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                            this.f4605f = y0.f.f18037c;
                            y0.h.t0((int) f2);
                        } else if (i31 == 0 && i5 == 0) {
                            y0.h.t0(this.f4605f);
                            if (this.f4604e && o1.u.a0()) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            this.f4604e = false;
                        }
                    }
                }
                if (D != 1) {
                    int i32 = i2 + 6;
                    l0.c0.a((bArr[i32] >> 2) & 1, (bArr[i32] >> 3) & 1, 0);
                } else if (nt.W != 0) {
                    int i33 = i2 + 6;
                    if (this.f4621v != ((bArr[i33] >> 3) & 1)) {
                        int i34 = (bArr[i33] >> 3) & 1;
                        this.f4621v = i34;
                        if (i34 != 1) {
                            if (this.f4604e && o1.u.a0()) {
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                                qt.y0(98, 0);
                            }
                            this.f4604e = false;
                        } else if (!o1.u.a0()) {
                            qt.y0(98, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            this.f4604e = true;
                            o1.u.z();
                        }
                    }
                } else {
                    int i35 = i2 + 6;
                    if (this.f4621v != ((bArr[i35] >> 2) & 1)) {
                        int i36 = (bArr[i35] >> 2) & 1;
                        this.f4621v = i36;
                        if (i36 != 1) {
                            if (this.f4604e && o1.u.a0()) {
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                                qt.y0(98, 0);
                            }
                            this.f4604e = false;
                        } else if (!o1.u.a0()) {
                            qt.y0(98, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(200L);
                            this.f4604e = true;
                            o1.u.z();
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4612m.j();
        u0.c.f17386m.d(this.f4623x);
        l0.b0.p0(this.f4624y);
        u0.c.f17374a.d(this.f4611l);
        qt.o0(this.f4610k);
        ot.f9022d.d(this.f4609j);
        switch (nt.f8633a) {
            case 7995848:
            case 10944967:
            case 11010503:
            case 11076039:
            case 11141575:
            case 11207111:
            case 16581063:
                if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
                    if (!SystemProperties.getBoolean("persist.lsec.c8918L.dual_port", true)) {
                        SystemProperties.set("persist.lsec.c8918L.dual_port", "true");
                        qt.r0();
                    }
                    if (g.f.n(11)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_0.bus_width", 0) != 4) {
                            SystemProperties.set("sys.fyt.cvbs_0.bus_width", ProxyProperties.LOCAL_EXCL_LIST);
                        }
                        if (SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918");
                            qt.r0();
                        }
                    } else if (g.f.n(13)) {
                        if (SystemProperties.getInt("sys.fyt.cvbs_2.bus_width", 0) == 4) {
                            SystemProperties.set("sys.fyt.cvbs_2.bus_width", ProxyProperties.LOCAL_EXCL_LIST);
                            qt.r0();
                        }
                        if (SystemProperties.get("persist.lesc.customer_platform").equals("8918L")) {
                            SystemProperties.set("persist.lesc.customer_platform", "8918");
                            qt.r0();
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 == 1) {
                z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            }
            if (i2 != 2) {
                if (i2 != 45) {
                    return;
                }
                o3(iArr[0]);
                n3(iArr[1]);
                return;
            }
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            s3(iArr[0]);
            return;
        }
        int i3 = iArr[0] & 255;
        if (i3 == 181) {
            if (iArr[1] == 1 && !SystemProperties.getBoolean("persist.lesc.video.ignore", false) && E == 0) {
                y0.h.u0(H);
            }
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
        if (i3 == 247) {
            q3(iArr[1]);
            return;
        }
        switch (i3) {
            case 252:
                l3(iArr[1]);
                break;
            case i.a.Theme_dialogTitleDecorLayout /* 253 */:
                p3(iArr[1]);
                break;
            case 254:
                r3(iArr[1]);
                break;
            case 255:
                m3(iArr[1]);
                break;
            default:
                z.k.s(227, 198, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void l3(int i2) {
        qt.y0(106, i2);
        I = i2;
        int iB = this.f4612m.b(11, 36);
        int i3 = I;
        if (iB != i3) {
            this.f4612m.g(11, i3);
        }
    }

    public final void m3(int i2) {
        qt.y0(99, i2);
        B = i2;
        z.k.s(227, 168, 5, i2, 0, 0, 0, 0);
        int iB = this.f4612m.b(2, 0);
        int i3 = B;
        if (iB != i3) {
            this.f4612m.g(2, i3);
        }
    }

    public final void n3(int i2) {
        qt.y0(104, 65535 & i2);
        G = i2;
        if (this.f4612m.b(9, 0) != G) {
            SystemProperties.set("persist.sys.height", String.format(Locale.US, "%d", Integer.valueOf(G)));
            this.f4612m.g(9, G);
        }
    }

    public final void o3(int i2) {
        qt.y0(103, 65535 & i2);
        F = i2;
        if (this.f4612m.b(8, 0) != F) {
            SystemProperties.set("persist.sys.width", String.format(Locale.US, "%d", Integer.valueOf(F)));
            this.f4612m.g(8, F);
        }
    }

    public final void p3(int i2) {
        qt.y0(105, i2);
        H = i2;
        int iB = this.f4612m.b(10, 20);
        int i3 = H;
        if (iB != i3) {
            this.f4612m.g(10, i3);
        }
    }

    public final void q3(int i2) {
        qt.y0(102, i2);
        E = i2;
        int iB = this.f4612m.b(15, 0);
        int i3 = E;
        if (iB != i3) {
            this.f4612m.g(15, i3);
        }
    }

    public final void r3(int i2) {
        qt.y0(100, i2);
        C = i2;
        z.k.s(227, 198, 2, 182, i2);
        int iB = this.f4612m.b(7, 0);
        int i3 = C;
        if (iB != i3) {
            this.f4612m.g(7, i3);
        }
    }

    public final void s3(int i2) {
        D = i2;
        qt.y0(101, i2);
        int iB = this.f4612m.b(1, 0);
        int i3 = D;
        if (iB != i3) {
            this.f4612m.g(1, i3);
        }
    }
}
