package module.canbus;

import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import o1.p0;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class f0 extends lt {
    public static int C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static final int[] J = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 25, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 49, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62};
    public static final int[] K = {1, 3, 5, 7, 9, 11, 13, 15, 16, 17, 19, 21, 23, 25, 27, 29, 31};
    public static final o1.f<i> L = new o1.f<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f14062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14063h;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o1.o f14069n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f14057b = new int[6];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o1.g0 f14058c = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14059d = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14064i = 255;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14065j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14066k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f14067l = {new int[]{1, 7}, new int[]{2, 8}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{32, 62}, new int[]{129, 0}, new int[]{160, 1}, new int[]{164, 54}, new int[]{175, 9}, new int[]{176, 18}, new int[]{185, 25}, new int[]{194, 38}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14068m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f14070o = new b();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f14071p = new c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f14072q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f14073r = new d();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f14074s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f14075t = new e();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f14076u = 5;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f14077v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f14078w = new g();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14079x = 200;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f14080y = new h();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14081z = -1;
    public int A = 0;
    public boolean B = false;

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            f0.this.y3();
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = f0.D;
            int i3 = f0.E;
            if (i3 == 0) {
                f0.this.B = true;
                z.k.s(227, 2, 240, 7, 1);
                return;
            }
            f0 f0Var = f0.this;
            int i4 = 0;
            if (f0Var.B) {
                f0Var.B = false;
                z.k.s(227, 2, 240, 7, 0);
            }
            if (i2 < i3) {
                i4 = 1;
            } else if (i2 > i3) {
                i4 = -1;
            }
            f0.v3(1, i4);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 11 || i2 == 13) {
                return;
            }
            z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 5);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f0.this.f14072q == 1) {
                if (qt.i0().equals("com.syu.carinfo.wc.crown.wc_420_crown_AmpSetAct")) {
                    o1.u.k();
                }
                qt.q0(f0.this.f14073r);
            }
            f0 f0Var = f0.this;
            int i2 = f0Var.f14072q;
            if (i2 > 0) {
                f0Var.f14072q = i2 - 1;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f0.this.f14074s == 1) {
                if (qt.i0().equals("com.syu.carinfo.wc.crown.wc_420_crown_AirControlAct") && !s0.t(o1.u.s0())) {
                    if (o1.u.j0(o1.u.s0())) {
                        c.e.d().b();
                        a.i.A();
                    } else {
                        o1.u.J0(o1.u.s0());
                    }
                }
                qt.q0(f0.this.f14075t);
            }
            f0 f0Var = f0.this;
            int i2 = f0Var.f14074s;
            if (i2 > 0) {
                f0Var.f14074s = i2 - 1;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(f0.this.f14078w);
            f0 f0Var = f0.this;
            f0Var.f14081z = -1;
            f0Var.f14076u = (byte) 5;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f0 f0Var = f0.this;
            byte b2 = (byte) (f0Var.f14076u - 1);
            f0Var.f14076u = b2;
            if (b2 <= 0) {
                l0.b0.p0(f0Var.f14078w);
                f0.this.f14076u = (byte) 5;
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 11 || i2 == 13) {
                return;
            }
            z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, 5);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (f0.this.f14079x > 100) {
                    f0.s3(f0.this);
                    if (f0.this.A == f0.this.f14079x / 100) {
                        f0.this.A = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = f0.E = f0.J[0];
                } else {
                    int unused2 = f0.E = f0.J[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (f0.this.f7886a.f8307b == 1 && f0.D != f0.E) {
                    f0.this.D3();
                }
                f0 f0Var = f0.this;
                if (f0Var.f7886a.f8308c == 1) {
                    f0Var.R2(null);
                    if (f0.F != f0.H) {
                        int unused3 = f0.F = f0.H;
                        f0.this.C3();
                    }
                    if (f0.G != f0.I) {
                        int unused4 = f0.G = f0.I;
                        f0.this.A3();
                    }
                }
            }
        }
    }

    public static class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14092c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14093d;

        public i(int i2, int i3) {
            this.f14090a = i2;
            this.f14093d = i3;
        }

        public synchronized void a(int i2) {
            this.f14091b = i2;
            if (!this.f14092c) {
                this.f14092c = true;
                o1.k.a().postDelayed(this, this.f14093d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 240, this.f14090a, this.f14091b);
            this.f14092c = false;
        }
    }

    public static /* synthetic */ int s3(f0 f0Var) {
        int i2 = f0Var.A;
        f0Var.A = i2 + 1;
        return i2;
    }

    public static void v3(int i2, int i3) {
        i iVarC = L.c(i2);
        if (iVarC != null) {
            iVarC.a(i3);
        }
    }

    public final synchronized void A3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        v3(2, I);
    }

    public final void B3(int i2) {
        C = i2;
        int iB = this.f14058c.b(2, 0);
        int i3 = C;
        if (iB != i3) {
            this.f14058c.g(2, i3);
        }
        qt.y0(101, i2);
    }

    public final synchronized void C3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        v3(3, H);
    }

    public final synchronized void D3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = D;
        int i3 = E;
        int i4 = 0;
        if (i3 == 0) {
            this.B = true;
            z.k.s(227, 2, 240, 7, 1);
        } else {
            if (this.B) {
                this.B = false;
                z.k.s(227, 2, 240, 7, 0);
            }
            if (i2 < i3) {
                i4 = 1;
            } else if (i2 > i3) {
                i4 = -1;
            }
            v3(1, i4);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c == 2) {
            y0.f.C0 = 36;
        } else {
            y0.f.C0 = 10;
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = K;
            H = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            I = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f14058c.a();
        B3(this.f14058c.b(2, 0));
        u0.c.f17386m.a(this.f14077v, 1);
        u0.c.f17374a.a(this.f14071p, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        int i2 = nt.f8637c;
        if (i2 == 3 || i2 == 10 || i2 == 13) {
            mtVar.f8315j = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            if (i2 == 13) {
                mtVar.f8317l = 1;
                mtVar.f8315j = 0;
            }
        } else {
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8315j = 1;
            mtVar.f8317l = 0;
            if (i2 == 4) {
                mtVar.f8315j = 0;
            }
            if (i2 == 2) {
                mtVar.f8307b = 1;
            }
            this.f14069n = o1.u.f16984b;
            o1.u.f16984b = new a();
        }
        if (nt.f8637c == 10) {
            this.f7886a.f8306a = null;
        }
        if (nt.a() && nt.f8637c == 2) {
            init();
            l0.b0.a(this.f14080y);
            w3();
            y0.g.f18094d.a(this.f14070o, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16 || b2 == -11) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 19) {
            qt.y0(133, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(134, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(135, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(136, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(137, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            qt.y0(138, bArr[i2 + 12] & 255);
            qt.y0(139, bArr[i2 + 13] & 255);
            qt.y0(137, (bArr[i2 + 17] & 255) | (65280 & (bArr[i2 + 16] << 8)));
            return;
        }
        if (b2 == 26) {
            byte b3 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 7) & 1);
                qt.y0(1, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            if (bArr[i2 + 10] == 1 && qt.k0()) {
                if (o1.u.S("com.syu.fourcamera2")) {
                    c.e.d().c(614);
                } else {
                    c.e.d().c(590);
                }
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b2 == 49) {
            int i11 = bArr[i2 + 13] & 255;
            if (i11 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i11 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i11 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 94) {
            qt.y0(141, bArr[i2 + 2] & 255);
            qt.y0(142, bArr[i2 + 3] & 255);
            qt.y0(143, bArr[i2 + 4] & 255);
            qt.y0(144, bArr[i2 + 5] & 255);
            qt.y0(145, bArr[i2 + 6] & 255);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f14062g = (b4 & 255) | 128;
                int i12 = 0;
                while (true) {
                    iArr = this.f14067l;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    int i13 = this.f14062g;
                    if (i13 == iArr[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f14063h = i12;
                        break;
                    }
                    i12++;
                }
                if (b4 == 66) {
                    z3();
                    return;
                }
                if ((b5 & 255) != 0) {
                    if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i14 = this.f14063h;
                    if (i14 < iArr.length && i14 != 255) {
                        l0.b0.l0(iArr[i14][1], 1);
                    }
                    this.f14063h = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34) {
            if (nt.a()) {
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                if (b6 != 1) {
                    if (b6 == 2 && b7 != (i4 = this.f14066k)) {
                        if (b7 > i4) {
                            for (int i15 = 0; i15 < b7 - this.f14066k; i15++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b7 < i4) {
                            for (int i16 = 0; i16 < this.f14066k - b7; i16++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.f14066k = b7;
                        return;
                    }
                    return;
                }
                int i17 = this.f14065j;
                if (b7 != i17) {
                    if (b7 > i17) {
                        for (int i18 = 0; i18 < b7 - this.f14065j; i18++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b7 < i17) {
                        for (int i19 = 0; i19 < this.f14065j - b7; i19++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f14065j = b7;
                    return;
                }
                return;
            }
            return;
        }
        switch (b2) {
            case -127:
                this.f14061f = bArr[i2 + 6] & 255;
                int i20 = 0;
                while (true) {
                    iArr2 = this.f14067l;
                    if (i20 < iArr2.length) {
                        int i21 = this.f14061f;
                        if (i21 != iArr2[i20][0]) {
                            i20++;
                        } else if (i21 != 0) {
                            this.f14060e = i20;
                        }
                    }
                }
                int i22 = this.f14061f;
                if (i22 == 32) {
                    x3();
                } else if (i22 == 0) {
                    int i23 = this.f14060e;
                    if (i23 < iArr2.length && i23 != 255) {
                        l0.b0.l0(iArr2[i23][1], 1);
                    }
                    this.f14060e = 255;
                } else if (i20 < iArr2.length) {
                    l0.b0.l0(iArr2[i20][1], 0);
                }
                break;
            case -126:
                byte b8 = bArr[i2 + 2];
                int i24 = i2 + 3;
                byte b9 = bArr[i24];
                int i25 = i2 + 4;
                byte b10 = bArr[i25];
                byte b11 = bArr[i2 + 5];
                byte b12 = bArr[i2 + 6];
                qt.y0(10, (b8 >> 6) & 1);
                qt.y0(12, (b8 >> 5) & 1);
                qt.y0(13, (b8 >> 3) & 1);
                qt.y0(14, (b8 >> 2) & 1);
                qt.y0(35, (b8 >> 1) & 1);
                qt.y0(76, (b8 >> 0) & 1);
                qt.y0(54, (b12 >> 5) & 1);
                qt.y0(17, (b12 >> 4) & 1);
                qt.y0(16, (b12 >> 3) & 1);
                qt.y0(11, (b12 >> 2) & 1);
                qt.y0(65, (b12 >> 1) & 1);
                qt.y0(33, (b12 >> 0) & 1);
                int i26 = (b11 >> 4) & 15;
                if (i26 == 1) {
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                } else if (i26 != 2) {
                    if (i26 == 3) {
                        i5 = 0;
                        i7 = 1;
                    } else if (i26 != 4) {
                        i5 = 0;
                        i7 = 0;
                    } else {
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                    }
                    i6 = i7;
                } else {
                    i5 = 0;
                    i7 = 0;
                    i6 = 1;
                }
                qt.y0(18, i5);
                qt.y0(22, i5);
                qt.y0(19, i7);
                qt.y0(20, i6);
                qt.y0(77, i26);
                qt.y0(21, b11 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b9 = bArr[i25];
                    b10 = bArr[i24];
                }
                byte b13 = b10;
                int i27 = b9 & 255;
                if (i27 == 1) {
                    qt.y0(27, -2);
                } else if (i27 == 255) {
                    qt.y0(27, -3);
                } else if (i27 == 0) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i27);
                }
                int i28 = b13 & 255;
                if (i28 == 1) {
                    qt.y0(28, -2);
                } else if (i28 == 255) {
                    qt.y0(28, -3);
                } else if (i28 == 0) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i28);
                }
                break;
            case -125:
                int i29 = nt.f8637c;
                if (i29 != 13) {
                    if (i29 != 6) {
                        int i30 = i2 + 2;
                        if (this.f14081z != ((bArr[i30] >> 7) & 1)) {
                            this.f14081z = (bArr[i30] >> 7) & 1;
                        }
                        if (this.f14081z == 0) {
                        }
                    }
                    int i31 = i2 + 2;
                    if (this.f14068m != (bArr[i31] & DhcpPacket.DHCP_DOMAIN_NAME)) {
                        int i32 = bArr[i31] & DhcpPacket.DHCP_DOMAIN_NAME;
                        this.f14068m = i32;
                        if (i32 == 0) {
                            if (!o1.u.Y()) {
                                o1.u.x();
                            }
                        } else if (i32 == 1) {
                            y3();
                        } else if (i32 == 2) {
                            l0.b0.l0(54, 0);
                            l0.b0.l0(54, 1);
                        }
                    } else if ((bArr[i31] & DhcpPacket.DHCP_DOMAIN_NAME) != 0 || u0.b.D == 11) {
                        if ((bArr[i31] & DhcpPacket.DHCP_DOMAIN_NAME) == 1) {
                            i8 = 13;
                            if (u0.b.D != 13) {
                                y3();
                            }
                        } else {
                            i8 = 13;
                        }
                        if ((bArr[i31] & DhcpPacket.DHCP_DOMAIN_NAME) == 2) {
                            int i33 = u0.b.D;
                            if (i33 == i8 || i33 == 11) {
                                l0.b0.l0(54, 0);
                                l0.b0.l0(54, 1);
                            }
                        }
                    } else if (!o1.u.Y()) {
                        o1.u.x();
                    }
                    break;
                }
                break;
            case -124:
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                byte b16 = bArr[i2 + 4];
                byte b17 = bArr[i2 + 5];
                byte b18 = bArr[i2 + 6];
                byte b19 = bArr[i2 + 7];
                int i34 = b14 & 255;
                B3(i34);
                o1.x.C(nt.f8643f, 102, new int[]{i34, ((b16 & 255) << 8) | (b15 & 255)}, null, null);
                qt.y0(103, b17 & 255);
                qt.y0(104, b18 & 255);
                qt.y0(105, b19 & 255);
                break;
            case -123:
                byte b20 = bArr[i2 + 2];
                B3(b20 & 255);
                for (int i35 = 0; i35 < 6; i35++) {
                    int i36 = i35 * 2;
                    int iC = p0.c(bArr[i2 + 4 + i36], bArr[i2 + 3 + i36]);
                    this.f14057b[i35] = iC;
                    o1.x.C(nt.f8643f, i35 + 107, new int[]{b20, i35, iC}, null, null);
                }
                break;
            case -122:
                byte b21 = bArr[i2 + 2];
                byte b22 = bArr[i2 + 3];
                byte b23 = bArr[i2 + 4];
                byte b24 = bArr[i2 + 5];
                byte b25 = bArr[i2 + 6];
                byte b26 = bArr[i2 + 7];
                byte b27 = bArr[i2 + 8];
                byte b28 = bArr[i2 + 9];
                qt.y0(117, b22 & 255);
                qt.y0(118, b23 & 255);
                qt.y0(119, (((b21 >> 4) & 255) << 8) | qt.c(b24 & 255));
                qt.y0(120, (qt.c(b25 & 255) << 8) | qt.c(b26 & 255));
                qt.y0(122, b27 & 255);
                qt.y0(121, b28 & 255);
                break;
            case -121:
                if (nt.a()) {
                    int i37 = i2 + 2;
                    byte b29 = bArr[i37];
                    byte b30 = bArr[i37];
                    byte b31 = bArr[i37];
                    D = o0.a(b29 & 255, 0, 62);
                    G = o0.a(b30 & 255, 0, 31);
                    F = o0.a(b31 & 255, 0, 31);
                }
                qt.y0(127, bArr[i2 + 2] & 255);
                qt.y0(128, bArr[i2 + 3] & 255);
                qt.y0(129, bArr[i2 + 4] & 255);
                qt.y0(130, bArr[i2 + 5] & 255);
                qt.y0(131, bArr[i2 + 6] & 255);
                qt.y0(132, bArr[i2 + 7] & 255);
                break;
            case -120:
                int i38 = bArr[i2 + 3] & 255;
                int i39 = bArr[i2 + 4] & 255;
                if (i38 == 1) {
                    qt.y0(40, -2);
                } else if (i38 == 255) {
                    qt.y0(40, -3);
                } else if (i38 == 0) {
                    qt.y0(40, -1);
                } else {
                    qt.y0(40, i38);
                }
                if (i39 == 1) {
                    qt.y0(41, -2);
                } else if (i39 == 255) {
                    qt.y0(41, -3);
                } else if (i39 == 0) {
                    qt.y0(41, -1);
                } else {
                    qt.y0(41, i39);
                }
                int i40 = i2 + 5;
                qt.y0(44, bArr[i40] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i41 = (bArr[i40] >> 4) & 15;
                if (i41 == 1) {
                    i9 = 0;
                    i10 = 1;
                } else if (i41 != 2) {
                    i10 = i41 != 3 ? 0 : 1;
                    i9 = i10;
                } else {
                    i10 = 0;
                    i9 = 1;
                }
                qt.y0(23, i10);
                qt.y0(24, i9);
                int i42 = i2 + 6;
                if ((bArr[i42] & 255) == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.A3(((((bArr[i42] & 255) - 80) / 2) * 10) + 1000);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f14058c.j();
        u0.c.f17386m.d(this.f14077v);
        o1.u.f16984b = this.f14069n;
        l0.b0.o0(this.f14080y);
        y0.g.f18094d.d(this.f14070o);
        u0.c.f17374a.d(this.f14071p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 146) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 1)) {
                this.f14074s = 6;
                int i3 = nt.f8637c;
                if (i3 == 6 || i3 == 7 || i3 == 8 || i3 == 9 || i3 == 10 || i3 == 4 || i3 == 3) {
                    z.k.s(227, 2, 225, iArr[0], 0);
                    return;
                } else {
                    z.k.s(227, 2, 224, iArr[0], 0);
                    return;
                }
            }
            return;
        }
        if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, i.a.Theme_actionModeShareDrawable, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (qt.l0(iArr, 1)) {
                z.k.s(227, 2, i.a.Theme_actionModeWebSearchDrawable, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (qt.l0(iArr, 1)) {
                this.f14072q = 0;
                z.k.s(227, 2, 240, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 36) {
            z.k.s(227, 4, 95, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 != 1029) {
            return;
        }
        int iW = (iArr[1] * 1024) / a.f.w();
        int i4 = (iArr[2] * 1000) / a.f.i();
        a.f.p().t(LogType.CANBUS, "touch_state = " + iArr[0] + "__touch_x = " + iW + "__touch_y ==" + i4 + "__ObjApp.getHeight()" + a.f.i());
        if (T2(iArr, 2) && iArr[0] == 0) {
            z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            E = J[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<i> fVar = L;
        fVar.f(3, new i(3, 100));
        fVar.f(2, new i(2, 100));
        fVar.f(1, new i(1, 100));
    }

    public final void w3() {
        Z2(y0.f.f18037c);
        C3();
        A3();
    }

    public final void x3() {
        this.f14074s = 6;
        if (qt.i0().equals("com.syu.carinfo.wc.crown.wc_420_crown_AirControlAct")) {
            return;
        }
        qt.z(this.f14075t);
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.crown.wc_420_crown_AirControlAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void y3() {
        if (qt.i0().equals("com.syu.carinfo.wc.crown.Wc_420_crown_CarCD")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.crown.Wc_420_crown_CarCD");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void z3() {
        this.f14072q = 6;
        if (qt.i0().equals("com.syu.carinfo.wc.crown.wc_420_crown_AmpSetAct")) {
            return;
        }
        qt.z(this.f14073r);
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.wc.crown.wc_420_crown_AmpSetAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }
}
