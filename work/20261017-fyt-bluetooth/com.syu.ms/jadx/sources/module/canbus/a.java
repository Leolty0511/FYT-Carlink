package module.canbus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.dhcp.DhcpPacket;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.Spanned;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import n0.j4;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class a extends lt {
    public static int L;
    public static int M;
    public static int N;
    public static int O;
    public static int P;
    public static int Q;
    public static final int[] R = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 30, 30, 30, 30, 30, 30};
    public static final int[] S = {248, 249, 250, 251, 252, i.a.Theme_dialogTitleDecorLayout, 254, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8};
    public static final o1.f<k> T = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13574b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public l f13581i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13575c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f13576d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{19, 4}, new int[]{20, 3}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13577e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f13578f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f13579g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f13580h = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f13582j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13583k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f13584l = new f();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte f13585m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f13586n = new g();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f13587o = new h();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f13588p = new i();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f13589q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f13590r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f13591s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f13592t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f13593u = 4;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f13594v = 5;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f13595w = 6;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f13596x = 7;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f13597y = 8;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f13598z = 9;
    public final int A = 10;
    public final int B = 11;
    public final int C = 12;
    public final int D = 13;
    public final int E = 14;
    public final int F = 15;
    public byte G = 0;
    public Runnable H = new j();
    public int I = 100;
    public Runnable J = new RunnableC0072a();
    public int K = 0;

    /* JADX INFO: renamed from: module.canbus.a$a, reason: collision with other inner class name */
    public class RunnableC0072a implements Runnable {
        public RunnableC0072a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (a.this.I > 100) {
                    a.q3(a.this);
                    if (a.this.K == a.this.I / 100) {
                        a.this.K = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = a.M = a.R[0];
                } else {
                    int unused2 = a.M = a.R[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (a.this.f7886a.f8307b == 1 && a.L != a.M) {
                    a.this.A3();
                }
                if (a.this.f7886a.f8308c == 1) {
                    if (a.N != a.P) {
                        a.this.z3();
                    }
                    if (a.O != a.Q) {
                        a.this.y3();
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
            a.this.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.c3();
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
            a.this.A3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            int i2 = aVar.f13583k + 1;
            aVar.f13583k = i2;
            if (u0.b.f17306a0 == 1) {
                if (i2 % 4 == 1) {
                    z.k.s(227, 160, 2, 3, 0);
                }
                if (a.this.f13583k % 4 == 2) {
                    z.k.s(227, 160, 2, 4, 0);
                }
                if (a.this.f13583k % 4 == 3) {
                    z.k.s(227, 160, 2, 5, 0);
                }
                a aVar2 = a.this;
                if (aVar2.f13583k % 4 == 0) {
                    aVar2.f13583k = 0;
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(a.this.f13587o);
            a.this.f13585m = (byte) 5;
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            byte b2 = (byte) (aVar.f13585m - 1);
            aVar.f13585m = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, 1);
                z.k.s(227, 144, 2, 48, 0);
            } else {
                l0.b0.p0(aVar.f13587o);
                a.this.f13585m = (byte) 5;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 144, 2, 65, 2);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            byte b2 = (byte) (aVar.G + 1);
            aVar.G = b2;
            if (b2 > 5) {
                l0.b0.o0(aVar.H);
                a.this.G = (byte) 0;
            }
        }
    }

    public static class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13609a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13610b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13611c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13612d;

        public k(int i2, int i3) {
            this.f13609a = i2;
            this.f13612d = i3;
        }

        public synchronized void a(int i2) {
            this.f13610b = i2;
            if (!this.f13611c) {
                this.f13611c = true;
                o1.k.a().postDelayed(this, this.f13612d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 160, 2, this.f13609a, this.f13610b);
            this.f13611c = false;
        }
    }

    public class l extends BroadcastReceiver {
        public l() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"com.mxnavi.mxnavi.TO_CTRL_GPS_INFO".equals(action)) {
                "com.mxnavi.mxnavi.TO_CTRL_TURNING_INFO".equals(action);
                return;
            }
            if (extras != null) {
                try {
                    switch (extras.getInt("direction")) {
                        case 1:
                            a.this.x3(4);
                            break;
                        case 2:
                            a.this.x3(8);
                            break;
                        case 3:
                            a.this.x3(12);
                            break;
                        case 4:
                            a.this.x3(0);
                            break;
                        case 5:
                            a.this.x3(6);
                            break;
                        case 6:
                            a.this.x3(2);
                            break;
                        case 7:
                            a.this.x3(10);
                            break;
                        case 8:
                            a.this.x3(14);
                            break;
                        case 9:
                            a.this.x3(5);
                            break;
                        case 10:
                            a.this.x3(7);
                            break;
                        case 11:
                            a.this.x3(3);
                            break;
                        case 12:
                            a.this.x3(1);
                            break;
                        case 13:
                            a.this.x3(11);
                            break;
                        case 14:
                            a.this.x3(9);
                            break;
                        case 15:
                            a.this.x3(13);
                            break;
                        case 16:
                            a.this.x3(15);
                            break;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public /* synthetic */ l(a aVar, b bVar) {
            this();
        }
    }

    public static /* synthetic */ int q3(a aVar) {
        int i2 = aVar.K;
        aVar.K = i2 + 1;
        return i2;
    }

    public static void v3(int i2, int i3) {
        k kVarC = T.c(i2);
        if (kVarC != null) {
            kVarC.a(i3);
        }
    }

    public final synchronized void A3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = L;
        int i3 = M;
        if (i2 < i3) {
            i2++;
        } else if (i2 > i3) {
            i2--;
        }
        v3(0, i2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = S;
            P = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            Q = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        l0.b0.b(this.f13588p);
        this.f13581i = new l(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mxnavi.mxnavi.TO_CTRL_GPS_INFO");
        intentFilter.addAction("com.mxnavi.mxnavi.TO_CTRL_TURNING_INFO");
        App.c().registerReceiver(this.f13581i, intentFilter);
        u0.c.f17386m.a(this.f13586n, 1);
        qt.z(this.f13578f);
        o1.y yVar = y0.g.f18094d;
        yVar.a(this.f13579g, 1);
        y0.g.f18095e.a(this.f13579g, 1);
        w0.e.f17815a.a(this.f13578f, 1);
        w0.e.f17819e.a(this.f13578f, 1);
        u0.c.f17379f.a(this.f13580h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 != 1) {
            if (i2 != 3) {
                return;
            }
            mtVar.f8306a = null;
            return;
        }
        mtVar.f8307b = 1;
        mtVar.f8308c = 1;
        if (nt.a()) {
            init();
            l0.b0.a(this.J);
            w3();
            l0.b0.b(this.f13584l);
            yVar.a(this.f13582j, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == -107) {
            int i4 = bArr[i2 + 2] & 255;
            int i5 = this.f13577e;
            if (i5 != i4) {
                if (i4 == 1) {
                    if (y0.f.f18055i != 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                } else if (i5 == 1 && i4 == 0 && y0.f.f18055i == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                this.f13577e = i4;
            }
            return;
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 55) {
            int i6 = i2 + 2;
            qt.y0(118, (bArr[i6] >> 5) & 7);
            qt.y0(119, (bArr[i6] >> 4) & 1);
            qt.y0(114, (bArr[i6] >> 3) & 1);
            qt.y0(115, (bArr[i6] >> 2) & 1);
            qt.y0(116, (bArr[i6] >> 1) & 1);
            qt.y0(117, (bArr[i6] >> 0) & 1);
            return;
        }
        if (b3 == 65) {
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
            int i7 = i2 + 3;
            int i8 = i2 + 4;
            qt.y0(110, ((bArr[i7] << 8) & 65280) | ((bArr[i8] << 0) & 255));
            qt.y0(1032, ((bArr[i7] << 8) & 65280) | ((bArr[i8] << 0) & 255));
            qt.y0(109, ((bArr[i2 + 5] << 8) & 65280) | ((bArr[i2 + 6] << 0) & 255));
            qt.y0(105, ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 8] << 0) & 255));
            int i9 = i2 + 9;
            int i10 = i2 + 10;
            qt.y0(121, ((bArr[i9] << 8) & 65280) | ((bArr[i10] << 0) & 255));
            int i11 = ((bArr[i9] << 8) & 65280) | (bArr[i10] & 255);
            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((32768 & i11) != 0 ? 1320 - (((65536 - i11) * 9) / 5) : ((i11 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : (32768 & i11) != 0 ? 1000 - (65536 - i11) : i11 + 1000);
            qt.y0(106, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 0) & 255));
            qt.y0(104, bArr[i2 + 14] & 255);
            return;
        }
        switch (b3) {
            case 32:
                if (nt.a()) {
                    byte b7 = bArr[i2 + 2];
                    byte b8 = bArr[i2 + 3];
                    this.f13575c = b7 & 255;
                    int i12 = 0;
                    while (true) {
                        iArr = this.f13576d;
                        if (i12 < iArr.length) {
                            int i13 = this.f13575c;
                            if (i13 != iArr[i12][0]) {
                                i12++;
                            } else if (i13 != 0) {
                                this.f13574b = i12;
                            }
                        }
                    }
                    if (this.f13575c == 5) {
                        if ((b8 & 255) == 1) {
                            int i14 = h0.c.E;
                            if (i14 == 3 || i14 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                        break;
                    } else {
                        int i15 = b8 & 255;
                        if (i15 != 1) {
                            if (i15 == 0) {
                                int i16 = this.f13574b;
                                if (i16 < iArr.length && i16 != 255) {
                                    l0.b0.l0(iArr[i16][1], 1);
                                    l0.b0.o0(this.H);
                                    this.G = (byte) 0;
                                }
                                this.f13574b = 255;
                            }
                            break;
                        } else if (i12 < iArr.length && (b2 = this.G) == 0) {
                            this.G = (byte) (b2 + 1);
                            l0.b0.l0(iArr[i12][1], 0);
                            l0.b0.a(this.H);
                            break;
                        }
                    }
                }
                break;
            case 33:
                byte b9 = bArr[i2 + 2];
                qt.y0(10, (b9 >> 7) & 1);
                qt.y0(11, (b9 >> 6) & 1);
                qt.y0(12, (b9 >> 5) & 1);
                qt.y0(13, (b9 >> 4) & 1);
                qt.y0(26, (b9 >> 3) & 1);
                qt.y0(14, (b9 >> 2) & 1);
                qt.y0(15, (b9 >> 1) & 1);
                qt.y0(38, (b9 >> 0) & 1);
                byte b10 = bArr[i2 + 3];
                qt.y0(18, (b10 >> 7) & 1);
                qt.y0(19, (b10 >> 6) & 1);
                qt.y0(20, (b10 >> 5) & 1);
                qt.y0(21, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
                int i17 = i2 + 4;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 5;
                int i20 = bArr[i19] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i19] & 255;
                    i20 = bArr[i17] & 255;
                }
                if (i18 == 0) {
                    qt.y0(27, -2);
                } else if (i18 == 31) {
                    qt.y0(27, -3);
                } else if (i18 < 1 || i18 > 17) {
                    qt.y0(27, -1);
                } else {
                    int i21 = (i18 * 5) + 175;
                    if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                        i21 = (i18 * 9) + 635;
                    }
                    qt.y0(27, i21);
                }
                if (i20 == 0) {
                    qt.y0(28, -2);
                } else if (i20 == 31) {
                    qt.y0(28, -3);
                } else if (i20 < 1 || i20 > 17) {
                    qt.y0(28, -1);
                } else {
                    int i22 = (i20 * 5) + 175;
                    if (SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                        i22 = (i20 * 9) + 635;
                    }
                    qt.y0(28, i22);
                }
                int i23 = i2 + 6;
                qt.y0(37, (bArr[i23] >> 6) & 1);
                byte b11 = bArr[i23];
                qt.y0(54, (b11 >> 7) & 1);
                qt.y0(29, (b11 >> 4) & 3);
                qt.y0(67, (b11 >> 3) & 1);
                qt.y0(53, (b11 >> 2) & 1);
                qt.y0(30, (b11 >> 0) & 3);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i24 = i2 + 2;
                    int i25 = bArr[i24] & 255;
                    int i26 = i2 + 3;
                    int i27 = bArr[i26] & 255;
                    int i28 = i2 + 4;
                    int i29 = bArr[i28] & 255;
                    int i30 = i2 + 5;
                    int i31 = bArr[i30] & 255;
                    if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                        if (i25 != 0 || i27 != 0 || i29 != 0 || i31 != 0) {
                            u0.d.C2(1);
                        } else if (u0.b.f17350p == 1) {
                            l0.c0.f13017k = 2;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    l0.c0.f13013g = i25;
                    l0.c0.f13014h = i27;
                    l0.c0.f13015i = i29;
                    l0.c0.f13016j = i31;
                    u0.d.D2(l0.c0.u1(bArr[i24] & 255));
                    u0.d.E2(l0.c0.u1(bArr[i26] & 255));
                    u0.d.F2(l0.c0.u1(bArr[i28] & 255));
                    u0.d.G2(l0.c0.u1(bArr[i30] & 255));
                }
                break;
            case 36:
                if (nt.f8637c != 3) {
                    byte b12 = bArr[i2 + 3];
                    qt.y0(0, (b12 >> 5) & 1);
                    qt.y0(5, (b12 >> 4) & 1);
                    qt.y0(4, (b12 >> 3) & 1);
                    qt.y0(3, (b12 >> 2) & 1);
                    if (!SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b12 >> 0) & 1);
                        qt.y0(2, (b12 >> 1) & 1);
                    } else {
                        qt.y0(1, (b12 >> 1) & 1);
                        qt.y0(2, (b12 >> 0) & 1);
                    }
                } else if (nt.a()) {
                    if ((bArr[i2 + 2] & 1) != 1) {
                        qt.a(0);
                    } else {
                        qt.a(1);
                    }
                }
                break;
            case 37:
                byte b13 = bArr[i2 + 2];
                qt.y0(107, (b13 >> 1) & 1);
                qt.y0(108, (b13 >> 0) & 1);
                break;
            case 38:
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 11000);
                break;
            case 39:
                if (nt.a()) {
                    byte b14 = bArr[i2 + 3];
                    byte b15 = bArr[i2 + 4];
                    byte b16 = bArr[i2 + 5];
                    L = o0.a(b14 & 255, 0, 30);
                    N = o0.a(b16 & 255, 248, 8);
                    O = o0.a(b15 & 255, 248, 8);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        if (this.f13581i != null) {
            App.c().unregisterReceiver(this.f13581i);
        }
        l0.b0.p0(this.f13588p);
        l0.b0.o0(this.J);
        l0.b0.p0(this.f13584l);
        qt.q0(this.f13578f);
        o1.y yVar = y0.g.f18094d;
        yVar.d(this.f13579g);
        y0.g.f18095e.d(this.f13579g);
        w0.e.f17815a.d(this.f13578f);
        w0.e.f17819e.d(this.f13578f);
        u0.c.f17379f.d(this.f13580h);
        yVar.d(this.f13582j);
        u0.c.f17386m.d(this.f13586n);
        l0.b0.p0(this.f13587o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 122) {
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
        } else if (i2 == 3) {
            z.k.s(227, 144, 2, 65, 1);
            z.k.s(227, 144, 2, 65, 3);
        } else {
            if (i2 != 4) {
                return;
            }
            z.k.s(227, 167, 1, 1);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            M = R[o0.a(i2, 0, 36)];
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00c2  */
    public void a3() {
        b3();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[6];
            iArr[0] = 194;
            iArr[1] = 4;
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[2] = 1;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 65537) {
                iArr[2] = 2;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 65538) {
                iArr[2] = 3;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 0) {
                iArr[2] = 17;
            } else if (i6 == 1) {
                iArr[2] = 18;
            }
            iArr[3] = i4 & 255;
            iArr[4] = (i4 >> 8) & 255;
            int i7 = i5 % 6;
            if (i7 != 0 || i5 == 0) {
                iArr[5] = i7;
            } else {
                iArr[5] = 6;
            }
            int[] iArr2 = new int[7];
            iArr2[0] = 227;
            while (i3 < 6) {
                int i8 = i3 + 1;
                iArr2[i8] = iArr[i3];
                i3 = i8;
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
            int i9 = o0.e.f16794r;
            iArr3[6] = i9 / 60;
            iArr3[7] = i9 % 60;
            int[] iArr4 = new int[9];
            iArr4[0] = 227;
            while (i3 < 8) {
                int i10 = i3 + 1;
                iArr4[i10] = iArr3[i3];
                i3 = i10;
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
                    int i11 = i3 + 1;
                    iArr6[i11] = iArr5[i3];
                    i3 = i11;
                }
                z.k.s(iArr6);
                return;
            }
            int i12 = u0.b.s3;
            int i13 = u0.b.r3;
            int i14 = u0.b.t3;
            int[] iArr7 = {195, 6, i12 & 255, (i12 >> 8) & 255, i13 & 255, (i13 >> 8) & 255, i14 / 60, i14 % 60};
            int[] iArr8 = new int[9];
            iArr8[0] = 227;
            while (i3 < 8) {
                int i15 = i3 + 1;
                iArr8[i15] = iArr7[i3];
                i3 = i15;
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

    public final void init() {
        o1.f<k> fVar = T;
        fVar.f(2, new k(2, 100));
        fVar.f(1, new k(1, 100));
        fVar.f(0, new k(0, 100));
    }

    public final void w3() {
        Z2(y0.f.f18037c);
        R2(null);
    }

    public final void x3(int i2) {
        z.k.s(227, 162, 8, 128, i2, 0, 0, 0, 0, 0, 0);
    }

    public final synchronized void y3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        v3(1, Q);
    }

    public final synchronized void z3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        v3(2, P);
    }
}
