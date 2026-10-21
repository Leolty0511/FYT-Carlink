package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class hd extends lt {
    public static int A = 10;
    public static int B = 7;
    public static int C = 7;
    public static int D = 0;
    public static int E = 10;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f5900y = 10;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f5901z = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5903c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5904d = {new int[]{16, 12}, new int[]{17, 2}, new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 18}, new int[]{23, 26}, new int[]{24, 0}, new int[]{25, 7}, new int[]{26, 8}, new int[]{27, 21}, new int[]{28, 54}, new int[]{29, 18}, new int[]{30, 38}, new int[]{31, 3}, new int[]{32, 4}, new int[]{33, 1}, new int[]{34, 16}, new int[]{35, 64}, new int[]{36, 5}, new int[]{37, 29}, new int[]{38, 19}, new int[]{39, 20}, new int[]{40, 38}, new int[]{41, 5}, new int[]{42, 74}, new int[]{43, 75}, new int[]{44, 55}, new int[]{45, 9}, new int[]{46, 6}, new int[]{47, 34}, new int[]{49, 1}, new int[]{50, 58}, new int[]{51, 18}, new int[]{52, 35}, new int[]{53, 18}, new int[]{54, 53}, new int[]{55, 22}, new int[]{56, 66}, new int[]{57, 65}, new int[]{58, 78}, new int[]{59, 64}, new int[]{60, 16}, new int[]{48, 13}, new int[]{132, 7}, new int[]{133, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f5905e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5906f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5907g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5908h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5909i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5910j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5911k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.g0 f5912l = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f5913m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f5914n = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f5915o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f5916p = 6;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f5917q = 7;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f5918r = 8;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f5919s = 9;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f5920t = new f();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f5921u = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f5922v = new g();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f5923w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f5924x = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hd hdVar = hd.this;
            byte b2 = (byte) (hdVar.f5905e + 1);
            hdVar.f5905e = b2;
            if (b2 > 5) {
                l0.b0.o0(hdVar.f5906f);
                hd.this.f5905e = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.c();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.e0.k();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hd.this.f5911k);
            hd.this.f5909i = 7;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hd hdVar = hd.this;
            int i2 = hdVar.f5909i - 1;
            hdVar.f5909i = i2;
            if (i2 <= 0) {
                l0.b0.p0(hdVar.f5911k);
                hd.this.f5909i = 7;
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
            hd hdVar2 = hd.this;
            hdVar2.d3(hdVar2.f5912l.b(8, 0));
            if (nt.f8637c != 2) {
                return;
            }
            hd hdVar3 = hd.this;
            hdVar3.b3(hdVar3.f5912l.b(3, 10), hd.this.f5912l.b(4, 10), hd.this.f5912l.b(5, 10));
            hd hdVar4 = hd.this;
            hdVar4.a3(hdVar4.f5912l.b(6, 7), hd.this.f5912l.b(7, 7));
            hd hdVar5 = hd.this;
            hdVar5.c3(hdVar5.f5912l.b(9, 10));
        }
    }

    public class f implements Runnable {
        public f() {
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

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            DateFormat.is24HourFormat(App.c());
            if (hd.this.f5921u != millis) {
                hd.this.f5921u = millis;
                z.k.s(227, 7, 6, (byte) time.minute, (byte) time.hour, 1);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            boolean z2 = i3 == 5 || i3 == 3 || i3 == 4;
            int i4 = z2 ? 7 : 11;
            switch (i3) {
                case 0:
                    i2 = 5;
                    break;
                case 1:
                case 2:
                case 6:
                    i2 = z2 == hd.this.f5923w ? 4 : 6;
                    break;
                case 3:
                    i2 = 3;
                    break;
                case 4:
                    i2 = 1;
                    break;
                case 5:
                    i2 = 2;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (hd.this.f5923w != z2) {
                hd.this.f5923w = z2;
                i2 = 0;
            }
            if (nt.f8633a == 262537) {
                z.k.s(227, 6, 9, (byte) i4, (byte) i2);
            } else {
                z.k.s(227, -59, 1, i2);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f5912l.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f5907g);
        y0.g.f18094d.a(this.f5908h, 1);
        y0.g.f18095e.a(this.f5908h, 1);
        w0.e.f17815a.a(this.f5907g, 1);
        o1.y yVar = h0.d.f2462a;
        yVar.a(this.f5920t, 1);
        yVar.a(this.f5924x, 0);
        qt.z(this.f5922v);
        u0.c.f17386m.a(this.f5910j, 1);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0144  */
    /* JADX WARN: Code duplicated, block: B:37:0x014d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0172  */
    /* JADX WARN: Code duplicated, block: B:47:0x017b  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 82) {
            if (bArr[i2 + 2] != 1) {
                return;
            }
            qt.y0(104, bArr[i2 + 3] & 255);
        }
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
                    return;
                }
            }
            if (i4 == 3) {
                int i7 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                qt.y0(1031, i7);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
                return;
            }
            if (i4 != 5) {
                if (i4 == 8) {
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    return;
                } else {
                    if (i4 != 10) {
                        return;
                    }
                    qt.y0(1032, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                    return;
                }
            }
            int i8 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i8 >> 6) & 1);
                qt.y0(1, (i8 >> 7) & 1);
            } else {
                qt.y0(2, (i8 >> 7) & 1);
                qt.y0(1, (i8 >> 6) & 1);
            }
            qt.y0(4, (i8 >> 5) & 1);
            qt.y0(3, (i8 >> 4) & 1);
            qt.y0(5, (i8 >> 3) & 1);
            qt.y0(0, (i8 >> 2) & 1);
            return;
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
                    this.f5903c = i9;
                    int i10 = 0;
                    while (true) {
                        iArr = this.f5904d;
                        if (i10 < iArr.length) {
                            int i11 = this.f5903c;
                            if (i11 != iArr[i10][0]) {
                                i10++;
                            } else if (i11 != 0) {
                                this.f5902b = i10;
                            }
                        }
                    }
                    if (bArr[i2] != 5) {
                        if (bArr[i2] == 6) {
                            int i12 = bArr[i2 + 3] & 255;
                            if (nt.f8633a == 131465) {
                                int i13 = this.f5903c;
                                if (i13 == 30) {
                                    l0.b0.l0(13, 0);
                                    l0.b0.l0(13, 1);
                                } else if (i13 == 41) {
                                    l0.b0.l0(21, 0);
                                    l0.b0.l0(21, 1);
                                } else if (i13 == 38) {
                                    for (int i14 = 0; i14 < (i12 & 255); i14++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                } else if (i13 != 39) {
                                    if (i13 != 132) {
                                        if (i13 != 133) {
                                            switch (i13) {
                                                case 25:
                                                    break;
                                                case 26:
                                                    break;
                                                case 27:
                                                    l0.b0.l0(54, 0);
                                                    l0.b0.l0(54, 1);
                                                    break;
                                                case 28:
                                                    l0.b0.l0(18, 0);
                                                    l0.b0.l0(18, 1);
                                                    break;
                                                default:
                                                    int i15 = i12 & 255;
                                                    if (i15 == 1) {
                                                        if (i10 < iArr.length) {
                                                            l0.b0.l0(iArr[i10][1], 0);
                                                        }
                                                    } else if (i15 == 0) {
                                                        int i16 = this.f5902b;
                                                        if (i16 < iArr.length && i16 != 255) {
                                                            l0.b0.l0(iArr[i16][1], 1);
                                                        }
                                                        this.f5902b = 255;
                                                    }
                                                    break;
                                            }
                                        }
                                        for (int i17 = 0; i17 < (i12 & 255); i17++) {
                                            l0.b0.l0(8, 0);
                                        }
                                        l0.b0.l0(8, 1);
                                    }
                                    for (int i18 = 0; i18 < (i12 & 255); i18++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                } else {
                                    for (int i19 = 0; i19 < (i12 & 255); i19++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                }
                            } else {
                                int i20 = this.f5903c;
                                if (i20 != 25) {
                                    if (i20 != 26) {
                                        if (i20 == 38) {
                                            for (int i21 = 0; i21 < (i12 & 255); i21++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                        } else if (i20 == 39) {
                                            for (int i22 = 0; i22 < (i12 & 255); i22++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                        } else if (i20 != 132) {
                                            if (i20 != 133) {
                                                int i23 = i12 & 255;
                                                if (i23 == 1) {
                                                    if (i10 < iArr.length) {
                                                        l0.b0.l0(iArr[i10][1], 0);
                                                    }
                                                } else if (i23 == 0) {
                                                    int i24 = this.f5902b;
                                                    if (i24 < iArr.length && i24 != 255) {
                                                        l0.b0.l0(iArr[i24][1], 1);
                                                    }
                                                    this.f5902b = 255;
                                                }
                                            }
                                        }
                                    }
                                    for (int i25 = 0; i25 < (i12 & 255); i25++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                }
                                for (int i26 = 0; i26 < (i12 & 255); i26++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                            }
                        }
                        break;
                    } else if (nt.f8633a == 131465) {
                        int i27 = this.f5903c;
                        if (i27 == 27) {
                            l0.b0.l0(54, 0);
                            l0.b0.l0(54, 1);
                        } else if (i27 == 28) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else if (i27 == 30) {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        } else if (i27 == 41) {
                            l0.b0.l0(21, 0);
                            l0.b0.l0(21, 1);
                        } else if (i9 != 0) {
                            int i28 = this.f5902b;
                            if (i28 < iArr.length && i28 != 255 && this.f5905e == 0) {
                                l0.b0.l0(iArr[i28][1], 0);
                                l0.b0.l0(this.f5904d[this.f5902b][1], 1);
                                this.f5905e = (byte) (this.f5905e + 1);
                                l0.b0.a(this.f5906f);
                            }
                            this.f5902b = 255;
                        } else {
                            l0.b0.o0(this.f5906f);
                            this.f5905e = (byte) 0;
                        }
                    }
                }
                break;
            case 3:
                int i29 = i2 + 2;
                int i30 = bArr[i29] & 127;
                int i31 = i2 + 3;
                int i32 = bArr[i31] & 127;
                int i33 = bArr[i2 + 4] & 255;
                int i34 = bArr[i2 + 5] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i30 = bArr[i31] & 127;
                    i32 = bArr[i29] & 127;
                }
                qt.y0(37, (i30 < 50 || i30 > 100) ? 0 : 1);
                if (i30 == 0) {
                    qt.y0(27, -2);
                } else if (i30 == 30) {
                    qt.y0(27, -3);
                } else if (i30 == 127) {
                    qt.y0(27, -1);
                } else if (i30 == 39) {
                    qt.y0(27, -2);
                } else if (i30 != 40) {
                    qt.y0(27, i30);
                } else {
                    qt.y0(27, -3);
                }
                if (i32 == 0) {
                    qt.y0(28, -2);
                } else if (i32 == 30) {
                    qt.y0(28, -3);
                } else if (i32 == 127) {
                    qt.y0(28, -1);
                } else if (i32 == 39) {
                    qt.y0(28, -2);
                } else if (i32 != 40) {
                    qt.y0(28, i32);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(21, i33 & 255);
                int[] iArr2 = new int[1];
                iArr2[0] = ((i34 >> 7) & 1) == 1 ? 1 : 0;
                qt.y0(12, iArr2);
                qt.y0(65, (i34 >> 6) & 1);
                qt.y0(16, (i34 >> 5) & 1);
                qt.y0(20, (i34 >> 4) & 1);
                qt.y0(19, (i34 >> 3) & 1);
                qt.y0(18, (bArr[i2 + 8] >> 0) & 1);
                qt.y0(13, (i34 >> 2) & 1);
                qt.y0(62, (i34 >> 1) & 1);
                qt.y0(11, (i34 >> 0) & 1);
                break;
            case 4:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    u0.d.R2(l0.e0.n(((b4 & 192) >> 6) & 255, 1));
                    int i35 = ((b4 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.S2(l0.e0.n(i35, 2));
                    u0.d.T2(l0.e0.n(i35, 2));
                    u0.d.U2(l0.e0.n(b4 & 3 & 255, 1));
                    u0.d.D2(l0.e0.n(((b3 & 192) >> 6) & 255, 1));
                    int i36 = ((b3 & DhcpPacket.DHCP_HOST_NAME) >> 2) & 255;
                    u0.d.E2(l0.e0.n(i36, 2));
                    u0.d.F2(l0.e0.n(i36, 2));
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
                qt.y0(103, bArr[i2 + 2] & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5912l.j();
        qt.q0(this.f5907g);
        y0.g.f18094d.d(this.f5908h);
        y0.g.f18095e.d(this.f5908h);
        w0.e.f17815a.d(this.f5907g);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.f5920t);
        yVar.d(this.f5924x);
        qt.q0(this.f5922v);
        u0.c.f17386m.d(this.f5910j);
        l0.b0.p0(this.f5911k);
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
        if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 6, 131, iArr[0], iArr[1]);
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
        B = i2;
        C = i3;
        z.k.s(227, 6, 7, i2, i3);
        qt.y0(102, C);
        int iB = this.f5912l.b(7, 7);
        int i4 = C;
        if (iB != i4) {
            this.f5912l.g(7, i4);
        }
        qt.y0(101, B);
        int iB2 = this.f5912l.b(6, 7);
        int i5 = B;
        if (iB2 != i5) {
            this.f5912l.g(6, i5);
        }
    }

    public final void b3(int i2, int i3, int i4) {
        f5900y = i2;
        f5901z = i3;
        A = i4;
        z.k.s(227, 7, 8, i2, i3, i4);
        qt.y0(98, f5900y);
        int iB = this.f5912l.b(3, 10);
        int i5 = f5900y;
        if (iB != i5) {
            this.f5912l.g(3, i5);
        }
        qt.y0(99, f5901z);
        int iB2 = this.f5912l.b(4, 10);
        int i6 = f5901z;
        if (iB2 != i6) {
            this.f5912l.g(4, i6);
        }
        qt.y0(100, A);
        int iB3 = this.f5912l.b(5, 10);
        int i7 = A;
        if (iB3 != i7) {
            this.f5912l.g(5, i7);
        }
    }

    public final void c3(int i2) {
        E = i2;
        z.k.s(227, 5, 5, i2);
        qt.y0(112, E);
        int iB = this.f5912l.b(9, 10);
        int i3 = E;
        if (iB != i3) {
            this.f5912l.g(9, i3);
        }
    }

    public final void d3(int i2) {
        D = i2;
        z.k.s(227, 6, 3, 1, i2);
        qt.y0(111, D);
        int iB = this.f5912l.b(8, 0);
        int i3 = D;
        if (iB != i3) {
            this.f5912l.g(8, i3);
        }
    }
}
