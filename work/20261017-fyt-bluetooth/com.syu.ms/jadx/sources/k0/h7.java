package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class h7 extends lt {
    public static final int[] A = {0, 3, 6, 8, 10, 12, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45};
    public static final int[] B = {0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12};
    public static final int[] C = {0, 2, 3, 5, 6, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 20, 22};
    public static final o1.f<d> D = new o1.f<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f5795o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f5796p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f5797q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f5798r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f5799s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f5800t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f5801u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f5802v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f5803w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f5804x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f5805y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f5806z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5808c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5809d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{32, 18}, new int[]{33, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5810e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5811f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5812g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5813h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f5814i = {34, 204};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5815j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5816k = 100;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5817l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5818m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5819n;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h7 h7Var = h7.this;
            h7Var.f5812g = 0;
            l0.b0.b(h7Var.f5813h);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h7 h7Var = h7.this;
            int i2 = h7Var.f5812g;
            if (i2 >= 0) {
                h7Var.f5812g = i2 + 1;
            }
            if (u0.b.f17306a0 != 1) {
                z.k.s(227, 132, 2, 9, 0);
                return;
            }
            z.k.s(227, 132, 2, 9, 1);
            int i3 = h7.this.f5812g;
            if (i3 >= 0) {
                if (i3 % 5 == 1) {
                    z.k.s(227, 132, 2, 4, 7);
                    z.k.s(227, 132, 2, 1, 11);
                }
                if (h7.this.f5812g % 5 == 2) {
                    z.k.s(227, 132, 2, 5, 7);
                    z.k.s(227, 132, 2, 2, 11);
                }
                if (h7.this.f5812g % 5 == 3) {
                    z.k.s(227, 132, 2, 6, 7);
                    z.k.s(227, 132, 2, 8, 20);
                }
                if (h7.this.f5812g % 5 == 4) {
                    z.k.s(227, 132, 2, 7, 5);
                }
                h7 h7Var2 = h7.this;
                if (h7Var2.f5812g == 20) {
                    h7Var2.f5812g = -1;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                h7.f3(h7.this);
                if (h7.this.f5819n == 10) {
                    h7.this.f5819n = 0;
                    h7.this.K3();
                }
                if (h7.this.f5816k > 100) {
                    h7.B3(h7.this);
                    if (h7.this.f5818m == h7.this.f5816k / 100) {
                        h7.this.f5818m = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = h7.f5796p = h7.A[0];
                } else {
                    int unused2 = h7.f5796p = h7.A[o1.o0.a(y0.f.f18037c, 0, 36)];
                }
                if (h7.this.f7886a.f8307b == 1 && h7.f5795o != h7.f5796p) {
                    h7.this.Q3();
                }
                h7 h7Var = h7.this;
                if (h7Var.f7886a.f8309d == 1) {
                    h7Var.P2(null);
                    if (h7.f5797q != h7.f5800t) {
                        int unused3 = h7.f5797q = h7.f5800t;
                        h7.this.M3();
                    }
                    if (h7.f5798r != h7.f5801u) {
                        int unused4 = h7.f5798r = h7.f5801u;
                        h7.this.O3();
                    }
                    if (h7.f5799s != h7.f5802v) {
                        int unused5 = h7.f5799s = h7.f5802v;
                        h7.this.P3();
                    }
                }
                h7 h7Var2 = h7.this;
                if (h7Var2.f7886a.f8308c == 1) {
                    h7Var2.R2(null);
                    if (h7.f5803w != h7.f5805y) {
                        int unused6 = h7.f5803w = h7.f5805y;
                        h7.this.N3();
                    }
                    if (h7.f5804x != h7.f5806z) {
                        int unused7 = h7.f5804x = h7.f5806z;
                        h7.this.L3();
                    }
                }
            }
        }
    }

    public static class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5823a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f5824b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f5825c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f5826d;

        public synchronized void a(int i2) {
            this.f5824b = i2;
            if (!this.f5825c) {
                this.f5825c = true;
                o1.k.a().postDelayed(this, this.f5826d);
            }
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0034  */
        @Override // java.lang.Runnable
        public synchronized void run() {
            int i2;
            z.k.s(227, 144, 2, this.f5823a, this.f5824b);
            int i3 = this.f5823a;
            if (i3 == 3 || i3 == 4 || i3 == 5) {
                int i4 = y0.f.f18032a0;
                if (i4 == 2) {
                    i2 = 3;
                } else if (i4 == 4) {
                    i2 = 0;
                } else if (i4 == 5) {
                    i2 = 2;
                } else if (i4 == 6) {
                    i2 = 4;
                } else if (i4 != 7) {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                z.k.s(227, 144, 2, 7, i2);
            }
            this.f5825c = false;
        }
    }

    public static /* synthetic */ int B3(h7 h7Var) {
        int i2 = h7Var.f5818m;
        h7Var.f5818m = i2 + 1;
        return i2;
    }

    public static void J3(int i2, int i3) {
        d dVarC = D.c(i2);
        if (dVarC != null) {
            dVarC.a(i3);
        }
    }

    public static /* synthetic */ int f3(h7 h7Var) {
        int i2 = h7Var.f5819n;
        h7Var.f5819n = i2 + 1;
        return i2;
    }

    public final void K3() {
        Q3();
        N3();
        L3();
        M3();
        O3();
        P3();
    }

    public final synchronized void L3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        J3(1, f5806z);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final synchronized void M3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        J3(3, f5800t);
    }

    public final synchronized void N3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        J3(2, f5805y);
    }

    public final synchronized void O3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        J3(5, f5801u);
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = B;
            int[] iArr3 = y0.f.f18038c0;
            f5800t = iArr2[o1.o0.a(iArr3[0] >> 1, 0, 10)];
            f5801u = iArr2[o1.o0.a(iArr3[1] >> 1, 0, 10)];
            f5802v = iArr2[o1.o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    public final synchronized void P3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        J3(4, f5802v);
    }

    public final synchronized void Q3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f5795o;
        int i3 = f5796p;
        if (i2 < i3) {
            f5795o = i2 + 1;
            this.f5819n = 0;
        } else if (i2 > i3) {
            f5795o = i2 - 1;
            this.f5819n = 0;
        } else {
            f5795o = i3;
        }
        J3(0, f5795o);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = C;
            f5805y = iArr2[o1.o0.a(y0.f.f18061l, 0, 16)];
            f5806z = iArr2[o1.o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        int i2 = (nt.f8633a >> 16) & 65535;
        mt mtVar = this.f7886a;
        mtVar.f8320o = 1;
        if (i2 == 2) {
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            if (nt.a()) {
                u0.c.f17386m.a(this.f5811f, 1);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            this.f5810e = 1;
            mt mtVar2 = this.f7886a;
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            return;
        }
        if (i2 != 4) {
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            return;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        this.f5810e = 2;
        mt mtVar3 = this.f7886a;
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 1;
        mtVar3.f8312g = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            u0.d.D2(a3(bArr[i2 + 2] & 255));
            u0.d.E2(a3(bArr[i2 + 3] & 255));
            u0.d.F2(a3(bArr[i2 + 4] & 255));
            u0.d.G2(a3(bArr[i2 + 5] & 255));
            u0.d.R2(a3(bArr[i2 + 6] & 255));
            u0.d.S2(a3(bArr[i2 + 7] & 255));
            u0.d.T2(a3(bArr[i2 + 8] & 255));
            u0.d.U2(a3(bArr[i2 + 9] & 255));
            return;
        }
        int i5 = 0;
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f5808c = b3 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f5809d;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f5808c;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f5807b = i6;
                        break;
                    }
                    i6++;
                }
                int i8 = b4 & 255;
                if (i8 == 1) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i8 == 0) {
                        int i9 = this.f5807b;
                        if (i9 < iArr.length) {
                            i4 = 255;
                            if (i9 != 255) {
                                l0.b0.l0(iArr[i9][1], 1);
                            }
                        } else {
                            i4 = 255;
                        }
                        this.f5807b = i4;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            qt.y0(0, (b5 >> 5) & 1);
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
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 1350);
            return;
        }
        if (b2 == 65) {
            qt.y0(1032, ((bArr[i2 + 2] << 8) & 65280) + (bArr[i2 + 3] & 255));
            qt.y0(1031, ((bArr[i2 + 4] << 8) & 65280) + (bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 85) {
            if (b2 != 87) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i10 = i2 + 2;
        byte b6 = bArr[i10];
        int i11 = i2 + 3;
        byte b7 = bArr[i11];
        byte b8 = bArr[i2 + 4];
        byte b9 = bArr[i2 + 5];
        byte b10 = bArr[i2 + 6];
        byte b11 = bArr[i2 + 7];
        byte b12 = bArr[i2 + 9];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b6 = bArr[i11];
            b7 = bArr[i10];
        }
        int i12 = b6 & 255;
        if (i12 == 16) {
            qt.y0(27, -2);
        } else if (i12 == 80) {
            qt.y0(27, -3);
        } else if (i12 < 10) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, ((i12 - 36) * 5) + 180);
        }
        int i13 = b7 & 255;
        if (i13 == 16) {
            qt.y0(28, -2);
        } else if (i13 == 80) {
            qt.y0(28, -3);
        } else if (i13 < 10) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, ((i13 - 36) * 5) + 180);
        }
        qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
        qt.y0(77, (b8 >> 4) & 15);
        qt.y0(29, b9 & 3);
        qt.y0(30, (b9 >> 4) & 3);
        qt.y0(13, b10 & 1);
        qt.y0(11, (b10 >> 1) & 1);
        int[] iArr2 = new int[1];
        iArr2[0] = ((b10 >> 2) & 1) == 0 ? 1 : 0;
        qt.y0(14, iArr2);
        qt.y0(16, (b10 >> 6) & 1);
        qt.y0(12, b11 & 3);
        int i14 = b12 * 10;
        if (i14 < 400) {
            i5 = 1000 - (400 - i14);
        } else if (i14 >= 400 && i14 <= 1250) {
            i5 = (i14 + 1000) - 400;
        }
        if (i5 > 600) {
            u0.d.A3(i5);
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.f5817l);
        l0.b0.p0(this.f5813h);
        u0.c.f17386m.d(this.f5811f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 1) {
            return;
        }
        z.k.s(227, 51, 5, iArr[0], this.f5814i[this.f5815j % 2], 37, this.f5810e, 170);
        z.k.s(227, 51, 5, iArr[0], this.f5814i[this.f5815j % 2], 37, this.f5810e, 170);
        z.k.s(227, 51, 5, iArr[0], this.f5814i[this.f5815j % 2], 37, this.f5810e, 170);
        int i3 = this.f5815j + 1;
        this.f5815j = i3;
        this.f5815j = i3 % 2;
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f5796p = A[o1.o0.a(i2, 0, 36)];
        }
    }

    public int a3(int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return 0;
            }
            if (i2 == 2) {
                return 3;
            }
            if (i2 == 3) {
                return 6;
            }
            if (i2 == 4) {
                return 9;
            }
        }
        return 10;
    }
}
