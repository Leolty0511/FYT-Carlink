package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class p4 extends lt {
    public static int A = 7;
    public static int B = 7;
    public static int C = 0;
    public static int D = 10;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f9089x = 10;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f9090y = 10;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f9091z = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9093c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9094d = {new int[]{16, 29}, new int[]{17, 2}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 0}, new int[]{25, 7}, new int[]{26, 8}, new int[]{27, 21}, new int[]{28, 54}, new int[]{29, 18}, new int[]{30, 38}, new int[]{31, 3}, new int[]{32, 4}, new int[]{33, 1}, new int[]{34, 16}, new int[]{35, 64}, new int[]{36, 5}, new int[]{37, 29}, new int[]{38, 19}, new int[]{39, 20}, new int[]{40, 13}, new int[]{41, 5}, new int[]{42, 74}, new int[]{43, 75}, new int[]{44, 55}, new int[]{45, 9}, new int[]{46, 6}, new int[]{47, 34}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 18}, new int[]{52, 35}, new int[]{53, 18}, new int[]{54, 53}, new int[]{55, 22}, new int[]{56, 66}, new int[]{57, 65}, new int[]{58, 78}, new int[]{59, 64}, new int[]{60, 16}, new int[]{48, 13}, new int[]{132, 7}, new int[]{133, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9095e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f9096f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9097g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9098h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9099i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9100j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9101k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.g0 f9102l = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9103m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f9104n = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f9105o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9106p = 6;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f9107q = 7;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f9108r = 8;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f9109s = 9;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f9110t = new e();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f9111u = new f();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f9112v = new g();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f9113w = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4 p4Var = p4.this;
            byte b2 = (byte) (p4Var.f9096f + 1);
            p4Var.f9096f = b2;
            if (b2 > 5) {
                l0.b0.o0(p4Var.f9097g);
                p4.this.f9096f = (byte) 0;
            }
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
            l0.b0.b(p4.this.f9101k);
            p4.this.f9099i = 7;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4 p4Var = p4.this;
            int i2 = p4Var.f9099i - 1;
            p4Var.f9099i = i2;
            if (i2 <= 0) {
                l0.b0.p0(p4Var.f9101k);
                p4.this.f9099i = 7;
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
            p4 p4Var2 = p4.this;
            p4Var2.d3(p4Var2.f9102l.b(8, 0));
            if (nt.f8637c != 2) {
                return;
            }
            p4 p4Var3 = p4.this;
            p4Var3.b3(p4Var3.f9102l.b(3, 10), p4.this.f9102l.b(4, 10), p4.this.f9102l.b(5, 10));
            p4 p4Var4 = p4.this;
            p4Var4.a3(p4Var4.f9102l.b(6, 7), p4.this.f9102l.b(7, 7));
            p4 p4Var5 = p4.this;
            p4Var5.c3(p4Var5.f9102l.b(9, 10));
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.c();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.k();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            int i4 = i3 > 4 ? 7 : 14;
            if (i3 == 0) {
                i2 = 5;
            } else if (i3 == 2) {
                i2 = 4;
            } else if (i3 == 3) {
                i2 = 3;
            } else if (i3 != 4) {
                i2 = i3 != 5 ? 0 : 2;
            } else {
                i2 = 1;
            }
            z.k.s(227, 6, 9, i4, i2);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 7, 6, (byte) time.minute, (byte) time.hour, DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            int i2 = nt.f8637c;
            if (i2 == 0 || i2 == 2) {
                z.k.s(227, 7, 238, 32, 133, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (((nt.f8633a >> 16) & 65535) != 2) {
            return;
        }
        y0.f.C0 = 20;
    }

    @Override // k0.lt
    public void S2() {
        this.f9102l.a();
        qt.z(this.f9110t);
        o1.y yVar = y0.g.f18094d;
        yVar.a(this.f9111u, 1);
        y0.g.f18095e.a(this.f9111u, 1);
        w0.e.f17815a.a(this.f9110t, 1);
        h0.d.f2462a.a(this.f9112v, 1);
        qt.z(this.f9113w);
        u0.c.f17386m.a(this.f9100j, 1);
        if (nt.f8637c != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 0;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8307b = 1;
        mtVar2.f8308c = 0;
        mtVar2.f8309d = 0;
        if (nt.a()) {
            yVar.a(this.f9098h, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0140  */
    /* JADX WARN: Code duplicated, block: B:33:0x0149  */
    /* JADX WARN: Code duplicated, block: B:42:0x016d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0176  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 125) {
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i5 = i2 + 3;
                    l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                    return;
                } else {
                    int i6 = i2 + 3;
                    l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                }
            }
            if (i4 == 3) {
                int i7 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                qt.y0(1031, i7);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
                return;
            }
            switch (i4) {
                case 8:
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    break;
                case 9:
                    int i8 = bArr[i2 + 4] & 255;
                    if (i8 != 0) {
                        u0.d.A3((i8 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    } else {
                        u0.d.A3(0);
                    }
                    break;
                case 10:
                    qt.y0(1032, (65280 & (bArr[i2 + 4] << 8)) | (bArr[i2 + 3] & 255));
                    break;
            }
        }
        switch (b2) {
            case 1:
                if (nt.a()) {
                    l0.f0.c(bArr[i2 + 2]);
                }
                break;
            case 2:
                if (nt.a()) {
                    int i9 = bArr[i2 + 2] & 255;
                    this.f9093c = i9;
                    int i10 = 0;
                    while (true) {
                        iArr = this.f9094d;
                        if (i10 < iArr.length) {
                            int i11 = this.f9093c;
                            if (i11 != iArr[i10][0]) {
                                i10++;
                            } else if (i11 != 0) {
                                this.f9092b = i10;
                            }
                        }
                    }
                    if (bArr[i2] != 5) {
                        if (bArr[i2] == 6) {
                            int i12 = bArr[i2 + 3] & 255;
                            int i13 = this.f9093c;
                            if (i13 != 25) {
                                if (i13 != 26) {
                                    if (i13 == 38) {
                                        for (int i14 = 0; i14 < (i12 & 255); i14++) {
                                            l0.b0.l0(31, 0);
                                        }
                                        l0.b0.l0(31, 1);
                                    } else if (i13 == 39) {
                                        for (int i15 = 0; i15 < (i12 & 255); i15++) {
                                            l0.b0.l0(30, 0);
                                        }
                                        l0.b0.l0(30, 1);
                                    } else if (i13 != 132) {
                                        if (i13 != 133) {
                                            int i16 = i12 & 255;
                                            if (i16 == 1) {
                                                if (i10 < iArr.length) {
                                                    l0.b0.l0(iArr[i10][1], 0);
                                                }
                                            } else if (i16 == 0) {
                                                int i17 = this.f9092b;
                                                if (i17 < iArr.length && i17 != 255) {
                                                    l0.b0.l0(iArr[i17][1], 1);
                                                }
                                                this.f9092b = 255;
                                            }
                                        }
                                    }
                                }
                                for (int i18 = 0; i18 < (i12 & 255); i18++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            }
                            for (int i19 = 0; i19 < (i12 & 255); i19++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        }
                        break;
                    } else if (i9 == 0) {
                        int i20 = this.f9092b;
                        if (i20 < iArr.length && i20 != 255) {
                            l0.b0.l0(iArr[i20][1], 1);
                        }
                        this.f9092b = 255;
                    } else if (i10 < iArr.length) {
                        l0.b0.l0(iArr[i10][1], 0);
                    }
                }
                break;
            case 3:
                int i21 = i2 + 2;
                int i22 = bArr[i21] & 127;
                int i23 = i2 + 3;
                int i24 = bArr[i23] & 127;
                int i25 = bArr[i2 + 4] & 255;
                int i26 = bArr[i2 + 5] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i22 = bArr[i23] & 127;
                    i24 = bArr[i21] & 127;
                }
                qt.y0(37, (i22 < 50 || i22 > 100) ? 0 : 1);
                if (i22 == 0) {
                    qt.y0(27, -2);
                } else if (i22 == 30) {
                    qt.y0(27, -3);
                } else if (i22 == 127) {
                    qt.y0(27, -1);
                } else if (i22 == 39) {
                    qt.y0(27, -2);
                } else if (i22 != 40) {
                    qt.y0(27, i22);
                } else {
                    qt.y0(27, -3);
                }
                if (i24 == 0) {
                    qt.y0(28, -2);
                } else if (i24 == 30) {
                    qt.y0(28, -3);
                } else if (i24 == 127) {
                    qt.y0(28, -1);
                } else if (i24 == 39) {
                    qt.y0(28, -2);
                } else if (i24 != 40) {
                    qt.y0(28, i24);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(21, i25 & 255);
                int[] iArr2 = new int[1];
                iArr2[0] = ((i26 >> 7) & 1) == 1 ? 1 : 0;
                qt.y0(12, iArr2);
                qt.y0(65, (i26 >> 6) & 1);
                qt.y0(16, (i26 >> 5) & 1);
                qt.y0(20, (i26 >> 4) & 1);
                qt.y0(19, (i26 >> 3) & 1);
                qt.y0(13, (i26 >> 2) & 1);
                qt.y0(62, (i26 >> 1) & 1);
                qt.y0(11, (i26 >> 0) & 1);
                break;
            case 4:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    u0.d.R2(l0.e0.n(((b4 & 192) >> 6) & 255, 1));
                    int i27 = ((b4 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.S2(l0.e0.n(i27, 2));
                    u0.d.T2(l0.e0.n(i27, 2));
                    u0.d.U2(l0.e0.n(b4 & 3 & 255, 1));
                    u0.d.D2(l0.e0.n(((b3 & 192) >> 6) & 255, 1));
                    int i28 = ((b3 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.E2(l0.e0.n(i28, 2));
                    u0.d.F2(l0.e0.n(i28, 2));
                    u0.d.G2(l0.e0.n(b3 & 3 & 255, 1));
                }
                break;
            case 5:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 1) & 1);
                    qt.y0(2, (b5 >> 0) & 1);
                } else {
                    qt.y0(1, (b5 >> 0) & 1);
                    qt.y0(2, (b5 >> 1) & 1);
                }
                qt.y0(4, (b5 >> 3) & 1);
                qt.y0(3, (b5 >> 2) & 1);
                qt.y0(5, (b5 >> 4) & 1);
                qt.y0(0, (b5 >> 5) & 1);
                break;
            case 6:
                qt.y0(80, bArr[i2 + 2] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f9102l.j();
        qt.q0(this.f9110t);
        o1.y yVar = y0.g.f18094d;
        yVar.d(this.f9111u);
        y0.g.f18095e.d(this.f9111u);
        w0.e.f17815a.d(this.f9110t);
        h0.d.f2462a.d(this.f9112v);
        qt.q0(this.f9113w);
        yVar.d(this.f9098h);
        u0.c.f17386m.d(this.f9100j);
        l0.b0.p0(this.f9101k);
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
        A = i2;
        B = i3;
        z.k.s(227, 6, 7, i2, i3);
        qt.y0(102, B);
        int iB = this.f9102l.b(7, 7);
        int i4 = B;
        if (iB != i4) {
            this.f9102l.g(7, i4);
        }
        qt.y0(101, A);
        int iB2 = this.f9102l.b(6, 7);
        int i5 = A;
        if (iB2 != i5) {
            this.f9102l.g(6, i5);
        }
    }

    public final void b3(int i2, int i3, int i4) {
        f9089x = i2;
        f9090y = i3;
        f9091z = i4;
        z.k.s(227, 7, 8, i2, i3, i4);
        qt.y0(98, f9089x);
        int iB = this.f9102l.b(3, 10);
        int i5 = f9089x;
        if (iB != i5) {
            this.f9102l.g(3, i5);
        }
        qt.y0(99, f9090y);
        int iB2 = this.f9102l.b(4, 10);
        int i6 = f9090y;
        if (iB2 != i6) {
            this.f9102l.g(4, i6);
        }
        qt.y0(100, f9091z);
        int iB3 = this.f9102l.b(5, 10);
        int i7 = f9091z;
        if (iB3 != i7) {
            this.f9102l.g(5, i7);
        }
    }

    public final void c3(int i2) {
        D = i2;
        z.k.s(227, 5, 5, i2);
        qt.y0(112, D);
        int iB = this.f9102l.b(9, 10);
        int i3 = D;
        if (iB != i3) {
            this.f9102l.g(9, i3);
        }
    }

    public final void d3(int i2) {
        C = i2;
        z.k.s(227, 6, 3, 1, i2);
        qt.y0(111, C);
        int iB = this.f9102l.b(8, 0);
        int i3 = C;
        if (iB != i3) {
            this.f9102l.g(8, i3);
        }
    }
}
