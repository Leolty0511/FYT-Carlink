package k0;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.Camera;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class vb extends lt {
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static int J;
    public String C;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11284c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11287f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11290i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11283b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f11285d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11286e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11288g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f11289h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 18}, new int[]{7, 12}, new int[]{97, 7}, new int[]{98, 8}, new int[]{129, 0}, new int[]{134, 6}, new int[]{148, 13}, new int[]{135, 24}, new int[]{155, 18}, new int[]{208, 5}, new int[]{151, 7}, new int[]{152, 8}, new int[]{153, 4}, new int[]{154, 3}, new int[]{136, 29}, new int[]{130, 3}, new int[]{131, 4}, new int[]{225, 54}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11291j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11292k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f11293l = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 16}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 22}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 1}, new int[]{17, 11}, new int[]{18, 58}, new int[]{19, 56}, new int[]{20, 54}, new int[]{21, 15}, new int[]{22, 29}, new int[]{23, 7}, new int[]{24, 8}, new int[]{25, 30}, new int[]{26, 31}, new int[]{27, 16}, new int[]{28, 1}, new int[]{29, 35}, new int[]{52, 31}, new int[]{53, 30}, new int[]{64, 53}, new int[]{80, 5}, new int[]{81, 2}, new int[]{82, 16}, new int[]{83, 5}, new int[]{84, 54}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f11294m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11295n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f11296o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f11297p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11298q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f11299r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f11300s = new d();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f11301t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f11302u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public o1.g0 f11303v = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f11304w = new e();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f11305x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f11306y = new f();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f11307z = 0;
    public Runnable A = new g();
    public Runnable B = new h();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vb vbVar = vb.this;
            int i2 = vbVar.f11295n;
            if (i2 > 0) {
                vbVar.f11295n = i2 - 1;
            }
            if (vbVar.f11295n > 0 || vb.D != 1 || o1.u.a0()) {
                return;
            }
            vb.this.f11285d = true;
            o1.u.z();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vb vbVar = vb.this;
            int i2 = vbVar.f11286e;
            if (i2 > 0) {
                vbVar.f11286e = i2 - 1;
            }
            if (vbVar.f11286e == 0) {
                vbVar.b3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vb.this.f11300s);
            vb.this.f11298q = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vb vbVar = vb.this;
            int i2 = vbVar.f11298q - 1;
            vbVar.f11298q = i2;
            if (i2 <= 0) {
                l0.b0.p0(vbVar.f11300s);
                vb.this.f11298q = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 144, 1, 48);
            vb.this.d3();
            vb vbVar2 = vb.this;
            vbVar2.n3(vbVar2.f11303v.b(1, 0));
            vb vbVar3 = vb.this;
            vbVar3.m3(vbVar3.f11303v.b(2, 0));
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 1, 38);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = vb.this.f11305x;
            if (i2 != i3) {
                if (i3 == 13) {
                    z.k.s(227, 117, 2, 2, 1);
                }
                if (u0.b.D == 13) {
                    z.k.s(227, 117, 2, 2, 2);
                }
                vb.this.f11305x = u0.b.D;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = vb.this.f11307z;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 == 13 && i2 != 13) {
                    z.k.s(227, -113, 1, 1);
                } else if (i3 != 13 && i2 == 13) {
                    z.k.s(227, -113, 1, 6);
                }
                vb.this.f11307z = u0.b.D;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (y0.f.Q0 == 1) {
                vb.this.q3(117, (byte) 1, 1);
            } else {
                vb.this.q3(117, (byte) 1, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 0 || i2 == 1) {
            y0.f.C0 = 27;
        } else {
            y0.f.C0 = 18;
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(10);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(8);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(8);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(4);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(4);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(5);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(5);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(3);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(3);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(7);
                    break;
                } else if (i2 == -1) {
                    a3(6);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(13);
                } else {
                    a3(12);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(15);
                } else {
                    a3(14);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f11303v.a();
        u0.c.f17386m.a(this.f11299r, 1);
        qt.z(this.f11297p);
        w0.e.f17815a.a(this.f11297p, 1);
        w0.e.f17819e.a(this.f11297p, 1);
        o1.y yVar = u0.c.f17374a;
        yVar.a(this.A, 1);
        qt.x(this.f11304w);
        u0.b.Y3 = true;
        switch (nt.f8637c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 16:
            case 17:
                y0.g.f18110t.a(this.B, 1);
                mt mtVar = this.f7886a;
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8312g = 1;
                mtVar.f8317l = 1;
                mtVar.f8314i = 0;
                mtVar.f8320o = 0;
                yVar.a(this.f11306y, 1);
                break;
            case 13:
            case 14:
                y0.g.f18110t.a(this.B, 1);
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 1;
                mtVar2.f8312g = 1;
                mtVar2.f8317l = 1;
                mtVar2.f8314i = 0;
                mtVar2.f8320o = 0;
                yVar.a(this.f11306y, 1);
                break;
            case 15:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = new String[]{"com.syu.canbus"};
                mtVar3.f8310e = 1;
                mtVar3.f8312g = 1;
                mtVar3.f8317l = 0;
                mtVar3.f8314i = 0;
                mtVar3.f8320o = 0;
                break;
        }
        mt mtVar4 = this.f7886a;
        mtVar4.f8322q = 1;
        mtVar4.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        if (App.c().getResources().getConfiguration().orientation != 1) {
            this.f7886a.f8314i = 1;
        } else if (App.c().getResources().getDisplayMetrics().widthPixels == 1080) {
            this.f7886a.f8314i = 1;
        } else {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2;
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b3 = bArr[i2];
        if (b3 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7800);
        }
        if (b3 == 122) {
            qt.y0(136, bArr[i2 + 2]);
            return;
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 49) {
            if (I == 1) {
                int i11 = i2 + 5;
                if (E == ((bArr[i11] >> 6) & 1)) {
                    b2 = 7;
                    if (F != ((bArr[i11] >> 7) & 1)) {
                    }
                } else {
                    b2 = 7;
                }
                int i12 = (bArr[i11] >> 6) & 1;
                E = i12;
                int i13 = (bArr[i11] >> b2) & 1;
                F = i13;
                if (i12 == 1 || i13 == 1) {
                    if (!o1.u.a0()) {
                        this.f11285d = true;
                        o1.u.z();
                    }
                } else if (i12 == 0 && i13 == 0 && D == 0 && this.f11285d && o1.u.a0()) {
                    o1.u.k();
                }
            }
            int i14 = i2 + 5;
            l0.c0.a((bArr[i14] >> 6) & 1, (bArr[i14] >> 7) & 1, 0);
            return;
        }
        switch (b3) {
            case 1:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    this.f11288g = b4 & 255;
                    int i15 = 0;
                    while (true) {
                        iArr = this.f11289h;
                        if (i15 < iArr.length) {
                            int i16 = this.f11288g;
                            if (i16 != iArr[i15][0]) {
                                i15++;
                            } else if (i16 != 0) {
                                this.f11287f = i15;
                            }
                        }
                    }
                    int i17 = nt.f8637c;
                    if (i17 != 13 && i17 != 14) {
                        if (u0.b.D != 13) {
                            int i18 = this.f11288g;
                            if (i18 != 1) {
                                if (i18 != 2) {
                                    if (i18 == 6) {
                                        if ((b5 & 255) == 1) {
                                            if (h0.c.E == 4) {
                                                l0.b0.l0(18, 0);
                                                l0.b0.l0(18, 1);
                                            } else {
                                                l0.b0.l0(13, 0);
                                                l0.b0.l0(13, 1);
                                            }
                                        }
                                    } else if (i18 != 7) {
                                        int i19 = b5 & 255;
                                        if (i19 != 1) {
                                            if (i19 == 0) {
                                                int i20 = this.f11287f;
                                                if (i20 < iArr.length && i20 != 255) {
                                                    l0.b0.l0(iArr[i20][1], 1);
                                                }
                                                this.f11287f = 255;
                                            }
                                        } else if (i15 < iArr.length) {
                                            l0.b0.l0(iArr[i15][1], 0);
                                        }
                                    } else if ((b5 & 255) == 1) {
                                        int i21 = h0.c.E;
                                        if (i21 == 3 || i21 == 4 || i21 == 5) {
                                            l0.b0.l0(26, 0);
                                            l0.b0.l0(26, 1);
                                        } else {
                                            l0.b0.l0(12, 0);
                                            l0.b0.l0(12, 1);
                                        }
                                    }
                                    break;
                                } else if ((b5 & 255) == 1 && nt.f8637c == 15) {
                                    l0.b0.l0(8, 0);
                                    l0.b0.l0(8, 1);
                                    break;
                                }
                            } else if ((b5 & 255) == 1 && nt.f8637c == 15) {
                                l0.b0.l0(7, 0);
                                l0.b0.l0(7, 1);
                                break;
                            }
                        }
                    } else {
                        int i22 = this.f11288g;
                        if (i22 == 1) {
                            if ((b5 & 255) == 1) {
                                l0.b0.l0(7, 0);
                                l0.b0.l0(7, 1);
                            }
                        } else if (i22 == 2) {
                            if ((b5 & 255) == 1) {
                                l0.b0.l0(8, 0);
                                l0.b0.l0(8, 1);
                            }
                        } else if (i22 != 6) {
                            int i23 = b5 & 255;
                            if (i23 != 1) {
                                if (i23 == 0) {
                                    int i24 = this.f11287f;
                                    if (i24 < iArr.length && i24 != 255) {
                                        l0.b0.l0(iArr[i24][1], 1);
                                    }
                                    this.f11287f = 255;
                                }
                            } else if (i15 < iArr.length) {
                                l0.b0.l0(iArr[i15][1], 0);
                            }
                        } else if ((b5 & 255) == 1) {
                            if (h0.c.E == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            }
                        }
                        break;
                    }
                }
                break;
            case 2:
                if (nt.a()) {
                    byte b6 = bArr[i2 + 2];
                    byte b7 = bArr[i2 + 3];
                    this.f11291j = b6 & 255;
                    int i25 = 0;
                    while (true) {
                        iArr2 = this.f11293l;
                        if (i25 < iArr2.length) {
                            int i26 = this.f11291j;
                            if (i26 != iArr2[i25][0]) {
                                i25++;
                            } else if (i26 != 0) {
                                this.f11290i = i25;
                            }
                        }
                    }
                    int i27 = b7 & 255;
                    if (this.f11292k != i27) {
                        this.f11292k = i27;
                        if (i27 != 1) {
                            if (i27 == 2) {
                                int i28 = this.f11291j;
                                if (i28 == 1) {
                                    if (!this.f11294m) {
                                        this.f11294m = true;
                                        l0.b0.l0(25, 0);
                                        l0.b0.l0(25, 1);
                                    }
                                } else if (i28 == 28 && !this.f11294m) {
                                    this.f11294m = true;
                                    if (u0.b.D == 13) {
                                        z.k.s(227, 116, 2, 80, 1);
                                        a.i.a0(40L);
                                        z.k.s(227, 116, 2, 80, 0);
                                    }
                                }
                            } else if (i27 == 0) {
                                int i29 = this.f11291j;
                                if (i29 == 1) {
                                    if (this.f11294m) {
                                        this.f11294m = false;
                                    } else if (u0.b.f17332j != 1) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    } else {
                                        l0.b0.l0(25, 0);
                                        l0.b0.l0(25, 1);
                                    }
                                } else if (i29 != 28) {
                                    int i30 = this.f11290i;
                                    if (i30 < iArr2.length && i30 != 255) {
                                        l0.b0.l0(iArr2[i30][1], 1);
                                    }
                                    this.f11290i = 255;
                                } else if (!this.f11294m) {
                                    l0.b0.l0(1, 0);
                                    l0.b0.l0(1, 1);
                                } else {
                                    this.f11294m = false;
                                }
                            }
                            break;
                        } else {
                            int i31 = this.f11291j;
                            if (i31 != 1 && i31 != 28 && i25 < iArr2.length) {
                                l0.b0.l0(iArr2[i25][1], 0);
                                break;
                            }
                        }
                    }
                }
                break;
            case 3:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                int i32 = i2 + 4;
                byte b10 = bArr[i32];
                int i33 = i2 + 5;
                byte b11 = bArr[i33];
                byte b12 = bArr[i2 + 6];
                byte b13 = bArr[i2 + 8];
                if ((b13 & 1) == 1) {
                    qt.y0(21, 0);
                } else if (((b9 >> 4) & 1) == 1) {
                    qt.y0(21, 8);
                } else {
                    qt.y0(21, b8 & 7);
                }
                qt.y0(54, (b8 >> 3) & 1);
                qt.y0(16, (b8 >> 4) & 1);
                int[] iArr3 = new int[1];
                iArr3[0] = ((b8 >> 5) & 1) == 0 ? 0 : 1;
                qt.y0(12, iArr3);
                qt.y0(11, (b8 >> 6) & 1);
                qt.y0(10, (b8 >> 7) & 1);
                int i34 = b9 & DhcpPacket.DHCP_DOMAIN_NAME;
                switch (i34) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i8 = 1;
                        break;
                    case 2:
                        i8 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i4 = 1;
                        break;
                    case 3:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        break;
                    case 4:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        i7 = i6;
                        break;
                    case 5:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                        break;
                    case 6:
                        i8 = 0;
                        i4 = 0;
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    case 7:
                        i8 = 0;
                        i4 = 0;
                        i6 = 0;
                        i7 = 0;
                        i5 = 1;
                        break;
                    case 8:
                        i8 = 0;
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        i7 = 1;
                        break;
                    case 9:
                        i8 = 0;
                        i4 = 0;
                        i5 = 1;
                        i6 = i5;
                        i7 = i6;
                        break;
                    default:
                        i8 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = i5;
                        i7 = i6;
                        break;
                }
                qt.y0(49, i8);
                qt.y0(65, i4);
                qt.y0(18, i5);
                qt.y0(19, i6);
                qt.y0(20, i7);
                qt.y0(14, (b9 >> 5) & 1);
                qt.y0(52, (b9 >> 6) & 1);
                qt.y0(77, i34);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b10 = bArr[i33];
                    b11 = bArr[i32];
                }
                byte b14 = b11;
                int i35 = b10 & 255;
                if (i35 == 0) {
                    qt.y0(27, -2);
                } else if (i35 != 255) {
                    switch (i35) {
                        case 29:
                            qt.y0(27, 32);
                            break;
                        case 30:
                            qt.y0(27, -3);
                            break;
                        case 31:
                            qt.y0(27, 33);
                            break;
                        case 32:
                            qt.y0(27, 30);
                            break;
                        case 33:
                            qt.y0(27, 31);
                            break;
                        case 34:
                            qt.y0(27, 62);
                            break;
                        default:
                            if (i35 >= 1 && i35 <= 28) {
                                qt.y0(27, (((i35 * 5) + 165) * 2) / 10);
                            }
                            break;
                    }
                } else {
                    qt.y0(27, -1);
                }
                int i36 = b14 & 255;
                if (i36 == 0) {
                    qt.y0(28, -2);
                } else if (i36 != 255) {
                    switch (i36) {
                        case 29:
                            qt.y0(28, 32);
                            break;
                        case 30:
                            qt.y0(28, -3);
                            break;
                        case 31:
                            qt.y0(28, 33);
                            break;
                        case 32:
                            qt.y0(28, 30);
                            break;
                        case 33:
                            qt.y0(28, 31);
                            break;
                        case 34:
                            qt.y0(28, 62);
                            break;
                        default:
                            if (i36 >= 1 && i36 <= 28) {
                                qt.y0(28, (((i36 * 5) + 165) * 2) / 10);
                            }
                            break;
                    }
                } else {
                    qt.y0(28, -1);
                }
                qt.y0(29, (b12 >> 4) & 15);
                qt.y0(30, b12 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(13, (b13 >> 2) & 1);
                if (nt.a()) {
                    int i37 = bArr[i2 + 7] & 255;
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((i37 & 128) != 0 ? 1320 - ((256 - i37) * 18) : (i37 * 18) + 1320) / 10) * 10) | 268435456) & (-1) : (i37 & 128) != 0 ? 1000 - ((256 - i37) * 10) : ((i37 & 255) * 10) + 1000);
                }
                break;
            case 4:
                int i38 = i2 + 2;
                qt.y0(98, bArr[i38] & 127);
                qt.y0(99, (bArr[i38] >> 7) & 1);
                break;
            case 5:
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 3];
                qt.y0(100, (b15 >> 6) & 3);
                qt.y0(101, (b15 >> 4) & 3);
                qt.y0(102, (b15 >> 2) & 3);
                qt.y0(103, (b15 >> 1) & 1);
                qt.y0(104, b15 & 1);
                qt.y0(105, (b16 >> 3) & 1);
                qt.y0(106, b16 & 3);
                break;
            case 6:
                byte b17 = bArr[i2 + 2];
                byte b18 = bArr[i2 + 3];
                qt.y0(107, (b17 >> 7) & 1);
                qt.y0(108, (b17 >> 5) & 3);
                qt.y0(109, (b17 >> 4) & 1);
                qt.y0(110, (b17 >> 3) & 1);
                qt.y0(111, (b17 >> 1) & 3);
                qt.y0(112, b17 & 1);
                qt.y0(113, (b18 >> 7) & 1);
                qt.y0(114, 3 & (b18 >> 5));
                qt.y0(115, (b18 >> 4) & 1);
                qt.y0(118, (b18 >> 3) & 1);
                qt.y0(119, (b18 >> 1) & 1);
                break;
            default:
                switch (b3) {
                    case 8:
                        o3(bArr, i2 + 2, i3 - 2);
                        break;
                    case 9:
                        if (nt.f8637c == 15) {
                            p3(bArr[i2 + 2]);
                        }
                        break;
                    case 10:
                        byte b19 = bArr[i2 + 2];
                        byte b20 = bArr[i2 + 3];
                        qt.y0(120, (b19 >> 7) & 1);
                        qt.y0(121, (b19 >> 6) & 1);
                        qt.y0(122, (b19 >> 5) & 1);
                        qt.y0(123, (b19 >> 4) & 1);
                        qt.y0(124, (b19 >> 3) & 1);
                        qt.y0(125, (b19 >> 2) & 1);
                        qt.y0(126, b19 & 3);
                        qt.y0(127, (b20 >> 7) & 1);
                        qt.y0(128, (b20 >> 6) & 1);
                        qt.y0(129, (b20 >> 5) & 1);
                        qt.y0(130, (b20 >> 4) & 1);
                        qt.y0(131, (b20 >> 3) & 1);
                        qt.y0(132, (b20 >> 2) & 1);
                        break;
                    case 11:
                        qt.y0(133, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8)) / 16);
                        break;
                    case 12:
                        qt.y0(134, bArr[i2 + 2] & 255);
                        break;
                    case 13:
                        qt.y0(135, bArr[i2 + 2] & 255);
                        break;
                    default:
                        switch (b3) {
                            case 34:
                                byte b21 = bArr[i2 + 2];
                                byte b22 = bArr[i2 + 3];
                                byte b23 = bArr[i2 + 4];
                                byte b24 = bArr[i2 + 5];
                                u0.d.R2(c3(b21 & 255));
                                u0.d.S2(c3(b22 & 255));
                                u0.d.T2(c3(b23 & 255));
                                u0.d.U2(c3(b24 & 255));
                                if (b21 == 0 && b22 == 0 && b23 == 0 && b24 == 0) {
                                    H = 0;
                                } else {
                                    H = 1;
                                }
                                if (J == 1) {
                                    int i39 = H;
                                    if (i39 == 1 || (i9 = G) == 1) {
                                        if (!o1.u.a0()) {
                                            this.f11285d = true;
                                            o1.u.z();
                                        }
                                        break;
                                    } else if (i39 == 0 && i9 == 0 && D == 0 && this.f11285d && o1.u.a0()) {
                                        o1.u.k();
                                        break;
                                    }
                                }
                                break;
                            case 35:
                                int i40 = bArr[i2 + 2] & 255;
                                int i41 = bArr[i2 + 3] & 255;
                                int i42 = bArr[i2 + 4] & 255;
                                int i43 = bArr[i2 + 5] & 255;
                                if (i40 == 0 && i41 == 0 && i42 == 0 && i43 == 0) {
                                    G = 0;
                                } else {
                                    G = 1;
                                }
                                if (J == 1) {
                                    int i44 = H;
                                    if (i44 == 1 || (i10 = G) == 1) {
                                        if (!o1.u.a0()) {
                                            this.f11285d = true;
                                            o1.u.z();
                                        }
                                    } else if (i44 == 0 && i10 == 0 && D == 0 && this.f11285d && o1.u.a0()) {
                                        o1.u.k();
                                    }
                                } else {
                                    if (i40 == 0 && i41 == 0 && i42 == 0 && i43 == 0) {
                                        u0.d.C2(0);
                                    } else if ((l0.c0.f13013g != i40 || l0.c0.f13014h != i41 || l0.c0.f13015i != i42 || l0.c0.f13016j != i43) && u0.b.f17347o == 0) {
                                        u0.d.C2(1);
                                        l0.c0.f13017k = 4;
                                        l0.b0.b(l0.c0.f13018l);
                                    }
                                    l0.c0.f13013g = i40;
                                    l0.c0.f13014h = i41;
                                    l0.c0.f13015i = i42;
                                    l0.c0.f13016j = i43;
                                }
                                u0.d.D2(c3(i40 & 255));
                                u0.d.E2(c3(i41 & 255));
                                u0.d.F2(c3(i42 & 255));
                                u0.d.G2(c3(i43 & 255));
                                break;
                            case 36:
                                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                    int i45 = i2 + 2;
                                    qt.y0(1, (bArr[i45] >> 7) & 1);
                                    qt.y0(2, (bArr[i45] >> 6) & 1);
                                } else {
                                    int i46 = i2 + 2;
                                    qt.y0(1, (bArr[i46] >> 6) & 1);
                                    qt.y0(2, (bArr[i46] >> 7) & 1);
                                }
                                int i47 = i2 + 2;
                                qt.y0(4, (bArr[i47] >> 5) & 1);
                                qt.y0(3, (bArr[i47] >> 4) & 1);
                                qt.y0(5, (bArr[i47] >> 3) & 1);
                                int i48 = i2 + 3;
                                qt.y0(0, (bArr[i48] >> 7) & 1);
                                int i49 = bArr[i48] & 1;
                                if (u0.b.f17357r0 == 0 && D != i49) {
                                    D = i49;
                                    if (i49 == 1) {
                                        this.f11295n = 5;
                                        l0.b0.a(this.f11296o);
                                        break;
                                    } else if (i49 == 0) {
                                        this.f11295n = 0;
                                        l0.b0.o0(this.f11296o);
                                        if (this.f11285d && o1.u.a0()) {
                                            o1.u.k();
                                            break;
                                        }
                                    }
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
        this.f11303v.j();
        qt.q0(this.f11297p);
        w0.e.f17815a.d(this.f11297p);
        w0.e.f17819e.d(this.f11297p);
        o1.y yVar = u0.c.f17374a;
        yVar.d(this.A);
        yVar.d(this.f11306y);
        y0.g.f18110t.d(this.B);
        u0.b.Y3 = false;
        u0.c.f17386m.d(this.f11299r);
        l0.b0.p0(this.f11300s);
        qt.o0(this.f11304w);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 140) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -126, 2, (byte) iArr[0], (byte) iArr[1]);
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -125, 2, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 80) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 116, 2, (byte) iArr[1], (byte) iArr[0]);
            return;
        }
        if (i2 == 81) {
            if (iArr == null || iArr.length <= 2) {
                return;
            }
            l3(iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 83) {
            n3(iArr[0]);
            return;
        }
        if (i2 == 84) {
            m3(iArr[0]);
            return;
        }
        switch (i2) {
            case 5:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -123, 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    q3(134, (byte) 10, iArr);
                    break;
                }
                break;
            case 7:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -120, 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 8:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -112, 1, (byte) iArr[0]);
                    break;
                }
                break;
            case 9:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, -117, 1, (byte) iArr[0]);
                    break;
                }
                break;
            default:
                switch (i2) {
                    case 16:
                        if (iArr != null && iArr.length > 3) {
                            z.k.s(227, 114, 4, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3]);
                            break;
                        }
                        break;
                    case 17:
                        if (iArr != null && iArr.length > 1) {
                            z.k.s(227, 113, 2, (byte) iArr[0], (byte) iArr[1]);
                            break;
                        }
                        break;
                    case 18:
                        if (iArr != null && iArr.length > 0) {
                            q3(117, (byte) 1, (byte) iArr[0]);
                            break;
                        }
                        break;
                    case 19:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, 117, 2, 2, iArr[0]);
                            break;
                        }
                        break;
                    case 20:
                        if (nt.U == 1) {
                            o1.x.x(nt.f8643f, 1001, iArr[0]);
                        }
                        break;
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 113, 2, i2, 1);
        a.i.a0(50L);
        z.k.s(227, 113, 2, i2, 0);
    }

    public final void b3() {
        int[] iArr = new int[3];
        int i2 = 0;
        iArr[0] = 139;
        iArr[1] = 1;
        if (o0.e.f16784k != 0) {
            iArr[2] = 1;
        } else {
            iArr[2] = 0;
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

    public final int c3(int i2) {
        switch (i2) {
            case 0:
            default:
                return 10;
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 3;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 9;
        }
    }

    public final void d3() {
        if (App.c().getResources().getConfiguration().orientation == 1) {
            int i2 = nt.f8637c;
            if (i2 == 1) {
                z.k.s(227, 114, 9, 1, 1, 18, 2, 3, 251, 251, 183, i.a.Theme_preferenceHeaderPanelStyle);
            } else if (i2 == 5) {
                z.k.s(227, 114, 9, 1, 1, 22, 2, 3, 251, 251, 167, i.a.Theme_preferenceHeaderPanelStyle);
            }
        } else {
            int i3 = nt.f8637c;
            if (i3 == 1) {
                z.k.s(227, 114, 21, 1, 1, 18, 2, 3, 251, 251, 183, i.a.Theme_preferenceHeaderPanelStyle, 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
            } else if (i3 == 5) {
                z.k.s(227, 114, 21, 1, 1, 22, 2, 3, 251, 251, 167, i.a.Theme_preferenceHeaderPanelStyle, 19, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0);
            }
        }
        a.i.a0(150L);
    }

    public final void l3(int i2, int i3, int i4) {
        z.k.s(227, 118, 5, (byte) i2, (byte) (i3 & 255), (byte) ((i3 >> 8) & 255), (byte) (i4 & 255), (byte) ((i4 >> 8) & 255));
    }

    public final void m3(int i2) {
        qt.y0(138, i2);
        J = i2;
        int iB = this.f11303v.b(2, 0);
        int i3 = J;
        if (iB != i3) {
            this.f11303v.g(2, i3);
        }
    }

    public final void n3(int i2) {
        qt.y0(137, i2);
        I = i2;
        int iB = this.f11303v.b(1, 0);
        int i3 = I;
        if (iB != i3) {
            this.f11303v.g(1, i3);
        }
    }

    public final void o3(byte[] bArr, int i2, int i3) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 + i4;
            int i6 = ((bArr[i5] & 240) >> 4) & 255;
            if (i6 == 15) {
                break;
            }
            if (i6 > -1 && i6 < 10) {
                stringBuffer.append((char) (i6 + 48));
            } else if (i6 == 10) {
                stringBuffer.append('*');
            } else if (i6 == 11) {
                stringBuffer.append('#');
            }
            int i7 = bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME & 255;
            if (i7 == 15) {
                break;
            }
            if (i7 > -1 && i7 < 10) {
                stringBuffer.append((char) (i7 + 48));
            } else if (i7 == 10) {
                stringBuffer.append('*');
            } else if (i7 == 11) {
                stringBuffer.append('#');
            }
        }
        String string = stringBuffer.toString();
        if (qt.B0(116, string, this.C)) {
            this.C = string;
        }
    }

    public final void p3(int i2) {
        int i3;
        qt.y0(117, i2);
        if (i2 == 0) {
            if (this.f11283b == 1 && (i3 = this.f11284c) != 12) {
                u0.b.f17311c.c(i3);
            }
            this.f11283b = 0;
            return;
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            int i4 = h0.c.G;
            if (i4 != 0 || this.f11283b != 0) {
                if (i4 == 0 || this.f11283b != 0) {
                    return;
                }
                z.k.s(227, 186, 2, 3, 0);
                return;
            }
            this.f11283b = 1;
            this.f11284c = u0.b.D;
            if (u0.b.f17332j != 0) {
                u0.d.M(0);
            }
            if (u0.b.D == 12 && this.f11283b != 0 && y0.f.f18055i != 0) {
                y0.h.u0(-4);
            }
            if (u0.b.D != 12) {
                u0.b.f17311c.c(12);
            }
            if (o1.u.S(u0.b.J1)) {
                App.c().sendOrderedBroadcast(new Intent("com.syu.onstar.rzc.showpip"), "com.syu.canbus");
                return;
            }
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.xp.yinglang.YLOnStarAct"));
            intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
            intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
            try {
                App.c().startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    public final void q3(int i2, byte b2, int... iArr) {
        int i3 = b2 & 255;
        if (i3 < iArr.length) {
            throw new IllegalArgumentException("params data length > size!");
        }
        int i4 = i3 + 3;
        int[] iArr2 = new int[i4];
        iArr2[0] = -29;
        iArr2[1] = (byte) i2;
        iArr2[2] = b2;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            iArr2[3 + i5] = (byte) (iArr[i5] & 255);
        }
        for (int i6 = 3 + length; i6 < i4; i6++) {
            iArr2[i6] = 0;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i7 = 0; i7 < i4; i7++) {
            stringBuffer.append(iArr2[i7] + "\n");
        }
        z.k.s(iArr2);
    }
}
