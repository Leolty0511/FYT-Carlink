package module.canbus;

import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends lt implements o1.q {
    public static final int[] A = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};
    public static final int[] B = {0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14};
    public static final o1.f<e> C = new o1.f<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f13693s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f13694t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f13695u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f13696v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f13697w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f13698x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f13699y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f13700z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13707h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f13701b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f13702c = new int[15][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f13703d = new byte[1024];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13704e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13705f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13706g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13708i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f13709j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 27}, new int[]{4, 28}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 16}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 27}, new int[]{132, 28}, new int[]{133, 3}, new int[]{134, 4}, new int[]{135, 0}, new int[]{136, 2}, new int[]{11, 2}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f13710k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f13711l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f13712m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f13713n = {34, 204};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f13714o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13715p = 100;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f13716q = new d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13717r = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 8, 1);
            z.k.s(227, 132, 2, 4, 7);
            z.k.s(227, 132, 2, 5, 7);
            z.k.s(227, 132, 2, 6, 7);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 29, 0);
                z.k.s(227, 144, 2, 30, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.c3(u0.b.K3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (b0.this.f13715p > 100) {
                    b0.k3(b0.this);
                    if (b0.this.f13717r == b0.this.f13715p / 100) {
                        b0.this.f13717r = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = b0.f13696v = b0.A[0];
                } else {
                    int unused2 = b0.f13696v = b0.A[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (b0.this.f7886a.f8307b == 1 && b0.f13695u != b0.f13696v) {
                    b0.this.y3();
                }
                if (b0.this.f7886a.f8308c == 1) {
                    if (b0.f13697w != b0.f13699y) {
                        b0.this.x3();
                    }
                    if (b0.f13698x != b0.f13700z) {
                        b0.this.w3();
                    }
                }
            }
        }
    }

    public static class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13724c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13725d;

        public e(int i2, int i3) {
            this.f13722a = i2;
            this.f13725d = i3;
        }

        public synchronized void a(int i2) {
            this.f13723b = i2;
            if (!this.f13724c) {
                this.f13724c = true;
                o1.k.a().postDelayed(this, this.f13725d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f13722a, this.f13723b);
            this.f13724c = false;
        }
    }

    public static /* synthetic */ int k3(b0 b0Var) {
        int i2 = b0Var.f13717r;
        b0Var.f13717r = i2 + 1;
        return i2;
    }

    public static void t3(int i2, int i3) {
        e eVarC = C.c(i2);
        if (eVarC != null) {
            eVarC.a(i3);
        }
    }

    public static void z3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[21] > 0) {
                        b3(1);
                    }
                } else if (nt.f8645g[21] == 0) {
                    b3(20);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(16);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        b3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    b3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        b3(3);
                    }
                } else if (nt.f8645g[15] == 0) {
                    b3(3);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[38] == 1) {
                        b3(4);
                    }
                } else if (nt.f8645g[38] == 0) {
                    b3(4);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 0) {
                        b3(35);
                    }
                    break;
                } else if (iArr[1] == 1 && nt.f8645g[12] == 1) {
                    b3(35);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(21);
                } else {
                    b3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(10);
                } else {
                    b3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    b3(12);
                } else {
                    b3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = B;
            f13699y = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f13700z = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            u0.c.f17379f.a(this.f13711l, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        u0.c.f17397x.a(this.f13712m, 1);
        if (nt.f8637c != 1) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            z.k.s(227, 51, 5, 0, this.f13713n[this.f13714o % 2], 37, 12, 170);
            z.k.s(227, 51, 5, 0, this.f13713n[this.f13714o % 2], 37, 12, 170);
            z.k.s(227, 51, 5, 0, this.f13713n[this.f13714o % 2], 37, 12, 170);
            z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f13713n[this.f13714o % 2], 37, DhcpPacket.DHCP_HOST_NAME, -86});
            z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f13713n[this.f13714o % 2], 37, DhcpPacket.DHCP_HOST_NAME, -86});
            z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f13713n[this.f13714o % 2], 37, DhcpPacket.DHCP_HOST_NAME, -86});
            int i2 = this.f13714o + 1;
            this.f13714o = i2;
            this.f13714o = i2 % 2;
            return;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8306a = new String[]{"com.syu.canbus"};
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 1;
        mtVar3.f8312g = 1;
        z.k.s(227, 51, 5, 0, this.f13713n[this.f13714o % 2], 37, 13, 170);
        z.k.s(227, 51, 5, 0, this.f13713n[this.f13714o % 2], 37, 13, 170);
        z.k.s(227, 51, 5, 0, this.f13713n[this.f13714o % 2], 37, 13, 170);
        z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f13713n[this.f13714o % 2], 37, 13, -86});
        z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f13713n[this.f13714o % 2], 37, 13, -86});
        z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, 0, (byte) this.f13713n[this.f13714o % 2], 37, 13, -86});
        int i3 = this.f13714o + 1;
        this.f13714o = i3;
        this.f13714o = i3 % 2;
        if (nt.a()) {
            init();
            l0.b0.a(this.f13716q);
            u3();
            l0.b0.b(this.f13710k);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 26) {
            qt.y0(133, (bArr[i2 + 3] >> 6) & 1);
            return;
        }
        if (b2 == 41) {
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 320);
            return;
        }
        if (b2 == 65) {
            byte b3 = bArr[i2 + 2];
            if (b3 != 1) {
                if (b3 == 2) {
                    qt.y0(149, ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8) | ((bArr[i2 + 5] & 255) << 0));
                    qt.y0(150, ((bArr[i2 + 6] & 255) << 8) | ((bArr[i2 + 7] & 255) << 0));
                    qt.y0(151, ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | ((bArr[i2 + 10] & 255) << 0));
                    qt.y0(152, ((bArr[i2 + 11] & 255) << 16) | ((bArr[i2 + 12] & 255) << 8) | ((bArr[i2 + 13] & 255) << 0));
                    qt.y0(153, ((bArr[i2 + 14] & 255) << 8) | ((bArr[i2 + 15] & 255) << 0));
                    qt.y0(97, ((bArr[i2 + 17] & 255) << 0) | ((bArr[i2 + 16] & 255) << 8));
                    return;
                }
                if (b3 != 3) {
                    return;
                }
                int i7 = ((bArr[i2 + 3] & 255) << 8) | ((bArr[i2 + 4] & 255) << 0);
                qt.y0(154, i7);
                qt.y0(1032, i7);
                int i8 = i2 + 9;
                qt.y0(155, bArr[i8] & 255);
                int i9 = bArr[i8] & 255;
                if ((i9 & 128) > 0) {
                    if (i9 <= 80) {
                        i9 = (i9 * 10) + 1000;
                    }
                } else if (i9 >= 216) {
                    i9 = 1000 - (((255 - i9) + 1) * 10);
                }
                u0.d.A3(i9);
                return;
            }
            byte b4 = bArr[i2 + 3];
            qt.y0(0, (b4 >> 5) & 1);
            qt.y0(5, (b4 >> 4) & 1);
            qt.y0(4, (b4 >> 3) & 1);
            qt.y0(3, (b4 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b4 >> 0) & 1);
                qt.y0(1, (b4 >> 1) & 1);
            } else {
                qt.y0(1, (b4 >> 0) & 1);
                qt.y0(2, (b4 >> 1) & 1);
            }
            byte b5 = bArr[i2 + 6];
            byte b6 = bArr[i2 + 7];
            qt.y0(135, (b5 >> 7) & 1);
            qt.y0(136, (b5 >> 6) & 1);
            qt.y0(137, (b5 >> 5) & 1);
            qt.y0(138, (b6 >> 7) & 1);
            qt.y0(139, (b6 >> 6) & 1);
            qt.y0(140, (b6 >> 5) & 1);
            qt.y0(141, (b6 >> 4) & 1);
            qt.y0(142, (b6 >> 3) & 1);
            qt.y0(143, (b6 >> 2) & 1);
            qt.y0(144, (b6 >> 1) & 1);
            byte b7 = bArr[i2 + 8];
            byte b8 = bArr[i2 + 9];
            qt.y0(145, (b7 >> 2) & 3);
            qt.y0(146, (b7 >> 1) & 1);
            qt.y0(147, b7 & 1);
            qt.y0(148, (b8 >> 5) & 3);
            return;
        }
        if (b2 == 85) {
            int i10 = i2 + 2;
            byte b9 = bArr[i10];
            int i11 = i2 + 3;
            byte b10 = bArr[i11];
            byte b11 = bArr[i2 + 4];
            byte b12 = bArr[i2 + 5];
            byte b13 = bArr[i2 + 6];
            byte b14 = bArr[i2 + 7];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b9 = bArr[i11];
                b10 = bArr[i10];
            }
            int i12 = b9 & 255;
            if (i12 == 16) {
                qt.y0(27, -2);
            } else if (i12 == 80) {
                qt.y0(27, -3);
            } else if (i12 < 16) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, ((i12 - 36) * 5) + 180);
            }
            int i13 = b10 & 255;
            if (i13 == 16) {
                qt.y0(28, -2);
            } else if (i13 == 80) {
                qt.y0(28, -3);
            } else if (i13 < 16) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, ((i13 - 36) * 5) + 180);
            }
            qt.y0(21, b11 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
            int i14 = (b11 >> 4) & 15;
            switch (i14) {
                case 1:
                    i5 = 0;
                    i6 = 0;
                    i4 = 1;
                    break;
                case 2:
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                    break;
                case 3:
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                    break;
                case 4:
                    i4 = 0;
                    i5 = 1;
                    i6 = i5;
                    break;
                case 5:
                    i5 = 0;
                    i4 = 1;
                    i6 = 1;
                    break;
                case 6:
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                    break;
                case 7:
                    i4 = 1;
                    i5 = i4;
                    i6 = i5;
                    break;
                default:
                    i4 = 0;
                    i5 = i4;
                    i6 = i5;
                    break;
            }
            qt.y0(19, i4);
            qt.y0(20, i5);
            qt.y0(18, i6);
            qt.y0(77, i14);
            qt.y0(29, b12 & 3);
            qt.y0(31, (b12 >> 2) & 3);
            qt.y0(30, (b12 >> 4) & 3);
            qt.y0(32, (b12 >> 6) & 3);
            qt.y0(13, b13 & 1);
            qt.y0(11, (b13 >> 1) & 1);
            qt.y0(14, (b13 >> 2) & 1);
            qt.y0(53, (b13 >> 4) & 1);
            qt.y0(65, (b13 >> 5) & 1);
            qt.y0(16, (b13 >> 6) & 1);
            qt.y0(15, (b13 >> 7) & 1);
            qt.y0(12, (b14 >> 0) & 3);
            qt.y0(33, (b14 >> 2) & 1);
            qt.y0(67, (b14 >> 3) & 1);
            return;
        }
        if (b2 != 97) {
            switch (b2) {
                case 29:
                    if (nt.a()) {
                        u0.d.D2(a3(bArr[i2 + 2] & 255));
                        u0.d.E2(a3(bArr[i2 + 3] & 255));
                        u0.d.F2(a3(bArr[i2 + 4] & 255));
                        u0.d.G2(a3(bArr[i2 + 5] & 255));
                        return;
                    }
                    return;
                case 30:
                    if (nt.a()) {
                        u0.d.R2(a3(bArr[i2 + 2] & 255));
                        u0.d.S2(a3(bArr[i2 + 3] & 255));
                        u0.d.T2(a3(bArr[i2 + 4] & 255));
                        u0.d.U2(a3(bArr[i2 + 5] & 255));
                        return;
                    }
                    return;
                case 31:
                    byte b15 = bArr[i2 + 2];
                    qt.y0(97, (b15 >> 0) & 15);
                    qt.y0(98, (b15 >> 7) & 1);
                    qt.y0(99, bArr[i2 + 3] & 255);
                    return;
                case 32:
                    if (nt.a()) {
                        byte b16 = bArr[i2 + 2];
                        byte b17 = bArr[i2 + 3];
                        this.f13708i = b16 & 255;
                        int i15 = 0;
                        while (true) {
                            iArr = this.f13709j;
                            if (i15 < iArr.length) {
                                int i16 = this.f13708i;
                                if (i16 != iArr[i15][0]) {
                                    i15++;
                                } else if (i16 != 0) {
                                    this.f13707h = i15;
                                }
                            }
                        }
                        if ((b17 & 255) != 0) {
                            if (i15 < iArr.length) {
                                l0.b0.l0(iArr[i15][1], 0);
                                return;
                            }
                            return;
                        } else {
                            if (i15 <= iArr.length) {
                                l0.b0.l0(iArr[this.f13707h][1], 1);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                case 33:
                    int i17 = (bArr[i2 + 8] & 255) << 24;
                    qt.y0(100, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i17);
                    qt.y0(101, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                    qt.y0(102, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8) | i17);
                    return;
                case 34:
                    int i18 = (bArr[i2 + 2] & 255) << 24;
                    int i19 = (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & 255) << 8);
                    if (i19 == 65535) {
                        i19 = 0;
                    }
                    qt.y0(103, i19 | i18);
                    return;
                case 35:
                    int i20 = (bArr[i2 + 2] & 255) << 24;
                    int i21 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                    if (i21 == 65535) {
                        i21 = 0;
                    }
                    qt.y0(104, i21 | i20);
                    for (int i22 = 0; i22 < 5; i22++) {
                        int i23 = i2 + (i22 * 2);
                        int[] iArr2 = {i22, (bArr[i23 + 6] & 255) | ((bArr[i23 + 5] & 255) << 8) | i20};
                        if (qt.C0(105, iArr2, this.f13701b[i22])) {
                            this.f13701b[i22] = iArr2;
                        }
                    }
                    return;
                case 36:
                    byte b18 = bArr[i2 + 2];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b18 >> 7) & 1);
                        qt.y0(2, (b18 >> 6) & 1);
                    } else {
                        qt.y0(1, (b18 >> 6) & 1);
                        qt.y0(2, (b18 >> 7) & 1);
                    }
                    qt.y0(3, (b18 >> 4) & 1);
                    qt.y0(4, (b18 >> 5) & 1);
                    qt.y0(5, (b18 >> 3) & 1);
                    qt.y0(0, (bArr[i2 + 3] >> 7) & 1);
                    return;
                case 37:
                    byte b19 = bArr[i2 + 2];
                    int[] iArr3 = new int[1];
                    iArr3[0] = (b19 & 128) == 0 ? 0 : 1;
                    qt.y0(106, iArr3);
                    int[] iArr4 = new int[1];
                    iArr4[0] = (b19 & 64) == 0 ? 0 : 1;
                    qt.y0(107, iArr4);
                    int[] iArr5 = new int[1];
                    iArr5[0] = (b19 & 32) == 0 ? 0 : 1;
                    qt.y0(108, iArr5);
                    int[] iArr6 = new int[1];
                    iArr6[0] = (b19 & 4) == 0 ? 0 : 1;
                    qt.y0(109, iArr6);
                    int i24 = (b19 & 3) << 24;
                    int i25 = bArr[i2 + 3] & 255;
                    if (i25 == 255) {
                        i25 = 16777215;
                    }
                    qt.y0(110, i25 | i24);
                    int i26 = bArr[i2 + 4] & 255;
                    if (i26 == 255) {
                        i26 = 16777215;
                    }
                    qt.y0(111, i26 | i24);
                    int i27 = bArr[i2 + 5] & 255;
                    if (i27 == 255) {
                        i27 = 16777215;
                    }
                    qt.y0(112, i27 | i24);
                    int i28 = bArr[i2 + 6] & 255;
                    if (i28 == 255) {
                        i28 = 16777215;
                    }
                    qt.y0(113, i28 | i24);
                    int i29 = bArr[i2 + 7] & 255;
                    qt.y0(114, i24 | (i29 != 255 ? i29 : 16777215));
                    return;
                case 38:
                    byte b20 = bArr[i2 + 2];
                    int[] iArr7 = new int[1];
                    iArr7[0] = (b20 & 128) == 0 ? 0 : 1;
                    qt.y0(115, iArr7);
                    qt.y0(116, (b20 & 112) >> 4);
                    qt.y0(117, (b20 & DhcpPacket.DHCP_HOST_NAME) >> 2);
                    qt.y0(118, b20 & 3);
                    byte b21 = bArr[i2 + 3];
                    int[] iArr8 = new int[1];
                    iArr8[0] = (b21 & 128) == 0 ? 0 : 1;
                    qt.y0(119, iArr8);
                    int[] iArr9 = new int[1];
                    iArr9[0] = (b21 & 64) == 0 ? 0 : 1;
                    qt.y0(120, iArr9);
                    int[] iArr10 = new int[1];
                    iArr10[0] = (b21 & 32) == 0 ? 0 : 1;
                    qt.y0(121, iArr10);
                    int[] iArr11 = new int[1];
                    iArr11[0] = (b21 & 16) == 0 ? 0 : 1;
                    qt.y0(122, iArr11);
                    qt.y0(123, b21 & 7);
                    byte b22 = bArr[i2 + 4];
                    int[] iArr12 = new int[1];
                    iArr12[0] = (b22 & 128) == 0 ? 0 : 1;
                    qt.y0(124, iArr12);
                    int[] iArr13 = new int[1];
                    iArr13[0] = (b22 & 64) == 0 ? 0 : 1;
                    qt.y0(125, iArr13);
                    int[] iArr14 = new int[1];
                    iArr14[0] = (b22 & 32) == 0 ? 0 : 1;
                    qt.y0(126, iArr14);
                    int[] iArr15 = new int[1];
                    iArr15[0] = (b22 & 16) == 0 ? 0 : 1;
                    qt.y0(127, iArr15);
                    int[] iArr16 = new int[1];
                    iArr16[0] = (b22 & 8) == 0 ? 0 : 1;
                    qt.y0(128, iArr16);
                    qt.y0(129, b22 & 7);
                    byte b23 = bArr[i2 + 5];
                    int[] iArr17 = new int[1];
                    iArr17[0] = (b23 & 128) == 0 ? 0 : 1;
                    qt.y0(130, iArr17);
                    int[] iArr18 = new int[1];
                    iArr18[0] = (b23 & 64) == 0 ? 0 : 1;
                    qt.y0(131, iArr18);
                    qt.y0(132, (b23 >> 2) & 3);
                    return;
                case 39:
                    int i30 = (bArr[i2 + 2] & 255) << 24;
                    for (int i31 = 0; i31 < 15; i31++) {
                        int i32 = i2 + (i31 * 2);
                        int[] iArr19 = {i31, (bArr[i32 + 4] & 255) | ((bArr[i32 + 3] & 255) << 8) | i30};
                        if (qt.C0(134, iArr19, this.f13702c[i31])) {
                            this.f13702c[i31] = iArr19;
                        }
                    }
                    return;
                default:
                    switch (b2) {
                        case 49:
                            if (nt.a()) {
                                int i33 = i2 + 2;
                                f13697w = o0.a((bArr[i33] >> 4) & 15, 0, 14);
                                f13698x = o0.a(bArr[i33] & DhcpPacket.DHCP_DOMAIN_NAME, 0, 14);
                                f13695u = o0.a(bArr[i2 + 5] & 255, 0, 63);
                            }
                            break;
                        case 50:
                            byte b24 = bArr[i2 + 2];
                            f13693s = (b24 & 4) == 0 ? 0 : 1;
                            int i34 = (b24 & 8) == 0 ? 0 : 1;
                            f13694t = i34;
                            qt.y0(Process.MEDIA_UID, i34);
                            if (nt.a()) {
                                if (f13694t != 0) {
                                    qt.a(1);
                                } else {
                                    qt.a(0);
                                }
                            }
                            break;
                    }
                    return;
            }
        }
        qt.L(new String(bArr, i2 + 2, i3 - 2));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17379f.d(this.f13711l);
        u0.c.f17397x.d(this.f13712m);
        l0.b0.o0(this.f13716q);
        l0.b0.p0(this.f13710k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 156) {
            return;
        }
        int i4 = 0;
        if (i2 == 105) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f13701b[i4]);
                i4++;
            }
        } else {
            if (i2 != 134) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f13702c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1005) {
            if (iArr[1] != 0 && iArr.length > 0) {
                int i3 = nt.f8637c;
                if (i3 != 6 && i3 != 7) {
                    if (f13693s != 0) {
                        if (iArr[0] == 0) {
                            v3(33, 1);
                        } else if (iArr[0] == 1) {
                            v3(33, 2);
                        } else if (iArr[0] == 3) {
                            v3(33, 3);
                        } else if (iArr[0] == 2) {
                            v3(33, 6);
                        }
                    }
                    if (f13694t == 0 || iArr[0] != 4) {
                        return;
                    }
                    v3(32, 0);
                    return;
                }
                if (f13694t != 0) {
                    if (iArr[0] == 0) {
                        v3(33, 2);
                        return;
                    } else {
                        if (iArr[0] == 2) {
                            v3(33, 1);
                            return;
                        }
                        return;
                    }
                }
                if (iArr[0] == 0) {
                    v3(33, 4);
                    return;
                } else if (iArr[0] == 2) {
                    v3(33, 7);
                    return;
                } else {
                    if (iArr[0] == 3) {
                        v3(33, 3);
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    v3(6, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(0, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(1, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(2, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(3, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(4, iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 6) {
                        iArr[0] = 6;
                    }
                    v3(5, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    v3(7, iArr[0]);
                    break;
                }
                break;
            case 8:
                v3(8, 0);
                break;
            case 9:
                v3(9, 0);
                break;
            case 10:
                v3(10, 0);
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    v3(12, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(13, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(14, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    int i4 = iArr[0];
                    if (i4 == 0) {
                        v3(15, 0);
                        break;
                    } else if (i4 == 1) {
                        v3(15, 1);
                        break;
                    }
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(16, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(17, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(18, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    v3(19, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    v3(35, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] == 65) {
                        z.k.s(227, -112, 2, 65, 1);
                        z.k.s(227, -112, 2, 65, 2);
                        z.k.s(227, -112, 2, 65, 3);
                    } else if (iArr[0] == 31) {
                        z.k.s(227, -112, 2, 31, 0);
                    }
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    v3(34, iArr[0]);
                    break;
                }
                break;
            case 22:
                int i5 = nt.f8633a;
                if (i5 == 65928) {
                    z.k.s(227, 51, 5, iArr[0], this.f13713n[this.f13714o % 2], 37, 13, 170);
                    z.k.s(227, 51, 5, iArr[0], this.f13713n[this.f13714o % 2], 37, 13, 170);
                    z.k.s(227, 51, 5, iArr[0], this.f13713n[this.f13714o % 2], 37, 13, 170);
                    z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13713n[this.f13714o % 2], 37, 13, -86});
                    z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13713n[this.f13714o % 2], 37, 13, -86});
                    z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13713n[this.f13714o % 2], 37, 13, -86});
                } else if (i5 == 392) {
                    z.k.s(227, 51, 5, iArr[0], this.f13713n[this.f13714o % 2], 37, 12, 170);
                    z.k.s(227, 51, 5, iArr[0], this.f13713n[this.f13714o % 2], 37, 12, 170);
                    z.k.s(227, 51, 5, iArr[0], this.f13713n[this.f13714o % 2], 37, 12, 170);
                    z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13713n[this.f13714o % 2], 37, DhcpPacket.DHCP_HOST_NAME, -86});
                    z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13713n[this.f13714o % 2], 37, DhcpPacket.DHCP_HOST_NAME, -86});
                    z3(new byte[]{DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f13713n[this.f13714o % 2], 37, DhcpPacket.DHCP_HOST_NAME, -86});
                }
                int i6 = this.f13714o + 1;
                this.f13714o = i6;
                this.f13714o = i6 % 2;
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f13696v = A[o0.a(i2, 0, 36)];
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13704e + bArr.length > 1024) {
            this.f13704e = 0;
            this.f13705f = 0;
            this.f13706g = 0;
        }
        System.arraycopy(bArr, 0, this.f13703d, this.f13704e, bArr.length);
        int length = this.f13704e + bArr.length;
        this.f13704e = length;
        int i3 = this.f13706g;
        if (i3 != 0) {
            if (i3 >= length) {
                return;
            }
            byte b2 = this.f13703d[0];
            for (int i4 = 2; i4 < this.f13706g; i4++) {
                byte b3 = this.f13703d[i4];
            }
            byte[] bArr2 = this.f13703d;
            U2(bArr2, 0, bArr2[1] + 2);
            this.f13705f = this.f13706g + 1;
            this.f13706g = 0;
        }
        int i5 = this.f13704e - 2;
        while (true) {
            i2 = this.f13705f;
            if (i2 >= i5) {
                break;
            }
            byte[] bArr3 = this.f13703d;
            if (bArr3[i2] == 85) {
                if (this.f13706g > 512) {
                    this.f13706g = 0;
                } else {
                    byte b4 = bArr3[i2 + 1];
                    this.f13706g = b4;
                    if (b4 >= this.f13704e) {
                        this.f13706g = b4 - i2;
                        break;
                    }
                    byte b5 = bArr3[i2 + 1];
                    for (int i6 = i2 + 2; i6 < this.f13706g; i6++) {
                        byte b6 = this.f13703d[i6];
                    }
                    byte[] bArr4 = this.f13703d;
                    int i7 = this.f13705f;
                    U2(bArr4, i7, bArr4[i7 + 1] + 2);
                    this.f13705f = this.f13706g;
                    this.f13706g = 0;
                }
            }
            this.f13705f++;
        }
        if (i2 != 0) {
            int i8 = this.f13704e - i2;
            this.f13704e = i8;
            if (i8 != 0) {
                byte[] bArr5 = this.f13703d;
                System.arraycopy(bArr5, i2, bArr5, 0, i8);
            }
            this.f13705f = 0;
        }
    }

    public final void b3(int i2) {
        Z0(22, new int[]{i2}, null, null);
    }

    public final void c3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 131;
        iArr[2] = 2;
        iArr[3] = 36;
        iArr[4] = i2 != 1 ? 1 : 0;
        z.k.s(iArr);
    }

    public final void init() {
        o1.f<e> fVar = C;
        fVar.f(1, new e(1, 100));
        fVar.f(2, new e(2, 100));
        fVar.f(7, new e(7, 100));
    }

    public final void u3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final void v3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    public final synchronized void w3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        t3(2, f13700z);
    }

    public final synchronized void x3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        t3(1, f13699y);
    }

    public final synchronized void y3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f13695u;
        int i3 = f13696v;
        if (i2 < i3) {
            i2++;
        } else if (i2 > i3) {
            i2--;
        }
        t3(7, i2);
    }
}
