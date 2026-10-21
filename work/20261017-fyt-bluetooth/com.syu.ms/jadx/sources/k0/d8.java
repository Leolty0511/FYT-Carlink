package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class d8 extends lt {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f4366s = 10;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f4367t = 10;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f4368u = 10;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f4369v = 7;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f4370w = 7;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f4371x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f4372y = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4374c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4375d = {new int[]{16, 12}, new int[]{17, 2}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 0}, new int[]{25, 7}, new int[]{26, 8}, new int[]{27, 12}, new int[]{28, 5}, new int[]{29, 15}, new int[]{30, 38}, new int[]{31, 75}, new int[]{32, 4}, new int[]{33, 1}, new int[]{34, 16}, new int[]{35, 64}, new int[]{36, 3}, new int[]{37, 18}, new int[]{38, 19}, new int[]{39, 20}, new int[]{40, 13}, new int[]{41, 5}, new int[]{42, 74}, new int[]{43, 75}, new int[]{44, 55}, new int[]{45, 4}, new int[]{46, 74}, new int[]{47, 25}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 18}, new int[]{52, 55}, new int[]{53, 18}, new int[]{54, 53}, new int[]{55, 22}, new int[]{56, 66}, new int[]{57, 65}, new int[]{58, 78}, new int[]{59, 64}, new int[]{60, 16}, new int[]{48, 13}, new int[]{132, 7}, new int[]{133, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f4376e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4377f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4378g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4379h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4380i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o1.g0 f4381j = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f4382k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f4383l = 4;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f4384m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f4385n = 6;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f4386o = 7;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f4387p = 8;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f4388q = 9;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4389r = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.c();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18037c;
            if (i2 <= 35) {
                z.k.s(227, 5, 5, i2);
            } else {
                z.k.s(227, 5, 5, 35);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(d8.this.f4380i);
            d8.this.f4378g = 7;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d8 d8Var = d8.this;
            int i2 = d8Var.f4378g - 1;
            d8Var.f4378g = i2;
            if (i2 <= 0) {
                l0.b0.p0(d8Var.f4380i);
                d8.this.f4378g = 7;
                return;
            }
            int i3 = u0.b.f17306a0;
            if (i3 != 1) {
                if (i3 == 0) {
                    z.k.s(227, 5, 4, 1);
                    return;
                }
                return;
            }
            z.k.s(227, 5, 4, 0);
            z.k.s(227, 5, 255, 127);
            d8 d8Var2 = d8.this;
            d8Var2.d3(d8Var2.f4381j.b(8, 0));
            if (nt.f8637c != 2) {
                return;
            }
            d8 d8Var3 = d8.this;
            d8Var3.b3(d8Var3.f4381j.b(3, 10), d8.this.f4381j.b(4, 10), d8.this.f4381j.b(5, 10));
            d8 d8Var4 = d8.this;
            d8Var4.a3(d8Var4.f4381j.b(6, 7), d8.this.f4381j.b(7, 7));
            d8 d8Var5 = d8.this;
            d8Var5.c3(d8Var5.f4381j.b(9, 10));
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 7, 6, (byte) time.minute, (byte) time.hour, DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            int i2 = nt.f8637c;
            if (i2 == 0 || i2 == 2) {
                z.k.s(227, 7, 238, 32, 134, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c != 2) {
            return;
        }
        y0.f.C0 = 36;
    }

    @Override // k0.lt
    public void S2() {
        this.f4381j.a();
        qt.z(this.f4376e);
        w0.e.f17815a.a(this.f4376e, 1);
        qt.z(this.f4389r);
        u0.c.f17386m.a(this.f4379h, 1);
        if (nt.f8637c != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            mtVar.f8320o = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 0;
        mtVar2.f8311f = 0;
        mtVar2.f8312g = 0;
        mtVar2.f8307b = 1;
        mtVar2.f8308c = 0;
        mtVar2.f8309d = 0;
        mtVar2.f8320o = 0;
        if (nt.a()) {
            y0.g.f18094d.a(this.f4377f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 != 2) {
            if (b2 == 4) {
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    u0.d.R2(l0.e0.q(((b4 & 192) >> 6) & 255));
                    u0.d.S2(l0.e0.q(((b4 & 48) >> 4) & 255));
                    u0.d.T2(l0.e0.q(((b4 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255));
                    u0.d.U2(l0.e0.q(b4 & 3 & 255));
                    u0.d.D2(l0.e0.q(((b3 & 192) >> 6) & 255));
                    u0.d.E2(l0.e0.q(((b3 & 48) >> 4) & 255));
                    u0.d.F2(l0.e0.q(((b3 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255));
                    u0.d.G2(l0.e0.q(b3 & 3 & 255));
                    return;
                }
                return;
            }
            if (b2 != 125) {
                return;
            }
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i5 = i2 + 3;
                    l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                    return;
                } else {
                    int i6 = i2 + 3;
                    l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                    return;
                }
            }
            if (i4 == 3) {
                int i7 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i7);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
                return;
            } else if (i4 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            } else {
                if (i4 != 10) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | (65280 & (bArr[i2 + 4] << 8)));
                return;
            }
        }
        if (nt.a()) {
            int i8 = bArr[i2 + 2] & 255;
            this.f4374c = i8;
            int i9 = 0;
            while (true) {
                iArr = this.f4375d;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f4374c;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f4373b = i9;
                    break;
                }
                i9++;
            }
            if (bArr[i2] == 5) {
                if (i8 != 0) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i11 = this.f4373b;
                    if (i11 < iArr.length && i11 != 255) {
                        l0.b0.l0(iArr[i11][1], 1);
                    }
                    this.f4373b = 255;
                    return;
                }
            }
            if (bArr[i2] == 6) {
                int i12 = bArr[i2 + 3] & 255;
                int i13 = this.f4374c;
                if (i13 != 25) {
                    if (i13 != 26) {
                        if (i13 == 38) {
                            for (int i14 = 0; i14 < (i12 & 255); i14++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            return;
                        }
                        if (i13 == 39) {
                            for (int i15 = 0; i15 < (i12 & 255); i15++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            return;
                        }
                        if (i13 != 132) {
                            if (i13 != 133) {
                                int i16 = i12 & 255;
                                if (i16 == 1) {
                                    if (i9 < iArr.length) {
                                        l0.b0.l0(iArr[i9][1], 0);
                                        return;
                                    }
                                    return;
                                } else {
                                    if (i16 == 0) {
                                        int i17 = this.f4373b;
                                        if (i17 < iArr.length && i17 != 255) {
                                            l0.b0.l0(iArr[i17][1], 1);
                                        }
                                        this.f4373b = 255;
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    for (int i18 = 0; i18 < (i12 & 255); i18++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    return;
                }
                for (int i19 = 0; i19 < (i12 & 255); i19++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4381j.j();
        qt.q0(this.f4376e);
        w0.e.f17815a.d(this.f4376e);
        qt.q0(this.f4389r);
        y0.g.f18094d.d(this.f4377f);
        u0.c.f17386m.d(this.f4379h);
        l0.b0.p0(this.f4380i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 2) {
            if (iArr != null) {
                b3(iArr[0], iArr[1], iArr[2]);
            }
        } else if (i2 == 3) {
            if (iArr != null) {
                a3(iArr[0], iArr[1]);
            }
        } else if (i2 == 5) {
            if (iArr != null) {
                c3(iArr[0]);
            }
        } else if (i2 == 8 && iArr != null) {
            d3(iArr[0]);
        }
    }

    public final void a3(int i2, int i3) {
        f4369v = i2;
        f4370w = i3;
        z.k.s(227, 6, 7, i2, i3);
        qt.y0(102, f4370w);
        int iB = this.f4381j.b(7, 7);
        int i4 = f4370w;
        if (iB != i4) {
            this.f4381j.g(7, i4);
        }
        qt.y0(101, f4369v);
        int iB2 = this.f4381j.b(6, 7);
        int i5 = f4369v;
        if (iB2 != i5) {
            this.f4381j.g(6, i5);
        }
    }

    public final void b3(int i2, int i3, int i4) {
        f4366s = i2;
        f4367t = i3;
        f4368u = i4;
        z.k.s(227, 7, 8, i2, i3, i4);
        qt.y0(98, f4366s);
        int iB = this.f4381j.b(3, 10);
        int i5 = f4366s;
        if (iB != i5) {
            this.f4381j.g(3, i5);
        }
        qt.y0(99, f4367t);
        int iB2 = this.f4381j.b(4, 10);
        int i6 = f4367t;
        if (iB2 != i6) {
            this.f4381j.g(4, i6);
        }
        qt.y0(100, f4368u);
        int iB3 = this.f4381j.b(5, 10);
        int i7 = f4368u;
        if (iB3 != i7) {
            this.f4381j.g(5, i7);
        }
    }

    public final void c3(int i2) {
        f4372y = i2;
        z.k.s(227, 5, 5, i2);
        qt.y0(112, f4372y);
        int iB = this.f4381j.b(9, 10);
        int i3 = f4372y;
        if (iB != i3) {
            this.f4381j.g(9, i3);
        }
    }

    public final void d3(int i2) {
        f4371x = i2;
        z.k.s(227, 6, 3, 1, i2);
        qt.y0(111, f4371x);
        int iB = this.f4381j.b(8, 0);
        int i3 = f4371x;
        if (iB != i3) {
            this.f4381j.g(8, i3);
        }
    }
}
