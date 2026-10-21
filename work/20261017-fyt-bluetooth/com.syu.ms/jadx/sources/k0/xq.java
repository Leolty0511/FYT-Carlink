package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import com.syu.jni.ToolsJni;
import java.util.Locale;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class xq extends lt {
    public static int D = 255;
    public static int E = 20;
    public static int F = 36;
    public static int G = 0;
    public static int H = 1;
    public static int I = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12247e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12244b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12245c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f12246d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12248f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12249g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{12, 5}, new int[]{13, 29}, new int[]{16, 6}, new int[]{22, 1}, new int[]{23, 2}, new int[]{24, 0}, new int[]{33, 55}, new int[]{66, 31}, new int[]{67, 30}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12250h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12251i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12252j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f12253k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12254l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f12255m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f12256n = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12257o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12258p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f12259q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f12260r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f12261s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f12262t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f12263u = 10;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f12264v = 11;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f12265w = 13;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f12266x = 15;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f12267y = 23;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public o1.g0 f12268z = new o1.g0(getClass().getSimpleName(), 32);
    public int A = 0;
    public Runnable B = new g();
    public Runnable C = new h();

    public class a implements o1.p {
        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            xq xqVar = xq.this;
            int i2 = xqVar.f12259q;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                xqVar.f12259q = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (xqVar.f12261s) {
                        xqVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    xqVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    xqVar.a3(false);
                }
            }
        }
    }

    public class b implements o1.p {
        public b() {
        }

        @Override // o1.p
        public void d(Object obj) {
            xq xqVar = xq.this;
            int i2 = xqVar.f12259q;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                xqVar.f12259q = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13) {
                    if (xqVar.f12261s) {
                        xqVar.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    xqVar.a3(true);
                } else if (y0.f.Q0 == 0) {
                    xqVar.a3(false);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = xq.D;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13) {
                    if (xq.D == 13) {
                        y0.h.u0(xq.F);
                        z.k.s(227, 165, 2, 1, 0);
                    }
                    xq xqVar = xq.this;
                    if (xqVar.f12261s) {
                        xqVar.a3(false);
                    }
                }
                xq.D = u0.b.D;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17366w;
            if (i2 == 0) {
                qt.y0(99, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                qt.y0(99, 1);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 13 || o1.u.S(a.b.Q)) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    xq.this.a3(true);
                } else {
                    xq.this.a3(false);
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xq xqVar = xq.this;
            xqVar.f12257o = y0.f.Q0;
            if (u0.b.D != 13) {
                if (xqVar.f12261s) {
                    xqVar.a3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                xqVar.a3(true);
            } else if (u0.b.j4 == 0) {
                xqVar.a3(false);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
            if ("6521".equals(str)) {
                ToolsJni.cmd_31_fan_en(0);
            } else if ("6316".equals(str) || "6312".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
            } else if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(5, 0);
            }
            l0.b0.b(xq.this.C);
            xq xqVar = xq.this;
            xqVar.A = 5;
            xqVar.f12253k = false;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xq xqVar = xq.this;
            int i2 = xqVar.A - 1;
            xqVar.A = i2;
            if (i2 <= 0) {
                l0.b0.p0(xqVar.C);
                xq.this.A = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                xq xqVar2 = xq.this;
                xqVar2.m3(xqVar2.f12268z.b(10, 20));
                xq xqVar3 = xq.this;
                xqVar3.j3(xqVar3.f12268z.b(11, 36));
                xq xqVar4 = xq.this;
                xqVar4.n3(xqVar4.f12268z.b(15, 1));
                xq xqVar5 = xq.this;
                xqVar5.l3(xqVar5.f12268z.b(13, 0));
                xq xqVar6 = xq.this;
                xqVar6.k3(xqVar6.f12268z.b(23, 1));
                if (o1.u.S(a.b.Q) || u0.b.D == 13) {
                    return;
                }
                y0.h.u0(xq.F);
                y0.h.k(1);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f12268z.a();
        u0.c.f17386m.a(this.B, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        y0.g.f18110t.a(this.f12258p, 1);
        y0.g.f18101k.a(new a());
        h0.d.f2462a.a(this.f12256n, 1);
        u0.c.f17399z.a(this.f12255m, 1);
        u0.c.f17374a.a(this.f12254l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 10) {
            qt.j(bArr[i2 + 3] & 255, bArr[i2 + 4] & 255, bArr[i2 + 2] & 1, 480);
        }
        if (b2 == 53) {
            int i4 = i2 + 2;
            qt.y0(98, (bArr[i4] >> 2) & 1);
            qt.y0(100, (bArr[i4] >> 4) & 1);
            qt.y0(101, (bArr[i4] >> 5) & 1);
            int i5 = (bArr[i4] >> 5) & 1;
            int i6 = (bArr[i4] >> 4) & 1;
            if (qt.k0() && !l0.c0.f13022p) {
                boolean z2 = i5 == 0 && i6 == 1;
                boolean z3 = i5 == 1 && i6 == 0;
                int i7 = (i5 == 1 && i6 == 1) ? 1 : 0;
                l0.c0.f13026t = 0;
                l0.c0.f13024r = 0;
                l0.c0.f13028v = 0;
                if (z2) {
                    l0.c0.f13026t = 20;
                }
                if (z3) {
                    l0.c0.f13024r = 20;
                }
                if (i7 != 0) {
                    l0.c0.f13028v = 20;
                }
                u0.i.l3().g4(4096, z2);
                u0.i.l3().g4(8192, z3);
                u0.d.I3(139, i7);
            }
            int i8 = bArr[i2 + 8] & 255;
            if (i8 != 0) {
                u0.d.A3((i8 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            } else {
                u0.d.A3(0);
            }
            qt.y0(105, bArr[i2 + 3] & 255);
            qt.y0(107, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(109, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(110, (bArr[i2 + 12] & 255) | ((bArr[i2 + 9] << 24) & (-16777216)) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280));
            return;
        }
        if (b2 == 57) {
            qt.y0(118, (bArr[i2 + 2] & 255) + 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 1:
                int i9 = i2 + 2;
                if (this.f12244b != ((bArr[i9] >> 2) & 1)) {
                    int i10 = (bArr[i9] >> 2) & 1;
                    this.f12244b = i10;
                    if (u0.b.f17357r0 == 0) {
                        if (i10 == 1) {
                            if (i10 == 1) {
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(50L);
                            }
                            if (!o1.u.a0()) {
                                this.f12246d = true;
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f12245c = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i10 == 0) {
                            a.i.a0(100L);
                            if (this.f12246d && o1.u.a0()) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                y0.h.t0(this.f12245c);
                            }
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                            this.f12246d = false;
                        }
                    }
                }
                break;
            case 2:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f12248f = b3 & 255;
                int i11 = 0;
                while (true) {
                    iArr = this.f12249g;
                    if (i11 < iArr.length) {
                        int i12 = this.f12248f;
                        if (i12 != iArr[i11][0]) {
                            i11++;
                        } else if (i12 != 0) {
                            this.f12247e = i11;
                        }
                    }
                }
                int i13 = this.f12248f;
                if (i13 == 1) {
                    if (H == 1 && (b4 & 255) == 1) {
                        l0.b0.l0(7, 0);
                        l0.b0.l0(7, 1);
                        break;
                    }
                } else if (i13 == 2) {
                    if (H == 1 && (b4 & 255) == 1) {
                        l0.b0.l0(8, 0);
                        l0.b0.l0(8, 1);
                        break;
                    }
                } else if (i13 != 6) {
                    if (i13 != 21) {
                        switch (i13) {
                            case 37:
                            case 38:
                            case 39:
                                break;
                            default:
                                int i14 = b4 & 255;
                                if (i14 != 1) {
                                    if (i14 == 0) {
                                        int i15 = this.f12247e;
                                        if (i15 < iArr.length && i15 != 255) {
                                            l0.b0.l0(iArr[i15][1], 1);
                                        }
                                        this.f12247e = 255;
                                    }
                                } else if (i11 < iArr.length) {
                                    l0.b0.l0(iArr[i11][1], 0);
                                }
                                break;
                        }
                    }
                    if ((b4 & 255) == 1 && !o1.u.a0()) {
                        o1.u.z();
                        break;
                    }
                } else if (H == 1 && (b4 & 255) == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    break;
                }
                break;
            case 3:
                int i16 = i2 + 2;
                qt.y0(10, (bArr[i16] >> 7) & 1);
                qt.y0(11, (bArr[i16] >> 6) & 1);
                qt.y0(12, (bArr[i16] >> 5) & 1);
                qt.y0(13, (bArr[i16] >> 4) & 1);
                qt.y0(65, (bArr[i16] >> 1) & 1);
                qt.y0(16, (bArr[i16] >> 0) & 1);
                qt.y0(14, (bArr[i16] >> 2) & 1);
                int i17 = i2 + 3;
                qt.y0(18, (bArr[i17] >> 7) & 1);
                qt.y0(19, (bArr[i17] >> 6) & 1);
                qt.y0(20, (bArr[i17] >> 5) & 1);
                qt.y0(21, (bArr[i17] >> 0) & 15);
                int i18 = i2 + 4;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 5;
                int i21 = bArr[i20] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i19 = bArr[i20] & 255;
                    i21 = bArr[i18] & 255;
                }
                if (i19 == 0) {
                    qt.y0(27, -2);
                } else if (i19 != 255) {
                    qt.y0(27, i19);
                } else {
                    qt.y0(27, -3);
                }
                if (i21 == 0) {
                    qt.y0(28, -2);
                } else if (i21 != 255) {
                    qt.y0(28, i21);
                } else {
                    qt.y0(28, -3);
                }
                if (((bArr[i2 + 8] >> 2) & 1) == 1) {
                    l0.b0.l0(62, 0);
                    l0.b0.l0(62, 1);
                }
                break;
            case 4:
                u0.d.R2(l0.c0.E1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E1(bArr[i2 + 5] & 255));
                break;
            case 5:
                int i22 = i2 + 2;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 3;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 4;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 5;
                int i29 = bArr[i28] & 255;
                if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && !o1.u.a0() && this.f12244b == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 8;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i23;
                l0.c0.f13014h = i25;
                l0.c0.f13015i = i27;
                l0.c0.f13016j = i29;
                u0.d.D2(l0.c0.E1(bArr[i22] & 255));
                u0.d.E2(l0.c0.E1(bArr[i24] & 255));
                u0.d.F2(l0.c0.E1(bArr[i26] & 255));
                u0.d.G2(l0.c0.E1(bArr[i28] & 255));
                break;
            case 6:
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
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12268z.j();
        u0.c.f17386m.d(this.B);
        l0.b0.p0(this.C);
        y0.g.f18110t.d(this.f12258p);
        u0.c.f17374a.d(this.f12254l);
        h0.d.f2462a.d(this.f12256n);
        u0.c.f17399z.d(this.f12255m);
        y0.g.f18101k.d(new b());
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 120) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if ((iArr[0] & 255) == 253) {
                m3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 244) {
                k3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 252) {
                j3(iArr[1]);
                return;
            }
            if ((iArr[0] & 255) == 247) {
                n3(iArr[1]);
                return;
            } else if ((iArr[0] & 255) == 250) {
                l3(iArr[1]);
                return;
            } else {
                z.k.s(227, 168, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 1) {
            z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 130, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 169, 1, iArr[0]);
            return;
        }
        if (i2 != 6) {
            return;
        }
        if (iArr[0] == 0 && !SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
            y0.h.u0(E);
        }
        if (nt.U == 1) {
            o1.x.x(nt.f8643f, 1001, iArr[0]);
        }
    }

    public final void a3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "SoundChangeTo 1111111=== " + this.f12261s);
        if (this.f12261s == z2) {
            return;
        }
        this.f12261s = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.f12261s);
        String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
        if ("6521".equals(str)) {
            if (z2) {
                ToolsJni.cmd_31_fan_en(1);
                return;
            } else {
                ToolsJni.cmd_31_fan_en(0);
                return;
            }
        }
        if ("6316".equals(str) || "6312".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
                return;
            }
        }
        if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
                return;
            }
        }
        if (z2) {
            ToolsJni.cmd_251_Normal_Io_Set(5, 1);
        } else {
            ToolsJni.cmd_251_Normal_Io_Set(5, 0);
        }
    }

    public final void j3(int i2) {
        qt.y0(114, i2);
        F = i2;
        int iB = this.f12268z.b(11, 36);
        int i3 = F;
        if (iB != i3) {
            this.f12268z.g(11, i3);
        }
    }

    public final void k3(int i2) {
        qt.y0(119, i2);
        I = i2;
        if (this.f12268z.b(23, 1) != I) {
            SystemProperties.set("persist.sys.allscreenon", String.format(Locale.US, "%d", Integer.valueOf(I)));
            this.f12268z.g(23, I);
        }
    }

    public final void l3(int i2) {
        qt.y0(117, i2);
        G = i2;
        if (nt.f8633a == 3867080) {
            z.k.s(227, 170, 1, G);
        }
        int iB = this.f12268z.b(13, 0);
        int i3 = G;
        if (iB != i3) {
            this.f12268z.g(13, i3);
        }
    }

    public final void m3(int i2) {
        qt.y0(113, i2);
        E = i2;
        int iB = this.f12268z.b(10, 20);
        int i3 = E;
        if (iB != i3) {
            this.f12268z.g(10, i3);
        }
    }

    public final void n3(int i2) {
        qt.y0(115, i2);
        H = i2;
        int iB = this.f12268z.b(15, 1);
        int i3 = H;
        if (iB != i3) {
            this.f12268z.g(15, i3);
        }
    }
}
