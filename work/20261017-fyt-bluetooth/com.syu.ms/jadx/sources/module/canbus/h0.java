package module.canbus;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import n0.j4;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class h0 extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f14181l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f14182m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f14183n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f14184o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f14185p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14186q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14187r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14188s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f14189t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f14190u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f14191v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f14192w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14197c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14198d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14199e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f14200f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f14201g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f14202h = new d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14203i = 100;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f14204j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14205k = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f14193x = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 30, 30, 30, 30, 30, 30};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f14194y = {i.a.Theme_preferenceHeaderPanelStyle, 248, 249, 250, 251, 252, i.a.Theme_dialogTitleDecorLayout, 254, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f14195z = {i.a.Theme_preferenceHeaderPanelStyle, 248, 249, 250, 251, 252, i.a.Theme_dialogTitleDecorLayout, 254, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    public static final o1.f<f> A = new o1.f<>();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 129, 1, 1);
            } else {
                z.k.s(227, 129, 1, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.this.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.this.c3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 38, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.f8637c == 1 || nt.a()) {
                if (h0.this.f14203i > 100) {
                    h0.i3(h0.this);
                    if (h0.this.f14205k == h0.this.f14203i / 100) {
                        h0.this.f14205k = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = h0.f14182m = h0.f14193x[0];
                } else {
                    int unused2 = h0.f14182m = h0.f14193x[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (h0.this.f7886a.f8307b == 1 && h0.f14181l != h0.f14182m) {
                    h0.this.J3();
                }
                if (h0.this.f7886a.f8309d == 1) {
                    if (h0.f14183n != h0.f14186q) {
                        h0.this.F3();
                    }
                    if (h0.f14184o != h0.f14187r) {
                        h0.this.H3();
                    }
                    if (h0.f14185p != h0.f14188s) {
                        h0.this.I3();
                    }
                }
                if (h0.this.f7886a.f8308c == 1) {
                    if (h0.f14189t != h0.f14191v) {
                        h0.this.G3();
                    }
                    if (h0.f14190u != h0.f14192w) {
                        h0.this.E3();
                    }
                }
            }
        }
    }

    public static class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14211a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14212b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14213c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14214d;

        public f(int i2, int i3) {
            this.f14211a = i2;
            this.f14214d = i3;
        }

        public synchronized void a(int i2) {
            this.f14212b = i2;
            if (!this.f14213c) {
                this.f14213c = true;
                o1.k.a().postDelayed(this, this.f14214d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 160, 2, this.f14211a, this.f14212b);
            this.f14213c = false;
        }
    }

    public static void C3(int i2, int i3) {
        f fVarC = A.c(i2);
        if (fVarC != null) {
            fVarC.a(i3);
        }
    }

    public static /* synthetic */ int i3(h0 h0Var) {
        int i2 = h0Var.f14205k;
        h0Var.f14205k = i2 + 1;
        return i2;
    }

    public final void D3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final synchronized void E3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        C3(1, f14192w);
    }

    public final synchronized void F3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        C3(3, f14186q);
    }

    public final synchronized void G3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        C3(2, f14191v);
    }

    public final synchronized void H3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        C3(5, f14187r);
    }

    public final synchronized void I3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        C3(4, f14188s);
    }

    public final synchronized void J3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f14181l;
        int i3 = f14182m;
        if (i2 < i3) {
            i2++;
        } else if (i2 > i3) {
            i2--;
        }
        C3(0, i2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() || (this.f7886a.f8309d == 1 && nt.f8637c == 1)) {
            int[] iArr2 = f14194y;
            int[] iArr3 = y0.f.f18038c0;
            f14186q = iArr2[o0.a((byte) (((iArr3[0] * 18) / 20) & 255), 0, 18)];
            f14187r = iArr2[o0.a((byte) (((iArr3[1] * 18) / 20) & 255), 0, 18)];
            f14188s = iArr2[o0.a((byte) (((iArr3[2] * 18) / 20) & 255), 0, 18)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() || (this.f7886a.f8308c == 1 && nt.f8637c == 1)) {
            int[] iArr2 = f14195z;
            f14191v = iArr2[o0.a((byte) (((y0.f.f18061l * 18) / 16) & 255), 0, 18)];
            f14192w = iArr2[o0.a((byte) (((y0.f.f18057j * 18) / 16) & 255), 0, 18)];
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        if (nt.f8637c == 3) {
            mtVar.f8306a = null;
        }
        z.k.s(227, 144, 2, 65, 1);
        z.k.s(227, 144, 2, 65, 2);
        z.k.s(227, 144, 2, 65, 3);
        if (nt.f8637c == 1) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8309d = 1;
            mtVar2.f8308c = 1;
            mtVar2.f8307b = 1;
            init();
            l0.b0.a(this.f14204j);
            D3();
            qt.z(this.f14200f);
        }
        y0.g.f18094d.a(this.f14201g, 1);
        y0.g.f18095e.a(this.f14201g, 1);
        w0.e.f17815a.a(this.f14200f, 1);
        w0.e.f17819e.a(this.f14200f, 1);
        qt.y(this.f14202h);
        u0.c.f17386m.a(this.f14199e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 16) {
            byte b3 = bArr[i2 + 2];
        }
        if (b2 == 22) {
            qt.y0(1031, (((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255)) / 16);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            byte b4 = bArr[i2 + 2];
            if (b4 == 1) {
                byte b5 = bArr[i2 + 3];
                qt.y0(101, (b5 >> 7) & 1);
                qt.y0(102, (b5 >> 6) & 1);
                qt.y0(103, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 3) & 1);
                qt.y0(3, (b5 >> 2) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 1) & 1);
                    qt.y0(2, (b5 >> 0) & 1);
                    return;
                } else {
                    qt.y0(1, (b5 >> 0) & 1);
                    qt.y0(2, (b5 >> 1) & 1);
                    return;
                }
            }
            if (b4 != 2) {
                if (b4 != 3) {
                    return;
                }
                byte b6 = bArr[i2 + 3];
                qt.y0(99, (b6 >> 7) & 1);
                qt.y0(100, (b6 >> 6) & 1);
                return;
            }
            int i8 = i2 + 3;
            int i9 = i2 + 4;
            qt.y0(110, ((bArr[i8] << 8) & 65280) | ((bArr[i9] << 0) & 255));
            qt.y0(1032, ((bArr[i8] << 8) & 65280) | ((bArr[i9] << 0) & 255));
            int i10 = i2 + 5;
            int i11 = i2 + 6;
            qt.y0(1031, ((bArr[i10] << 8) & 65280) | ((bArr[i11] << 0) & 255));
            qt.y0(109, ((bArr[i10] << 8) & 65280) | ((bArr[i11] << 0) & 255));
            qt.y0(105, ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 8] << 0) & 255));
            int i12 = i2 + 9;
            int i13 = i2 + 10;
            qt.y0(113, ((bArr[i12] << 8) & 65280) | ((bArr[i13] << 0) & 255));
            int i14 = ((bArr[i12] << 8) & 65280) | ((bArr[i13] << 0) & 255);
            u0.d.A3((i14 & 128) != 0 ? 1000 - ((65535 - i14) + 1) : i14 + 1000);
            qt.y0(106, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 0) & 255));
            qt.y0(104, bArr[i2 + 14] & 255);
            return;
        }
        switch (b2) {
            case 32:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                this.f14197c = b7 & 255;
                int i15 = 0;
                while (true) {
                    iArr = this.f14198d;
                    if (i15 < iArr.length) {
                        int i16 = this.f14197c;
                        if (i16 != iArr[i15][0]) {
                            i15++;
                        } else if (i16 != 0) {
                            this.f14196b = i15;
                        }
                    }
                }
                if ((b8 & 255) == 0) {
                    int i17 = this.f14196b;
                    if (i17 < iArr.length) {
                        i4 = 255;
                        if (i17 != 255) {
                            l0.b0.l0(iArr[i17][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f14196b = i4;
                } else if (i15 < iArr.length) {
                    l0.b0.l0(iArr[i15][1], 0);
                }
                break;
            case 33:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 5];
                byte b13 = bArr[i2 + 6];
                byte b14 = bArr[i2 + 7];
                byte b15 = bArr[i2 + 8];
                int i18 = (b14 >> 7) & 1;
                int i19 = -1;
                if (i18 == 0) {
                    qt.y0(10, (b9 >> 7) & 1);
                    qt.y0(11, (b9 >> 6) & 1);
                    qt.y0(12, (b9 >> 5) & 1);
                    qt.y0(13, (b9 >> 4) & 1);
                    qt.y0(26, (b9 >> 3) & 1);
                    qt.y0(14, (b9 >> 2) & 1);
                    qt.y0(15, (b9 >> 1) & 1);
                    qt.y0(67, (b9 >> 0) & 1);
                    qt.y0(18, (b10 >> 7) & 1);
                    qt.y0(19, (b10 >> 6) & 1);
                    qt.y0(20, (b10 >> 5) & 1);
                    qt.y0(21, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i20 = b11 & 255;
                    if (i20 == 0) {
                        i6 = -2;
                    } else if (i20 != 31) {
                        i6 = (i20 <= 0 || i20 >= 18) ? -1 : ((i20 - 1) * 5) + 180;
                    } else {
                        i6 = -3;
                    }
                    qt.y0(27, i6);
                    int i21 = b12 & 255;
                    if (i21 == 0) {
                        i7 = -2;
                    } else if (i21 != 31) {
                        i7 = (i21 <= 0 || i21 >= 18) ? -1 : ((i21 - 1) * 5) + 180;
                    } else {
                        i7 = -3;
                    }
                    qt.y0(28, i7);
                    qt.y0(54, (b13 >> 7) & 1);
                    qt.y0(16, (b13 >> 6) & 1);
                    qt.y0(29, (b13 >> 4) & 3);
                    qt.y0(53, (b13 >> 2) & 1);
                    qt.y0(30, (b13 >> 0) & 3);
                    qt.y0(67, (b14 >> 6) & 1);
                    qt.y0(64, (b14 >> 0) & 15);
                    if (((b14 >> 5) & 1) == 1) {
                        int i22 = b15 & 255;
                        if (i22 == 0) {
                            i19 = -2;
                        } else if (i22 == 31) {
                            i19 = -3;
                        } else if (i22 > 0 && i22 < 18) {
                            i19 = ((i22 - 1) * 5) + 180;
                        }
                        qt.y0(40, i19);
                    }
                } else if (i18 == 1) {
                    qt.y0(10, (b9 >> 7) & 1);
                    qt.y0(11, (b9 >> 6) & 1);
                    qt.y0(12, (b9 >> 5) & 1);
                    qt.y0(15, (b9 >> 1) & 1);
                    qt.y0(67, (b9 >> 0) & 1);
                    qt.y0(18, (b10 >> 7) & 1);
                    qt.y0(19, (b10 >> 6) & 1);
                    qt.y0(20, (b10 >> 5) & 1);
                    qt.y0(21, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
                    int i23 = b11 & 255;
                    if (i23 == 0) {
                        i5 = -2;
                    } else if (i23 != 31) {
                        i5 = (i23 <= 0 || i23 >= 31) ? -1 : ((i23 - 1) * 5) + 180;
                    } else {
                        i5 = -3;
                    }
                    qt.y0(27, i5);
                    int i24 = 255 & b12;
                    if (i24 == 0) {
                        i19 = -2;
                    } else if (i24 == 31) {
                        i19 = -3;
                    } else if (i24 > 0 && i24 < 31) {
                        i19 = ((i24 - 1) * 5) + 180;
                    }
                    qt.y0(28, i19);
                    qt.y0(54, (b13 >> 7) & 1);
                    qt.y0(16, (b13 >> 6) & 1);
                    qt.y0(29, (b13 >> 4) & 3);
                    qt.y0(53, (b13 >> 2) & 1);
                    qt.y0(30, (b13 >> 0) & 3);
                    qt.y0(67, (b14 >> 6) & 1);
                    qt.y0(64, (b14 >> 0) & 15);
                }
                break;
            case 34:
                u0.d.R2(d3(bArr[i2 + 2] & 255));
                u0.d.S2(d3(bArr[i2 + 3] & 255));
                u0.d.T2(d3(bArr[i2 + 4] & 255));
                u0.d.U2(d3(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(d3(bArr[i2 + 2] & 255));
                u0.d.E2(d3(bArr[i2 + 3] & 255));
                u0.d.F2(d3(bArr[i2 + 4] & 255));
                u0.d.G2(d3(bArr[i2 + 5] & 255));
                break;
            case 36:
                byte b16 = bArr[i2 + 3];
                qt.y0(0, (b16 >> 5) & 1);
                qt.y0(5, (b16 >> 4) & 1);
                qt.y0(4, (b16 >> 3) & 1);
                qt.y0(3, (b16 >> 2) & 1);
                if (!SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b16 >> 0) & 1);
                    qt.y0(2, (b16 >> 1) & 1);
                } else {
                    qt.y0(1, (b16 >> 1) & 1);
                    qt.y0(2, (b16 >> 0) & 1);
                }
                break;
            case 37:
                byte b17 = bArr[i2 + 2];
                int i25 = (b17 >> 1) & 1;
                qt.y0(107, i25);
                qt.y0(108, (b17 >> 0) & 1);
                if (nt.a()) {
                    u0.d.C2(i25);
                }
                break;
            case 38:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 11000);
                break;
            case 39:
                byte b18 = bArr[i2 + 2];
                byte b19 = bArr[i2 + 3];
                byte b20 = bArr[i2 + 4];
                byte b21 = bArr[i2 + 5];
                byte b22 = bArr[i2 + 6];
                byte b23 = bArr[i2 + 7];
                byte b24 = bArr[i2 + 8];
                f14181l = b19 & 255;
                f14189t = b21 & 255;
                f14190u = b20 & 255;
                f14183n = b22 & 255;
                f14184o = b23 & 255;
                f14185p = b24 & 255;
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.f14204j);
        qt.q0(this.f14200f);
        y0.g.f18094d.d(this.f14201g);
        y0.g.f18095e.d(this.f14201g);
        w0.e.f17815a.d(this.f14200f);
        w0.e.f17819e.d(this.f14200f);
        qt.p0(this.f14202h);
        u0.c.f17386m.d(this.f14199e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 114) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 2, 2, 0);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 198, 2, 2, 1);
            return;
        }
        if (i2 == 2) {
            if (T2(iArr, 1)) {
                z.k.s(227, 198, 2, 0, iArr[0]);
            }
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 144, 2, 65, 1);
            z.k.s(227, 144, 2, 65, 2);
            z.k.s(227, 144, 2, 65, 3);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() || (this.f7886a.f8307b == 1 && nt.f8637c == 1)) {
            f14182m = f14193x[o0.a(i2, 0, 36)];
        }
    }

    public void a3() {
        b3();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[6];
            iArr[0] = 194;
            iArr[1] = 4;
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[2] = 1;
            } else if (i6 == 65537) {
                iArr[2] = 2;
            } else if (i6 == 65538) {
                iArr[2] = 3;
            } else if (i6 == 0) {
                iArr[2] = 17;
            } else if (i6 == 1) {
                iArr[2] = 18;
            }
            iArr[3] = i4 & 255;
            iArr[4] = (i4 >> 8) & 255;
            iArr[5] = (i5 % 6) + 1;
            int[] iArr2 = new int[7];
            iArr2[0] = 227;
            while (i3 < 6) {
                int i7 = i3 + 1;
                iArr2[i7] = iArr[i3];
                i3 = i7;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 4) {
            int[] iArr3 = new int[8];
            iArr3[0] = 195;
            iArr3[1] = 6;
            if (j4.f16464b == 8) {
                iArr3[3] = o0.e.C;
                iArr3[2] = o0.e.B;
            } else {
                iArr3[2] = o0.e.C;
                iArr3[3] = o0.e.B;
            }
            iArr3[4] = 0;
            iArr3[5] = 0;
            int i8 = o0.e.f16794r;
            iArr3[6] = i8 / 60;
            iArr3[7] = i8 % 60;
            int[] iArr4 = new int[9];
            iArr4[0] = 227;
            while (i3 < 8) {
                int i9 = i3 + 1;
                iArr4[i9] = iArr3[i3];
                i3 = i9;
            }
            z.k.s(iArr4);
            return;
        }
        if (i2 != 6) {
            if (i2 != 8 && i2 != 9) {
                int[] iArr5 = {195, 6, 0, 0, 0, 0, 0, 0};
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i3 < 8) {
                    int i10 = i3 + 1;
                    iArr6[i10] = iArr5[i3];
                    i3 = i10;
                }
                z.k.s(iArr6);
                return;
            }
            int i11 = u0.b.s3;
            int i12 = u0.b.r3;
            int i13 = u0.b.t3;
            int[] iArr7 = {195, 6, i11 & 255, (i11 >> 8) & 255, i12 & 255, (i12 >> 8) & 255, i13 / 60, i13 % 60};
            int[] iArr8 = new int[9];
            iArr8[0] = 227;
            while (i3 < 8) {
                int i14 = i3 + 1;
                iArr8[i14] = iArr7[i3];
                i3 = i14;
            }
            z.k.s(iArr8);
        }
    }

    public void b3() {
        int i2 = 9;
        int i3 = 48;
        switch (u0.b.D) {
            case 0:
                i2 = 0;
                break;
            case 1:
                i2 = 1;
                i3 = i2;
                break;
            case 2:
                i3 = 64;
                i2 = 5;
                break;
            case 3:
                i2 = 11;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 2;
                } else if (i4 != 2) {
                    i2 = i4 == 3 ? 8 : 0;
                }
                i3 = j4.f16464b != 8 ? 16 : 33;
                break;
            case 5:
                i2 = 7;
                break;
            case 6:
                i2 = 3;
                break;
            case 7:
                i2 = 6;
                i3 = 18;
                break;
            case 8:
            case 10:
                i2 = j4.f16464b == 32 ? 8 : 9;
                i3 = 17;
                break;
            case 9:
            default:
                i2 = 12;
                break;
            case 11:
            case 12:
            case 13:
            case 14:
                i2 = 0;
                i3 = i2;
                break;
        }
        z.k.s(227, 192, 2, i2, i3);
    }

    public void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = iArr[2] | 128;
        }
        if (y0.f.C0 > 30) {
            iArr[2] = 30;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public int d3(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return i2 - 1;
    }

    public final void init() {
        o1.f<f> fVar = A;
        fVar.f(2, new f(2, 100));
        fVar.f(1, new f(1, 100));
        fVar.f(3, new f(3, 100));
        fVar.f(4, new f(4, 100));
        fVar.f(5, new f(5, 100));
        fVar.f(0, new f(0, 100));
    }
}
