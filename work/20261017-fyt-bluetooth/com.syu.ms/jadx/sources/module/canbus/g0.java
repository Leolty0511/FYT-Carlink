package module.canbus;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemClock;
import android.os.SystemProperties;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import o1.p0;

/* JADX INFO: loaded from: classes2.dex */
public class g0 extends lt {
    public static int A;
    public static int B;
    public static final int[] C = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};
    public static final o1.f<h> D = new o1.f<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14132e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14135h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14138k;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f14153z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f14129b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f14130c = new int[15][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f14131d = new int[7];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f14133f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f14134g = {new int[]{1, 25}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 21}, new int[]{5, 21}, new int[]{6, 2}, new int[]{7, 54}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 12}, new int[]{11, 54}, new int[]{12, 1}, new int[]{13, 2}, new int[]{14, 29}, new int[]{15, 18}, new int[]{16, 4}, new int[]{17, 3}, new int[]{18, 64}, new int[]{19, 24}, new int[]{20, 1}, new int[]{21, 5}, new int[]{32, 5}, new int[]{33, 1}, new int[]{34, 6}, new int[]{35, 5}, new int[]{36, 29}, new int[]{37, 34}, new int[]{38, 35}, new int[]{39, 32}, new int[]{40, 33}, new int[]{41, 54}, new int[]{42, 58}, new int[]{43, 55}, new int[]{48, 62}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14136i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f14137j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 26}, new int[]{8, 13}, new int[]{9, 12}, new int[]{10, 6}, new int[]{11, 5}, new int[]{12, 29}, new int[]{13, 18}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14139l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f14140m = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 34}, new int[]{20, 35}, new int[]{21, 6}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 25}, new int[]{136, 2}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f14141n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14142o = 255;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f14143p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f14144q = 255;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f14145r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f14146s = new d();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f14147t = DhcpPacket.DHCP_DOMAIN_NAME;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f14148u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f14149v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f14150w = 100;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f14151x = new g();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f14152y = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 2) {
                int i2 = h0.c.E;
                if (i2 == 3 || i2 == 4 || i2 == 5) {
                    z.k.s(227, 143, 3, 2, 5, 0);
                } else {
                    z.k.s(227, 143, 3, 2, 6, 0);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = g0.this.f14142o;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 11) {
                    z.k.s(227, 143, 3, 2, 1, 0);
                } else if (i3 != 13) {
                    z.k.s(227, 143, 3, 2, 4, 0);
                } else {
                    z.k.s(227, 143, 3, 2, 3, 0);
                }
                g0.this.f14142o = u0.b.D;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = g0.this.f14144q;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 11 || i3 == 13) {
                    z.k.s(227, 202, 8, 1, 0, 0, 0, 0, 0, 0, 0);
                } else if (i2 == 13 || i2 == 11) {
                    z.k.s(227, 202, 8, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                g0.this.f14144q = u0.b.D;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0.this.u3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(g0.this.f14149v);
            g0.this.f14147t = DhcpPacket.DHCP_DOMAIN_NAME;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g0 g0Var = g0.this;
            byte b2 = (byte) (g0Var.f14147t - 1);
            g0Var.f14147t = b2;
            if (b2 <= 0) {
                l0.b0.p0(g0Var.f14149v);
                g0.this.f14147t = (byte) 16;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            int i2 = u0.b.f17306a0;
            if (i2 == 0) {
                z.k.s(227, 132, 2, 8, 1);
                return;
            }
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 132, 2, 8, 1);
            int i3 = nt.f8637c;
            if (i3 != 13) {
                switch (i3) {
                    case 0:
                    case 4:
                        g0.this.t3(3, 2, 17, 2);
                        break;
                    case 1:
                        g0.this.t3(3, 2, 18, 2);
                        break;
                    case 2:
                    case 5:
                        g0.this.t3(3, 2, 18, 2);
                        break;
                    case 3:
                        g0.this.t3(3, 2, 19, 2);
                        break;
                    case 6:
                        g0.this.t3(3, 4, 1, 1);
                        break;
                    case 7:
                        g0.this.t3(3, 4, 2, 2);
                        break;
                    case 8:
                        g0.this.t3(3, 4, 1, 1);
                        break;
                    default:
                        switch (i3) {
                            case 17:
                                g0.this.t3(3, 5, 1, 2);
                                break;
                            case 18:
                                g0.this.t3(3, 5, 2, 2);
                                break;
                            case 19:
                                z.k.s(227, 130, 2, 2, 2);
                                break;
                        }
                        break;
                }
            } else {
                z.k.s(227, 130, 2, 2, 1);
            }
            switch (nt.f8637c) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    int i4 = u0.b.D;
                    if (i4 == 11) {
                        z.k.s(227, 143, 3, 2, 1, 0);
                    } else if (i4 == 13) {
                        z.k.s(227, 143, 3, 2, 3, 0);
                    } else {
                        z.k.s(227, 143, 3, 2, 4, 0);
                    }
                    break;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                g0.f3(g0.this);
                if (g0.this.f14153z == 10) {
                    g0.this.f14153z = 0;
                    g0.this.q3();
                }
                if (g0.this.f14150w > 100) {
                    g0.k3(g0.this);
                    if (g0.this.f14152y == g0.this.f14150w / 100) {
                        g0.this.f14152y = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = g0.B = g0.C[0];
                } else {
                    int unused2 = g0.B = g0.C[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (g0.this.f7886a.f8307b == 1) {
                    int unused3 = g0.A;
                    int unused4 = g0.B;
                }
            }
        }
    }

    public static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14161a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14162b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14163c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14164d;

        public h(int i2, int i3) {
            this.f14161a = i2;
            this.f14164d = i3;
        }

        public synchronized void a(int i2) {
            this.f14162b = i2;
            if (!this.f14163c) {
                this.f14163c = true;
                o1.k.a().postDelayed(this, this.f14164d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f14161a, this.f14162b);
            this.f14163c = false;
        }
    }

    public static /* synthetic */ int f3(g0 g0Var) {
        int i2 = g0Var.f14153z;
        g0Var.f14153z = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int k3(g0 g0Var) {
        int i2 = g0Var.f14152y;
        g0Var.f14152y = i2 + 1;
        return i2;
    }

    public static void p3(int i2, int i3) {
        h hVarC = D.c(i2);
        if (hVarC != null) {
            hVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 9 || i2 == 10) {
            y0.f.C0 = 28;
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
        mtVar.f8314i = 1;
        mtVar.f8317l = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        u0.c.f17386m.a(this.f14148u, 1);
        switch (nt.f8637c) {
            case 2:
            case 3:
            case 5:
            case 7:
                mt mtVar2 = this.f7886a;
                mtVar2.f8307b = 1;
                mtVar2.f8308c = 1;
                mtVar2.f8309d = 0;
                if (nt.a()) {
                    init();
                    l0.b0.a(this.f14151x);
                    y0.g.f18094d.a(this.f14146s, 1);
                }
                break;
            case 6:
                this.f7886a.f8306a = null;
                break;
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                u0.c.f17374a.a(this.f14143p, 1);
                h0.d.f2462a.a(this.f14141n, 1);
                break;
            case 16:
                this.f7886a.f8317l = 1;
                u0.c.f17374a.a(this.f14143p, 1);
                h0.d.f2462a.a(this.f14141n, 1);
                break;
        }
        switch (nt.f8637c) {
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                break;
            default:
                u0.c.f17374a.a(this.f14145r, 1);
                break;
        }
        int i2 = nt.f8637c;
        if (i2 == 4 || i2 == 5) {
            this.f7886a.f8314i = 0;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f14136i = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f14137j;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f14136i;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f14135h = i4;
                    break;
                }
                i4++;
            }
            if (this.f14136i == 7) {
                if ((b4 & 255) == 1) {
                    int i6 = h0.c.E;
                    if (i6 != 3 && i6 != 4 && i6 != 5) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
                return;
            }
            int i7 = b4 & 255;
            if (i7 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f14135h;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f14135h = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 64) {
            int i9 = i2 + 2;
            qt.y0(170, (bArr[i9] >> 5) & 3);
            qt.y0(171, (bArr[i9] >> 4) & 1);
            qt.y0(172, (bArr[i9] >> 2) & 1);
            int i10 = i2 + 3;
            qt.y0(173, (bArr[i10] >> 6) & 3);
            qt.y0(174, (bArr[i10] >> 0) & 15);
            int i11 = i2 + 4;
            qt.y0(175, (bArr[i11] >> 7) & 1);
            qt.y0(176, (bArr[i11] >> 6) & 1);
            qt.y0(177, (bArr[i11] >> 5) & 1);
            qt.y0(178, (bArr[i11] >> 3) & 3);
            qt.y0(179, (bArr[i11] >> 1) & 3);
            qt.y0(180, (bArr[i11] >> 0) & 1);
            return;
        }
        if (b2 == 80) {
            int i12 = i2 + 2;
            qt.y0(153, (bArr[i12] >> 4) & 3);
            qt.y0(154, (bArr[i12] >> 2) & 3);
            qt.y0(155, (bArr[i12] >> 0) & 3);
            return;
        }
        if (b2 == 82) {
            qt.y0(157, (bArr[i2 + 2] >> 7) & 1);
            qt.y0(158, (bArr[i2 + 3] >> 7) & 1);
            qt.y0(159, (bArr[i2 + 4] >> 0) & 7);
            return;
        }
        if (b2 == 90) {
            qt.y0(160, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(161, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(162, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(163, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(164, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
            int i13 = i2 + 12;
            qt.y0(165, (bArr[i13] >> 6) & 3);
            qt.y0(166, (bArr[i13] >> 4) & 3);
            qt.y0(167, (bArr[i13] >> 3) & 1);
            qt.y0(168, (bArr[i13] >> 2) & 1);
            qt.y0(169, (bArr[i13] >> 1) & 1);
            return;
        }
        if (b2 == 101) {
            qt.y0(1032, p0.c(bArr[i2 + 2], bArr[i2 + 3]));
            return;
        }
        if (b2 == 110) {
            qt.y0(181, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(182, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(183, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(184, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
            int i14 = i2 + 10;
            qt.y0(185, (bArr[i14] >> 4) & 15);
            qt.y0(186, (bArr[i14] >> 0) & 15);
            int i15 = i2 + 11;
            qt.y0(187, (bArr[i15] >> 4) & 15);
            qt.y0(188, (bArr[i15] >> 0) & 15);
            return;
        }
        if (b2 == 16) {
            int i16 = i2 + 2;
            qt.y0(99, bArr[i16]);
            int[] iArr6 = this.f14131d;
            if (iArr6 == null || iArr6.length < 7) {
                return;
            }
            iArr6[0] = bArr[i16];
            for (int i17 = 1; i17 < 7; i17++) {
                int i18 = (i17 - 1) * 2;
                int iC = p0.c(bArr[i2 + 3 + i18], bArr[i2 + 4 + i18]);
                int[] iArr7 = this.f14131d;
                if (iArr7[i17] != iC) {
                    iArr7[i17] = iC;
                }
            }
            o1.x.B(nt.f8643f, 103, this.f14131d);
            return;
        }
        if (b2 == 17) {
            if (this.f14147t != 16) {
                return;
            }
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            if (App.c().getResources().getConfiguration().orientation == 1) {
                if (nt.a()) {
                    this.f14133f = b5 & 255;
                    int i19 = 0;
                    while (true) {
                        iArr2 = this.f14134g;
                        if (i19 >= iArr2.length) {
                            break;
                        }
                        int i20 = this.f14133f;
                        if (i20 == iArr2[i19][0]) {
                            if (i20 == 0) {
                                break;
                            }
                            this.f14132e = i19;
                            break;
                        }
                        i19++;
                    }
                    int i21 = this.f14133f;
                    if (i21 == 2) {
                        for (int i22 = 0; i22 < (b6 & 255); i22++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        return;
                    }
                    if (i21 == 3) {
                        for (int i23 = 0; i23 < (b6 & 255); i23++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        return;
                    }
                    int i24 = b6 & 255;
                    if (i24 == 1) {
                        if (i19 < iArr2.length) {
                            l0.b0.l0(iArr2[i19][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i24 == 0) {
                            int i25 = this.f14132e;
                            if (i25 < iArr2.length && i25 != 255) {
                                l0.b0.l0(iArr2[i25][1], 1);
                            }
                            this.f14132e = 255;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            int i26 = u0.b.D;
            if (i26 != 11 && i26 != 13) {
                if (b5 == 4 || b5 == 5) {
                    qt.y0(123, b6);
                    return;
                }
                if (b5 == 7) {
                    qt.y0(124, b6);
                    return;
                }
                if (!nt.a()) {
                    if (b5 > 3) {
                        s3(b5);
                        return;
                    }
                    return;
                }
                this.f14133f = b5 & 255;
                int i27 = 0;
                while (true) {
                    iArr4 = this.f14134g;
                    if (i27 >= iArr4.length) {
                        break;
                    }
                    int i28 = this.f14133f;
                    if (i28 == iArr4[i27][0]) {
                        if (i28 == 0) {
                            break;
                        }
                        this.f14132e = i27;
                        break;
                    }
                    i27++;
                }
                if (this.f14133f == 0 || b6 != 1 || i27 >= iArr4.length) {
                    return;
                }
                l0.b0.l0(iArr4[i27][1], 0);
                l0.b0.l0(this.f14134g[i27][1], 1);
                return;
            }
            int i29 = nt.f8637c;
            if (i29 != 9 && i29 != 10 && i29 != 11 && i29 != 12 && i29 != 13 && i29 != 14 && i29 != 15 && i29 != 16) {
                if (b5 == 4 || b5 == 5) {
                    qt.y0(123, b6);
                    return;
                }
                if (b5 == 7) {
                    qt.y0(124, b6);
                    return;
                }
                if (b5 == 8 || b5 == 9 || b5 == 16 || b5 == 17 || b5 == 18) {
                    s3(b5);
                    return;
                }
                this.f14133f = b5 & 255;
                int i30 = 0;
                while (true) {
                    iArr3 = this.f14134g;
                    if (i30 >= iArr3.length) {
                        break;
                    }
                    int i31 = this.f14133f;
                    if (i31 == iArr3[i30][0]) {
                        if (i31 == 0) {
                            break;
                        }
                        this.f14132e = i30;
                        break;
                    }
                    i30++;
                }
                if (this.f14133f == 0 || b6 != 1) {
                    return;
                }
                l0.b0.l0(iArr3[i30][1], 0);
                l0.b0.l0(this.f14134g[i30][1], 1);
                return;
            }
            if (b5 == 32 && b6 == 1) {
                l0.b0.l0(5, 0);
                l0.b0.l0(5, 1);
                u0.b.f17311c.c(0);
                return;
            }
            if (b5 == 33 && b6 == 1) {
                l0.b0.l0(1, 0);
                l0.b0.l0(1, 1);
                return;
            }
            if (b5 == 2 && b6 == 1) {
                l0.b0.l0(7, 0);
                l0.b0.l0(7, 1);
                return;
            }
            if (b5 == 3 && b6 == 1) {
                l0.b0.l0(8, 0);
                l0.b0.l0(8, 1);
                return;
            }
            if (b5 == 1 && b6 == 1) {
                l0.b0.l0(25, 0);
                l0.b0.l0(25, 1);
                return;
            }
            if (b5 == 6 && b6 == 1) {
                l0.b0.l0(2, 0);
                l0.b0.l0(2, 1);
                return;
            } else if (b5 == 4 || b5 == 5) {
                qt.y0(123, b6);
                return;
            } else {
                if (b5 == 7) {
                    qt.y0(124, b6);
                    return;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            if (nt.a()) {
                byte b7 = bArr[i2 + 5];
                byte b8 = bArr[i2 + 2];
                int i32 = b7 & 255;
                qt.y0(119, i32);
                A = o0.a(i32, 0, 63);
                if (i32 == 1) {
                    A = 1;
                }
            }
            int i33 = i2 + 2;
            qt.y0(114, (bArr[i33] >> 4) & 15);
            qt.y0(115, (bArr[i33] >> 0) & 15);
            int i34 = i2 + 3;
            qt.y0(116, (bArr[i34] >> 4) & 15);
            qt.y0(117, (bArr[i34] >> 0) & 15);
            qt.y0(118, (bArr[i2 + 4] >> 4) & 15);
            qt.y0(119, (bArr[i2 + 5] >> 0) & 255);
            qt.y0(120, (bArr[i2 + 6] >> 0) & 1);
            return;
        }
        switch (b2) {
            case 25:
                int i35 = i2 + 2;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 3;
                int i38 = bArr[i37] & 255;
                int i39 = i2 + 4;
                int i40 = bArr[i39] & 255;
                int i41 = i2 + 5;
                int i42 = bArr[i41] & 255;
                if (i36 == 0 && i38 == 0 && i40 == 0 && i42 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i36 || l0.c0.f13014h != i38 || l0.c0.f13015i != i40 || l0.c0.f13016j != i42) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i36;
                l0.c0.f13014h = i38;
                l0.c0.f13015i = i40;
                l0.c0.f13016j = i42;
                u0.d.D2(l0.c0.E0(bArr[i35] & 255));
                u0.d.E2(l0.c0.E0(bArr[i37] & 255));
                u0.d.F2(l0.c0.E0(bArr[i39] & 255));
                u0.d.G2(l0.c0.E0(bArr[i41] & 255));
                break;
            case 26:
                byte b9 = bArr[i2 + 2];
                qt.y0(17, (b9 >> 0) & 1);
                qt.y0(33, (b9 >> 1) & 1);
                qt.y0(35, (b9 >> 2) & 1);
                qt.y0(76, (b9 >> 3) & 1);
                if (nt.a()) {
                    int i43 = bArr[i2 + 3] & 255;
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i43 & 128) != 0 ? 1320 - ((256 - i43) * 18) : (i43 * 18) + 1320) | 268435456) & (-1) : (i43 & 128) <= 0 ? (i43 * 10) + 1000 : 1000 - ((256 - i43) * 10));
                }
                break;
            case 27:
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                qt.y0(43, (b10 >> 4) & 1);
                qt.y0(78, (b10 >> 5) & 7);
                if (b11 == 0) {
                    qt.y0(40, -2);
                } else if (b11 == 31) {
                    qt.y0(40, -3);
                } else if (b11 < 1 || b11 > 29) {
                    qt.y0(40, -1);
                } else {
                    qt.y0(40, (b11 & 255) + 35);
                }
                int i44 = i2 + 4;
                qt.y0(48, (bArr[i44] >> 7) & 1);
                qt.y0(46, (bArr[i44] >> 6) & 1);
                qt.y0(47, (bArr[i44] >> 5) & 1);
                qt.y0(44, (bArr[i44] >> 0) & 15);
                break;
            case 28:
                byte b12 = bArr[i2 + 4];
                byte b13 = bArr[i2 + 5];
                byte b14 = bArr[i2 + 6];
                byte b15 = bArr[i2 + 7];
                byte b16 = bArr[i2 + 8];
                byte b17 = bArr[i2 + 9];
                int i45 = i2 + 2;
                qt.y0(98, bArr[i45]);
                if (bArr[i45] == 1) {
                    qt.y0(99, b12);
                    qt.y0(100, p0.c(b13, b14));
                    qt.y0(101, b15 & 7);
                    qt.y0(102, b16 & 3);
                } else if (bArr[i45] == 2) {
                    qt.y0(105, b12 & 255);
                    qt.y0(106, b13 & 255);
                    qt.y0(107, b14 & 255);
                    qt.y0(108, b15 & 1);
                    qt.y0(109, (b15 >> 1) & 1);
                    qt.y0(110, (b15 >> 4) & 1);
                    qt.y0(111, (b15 >> 5) & 1);
                    qt.y0(112, p0.c(b16, b17));
                }
                break;
            default:
                switch (b2) {
                    case 32:
                        byte b18 = bArr[i2 + 2];
                        byte b19 = bArr[i2 + 3];
                        this.f14139l = b18 & 255;
                        int i46 = 0;
                        while (true) {
                            iArr5 = this.f14140m;
                            if (i46 < iArr5.length) {
                                int i47 = this.f14139l;
                                if (i47 != iArr5[i46][0]) {
                                    i46++;
                                } else if (i47 != 0) {
                                    this.f14138k = i46;
                                }
                            }
                        }
                        int i48 = b19 & 255;
                        if (i48 == 1) {
                            if (i46 < iArr5.length) {
                                l0.b0.l0(iArr5[i46][1], 0);
                            }
                        } else if (i48 == 0) {
                            int i49 = this.f14138k;
                            if (i49 < iArr5.length && i49 != 255) {
                                l0.b0.l0(iArr5[i49][1], 1);
                            }
                            this.f14138k = 255;
                        }
                        break;
                    case 33:
                        int i50 = (bArr[i2 + 8] & 255) << 24;
                        qt.y0(125, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i50);
                        qt.y0(126, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                        int i51 = i2 + 6;
                        int i52 = i2 + 7;
                        qt.y0(127, i50 | ((bArr[i51] & 255) << 8) | (bArr[i52] & 255));
                        qt.y0(131, ((bArr[i52] & 255) << 0) | ((bArr[i51] & 255) << 8));
                        break;
                    case 34:
                        int i53 = i2 + 2;
                        int i54 = (bArr[i53] & 255) << 24;
                        int i55 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                        if (i55 == 65535) {
                            i55 = 0;
                        }
                        qt.y0(128, i54 | i55);
                        qt.y0(132, bArr[i53] & 255);
                        break;
                    case 35:
                        int i56 = (bArr[i2 + 2] & 255) << 24;
                        int i57 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                        if (i57 == 65535) {
                            i57 = 0;
                        }
                        qt.y0(129, i57 | i56);
                        for (int i58 = 0; i58 < 5; i58++) {
                            int i59 = i2 + (i58 * 2);
                            int[] iArr8 = {i58, (bArr[i59 + 6] & 255) | ((bArr[i59 + 5] & 255) << 8) | i56};
                            if (qt.C0(130, iArr8, this.f14129b[i58])) {
                                this.f14129b[i58] = iArr8;
                            }
                        }
                        break;
                    case 36:
                        byte b20 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b20 >> 7) & 1);
                            qt.y0(2, (b20 >> 6) & 1);
                        } else {
                            qt.y0(2, (b20 >> 7) & 1);
                            qt.y0(1, (b20 >> 6) & 1);
                        }
                        qt.y0(4, (b20 >> 5) & 1);
                        qt.y0(3, (b20 >> 4) & 1);
                        qt.y0(5, (b20 >> 3) & 1);
                        break;
                    default:
                        switch (b2) {
                            case 38:
                                int i60 = i2 + 2;
                                qt.y0(134, (bArr[i60] >> 7) & 1);
                                qt.y0(135, (bArr[i60] >> 4) & 3);
                                qt.y0(136, (bArr[i60] >> 2) & 3);
                                qt.y0(137, (bArr[i60] >> 0) & 3);
                                int i61 = i2 + 3;
                                qt.y0(138, (bArr[i61] >> 7) & 1);
                                qt.y0(139, (bArr[i61] >> 6) & 1);
                                qt.y0(140, (bArr[i61] >> 5) & 1);
                                qt.y0(141, (bArr[i61] >> 4) & 1);
                                qt.y0(142, (bArr[i61] >> 0) & 1);
                                int i62 = i2 + 4;
                                qt.y0(143, (bArr[i62] >> 7) & 1);
                                qt.y0(144, (bArr[i62] >> 6) & 1);
                                qt.y0(145, (bArr[i62] >> 5) & 1);
                                qt.y0(146, (bArr[i62] >> 4) & 1);
                                qt.y0(147, (bArr[i62] >> 3) & 1);
                                qt.y0(148, (bArr[i62] >> 0) & 7);
                                int i63 = i2 + 5;
                                qt.y0(149, (bArr[i63] >> 7) & 1);
                                qt.y0(150, (bArr[i63] >> 6) & 1);
                                qt.y0(151, (bArr[i63] >> 2) & 3);
                                qt.y0(152, (bArr[i63] >> 0) & 3);
                                break;
                            case 39:
                                int i64 = (bArr[i2 + 2] & 255) << 24;
                                for (int i65 = 0; i65 < 15; i65++) {
                                    int i66 = i2 + (i65 * 2);
                                    int[] iArr9 = {i65, (bArr[i66 + 4] & 255) | ((bArr[i66 + 3] & 255) << 8) | i64};
                                    if (qt.C0(133, iArr9, this.f14130c[i65])) {
                                        this.f14130c[i65] = iArr9;
                                    }
                                }
                                break;
                            case 40:
                                byte b21 = bArr[i2 + 2];
                                byte b22 = bArr[i2 + 3];
                                byte b23 = bArr[i2 + 4];
                                byte b24 = bArr[i2 + 5];
                                byte b25 = bArr[i2 + 6];
                                qt.y0(10, (b21 >> 7) & 1);
                                qt.y0(11, (b21 >> 6) & 1);
                                qt.y0(12, (b21 >> 5) & 1);
                                qt.y0(13, (b21 >> 4) & 1);
                                qt.y0(14, (b21 >> 2) & 1);
                                qt.y0(15, (b21 >> 1) & 1);
                                qt.y0(18, (b22 >> 7) & 1);
                                qt.y0(19, (b22 >> 6) & 1);
                                int i67 = b22 >> 5;
                                qt.y0(20, i67 & 1);
                                qt.y0(77, i67 & 7);
                                qt.y0(21, b22 & DhcpPacket.DHCP_DOMAIN_NAME);
                                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                                    if (((b25 >> 1) & 1) == 0) {
                                        if (b23 == 0) {
                                            qt.y0(28, -2);
                                        } else if (b23 == 31) {
                                            qt.y0(28, -3);
                                        } else if (b23 <= 0 || b23 > 29) {
                                            qt.y0(28, -1);
                                        } else {
                                            qt.y0(28, b23 + 35);
                                        }
                                        if (b24 == 0) {
                                            qt.y0(27, -2);
                                        } else if (b24 == 31) {
                                            qt.y0(27, -3);
                                        } else if (b24 <= 0 || b24 > 29) {
                                            qt.y0(27, -1);
                                        } else {
                                            qt.y0(27, b24 + 35);
                                        }
                                    } else {
                                        if (b23 == -1) {
                                            qt.y0(28, -3);
                                        } else if (b23 != 0) {
                                            qt.y0(28, b23 & 255);
                                        } else {
                                            qt.y0(28, -2);
                                        }
                                        if (b24 == -1) {
                                            qt.y0(27, -3);
                                        } else if (b24 != 0) {
                                            qt.y0(27, b24 & 255);
                                        } else {
                                            qt.y0(27, -2);
                                        }
                                    }
                                } else if (((b25 >> 1) & 1) == 0) {
                                    if (b23 == 0) {
                                        qt.y0(27, -2);
                                    } else if (b23 == 31) {
                                        qt.y0(27, -3);
                                    } else if (b23 <= 0 || b23 > 29) {
                                        qt.y0(27, -1);
                                    } else {
                                        qt.y0(27, b23 + 35);
                                    }
                                    if (b24 == 0) {
                                        qt.y0(28, -2);
                                    } else if (b24 == 31) {
                                        qt.y0(28, -3);
                                    } else if (b24 <= 0 || b24 > 29) {
                                        qt.y0(28, -1);
                                    } else {
                                        qt.y0(28, b24 + 35);
                                    }
                                } else {
                                    if (b23 == -1) {
                                        qt.y0(27, -3);
                                    } else if (b23 != 0) {
                                        qt.y0(27, b23 & 255);
                                    } else {
                                        qt.y0(27, -2);
                                    }
                                    if (b24 == -1) {
                                        qt.y0(28, -3);
                                    } else if (b24 != 0) {
                                        qt.y0(28, b24 & 255);
                                    } else {
                                        qt.y0(28, -2);
                                    }
                                }
                                int i68 = (b25 >> 2) & 1;
                                qt.y0(67, i68);
                                qt.y0(55, (b25 >> 1) & 1);
                                qt.y0(65, (b25 >> 7) & 1);
                                qt.y0(16, (b25 >> 6) & 1);
                                qt.y0(67, i68);
                                break;
                            case 41:
                                int i69 = nt.f8637c;
                                if (i69 == 17 || i69 == 18) {
                                    qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 356);
                                } else {
                                    int i70 = i2 + 3;
                                    qt.j(bArr[i2 + 2], bArr[i70] & 7, (bArr[i70] >> 3) & 1, 380);
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.o0(this.f14151x);
        y0.g.f18094d.d(this.f14146s);
        u0.c.f17386m.d(this.f14148u);
        l0.b0.p0(this.f14149v);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.f14143p);
        yVar.d(this.f14145r);
        h0.d.f2462a.d(this.f14141n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 189) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 81) {
            if (iArr == null || iArr.length <= 2) {
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, 152, 6, 1, (iArr[1] >> 8) & 255, iArr[1] & 255, (iArr[2] >> 8) & 255, iArr[2] & 255, 0);
                return;
            } else {
                if (iArr[0] == 0) {
                    z.k.s(227, 152, 6, 0, (iArr[1] >> 8) & 255, iArr[1] & 255, (iArr[2] >> 8) & 255, iArr[2] & 255, 0);
                }
                return;
            }
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
                int i3 = (iArr[2] * 1000) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 152, 6, 1, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 152, 6, 0, iW >> 8, iW & 255, i3 >> 8, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                if (r3(iArr, 2)) {
                    z.k.s(227, 138, 2, iArr[0], iArr[1]);
                }
                break;
            case 1:
                if (r3(iArr, 1)) {
                    z.k.s(227, 144, 2, iArr[0], 0);
                }
                break;
            case 2:
                if (r3(iArr, 2)) {
                    z.k.s(227, 116, 2, iArr[0], iArr[1]);
                }
                break;
            case 3:
                if (r3(iArr, 2)) {
                    z.k.s(227, 113, 2, iArr[0], iArr[1]);
                }
                break;
            case 4:
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 114, 2, iArr[0], iArr[1]);
                break;
            case 7:
                if (T2(iArr, 2)) {
                    z.k.s(227, 151, 2, iArr[0], iArr[1]);
                }
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            B = C[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        D.f(7, new h(7, 100));
    }

    public final void q3() {
        Z2(y0.f.f18037c);
    }

    public final boolean r3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void s3(int i2) {
        z.k.s(227, 116, 2, i2, 1);
        SystemClock.sleep(100L);
        z.k.s(227, 116, 2, i2, 0);
    }

    public final void t3(int i2, int i3, int i4, int i5) {
        z.k.s(227, 114, 9, i2, i3, i4, i5, 3, ~(i2 << 2), ~(i3 << 2), ~(i4 << 2), ~(i5 << 2));
    }

    public final synchronized void u3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        p3(7, B);
    }
}
