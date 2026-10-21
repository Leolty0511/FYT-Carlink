package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class wr extends lt {
    public static int A = 0;
    public static int B = 0;
    public static int C = 255;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f11878z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11880c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11881d = {new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 5}, new int[]{5, 6}, new int[]{6, 1}, new int[]{7, 55}, new int[]{11, 54}, new int[]{12, 55}, new int[]{14, 3}, new int[]{15, 4}, new int[]{16, 29}, new int[]{17, 34}, new int[]{18, 35}, new int[]{19, 32}, new int[]{20, 33}, new int[]{21, 34}, new int[]{22, 32}, new int[]{23, 33}, new int[]{24, 35}, new int[]{25, 80}, new int[]{26, 81}, new int[]{27, 16}, new int[]{32, 12}, new int[]{33, 7}, new int[]{34, 8}, new int[]{35, 18}, new int[]{36, 26}, new int[]{37, 13}, new int[]{38, 5}, new int[]{39, 6}, new int[]{40, 0}, new int[]{41, 12}, new int[]{42, 7}, new int[]{43, 8}, new int[]{44, 18}, new int[]{45, 1}, new int[]{46, 2}, new int[]{47, -1}, new int[]{48, 2}, new int[]{49, 34}, new int[]{50, 35}, new int[]{51, 32}, new int[]{52, 33}, new int[]{53, 29}, new int[]{54, 2}, new int[]{55, 2}, new int[]{56, 68}, new int[]{57, 67}, new int[]{64, -1}, new int[]{65, -1}, new int[]{96, 49}, new int[]{97, 40}, new int[]{98, 41}, new int[]{99, 42}, new int[]{100, 43}, new int[]{101, 44}, new int[]{102, 45}, new int[]{103, 46}, new int[]{104, 47}, new int[]{105, 48}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11882e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11883f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11884g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11885h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11886i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11887j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11888k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.g0 f11889l = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11890m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f11891n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f11892o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11893p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f11894q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f11895r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f11896s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f11897t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f11898u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f11899v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f11900w = new g();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f11901x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f11902y = new h();

    public class a implements o1.p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            wr wrVar = wr.this;
            int i2 = wrVar.f11895r;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                wrVar.f11895r = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (wrVar.f11897t) {
                        wrVar.b3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    wrVar.b3(true);
                } else if (y0.f.Q0 == 0) {
                    wrVar.b3(false);
                }
            }
        }
    }

    public class b implements o1.p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            wr wrVar = wr.this;
            int i2 = wrVar.f11895r;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                wrVar.f11895r = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (wrVar.f11897t) {
                        wrVar.b3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    wrVar.b3(true);
                } else if (y0.f.Q0 == 0) {
                    wrVar.b3(false);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13 || o1.u.S(a.b.Q)) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    wr.this.b3(true);
                } else {
                    wr.this.b3(false);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = wr.C;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    n1.b bVarP = a.f.p();
                    LogType logType = LogType.CANBUS;
                    bVarP.t(logType, "DataMain.sAppId 22222222222222 = " + u0.b.D);
                    a.f.p().t(logType, "appId_prev 3333333333333 = " + wr.C);
                    wr wrVar = wr.this;
                    if (wrVar.f11897t) {
                        wrVar.b3(false);
                    }
                }
                wr.C = u0.b.D;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 162, 1, 2);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wr.this.f11893p = y0.f.Q0;
            a.f.p().t(LogType.CANBUS, "mCarSendNaviSound DataSound.sNaviSoundOn= " + y0.f.Q0);
            if (u0.b.D != 13) {
                wr wrVar = wr.this;
                if (wrVar.f11897t) {
                    wrVar.b3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                wr.this.b3(true);
            } else if (u0.b.j4 == 0) {
                wr.this.b3(false);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(wr.this.f11902y);
            wr.this.f11899v = 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            wr wrVar = wr.this;
            int i2 = wrVar.f11899v - 1;
            wrVar.f11899v = i2;
            if (i2 <= 0) {
                l0.b0.p0(wrVar.f11902y);
                wr.this.f11899v = 6;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 113);
                wr wrVar2 = wr.this;
                wrVar2.f3(wrVar2.f11889l.b(1, 0), wr.this.f11889l.b(1, 0), wr.this.f11889l.b(1, 0));
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    wr.this.f11901x = SystemProperties.getInt("sys.lsec.navi_bar_height", 144);
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
        this.f11889l.a();
        u0.c.f17386m.a(this.f11900w, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        y0.g.f18110t.a(this.f11894q, 1);
        y0.g.f18101k.a(new a());
        h0.d.f2462a.a(this.f11890m, 1);
        u0.c.f17374a.a(this.f11891n, 1);
        u0.c.f17377d.a(this.f11892o, 0);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11880c = b3 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f11881d;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f11880c;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f11879b = i12;
                    break;
                }
                i12++;
            }
            int i14 = this.f11880c;
            if (i14 == 25) {
                for (int i15 = 0; i15 < (b4 & 255); i15++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i14 == 26) {
                for (int i16 = 0; i16 < (b4 & 255); i16++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i14 != 33) {
                if (i14 != 34) {
                    if (i14 != 42) {
                        if (i14 != 43) {
                            if (i14 != 47) {
                                if (i14 == 64) {
                                    if ((b4 & 255) == 1) {
                                        if (o1.u.S("com.syu.fourcamera2")) {
                                            c.e.d().c(614);
                                            return;
                                        } else {
                                            c.e.d().c(590);
                                            return;
                                        }
                                    }
                                    return;
                                }
                                int i17 = b4 & 255;
                                if (i17 != 0) {
                                    if (i12 < iArr.length) {
                                        l0.b0.l0(iArr[i12][1], 0);
                                        return;
                                    }
                                    return;
                                } else {
                                    if (i17 == 0) {
                                        int i18 = this.f11879b;
                                        if (i18 < iArr.length && i18 != 255) {
                                            l0.b0.l0(iArr[i18][1], 1);
                                        }
                                        this.f11879b = 255;
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                    }
                }
                for (int i19 = 0; i19 < (b4 & 255); i19++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            for (int i20 = 0; i20 < (b4 & 255); i20++) {
                l0.b0.l0(7, 0);
            }
            l0.b0.l0(7, 1);
            return;
        }
        if (b2 == 26) {
            int i21 = bArr[i2 + 2] & 255;
            int i22 = bArr[i2 + 3] & 255;
            int i23 = bArr[i2 + 4] & 255;
            int i24 = bArr[i2 + 5] & 255;
            int i25 = bArr[i2 + 6] & 255;
            qt.y0(10, (i21 >> 0) & 1);
            qt.y0(11, (i21 >> 1) & 1);
            qt.y0(62, (i21 >> 2) & 1);
            qt.y0(13, (i21 >> 3) & 3);
            qt.y0(16, (i21 >> 5) & 1);
            qt.y0(65, (i21 >> 6) & 1);
            qt.y0(12, (i21 >> 7) & 1);
            qt.y0(21, (i22 >> 0) & 15);
            qt.y0(25, (i22 >> 4) & 15);
            int i26 = i23 & 15;
            if (i26 != 15) {
                switch (i26) {
                    case 1:
                        i4 = 0;
                        i6 = 0;
                        i7 = 0;
                        i5 = 1;
                        break;
                    case 2:
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i4 = 1;
                        break;
                    case 3:
                        i6 = 0;
                        i7 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 4:
                        i4 = 0;
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                        break;
                    case 5:
                        i4 = 0;
                        i7 = 0;
                        i5 = 1;
                        i6 = i5;
                        break;
                    case 6:
                        i5 = 0;
                        i7 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 7:
                        i7 = 0;
                        i4 = 1;
                        i5 = 1;
                        i6 = i5;
                        break;
                    default:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        break;
                }
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
            }
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(49, i7);
            int i27 = (i23 >> 4) & 15;
            if (i27 != 15) {
                switch (i27) {
                    case 1:
                        i8 = 0;
                        i10 = 0;
                        i11 = 0;
                        i9 = 1;
                        break;
                    case 2:
                        i9 = 0;
                        i10 = 0;
                        i11 = 0;
                        i8 = 1;
                        break;
                    case 3:
                        i10 = 0;
                        i11 = 0;
                        i8 = 1;
                        i9 = 1;
                        break;
                    case 4:
                        i8 = 0;
                        i9 = 0;
                        i11 = 0;
                        i10 = 1;
                        break;
                    case 5:
                        i8 = 0;
                        i11 = 0;
                        i9 = 1;
                        i10 = i9;
                        break;
                    case 6:
                        i9 = 0;
                        i11 = 0;
                        i8 = 1;
                        i10 = 1;
                        break;
                    case 7:
                        i11 = 0;
                        i8 = 1;
                        i9 = 1;
                        i10 = i9;
                        break;
                    default:
                        i8 = 0;
                        i9 = 0;
                        i10 = 0;
                        i11 = 0;
                        break;
                }
            } else {
                i8 = 0;
                i9 = 0;
                i10 = 0;
                i11 = 1;
            }
            qt.y0(22, i8);
            qt.y0(23, i9);
            qt.y0(24, i10);
            qt.y0(50, i11);
            if (i24 == 0) {
                qt.y0(27, -2);
            } else if (i24 == 63) {
                qt.y0(27, -3);
            } else if (i24 == 255 || i24 <= 1 || i24 > 37) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, (i24 * 5) + 135);
            }
            if (i25 == 0) {
                qt.y0(28, -2);
            } else if (i25 == 63) {
                qt.y0(28, -3);
            } else if (i25 == 255 || i25 <= 1 || i25 > 37) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, (i25 * 5) + 135);
            }
            int i28 = i2 + 7;
            qt.y0(29, (bArr[i28] >> 0) & 3);
            qt.y0(30, (bArr[i28] >> 2) & 3);
            qt.y0(31, (bArr[i28] >> 4) & 3);
            qt.y0(32, (bArr[i28] >> 5) & 3);
            int i29 = i2 + 8;
            qt.y0(34, (bArr[i29] >> 0) & 1);
            qt.y0(80, (bArr[i29] >> 1) & 1);
            qt.y0(79, (bArr[i29] >> 2) & 1);
            qt.y0(53, (bArr[i29] >> 3) & 1);
            return;
        }
        if (b2 == 41) {
            qt.j(bArr[i2 + 3], 0, (bArr[i2 + 2] & 1) == 1 ? 0 : 1, 50);
            return;
        }
        if (b2 == 64) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            int i30 = i2 + 4;
            byte b7 = bArr[i30];
            int i31 = i2 + 5;
            byte b8 = bArr[i31];
            int i32 = i2 + 6;
            byte b9 = bArr[i32];
            int i33 = i2 + 7;
            byte b10 = bArr[i33];
            byte b11 = bArr[i2 + 8];
            int i34 = i2 + 9;
            byte b12 = bArr[i34];
            int i35 = i2 + 10;
            byte b13 = bArr[i35];
            int i36 = i2 + 11;
            byte b14 = bArr[i36];
            int i37 = i2 + 12;
            byte b15 = bArr[i37];
            if (this.f11884g != b6) {
                this.f11884g = b6;
                if (b6 == 1) {
                    nt.f8641e.a(0, ((((bArr[i30] << 8) & 65280) | (bArr[i31] & 255)) * a.f.w()) / 4096, ((((bArr[i32] << 8) & 65280) | (bArr[i33] & 255)) * (a.f.i() + this.f11901x)) / 4096);
                    nt.f8641e.i(0, 0);
                } else if (b6 == 0) {
                    nt.f8641e.i(1, 0);
                    nt.f8641e.h(0);
                }
            } else if (b6 == 1) {
                nt.f8641e.j(0, ((((bArr[i30] << 8) & 65280) | (bArr[i31] & 255)) * a.f.w()) / 4096, ((((bArr[i32] << 8) & 65280) | (bArr[i33] & 255)) * (a.f.i() + this.f11901x)) / 4096);
                nt.f8641e.i(2, 0);
            }
            if (this.f11885h == b11) {
                if (b11 == 1) {
                    nt.f8641e.j(1, ((((bArr[i34] << 8) & 65280) | (bArr[i35] & 255)) * a.f.w()) / 4096, ((((bArr[i36] << 8) & 65280) | (bArr[i37] & 255)) * (a.f.i() + this.f11901x)) / 4096);
                    nt.f8641e.i(2, 1);
                    return;
                }
                return;
            }
            this.f11885h = b11;
            if (b11 == 1) {
                nt.f8641e.a(1, ((((bArr[i34] << 8) & 65280) | (bArr[i35] & 255)) * a.f.w()) / 4096, ((((bArr[i36] << 8) & 65280) | (bArr[i37] & 255)) * (a.f.i() + this.f11901x)) / 4096);
                nt.f8641e.i(5, 1);
                return;
            } else {
                if (b11 == 0) {
                    nt.f8641e.i(6, 1);
                    nt.f8641e.h(1);
                    return;
                }
                return;
            }
        }
        if (b2 == 104) {
            u0.d.R2(l0.c0.H1(bArr[i2 + 6] & 255));
            u0.d.S2(l0.c0.H1(bArr[i2 + 7] & 255));
            u0.d.T2(l0.c0.H1(bArr[i2 + 8] & 255));
            u0.d.U2(l0.c0.H1(bArr[i2 + 9] & 255));
            int i38 = i2 + 2;
            int i39 = bArr[i38] & 255;
            int i40 = i2 + 3;
            int i41 = bArr[i40] & 255;
            int i42 = i2 + 4;
            int i43 = bArr[i42] & 255;
            int i44 = i2 + 5;
            int i45 = bArr[i44] & 255;
            if (i39 == 255 && i41 == 255 && i43 == 255 && i45 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i39 || l0.c0.f13014h != i41 || l0.c0.f13015i != i43 || l0.c0.f13016j != i45) && this.f11882e == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 8;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i39;
            l0.c0.f13014h = i41;
            l0.c0.f13015i = i43;
            l0.c0.f13016j = i45;
            u0.d.D2(l0.c0.H1(bArr[i38] & 255));
            u0.d.E2(l0.c0.H1(bArr[i40] & 255));
            u0.d.F2(l0.c0.H1(bArr[i42] & 255));
            u0.d.G2(l0.c0.H1(bArr[i44] & 255));
            return;
        }
        if (b2 != 113) {
            if (b2 != 35) {
                if (b2 != 36) {
                    return;
                }
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{26, bArr[i2 + 2] & 255}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{1, bArr[i2 + 3] & 255}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{24, bArr[i2 + 5] & 255}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{5, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255)}, null, null);
                return;
            }
            int i46 = i2 + 5;
            int i47 = bArr[i46] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i47 >> 0) & 1);
                qt.y0(1, (i47 >> 1) & 1);
            } else {
                qt.y0(2, (i47 >> 1) & 1);
                qt.y0(1, (i47 >> 0) & 1);
            }
            qt.y0(4, (i47 >> 3) & 1);
            qt.y0(3, (i47 >> 2) & 1);
            qt.y0(5, (i47 >> 4) & 1);
            qt.y0(0, (i47 >> 5) & 1);
            qt.m(bArr[i2 + 4], 0, 128, true, 127);
            int i48 = i2 + 3;
            l0.c0.N1((bArr[i48] >> 1) & 1, (bArr[i48] >> 0) & 1, (bArr[i48] >> 2) & 1);
            o1.x[] xVarArr2 = nt.f8643f;
            int i49 = i2 + 2;
            o1.x.C(xVarArr2, 1049, new int[]{3, (bArr[i49] >> 2) & 1}, null, null);
            int i50 = (bArr[i49] >> 4) & 15;
            if (i50 == 0) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 4}, null, null);
            } else if (i50 == 1) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 3}, null, null);
            } else if (i50 == 2) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 2}, null, null);
            } else if (i50 == 3) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 1}, null, null);
            }
            o1.x.C(xVarArr2, 1049, new int[]{11, ((((bArr[i48] >> 1) & 1) << 3) & 8) | ((((bArr[i48] >> 0) & 1) << 4) & 16) | ((((bArr[i48] >> 3) & 1) << 5) & 32) | ((((bArr[i48] >> 5) & 1) << 6) & 64) | ((((bArr[i48] >> 4) & 1) << 7) & 128) | ((bArr[i48] >> 2) & 1)}, null, null);
            o1.x.C(xVarArr2, 1049, new int[]{10, (bArr[i48] >> 7) & 1}, null, null);
            o1.x.C(xVarArr2, 1049, new int[]{12, (bArr[i48] >> 6) & 1}, null, null);
            o1.x.C(xVarArr2, 1049, new int[]{27, (bArr[i49] >> 3) & 1}, null, null);
            o1.x.C(xVarArr2, 1049, new int[]{28, (bArr[i46] >> 7) & 1}, null, null);
            qt.y0(98, (bArr[i49] >> 3) & 1);
            return;
        }
        String str = ((int) bArr[i2 + 3]) + (((int) bArr[i2 + 2]) + ProxyProperties.LOCAL_EXCL_LIST);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_20");
        int i51 = i2 + 4;
        sb.append(bArr[i51] / 10);
        sb.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb.append(bArr[i51] % 10);
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(string);
        sb2.append("_");
        int i52 = i2 + 5;
        sb2.append(bArr[i52] / 10);
        sb2.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb2.append(bArr[i52] % 10);
        String string2 = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(string2);
        sb3.append("_");
        int i53 = i2 + 6;
        sb3.append(bArr[i53] / 10);
        sb3.append(ProxyProperties.LOCAL_EXCL_LIST);
        sb3.append(bArr[i53] % 10);
        qt.L(sb3.toString() + "_V" + ((int) bArr[i2 + 8]) + ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 9]) + ProxyProperties.LOCAL_EXCL_LIST + ((int) bArr[i2 + 10]));
    }

    @Override // k0.lt
    public void W2() {
        this.f11889l.j();
        u0.c.f17386m.d(this.f11900w);
        l0.b0.p0(this.f11902y);
        y0.g.f18110t.d(this.f11894q);
        h0.d.f2462a.d(this.f11890m);
        u0.c.f17374a.d(this.f11891n);
        u0.c.f17377d.d(this.f11892o);
        y0.g.f18101k.d(new b());
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 162, 1, iArr[0]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 164, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            f3(iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 6) {
            if (nt.U == 1) {
                o1.x.x(nt.f8643f, 1001, iArr[0]);
                return;
            }
            return;
        }
        if (i2 != 1040) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
        if (iArr[0] != 0) {
            return;
        }
        int i3 = iArr[1];
        if (i3 == 1) {
            if (iArr[2] == 1) {
                a3(84);
                return;
            } else {
                if (iArr[2] == 2) {
                    a3(85);
                    return;
                }
                return;
            }
        }
        if (i3 == 2) {
            if (iArr[2] == 1) {
                a3(80);
                return;
            } else {
                if (iArr[2] == 2) {
                    a3(81);
                    return;
                }
                return;
            }
        }
        if (i3 != 3) {
            if (i3 == 4) {
                a3(71);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                a3(70);
                return;
            }
        }
        if (iArr[2] == 1) {
            a3(82);
        } else if (iArr[2] == 2) {
            a3(83);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 164, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, 164, 2, i2, 0);
    }

    public final void b3(boolean z2) {
        if (u0.b.f17306a0 == 0 || this.f11897t == z2) {
            return;
        }
        this.f11897t = z2;
        if (z2) {
            z.k.s(227, 161, 1, 1);
        } else {
            z.k.s(227, 161, 1, 0);
        }
    }

    public final void f3(int i2, int i3, int i4) {
        qt.y0(99, i2);
        qt.y0(100, i2);
        qt.y0(101, i2);
        f11878z = i2;
        int iB = this.f11889l.b(1, 0);
        int i5 = f11878z;
        if (iB != i5) {
            this.f11889l.g(1, i5);
        }
        A = i3;
        int iB2 = this.f11889l.b(1, 0);
        int i6 = A;
        if (iB2 != i6) {
            this.f11889l.g(1, i6);
        }
        B = i4;
        int iB3 = this.f11889l.b(1, 0);
        int i7 = B;
        if (iB3 != i7) {
            this.f11889l.g(1, i7);
        }
        z.k.s(227, 163, 3, i2, i3, i4);
    }
}
