package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class t extends lt {
    public static int M;
    public static int N;
    public static final int[] O = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10452d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10455g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10458j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f10450b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f10451c = new int[15][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10453e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f10454f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 4}, new int[]{20, 3}, new int[]{21, 6}, new int[]{22, 16}, new int[]{80, 2}, new int[]{81, 1}, new int[]{82, 24}, new int[]{83, 0}, new int[]{84, 16}, new int[]{85, 18}, new int[]{86, 5}, new int[]{87, 8}, new int[]{88, 7}, new int[]{89, 30}, new int[]{90, 31}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 35}, new int[]{134, 34}, new int[]{135, 25}, new int[]{136, 2}, new int[]{11, 2}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10456h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f10457i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 4}, new int[]{20, 3}, new int[]{21, 6}, new int[]{22, 16}, new int[]{80, 2}, new int[]{81, 1}, new int[]{82, 24}, new int[]{83, 0}, new int[]{84, 16}, new int[]{85, 18}, new int[]{86, 5}, new int[]{87, 8}, new int[]{88, 7}, new int[]{89, 30}, new int[]{90, 31}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 4}, new int[]{134, 3}, new int[]{135, 25}, new int[]{136, 2}, new int[]{11, 2}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10459k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f10460l = {new int[]{1, 75}, new int[]{2, 74}, new int[]{3, 22}, new int[]{4, 53}, new int[]{5, 54}, new int[]{6, 54}, new int[]{7, 76}, new int[]{8, 52}, new int[]{9, -1}, new int[]{17, 18}, new int[]{18, 26}, new int[]{19, 4}, new int[]{20, 3}, new int[]{21, 26}, new int[]{22, 18}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10461m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10462n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10463o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f10464p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10465q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10466r = new g();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String[] f10467s = new String[5];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f10468t = 0.0f;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f10469u = 255;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f10470v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f10471w = new h();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f10472x = new i();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f10473y = new j();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f10474z = new k();
    public String A = ProxyProperties.LOCAL_EXCL_LIST;
    public int B = -1;
    public Runnable C = new l();
    public Runnable D = new m();
    public Runnable E = new n();
    public byte F = 5;
    public Runnable G = new a();
    public Runnable H = new b();
    public Runnable I = new c();
    public Runnable J = new d();
    public Runnable K = new e();
    public int L = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(t.this.H);
            t.this.F = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t tVar = t.this;
            byte b2 = (byte) (tVar.F - 1);
            tVar.F = b2;
            if (b2 <= 0) {
                l0.b0.p0(tVar.H);
                t.this.F = (byte) 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            switch (nt.f8637c) {
                case 41:
                    z.k.s(227, 202, 1, 0);
                    break;
                case 42:
                    z.k.s(227, 202, 1, 0);
                    break;
                case 43:
                    z.k.s(227, 202, 1, 1);
                    break;
                case 44:
                    z.k.s(227, 202, 1, 2);
                    break;
                case 45:
                    z.k.s(227, 202, 1, 3);
                    break;
                case 46:
                    z.k.s(227, 202, 1, 4);
                    break;
                case 47:
                    z.k.s(227, 202, 1, 5);
                    break;
                case 48:
                    z.k.s(227, 202, 1, 6);
                    break;
                case 49:
                    z.k.s(227, 202, 1, 7);
                    break;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.d3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.b3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.t3((byte) 3, ProxyProperties.LOCAL_EXCL_LIST);
            t.this.t3((byte) 5, ProxyProperties.LOCAL_EXCL_LIST);
            t.this.t3((byte) 4, ProxyProperties.LOCAL_EXCL_LIST);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.t3((byte) 6, w0.d.H);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i2 = 0; i2 < 5; i2++) {
                t.this.f10467s[i2] = null;
            }
            int i3 = 0;
            int iCharAt = 0;
            while (i3 < 5) {
                String[] strArr = h0.c.f2443k;
                if (strArr[i3] != null) {
                    t.this.f10467s[i3] = strArr[i3].substring(4).substring(0, h0.c.f2443k[i3].substring(4).indexOf("*-*"));
                    iCharAt = (h0.c.f2443k[i3].charAt(0) - '0') & 255;
                }
                int i4 = i3 + 1;
                t.this.a3(i4, iCharAt, h0.c.f2443k[i3]);
                i3 = i4;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.f10468t = u0.b.f17359s0;
            if ((t.this.f10468t <= 22.5d && t.this.f10468t >= 0.0f) || (t.this.f10468t >= 337.5d && t.this.f10468t <= 360.0f)) {
                t.this.f10470v = 0;
            } else if (t.this.f10468t > 22.5d && t.this.f10468t < 67.5d) {
                t.this.f10470v = 8;
            } else if (t.this.f10468t >= 67.5d && t.this.f10468t <= 112.5d) {
                t.this.f10470v = 16;
            } else if (t.this.f10468t > 112.5d && t.this.f10468t < 157.5d) {
                t.this.f10470v = 24;
            } else if (t.this.f10468t >= 157.5d && t.this.f10468t <= 202.5d) {
                t.this.f10470v = 32;
            } else if (t.this.f10468t > 202.5d && t.this.f10468t < 247.5d) {
                t.this.f10470v = 40;
            } else if (t.this.f10468t >= 247.5d && t.this.f10468t <= 292.5d) {
                t.this.f10470v = 48;
            } else if (t.this.f10468t <= 292.5d || t.this.f10468t >= 337.5d) {
                t.this.f10470v = 0;
            } else {
                t.this.f10470v = 56;
            }
            if (t.this.f10470v != t.this.f10469u) {
                z.k.s(227, 201, 2, t.this.f10470v, 0);
                t tVar = t.this;
                tVar.f10469u = tVar.f10470v;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 3 || i2 == 10) {
                return;
            }
            t.this.t3((byte) 3, u0.b.i3);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 3 || i2 == 10) {
                t.this.t3((byte) 3, u0.b.j3);
            } else {
                t.this.t3((byte) 5, u0.b.j3);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.t3((byte) 4, u0.b.k3);
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (!t.this.A.equals(h0.c.f2437h)) {
                t tVar = t.this;
                String str = h0.c.f2437h;
                tVar.A = str;
                if (str == null) {
                    tVar.A = ProxyProperties.LOCAL_EXCL_LIST;
                } else {
                    z2 = str.isEmpty() ? false : true;
                }
            }
            if (h0.c.E != t.this.B) {
                int i2 = h0.c.E;
                if (i2 == 2) {
                    if (t.this.B == 4 || t.this.B == 5 || t.this.B == 3) {
                        z.k.s(227, 192, 8, 5, 64, 4, 0, 0, 0, 0, 0);
                    }
                } else if (i2 == 4 || i2 == 5 || i2 == 3) {
                    if (i2 == 3) {
                        z.k.s(227, 192, 8, 5, 64, 3, 0, 0, 0, 0, 0);
                    } else if (i2 == 4) {
                        z.k.s(227, 192, 8, 5, 64, 1, 0, 0, 0, 0, 0);
                    } else if (i2 == 5) {
                        z.k.s(227, 192, 8, 5, 64, 2, 0, 0, 0, 0, 0);
                    }
                }
                t.this.B = h0.c.E;
            }
            if (z2) {
                t tVar2 = t.this;
                tVar2.t3((byte) 1, tVar2.A);
                return;
            }
            String str2 = t.this.A;
            if (str2 == null || str2.isEmpty()) {
                t.this.t3((byte) 1, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            if (i2 == 3) {
                z.k.s(227, 192, 8, 5, 64, 3, 0, 0, 0, 0, 0);
            } else if (i2 == 4) {
                z.k.s(227, 192, 8, 5, 64, 1, 0, 0, 0, 0, 0);
            } else if (i2 != 5) {
                z.k.s(227, 192, 8, 5, 64, 4, 0, 0, 0, 0, 0);
            } else {
                z.k.s(227, 192, 8, 5, 64, 2, 0, 0, 0, 0, 0);
            }
            String str = h0.c.f2441j;
            if (str == null || str.isEmpty()) {
                t.this.t3((byte) 2, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 7, t.O[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 2 || i2 == 7 || i2 == 10 || i2 == 56 || i2 == 57) {
            y0.f.C0 = 8;
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        super.O2(iArr);
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0 && nt.f8645g[21] >= 1) {
                    e3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        e3(16);
                    }
                } else if (nt.f8645g[11] == 0) {
                    e3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        e3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    e3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        e3(38);
                    }
                } else if (nt.f8645g[15] == 0) {
                    e3(38);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        e3(4);
                    }
                } else if (nt.f8645g[16] == 0) {
                    e3(4);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        e3(35);
                    }
                } else if (nt.f8645g[12] == 0) {
                    e3(35);
                }
                break;
            case 39:
                if (iArr[1] == -2) {
                    e3(21);
                } else if (iArr[1] == -1) {
                    e3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    e3(10);
                } else if (iArr[1] == 1) {
                    e3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    e3(12);
                } else if (iArr[1] == 1) {
                    e3(11);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0089  */
    /* JADX WARN: Code duplicated, block: B:28:0x0091  */
    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        int i2 = nt.f8637c;
        if (i2 == 9 || i2 == 10) {
            mtVar.f8314i = 1;
        }
        if (i2 == 2 || i2 == 7 || i2 == 10) {
            mtVar.f8307b = 1;
            if (nt.a()) {
                y0.g.f18094d.a(this.E, 1);
            }
        } else if (i2 == 40) {
            w0.e.f17817c.a(this.f10465q, 1);
            y0.g.f18094d.a(this.I, 1);
            o1.y yVar = u0.c.f17374a;
            yVar.a(this.J, 1);
            yVar.a(this.K, 1);
            u0.c.f17391r.a(this.J, 1);
            u0.c.f17392s.a(this.J, 1);
            u0.c.f17393t.a(this.J, 1);
            w0.e.f17815a.a(this.J, 1);
            w0.e.f17819e.a(this.J, 1);
            h0.d.f2473l.a(this.D, 1);
        } else if (i2 == 52 || i2 == 36 || i2 == 37 || i2 == 56 || i2 == 57) {
            mtVar.f8307b = 1;
            if (nt.a()) {
                y0.g.f18094d.a(this.E, 1);
            }
        }
        qt.z(this.J);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.a(this.J, 1);
        yVar2.a(this.K, 1);
        u0.c.f17391r.a(this.J, 1);
        u0.c.f17392s.a(this.J, 1);
        u0.c.f17393t.a(this.J, 1);
        w0.e.f17815a.a(this.J, 1);
        w0.e.f17819e.a(this.J, 1);
        u0.c.f17386m.a(this.G, 1);
        u0.c.f17388o.a(this.f10472x, 1);
        u0.c.f17389p.a(this.f10473y, 1);
        u0.c.f17390q.a(this.f10474z, 1);
        h0.d.f2464c.a(this.C, 1);
        h0.d.f2462a.a(this.C, 1);
        o1.h.f16865a.a(this.f10471w, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:467:0x0da7. Please report as an issue. */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        char c2;
        int i5;
        int i6;
        int i7;
        int i8;
        int[][] iArr;
        int i9;
        int[][] iArr2;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        char c3;
        int[][] iArr3;
        int i18;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == 26) {
            qt.y0(134, (bArr[i2 + 3] >> 6) & 1);
        }
        if (b3 == 53) {
            int i19 = i2 + 2;
            int i20 = i2 + 3;
            qt.y0(157, ((bArr[i19] & 255) << 8) | (bArr[i20] & 255));
            int i21 = i2 + 4;
            qt.y0(158, bArr[i21] & 255);
            qt.y0(1032, ((bArr[i19] & 255) << 8) | (bArr[i20] & 255));
            qt.y0(1031, bArr[i21] & 255);
            return;
        }
        if (b3 == 65) {
            byte b4 = bArr[i2 + 2];
            if (b4 != 1) {
                if (b4 != 2) {
                    if (b4 != 3) {
                        return;
                    }
                    qt.y0(155, ((bArr[i2 + 3] & 255) << 8) | ((bArr[i2 + 4] & 255) << 0));
                    int i22 = i2 + 9;
                    qt.y0(156, bArr[i22] & 255);
                    int i23 = bArr[i22] & 255;
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i23 & 128) != 0 ? 1320 - ((256 - i23) * 18) : (i23 * 18) + 1320) | 268435456) & (-1) : (i23 & 128) <= 0 ? (i23 * 10) + 1000 : 1000 - (((255 - i23) + 1) * 10));
                    return;
                }
                int i24 = ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8) | ((bArr[i2 + 5] & 255) << 0);
                qt.y0(150, i24);
                o1.x[] xVarArr = nt.f8643f;
                o1.x.C(xVarArr, 1049, new int[]{20, i24}, null, null);
                int i25 = ((bArr[i2 + 6] & 255) << 8) | ((bArr[i2 + 7] & 255) << 0);
                qt.y0(151, i25);
                o1.x.C(xVarArr, 1049, new int[]{5, i25}, null, null);
                int i26 = ((bArr[i2 + 8] & 255) << 16) | ((bArr[i2 + 9] & 255) << 8) | ((bArr[i2 + 10] & 255) << 0);
                qt.y0(152, i26);
                o1.x.C(xVarArr, 1049, new int[]{21, i26}, null, null);
                int i27 = ((bArr[i2 + 11] & 255) << 16) | ((bArr[i2 + 12] & 255) << 8) | ((bArr[i2 + 13] & 255) << 0);
                qt.y0(153, i27);
                o1.x.C(xVarArr, 1049, new int[]{22, i27}, null, null);
                int i28 = ((bArr[i2 + 14] & 255) << 8) | ((bArr[i2 + 15] & 255) << 0);
                qt.y0(154, i28);
                int i29 = i28 / 100;
                qt.y0(1031, i29);
                o1.x.C(xVarArr, 1049, new int[]{1, i29}, null, null);
                qt.y0(98, ((bArr[i2 + 16] & 255) << 8) | ((bArr[i2 + 17] & 255) << 0));
                return;
            }
            byte b5 = bArr[i2 + 3];
            qt.y0(0, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 3) & 1);
            qt.y0(3, (b5 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 0) & 1);
                qt.y0(1, (b5 >> 1) & 1);
            } else {
                qt.y0(1, (b5 >> 0) & 1);
                qt.y0(2, (b5 >> 1) & 1);
            }
            o1.x[] xVarArr2 = nt.f8643f;
            int i30 = i2 + 4;
            o1.x.C(xVarArr2, 1049, new int[]{3, (bArr[i30] >> 4) & 1}, null, null);
            int i31 = bArr[i30] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i31 == 0) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 4}, null, null);
            } else if (i31 == 1) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 3}, null, null);
            } else if (i31 == 2) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 2}, null, null);
            } else if (i31 == 4) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 1}, null, null);
            } else if (i31 == 8) {
                o1.x.C(xVarArr2, 1049, new int[]{4, 11}, null, null);
            }
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            int i32 = (b6 >> 7) & 1;
            qt.y0(136, i32);
            int i33 = (b6 >> 6) & 1;
            qt.y0(137, i33);
            int i34 = (b6 >> 5) & 1;
            qt.y0(138, i34);
            qt.y0(139, (b7 >> 7) & 1);
            qt.y0(140, (b7 >> 6) & 1);
            int i35 = (b7 >> 5) & 1;
            qt.y0(141, i35);
            int i36 = (b7 >> 4) & 1;
            qt.y0(142, i36);
            int i37 = (b7 >> 3) & 1;
            qt.y0(143, i37);
            int i38 = (b7 >> 2) & 1;
            qt.y0(144, i38);
            int i39 = (b7 >> 1) & 1;
            qt.y0(145, i39);
            o1.x.C(xVarArr2, 1049, new int[]{11, ((i34 << 7) & 128) | ((i32 << 6) & 64) | ((i33 << 5) & 32) | ((i36 << 4) & 16) | ((i35 << 3) & 8) | ((i39 << 2) & 4) | ((i38 << 1) & 2) | ((i37 << 0) & 1)}, null, null);
            l0.c0.a(i35, i36, i37);
            byte b8 = bArr[i2 + 8];
            byte b9 = bArr[i2 + 9];
            qt.y0(146, (b8 >> 2) & 3);
            qt.y0(147, (b8 >> 1) & 1);
            qt.y0(148, b8 & 1);
            qt.y0(149, (b9 >> 5) & 3);
            return;
        }
        if (b3 == 85) {
            int i40 = nt.f8633a;
            if (i40 == 196628 || i40 == 2555924) {
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                byte b12 = bArr[i2 + 4];
                int i41 = bArr[i2 + 5];
                int i42 = bArr[i2 + 6];
                int i43 = b10 & 255;
                if (i43 == 16) {
                    i4 = 1;
                    qt.y0(27, -2);
                } else if (i43 == 80) {
                    i4 = 1;
                    qt.y0(27, -3);
                } else if (i43 < 16) {
                    i4 = 1;
                } else {
                    i4 = 1;
                    qt.y0(27, ((i43 - 36) * 5) + 180);
                }
                int i44 = b11 & 255;
                if (i44 == 16) {
                    c2 = 0;
                    int[] iArr4 = new int[i4];
                    iArr4[0] = -2;
                    qt.y0(28, iArr4);
                } else if (i44 == 80) {
                    c2 = 0;
                    int[] iArr5 = new int[i4];
                    iArr5[0] = -3;
                    qt.y0(28, iArr5);
                } else if (i44 < 16) {
                    c2 = 0;
                } else {
                    int[] iArr6 = new int[i4];
                    c2 = 0;
                    iArr6[0] = ((i44 - 36) * 5) + 180;
                    qt.y0(28, iArr6);
                }
                int[] iArr7 = new int[i4];
                iArr7[c2] = b12 & DhcpPacket.DHCP_DOMAIN_NAME & 255;
                qt.y0(21, iArr7);
                switch ((b12 >> 4) & 15) {
                    case 1:
                        i5 = 1;
                        i6 = 0;
                        i7 = 1;
                        i8 = 0;
                        break;
                    case 2:
                        i5 = 1;
                        i6 = 1;
                        i7 = 1;
                        i8 = 0;
                        break;
                    case 3:
                        i5 = 0;
                        i6 = 1;
                        i7 = 1;
                        i8 = 0;
                        break;
                    case 4:
                        i5 = 0;
                        i6 = 1;
                        i7 = 1;
                        i8 = 1;
                        break;
                    case 5:
                        i5 = 1;
                        i6 = 0;
                        i7 = 1;
                        i8 = 1;
                        break;
                    case 6:
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        i8 = 1;
                        break;
                    case 7:
                        i5 = 1;
                        i6 = 1;
                        i7 = 1;
                        i8 = 1;
                        break;
                    default:
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        i8 = 0;
                        break;
                }
                int[] iArr8 = new int[i7];
                iArr8[0] = i8;
                qt.y0(18, iArr8);
                int[] iArr9 = new int[i7];
                iArr9[0] = i5;
                qt.y0(19, iArr9);
                int[] iArr10 = new int[i7];
                iArr10[0] = i6;
                qt.y0(20, iArr10);
                int[] iArr11 = new int[i7];
                iArr11[0] = i41 & 3;
                qt.y0(29, iArr11);
                int[] iArr12 = new int[i7];
                iArr12[0] = (i41 >> 2) & i7;
                qt.y0(67, iArr12);
                int[] iArr13 = new int[i7];
                iArr13[0] = 3 & (i41 >> 4);
                qt.y0(30, iArr13);
                int[] iArr14 = new int[i7];
                iArr14[0] = i42 & 1;
                qt.y0(13, iArr14);
                int[] iArr15 = new int[i7];
                iArr15[0] = (i42 >> 1) & i7;
                qt.y0(11, iArr15);
                int[] iArr16 = new int[i7];
                iArr16[0] = (i42 >> 2) & i7;
                qt.y0(14, iArr16);
                int[] iArr17 = new int[i7];
                iArr17[0] = (i42 >> 3) & i7;
                qt.y0(12, iArr17);
                int[] iArr18 = new int[i7];
                iArr18[0] = (i42 >> 4) & i7;
                qt.y0(53, iArr18);
                int[] iArr19 = new int[i7];
                iArr19[0] = (i42 >> 6) & i7;
                qt.y0(16, iArr19);
                int[] iArr20 = new int[i7];
                iArr20[0] = (i42 >> 7) & i7;
                qt.y0(15, iArr20);
                return;
            }
            return;
        }
        switch (b3) {
            case 29:
                if (nt.a()) {
                    int i45 = i2 + 2;
                    int i46 = bArr[i45] & 255;
                    int i47 = i2 + 3;
                    int i48 = bArr[i47] & 255;
                    int i49 = i2 + 4;
                    int i50 = bArr[i49] & 255;
                    int i51 = i2 + 5;
                    int i52 = bArr[i51] & 255;
                    if (i46 == 0 && i48 == 0 && i50 == 0 && i52 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i46 || l0.c0.f13014h != i48 || l0.c0.f13015i != i50 || l0.c0.f13016j != i52) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i46;
                    l0.c0.f13014h = i48;
                    l0.c0.f13015i = i50;
                    l0.c0.f13016j = i52;
                    u0.d.D2(l0.c0.E0(bArr[i45] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i47] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i49] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i51] & 255));
                }
                break;
            case 30:
                if (nt.a()) {
                    u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                }
                int i53 = i2 + 6;
                qt.y0(191, (bArr[i53] >> 7) & 1);
                qt.y0(192, (bArr[i53] >> 6) & 1);
                qt.y0(193, (bArr[i53] >> 5) & 1);
                qt.y0(194, (bArr[i53] >> 4) & 1);
                qt.y0(195, (bArr[i53] >> 0) & 7);
                break;
            case 31:
                byte b13 = bArr[i2 + 2];
                qt.y0(197, (b13 >> 0) & 15);
                qt.y0(99, (b13 >> 7) & 1);
                qt.y0(100, bArr[i2 + 3] & 255);
                break;
            case 32:
                if (nt.a()) {
                    byte b14 = bArr[i2 + 2];
                    byte b15 = bArr[i2 + 3];
                    if (nt.f8637c != 40) {
                        this.f10453e = b14 & 255;
                        int i54 = 0;
                        while (true) {
                            iArr = this.f10454f;
                            if (i54 < iArr.length) {
                                int i55 = this.f10453e;
                                if (i55 != iArr[i54][0]) {
                                    i54++;
                                } else if (i55 != 0) {
                                    this.f10452d = i54;
                                }
                            }
                        }
                        int i56 = this.f10453e;
                        if (i56 == 7) {
                            int i57 = this.f10462n;
                            if (i57 != b15) {
                                if ((b15 == 0 && i57 == 1) || (b15 == 0 && i57 == 2 && this.f10463o < 5)) {
                                    i9 = 0;
                                    l0.b0.l0(2, 0);
                                    l0.b0.l0(2, 1);
                                } else {
                                    i9 = 0;
                                }
                                this.f10463o = i9;
                                this.f10462n = b15;
                            } else if (b15 == 2) {
                                int i58 = this.f10463o + 1;
                                this.f10463o = i58;
                                if (i58 == 5) {
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                }
                            }
                            break;
                        } else if (i56 == 9) {
                            if (b15 == 1) {
                                int i59 = h0.c.E;
                                if (i59 == 3 || i59 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else if (u0.i.l3().r3()) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                            break;
                        } else {
                            switch (i56) {
                                case 87:
                                    int i60 = 0;
                                    int i61 = 0;
                                    while (i61 < (b15 & 255)) {
                                        l0.b0.l0(8, i60);
                                        i61++;
                                        i60 = 0;
                                    }
                                    l0.b0.l0(8, 1);
                                    break;
                                case 88:
                                    for (int i62 = 0; i62 < (b15 & 255); i62++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                    break;
                                case 89:
                                    for (int i63 = 0; i63 < (b15 & 255); i63++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                    break;
                                case 90:
                                    for (int i64 = 0; i64 < (b15 & 255); i64++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                    break;
                                default:
                                    int i65 = b15 & 255;
                                    if (i65 == 1) {
                                        if (i54 < iArr.length) {
                                            l0.b0.l0(iArr[i54][1], 0);
                                        }
                                    } else if (i65 == 0) {
                                        int i66 = this.f10452d;
                                        if (i66 < iArr.length && i66 != 255) {
                                            l0.b0.l0(iArr[i66][1], 1);
                                        }
                                        this.f10452d = 255;
                                    }
                                    break;
                            }
                        }
                    } else {
                        this.f10456h = b14 & 255;
                        int i67 = 0;
                        while (true) {
                            iArr2 = this.f10457i;
                            if (i67 < iArr2.length) {
                                int i68 = this.f10456h;
                                if (i68 != iArr2[i67][0]) {
                                    i67++;
                                } else if (i68 != 0) {
                                    this.f10455g = i67;
                                }
                            }
                        }
                        int i69 = this.f10456h;
                        if (i69 != 3) {
                            if (i69 != 4) {
                                if (i69 == 7) {
                                    int i70 = this.f10462n;
                                    if (i70 != b15) {
                                        if ((b15 == 0 && i70 == 1) || (b15 == 0 && i70 == 2 && this.f10463o < 5)) {
                                            i12 = 0;
                                            l0.b0.l0(2, 0);
                                            l0.b0.l0(2, 1);
                                        } else {
                                            i12 = 0;
                                        }
                                        this.f10463o = i12;
                                        this.f10462n = b15;
                                    } else if (b15 == 2) {
                                        int i71 = this.f10463o + 1;
                                        this.f10463o = i71;
                                        if (i71 == 5) {
                                            l0.b0.l0(12, 0);
                                            l0.b0.l0(12, 1);
                                        }
                                    }
                                    break;
                                } else if (i69 == 9) {
                                    if (this.f10462n != b15) {
                                        this.f10462n = b15;
                                        if (b15 == 1) {
                                            int i72 = h0.c.E;
                                            if (i72 == 3 || i72 == 5) {
                                                l0.b0.l0(26, 0);
                                                l0.b0.l0(26, 1);
                                            } else {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            }
                                        }
                                    }
                                    break;
                                } else if (i69 != 19) {
                                    if (i69 != 20) {
                                        switch (i69) {
                                            case 87:
                                                int i73 = 0;
                                                int i74 = 0;
                                                while (i74 < (b15 & 255)) {
                                                    l0.b0.l0(8, i73);
                                                    i74++;
                                                    i73 = 0;
                                                }
                                                l0.b0.l0(8, 1);
                                                break;
                                            case 88:
                                                for (int i75 = 0; i75 < (b15 & 255); i75++) {
                                                    l0.b0.l0(7, 0);
                                                }
                                                l0.b0.l0(7, 1);
                                                break;
                                            case 89:
                                                for (int i76 = 0; i76 < (b15 & 255); i76++) {
                                                    l0.b0.l0(30, 0);
                                                }
                                                l0.b0.l0(30, 1);
                                                break;
                                            case 90:
                                                for (int i77 = 0; i77 < (b15 & 255); i77++) {
                                                    l0.b0.l0(31, 0);
                                                }
                                                l0.b0.l0(31, 1);
                                                break;
                                            default:
                                                int i78 = b15 & 255;
                                                if (i78 == 1) {
                                                    if (i67 < iArr2.length) {
                                                        l0.b0.l0(iArr2[i67][1], 0);
                                                    }
                                                } else if (i78 == 0) {
                                                    int i79 = this.f10455g;
                                                    if (i79 < iArr2.length && i79 != 255) {
                                                        l0.b0.l0(iArr2[i79][1], 1);
                                                    }
                                                    this.f10455g = 255;
                                                }
                                                break;
                                        }
                                    }
                                }
                            }
                            int i80 = this.f10462n;
                            if (i80 != b15) {
                                if ((b15 == 0 && i80 == 1) || (b15 == 0 && i80 == 2 && this.f10463o < 5)) {
                                    i11 = 0;
                                    l0.b0.l0(3, 0);
                                    l0.b0.l0(3, 1);
                                } else {
                                    i11 = 0;
                                }
                                this.f10463o = i11;
                                this.f10462n = b15;
                            } else if (b15 == 2) {
                                int i81 = this.f10463o + 1;
                                this.f10463o = i81;
                                if (i81 == 5) {
                                    l0.b0.l0(68, 0);
                                    l0.b0.l0(68, 1);
                                }
                            }
                        }
                        int i82 = this.f10462n;
                        if (i82 != b15) {
                            if ((b15 == 0 && i82 == 1) || (b15 == 0 && i82 == 2 && this.f10463o < 5)) {
                                i10 = 0;
                                l0.b0.l0(4, 0);
                                l0.b0.l0(4, 1);
                            } else {
                                i10 = 0;
                            }
                            this.f10463o = i10;
                            this.f10462n = b15;
                        } else if (b15 == 2) {
                            int i83 = this.f10463o + 1;
                            this.f10463o = i83;
                            if (i83 == 5) {
                                l0.b0.l0(67, 0);
                                l0.b0.l0(67, 1);
                            }
                        }
                        break;
                    }
                }
                break;
            case 33:
                int i84 = (bArr[i2 + 8] & 255) << 24;
                qt.y0(101, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i84);
                qt.y0(102, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                qt.y0(103, i84 | (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                break;
            case 34:
                int i85 = (bArr[i2 + 2] & 255) << 24;
                int i86 = (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & 255) << 8);
                if (i86 == 65535) {
                    i86 = 0;
                }
                qt.y0(104, i85 | i86);
                break;
            case 35:
                int i87 = (bArr[i2 + 2] & 255) << 24;
                int i88 = ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
                if (i88 == 65535) {
                    i88 = 0;
                }
                char c4 = 0;
                qt.y0(105, i88 | i87);
                int i89 = 0;
                while (i89 < 5) {
                    int[] iArr21 = new int[2];
                    iArr21[c4] = i89;
                    int i90 = i2 + (i89 * 2);
                    iArr21[1] = (bArr[i90 + 6] & 255) | ((bArr[i90 + 5] & 255) << 8) | i87;
                    if (qt.C0(106, iArr21, this.f10450b[i89])) {
                        this.f10450b[i89] = iArr21;
                    }
                    i89++;
                    c4 = 0;
                }
                break;
            case 36:
                byte b16 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b16 >> 7) & 1);
                    qt.y0(2, (b16 >> 6) & 1);
                } else {
                    qt.y0(1, (b16 >> 6) & 1);
                    qt.y0(2, (b16 >> 7) & 1);
                }
                qt.y0(3, (b16 >> 4) & 1);
                qt.y0(4, (b16 >> 5) & 1);
                qt.y0(5, (b16 >> 3) & 1);
                byte b17 = bArr[i2 + 3];
                qt.y0(0, (b17 >> 7) & 1);
                qt.y0(160, (b17 >> 4) & 1);
                qt.y0(159, (b17 >> 5) & 1);
                break;
            case 37:
                byte b18 = bArr[i2 + 2];
                int[] iArr22 = new int[1];
                if ((b18 & 128) == 0) {
                    i14 = 0;
                    i13 = 0;
                } else {
                    i13 = 1;
                    i14 = 0;
                }
                iArr22[i14] = i13;
                qt.y0(107, iArr22);
                int[] iArr23 = new int[1];
                iArr23[i14] = (b18 & 64) == 0 ? i14 : 1;
                qt.y0(108, iArr23);
                int[] iArr24 = new int[1];
                iArr24[i14] = (b18 & 32) == 0 ? i14 : 1;
                qt.y0(109, iArr24);
                int[] iArr25 = new int[1];
                iArr25[i14] = (b18 & 4) == 0 ? i14 : 1;
                qt.y0(110, iArr25);
                int i91 = (b18 & 3) << 24;
                int i92 = bArr[i2 + 3] & 255;
                if (i92 == 255) {
                    i92 = 16777215;
                }
                qt.y0(111, i92 | i91);
                int i93 = bArr[i2 + 4] & 255;
                if (i93 == 255) {
                    i93 = 16777215;
                }
                qt.y0(112, i93 | i91);
                int i94 = bArr[i2 + 5] & 255;
                if (i94 == 255) {
                    i94 = 16777215;
                }
                qt.y0(113, i94 | i91);
                int i95 = bArr[i2 + 6] & 255;
                if (i95 == 255) {
                    i95 = 16777215;
                }
                qt.y0(114, i95 | i91);
                int i96 = bArr[i2 + 7] & 255;
                if (i96 == 255) {
                    i96 = 16777215;
                }
                qt.y0(115, i91 | i96);
                break;
            case 38:
                byte b19 = bArr[i2 + 2];
                qt.y0(116, (b19 >> 7) & 1);
                qt.y0(117, (b19 >> 4) & 7);
                qt.y0(118, (b19 >> 2) & 3);
                qt.y0(119, (b19 >> 0) & 3);
                byte b20 = bArr[i2 + 3];
                qt.y0(120, (b20 >> 7) & 1);
                qt.y0(121, (b20 >> 6) & 1);
                qt.y0(122, (b20 >> 5) & 1);
                qt.y0(123, (b20 >> 4) & 1);
                qt.y0(124, (b20 >> 0) & 7);
                byte b21 = bArr[i2 + 4];
                qt.y0(125, (b21 >> 7) & 1);
                qt.y0(126, (b21 >> 6) & 1);
                qt.y0(127, (b21 >> 5) & 1);
                qt.y0(128, (b21 >> 4) & 1);
                qt.y0(129, (b21 >> 3) & 1);
                qt.y0(130, (b21 >> 0) & 7);
                byte b22 = bArr[i2 + 5];
                qt.y0(131, (b22 >> 7) & 1);
                qt.y0(132, (b22 >> 6) & 1);
                qt.y0(199, (b22 >> 4) & 3);
                qt.y0(133, (b22 >> 2) & 3);
                qt.y0(200, (b22 >> 0) & 3);
                byte b23 = bArr[i2 + 6];
                qt.y0(201, (b23 >> 5) & 3);
                qt.y0(202, (b23 >> 4) & 1);
                qt.y0(203, (b23 >> 2) & 3);
                qt.y0(204, (b23 >> 0) & 3);
                byte b24 = bArr[i2 + 7];
                qt.y0(198, (b24 >> 6) & 3);
                qt.y0(205, 3 & (b24 >> 4));
                qt.y0(206, (b24 >> 0) & 15);
                break;
            case 39:
                char c5 = 0;
                int i97 = (bArr[i2 + 2] & 255) << 24;
                int i98 = 0;
                while (i98 < 15) {
                    int[] iArr26 = new int[2];
                    iArr26[c5] = i98;
                    int i99 = i2 + (i98 * 2);
                    iArr26[1] = (bArr[i99 + 4] & 255) | ((bArr[i99 + 3] & 255) << 8) | i97;
                    if (qt.C0(135, iArr26, this.f10451c[i98])) {
                        this.f10451c[i98] = iArr26;
                    }
                    i98++;
                    c5 = 0;
                }
                break;
            case 40:
                byte b25 = bArr[i2 + 2];
                qt.y0(10, (b25 >> 7) & 1);
                qt.y0(11, (b25 >> 6) & 1);
                qt.y0(12, (b25 >> 5) & 1);
                qt.y0(13, (b25 >> 3) & 1);
                qt.y0(14, (b25 >> 2) & 1);
                qt.y0(33, (b25 >> 0) & 1);
                byte b26 = bArr[i2 + 3];
                qt.y0(18, (b26 >> 7) & 1);
                qt.y0(19, (b26 >> 6) & 1);
                qt.y0(20, (b26 >> 5) & 1);
                int i100 = b26 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i100 > 7) {
                    i100 = 7;
                }
                qt.y0(21, i100);
                int i101 = i2 + 4;
                int i102 = bArr[i101] & 255;
                int i103 = i2 + 5;
                int i104 = bArr[i103] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i102 = bArr[i103] & 255;
                    i104 = bArr[i101] & 255;
                }
                int i105 = bArr[i2 + 8] & 255;
                int i106 = i2 + 6;
                if (((bArr[i106] >> 0) & 1) == 1) {
                    if (i102 == 0) {
                        qt.y0(27, -2);
                    } else if (i102 != 255) {
                        qt.y0(27, i102 * 10);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i104 == 0) {
                        qt.y0(28, -2);
                    } else if (i104 != 255) {
                        qt.y0(28, i104 * 10);
                    } else {
                        qt.y0(28, -3);
                    }
                    if (i105 != 0) {
                        if (i105 != 255) {
                            qt.y0(40, i104 * 10);
                        } else {
                            qt.y0(40, -3);
                        }
                        i17 = 1;
                        c3 = 0;
                    } else {
                        qt.y0(40, -2);
                        i17 = 1;
                        c3 = 0;
                    }
                } else {
                    if (i102 == 0) {
                        i15 = 1;
                        qt.y0(27, -2);
                    } else if (i102 != 31) {
                        if (i102 >= 1 && i102 <= 29) {
                            qt.y0(27, (i102 * 5) + 175);
                        } else if (i102 >= 32 && i102 <= 35) {
                            qt.y0(27, ((i102 - 32) * 5) + 160);
                        } else if (i102 < 24 || i102 > 37) {
                            i15 = 1;
                            qt.y0(27, -1);
                        } else {
                            i15 = 1;
                            qt.y0(27, ((i102 - 36) * 5) + 150);
                        }
                        i15 = 1;
                    } else {
                        i15 = 1;
                        qt.y0(27, -3);
                    }
                    if (i104 == 0) {
                        i16 = i15;
                        int[] iArr27 = new int[i16];
                        iArr27[0] = -2;
                        qt.y0(28, iArr27);
                    } else if (i104 != 31) {
                        if (i104 >= i15 && i104 <= 29) {
                            int[] iArr28 = new int[i15];
                            iArr28[0] = (i104 * 5) + 175;
                            qt.y0(28, iArr28);
                        } else if (i104 >= 20 && i104 <= 35) {
                            qt.y0(28, ((i104 - 32) * 5) + 160);
                        } else if (i104 < 24 || i104 > 37) {
                            i16 = 1;
                            qt.y0(28, -1);
                        } else {
                            i16 = 1;
                            qt.y0(28, ((i104 - 36) * 5) + 150);
                        }
                        i16 = 1;
                    } else {
                        i16 = i15;
                        int[] iArr29 = new int[i16];
                        iArr29[0] = -3;
                        qt.y0(28, iArr29);
                    }
                    if (i105 == 0) {
                        i17 = i16;
                        c3 = 0;
                        int[] iArr30 = new int[i17];
                        iArr30[0] = -2;
                        qt.y0(40, iArr30);
                    } else if (i105 != 31) {
                        if (i104 >= i16 && i104 <= 29) {
                            int[] iArr31 = new int[i16];
                            iArr31[0] = (i104 * 5) + 175;
                            qt.y0(40, iArr31);
                        } else if (i104 >= 20 && i104 <= 35) {
                            qt.y0(40, ((i104 - 32) * 5) + 160);
                        } else if (i104 < 24 || i104 > 37) {
                            i17 = 1;
                            c3 = 0;
                            qt.y0(40, -1);
                        } else {
                            i17 = 1;
                            c3 = 0;
                            qt.y0(40, ((i104 - 36) * 5) + 150);
                        }
                        i17 = 1;
                        c3 = 0;
                    } else {
                        i17 = i16;
                        c3 = 0;
                        int[] iArr32 = new int[i17];
                        iArr32[0] = -3;
                        qt.y0(40, iArr32);
                    }
                }
                int i107 = bArr[i106];
                int[] iArr33 = new int[i17];
                iArr33[c3] = (i107 >> 7) & i17;
                qt.y0(15, iArr33);
                int[] iArr34 = new int[i17];
                iArr34[c3] = (i107 >> 6) & i17;
                qt.y0(16, iArr34);
                int[] iArr35 = new int[i17];
                iArr35[c3] = (i107 >> 4) & i17;
                qt.y0(52, iArr35);
                int[] iArr36 = new int[i17];
                iArr36[c3] = (i107 >> 2) & i17;
                qt.y0(67, iArr36);
                int[] iArr37 = new int[i17];
                iArr37[c3] = (i107 >> 0) & i17;
                qt.y0(37, iArr37);
                byte b27 = bArr[i2 + 7];
                int[] iArr38 = new int[i17];
                iArr38[c3] = (b27 >> 0) & 3;
                qt.y0(29, iArr38);
                int[] iArr39 = new int[i17];
                iArr39[c3] = (b27 >> 2) & 3;
                qt.y0(30, iArr39);
                int[] iArr40 = new int[i17];
                iArr40[c3] = (b27 >> 4) & 3;
                qt.y0(31, iArr40);
                int[] iArr41 = new int[i17];
                iArr41[c3] = (b27 >> 6) & 3;
                qt.y0(32, iArr41);
                int[] iArr42 = new int[i17];
                int i108 = i2 + 9;
                iArr42[c3] = (bArr[i108] >> 7) & i17;
                qt.y0(38, iArr42);
                int[] iArr43 = new int[i17];
                iArr43[c3] = (bArr[i108] >> 6) & i17;
                qt.y0(46, iArr43);
                int[] iArr44 = new int[i17];
                iArr44[c3] = (bArr[i108] >> 5) & i17;
                qt.y0(47, iArr44);
                int[] iArr45 = new int[i17];
                iArr45[c3] = (bArr[i108] >> 4) & i17;
                qt.y0(43, iArr45);
                int[] iArr46 = new int[i17];
                iArr46[c3] = (bArr[i108] >> 0) & 15;
                qt.y0(44, iArr46);
                break;
            case 41:
                qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
                break;
            default:
                switch (b3) {
                    case 47:
                        if (nt.a()) {
                            this.f10459k = bArr[i2 + 2] & 255;
                            int i109 = 0;
                            while (true) {
                                iArr3 = this.f10460l;
                                if (i109 < iArr3.length) {
                                    int i110 = this.f10459k;
                                    if (i110 != iArr3[i109][0]) {
                                        i109++;
                                    } else if (i110 != 0) {
                                        this.f10458j = i109;
                                    }
                                }
                            }
                            int i111 = this.f10459k;
                            switch (i111) {
                                case 33:
                                    String[] strArr = this.f10467s;
                                    if (strArr[0] != null) {
                                        h0.c.f2425b.c(strArr[0]);
                                    }
                                    break;
                                case 34:
                                    String[] strArr2 = this.f10467s;
                                    if (strArr2[1] != null) {
                                        h0.c.f2425b.c(strArr2[1]);
                                    }
                                    break;
                                case 35:
                                    String[] strArr3 = this.f10467s;
                                    if (strArr3[2] != null) {
                                        h0.c.f2425b.c(strArr3[2]);
                                    }
                                    break;
                                case 36:
                                    String[] strArr4 = this.f10467s;
                                    if (strArr4[3] != null) {
                                        h0.c.f2425b.c(strArr4[3]);
                                    }
                                    break;
                                case 37:
                                    String[] strArr5 = this.f10467s;
                                    if (strArr5[4] != null) {
                                        h0.c.f2425b.c(strArr5[4]);
                                    }
                                    break;
                                default:
                                    if (i111 != 0 && (i18 = this.f10458j) < iArr3.length) {
                                        l0.b0.l0(iArr3[i18][1], 0);
                                        l0.b0.l0(this.f10460l[this.f10458j][1], 1);
                                        break;
                                    }
                                    break;
                            }
                        }
                        break;
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i112 = i2 + 2;
                        qt.y0(183, (bArr[i112] >> 4) & 15);
                        qt.y0(184, (bArr[i112] >> 0) & 15);
                        int i113 = i2 + 3;
                        qt.y0(185, (bArr[i113] >> 4) & 15);
                        qt.y0(186, (bArr[i113] >> 0) & 15);
                        int i114 = i2 + 4;
                        qt.y0(187, (bArr[i114] >> 4) & 15);
                        qt.y0(188, (bArr[i114] >> 0) & 15);
                        qt.y0(189, (bArr[i2 + 5] >> 0) & 255);
                        qt.y0(190, (bArr[i2 + 6] >> 0) & 1);
                        break;
                    case 50:
                        int i115 = nt.f8633a;
                        if (2359316 == i115 || 2424852 == i115) {
                            byte b28 = bArr[i2 + 2];
                            byte b29 = bArr[i2 + 3];
                            byte b30 = bArr[i2 + 4];
                            byte b31 = bArr[i2 + 5];
                            qt.y0(161, b28);
                            qt.y0(162, b29);
                            qt.y0(163, b30 & DhcpPacket.DHCP_DOMAIN_NAME);
                            qt.y0(164, b31 & DhcpPacket.DHCP_DOMAIN_NAME);
                        } else {
                            int i116 = i2 + 2;
                            byte b32 = bArr[i116];
                            M = (b32 & 4) == 0 ? 0 : 1;
                            int i117 = (b32 & 8) == 0 ? 0 : 1;
                            N = i117;
                            if (i117 != 0) {
                                b2 = 1;
                                qt.a(1);
                            } else {
                                b2 = 1;
                                qt.a(0);
                            }
                            if ((bArr[i116] & b2) == b2 && ((bArr[i116] >> 6) & b2) == 0) {
                                z.k.s(227, 132, 2, 8, 1);
                            }
                        }
                        break;
                    case 51:
                        byte b33 = bArr[i2 + 2];
                        byte b34 = bArr[i2 + 4];
                        byte b35 = bArr[i2 + 5];
                        int i118 = bArr[i2 + 6] & 255;
                        int i119 = bArr[i2 + 7] & 255;
                        int i120 = bArr[i2 + 8] & 255;
                        int i121 = bArr[i2 + 9] & 255;
                        int i122 = bArr[i2 + 10] & 255;
                        int i123 = bArr[i2 + 11] & 255;
                        int i124 = bArr[i2 + 12] & 255;
                        int i125 = bArr[i2 + 13] & 255;
                        int i126 = bArr[i2 + 14] & 255;
                        int i127 = bArr[i2 + 15] & 255;
                        qt.y0(165, b33);
                        qt.y0(166, b34);
                        qt.y0(167, b35);
                        qt.y0(168, (i119 << 8) | i118);
                        qt.y0(169, (i121 << 8) | i120);
                        qt.y0(170, i124 | (i122 << 16) | (i123 << 8));
                        qt.y0(171, i127 | (i126 << 8) | (i125 << 16));
                        break;
                    default:
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.J);
        o1.y yVar = y0.g.f18094d;
        yVar.d(this.E);
        u0.c.f17388o.d(this.f10472x);
        u0.c.f17389p.d(this.f10473y);
        u0.c.f17390q.d(this.f10474z);
        o1.y yVar2 = u0.c.f17392s;
        yVar2.d(this.f10473y);
        yVar2.d(this.f10472x);
        yVar2.d(this.f10474z);
        h0.d.f2464c.d(this.C);
        h0.d.f2462a.d(this.C);
        h0.d.f2466e.d(this.D);
        o1.h.f16865a.d(this.f10471w);
        l0.b0.p0(this.H);
        w0.e.f17817c.d(this.f10465q);
        yVar.d(this.I);
        h0.d.f2473l.d(this.D);
        o1.y yVar3 = u0.c.f17374a;
        yVar3.d(this.J);
        u0.c.f17391r.d(this.J);
        yVar2.d(this.J);
        u0.c.f17393t.d(this.J);
        w0.e.f17815a.d(this.J);
        w0.e.f17819e.d(this.J);
        yVar3.d(this.K);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 207) {
            return;
        }
        int i4 = 0;
        if (i2 == 106) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f10450b[i4]);
                i4++;
            }
        } else {
            if (i2 != 135) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f10451c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 40) {
            if (T2(iArr, 2)) {
                z.k.s(227, -125, 2, iArr[0], iArr[1]);
            }
            return;
        }
        if (i2 == 43) {
            if (T2(iArr, 2)) {
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = nt.f8637c;
            if (i3 == 6 || i3 == 7) {
                if (N != 0) {
                    if (iArr[0] == 0 && iArr[1] == 1) {
                        u3(33, 2);
                        return;
                    }
                    if (iArr[0] == 2 && iArr[1] == 1) {
                        u3(33, 1);
                        return;
                    } else {
                        if (iArr[0] == 4) {
                            u3(32, 0);
                            return;
                        }
                        return;
                    }
                }
                if (iArr[0] == 0 && iArr[1] == 1) {
                    u3(33, 4);
                    return;
                }
                if (iArr[0] == 2 && iArr[1] == 1) {
                    u3(33, 7);
                    return;
                } else {
                    if (iArr[0] == 3 && iArr[1] == 1) {
                        u3(33, 3);
                        return;
                    }
                    return;
                }
            }
            if (i3 == 9 || i3 == 10) {
                if (iArr[0] == 0 && iArr[1] == 1) {
                    u3(42, 1);
                    return;
                } else {
                    if (iArr[0] == 3 && iArr[1] == 1) {
                        u3(41, 1);
                        return;
                    }
                    return;
                }
            }
            if (M != 0) {
                if (iArr[0] == 0 && iArr[1] == 1) {
                    u3(33, 1);
                } else if (iArr[0] == 1 && iArr[1] == 1) {
                    u3(33, 2);
                } else if (iArr[0] == 3 && iArr[1] == 1) {
                    u3(33, 3);
                } else if (iArr[0] == 2 && iArr[1] == 1) {
                    u3(33, 6);
                }
            }
            if (N == 0 || iArr[0] != 4) {
                return;
            }
            u3(32, 0);
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
                int i4 = (iArr[2] * Process.MEDIA_RW_GID) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 133, 5, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0);
                    return;
                }
                return;
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
                    u3(6, iArr[0]);
                    break;
                }
                break;
            case 1:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(0, iArr[0]);
                    break;
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(1, iArr[0]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(2, iArr[0]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(3, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(4, iArr[0]);
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
                    u3(5, iArr[0]);
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
                    u3(7, iArr[0]);
                    break;
                }
                break;
            case 8:
                u3(8, 0);
                break;
            case 9:
                u3(9, 0);
                break;
            case 10:
                u3(10, 0);
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    u3(12, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(13, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(14, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    int i5 = iArr[0];
                    if (i5 == 0) {
                        u3(15, 0);
                        break;
                    } else if (i5 == 1) {
                        u3(15, 1);
                        break;
                    }
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(16, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(17, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(18, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    u3(19, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    u3(35, iArr[0]);
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
                    u3(34, iArr[0]);
                    break;
                }
                break;
            case 22:
                if (iArr != null && iArr.length >= 1) {
                    e3(iArr[0]);
                    break;
                }
                break;
            case 23:
                if (T2(iArr, 1)) {
                    z.k.s(227, -32, 2, iArr[0], iArr[1]);
                }
                break;
            case 24:
                if (T2(iArr, 1)) {
                    z.k.s(227, -124, 2, iArr[0], iArr[1]);
                }
                break;
            case 25:
                if (T2(iArr, 1)) {
                    z.k.s(227, -126, 2, iArr[0], iArr[1]);
                }
                break;
        }
    }

    public final void a3(int i2, int i3, String str) {
        int[] iArr = new int[70];
        iArr[0] = 227;
        iArr[1] = 199;
        iArr[2] = 67;
        iArr[3] = 16;
        iArr[4] = i2;
        iArr[5] = i3;
        if (str != null) {
            int length = str.length() <= 36 ? str.length() : 36;
            for (int i4 = 4; i4 < length; i4++) {
                int iCodePointAt = str.codePointAt(i4);
                int i5 = (i4 - 4) << 1;
                iArr[i5 + 7] = (iCodePointAt >> 8) & 255;
                iArr[i5 + 6] = iCodePointAt & 255;
            }
        }
        z.k.s(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    public final void b3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        c3(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[4] = 0;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 65537) {
                iArr[4] = 0;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 65538) {
                iArr[4] = 0;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 0 || i6 == 1) {
                iArr[4] = 16;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            int i7 = i5 % 6;
            if (i7 == 0) {
                iArr[7] = 6;
            } else {
                iArr[7] = i7;
            }
        } else if (i3 == 2) {
            int i8 = h0.c.E;
            if (i8 == 2) {
                iArr[4] = 4;
            } else if (i8 == 3) {
                iArr[4] = 3;
            } else if (i8 == 4) {
                iArr[4] = 1;
            } else if (i8 != 5) {
                iArr[4] = 4;
            } else {
                iArr[4] = 2;
            }
        } else if (i3 != 4) {
            switch (i3) {
                case 8:
                case 9:
                case 10:
                    iArr[5] = u0.b.r3 & 255;
                    iArr[6] = u0.b.s3 & 255;
                    int i9 = u0.b.t3;
                    iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
                    iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                    iArr[9] = i9 % 60;
                    break;
            }
        } else {
            int i10 = o0.e.B;
            iArr[4] = i10 & 255;
            iArr[5] = (i10 >> 8) & 255;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i11 = i2 + 1;
            iArr2[i11] = iArr[i2];
            i2 = i11;
        }
        z.k.s(iArr2);
        if (2 == u0.b.D && nt.f8637c == 40) {
            String str = h0.c.f2441j;
            if (str == null || str.isEmpty()) {
                t3((byte) 2, ProxyProperties.LOCAL_EXCL_LIST);
            } else {
                t3((byte) 2, h0.c.f2441j);
            }
            String str2 = h0.c.f2437h;
            if (str2 == null || str2.isEmpty()) {
                t3((byte) 1, ProxyProperties.LOCAL_EXCL_LIST);
            } else {
                t3((byte) 1, h0.c.f2437h);
            }
        }
    }

    public final void c3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 16;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 0;
                break;
            case 6:
                iArr[2] = 12;
                iArr[3] = 0;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 16;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            default:
                iArr[2] = 12;
                iArr[3] = 0;
                break;
        }
    }

    public final void d3() {
        z.k.s(227, 196, 1, y0.f.C0 & 127);
    }

    public final void e3(int i2) {
        int i3 = (this.L + 1) % 2;
        this.L = i3;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }

    public final void t3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length() <= 32 ? str.length() : 32;
        int i2 = length * 2;
        int[] iArr = new int[i2 + 5];
        iArr[0] = 227;
        iArr[1] = 200;
        iArr[2] = i2 + 2;
        iArr[3] = 16;
        iArr[4] = b2;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 6] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 5] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void u3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }
}
