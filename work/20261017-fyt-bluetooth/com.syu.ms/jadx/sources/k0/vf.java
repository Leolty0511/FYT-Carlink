package k0;

import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class vf extends lt {
    public static int I = 0;
    public static int J = 0;
    public static int K = 10;
    public static int L = 10;
    public static int M = 10;
    public static int N = 10;
    public static int O = 10;
    public static int P = 10;
    public static int Q = 1;
    public static int R = 0;
    public static int S = 255;
    public static final int[] T = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 33, 35, 37, 38, 39, 39};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11339m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11342p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f11328b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11329c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f11330d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f11331e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f11332f = 4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f11333g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11334h = 6;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11335i = 7;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11336j = 8;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f11337k = 9;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f11338l = 10;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11340n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[][] f11341o = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{16, 62}, new int[]{17, 62}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11343q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int[][] f11344r = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 0}, new int[]{6, 29}, new int[]{7, 11}, new int[]{8, 1}, new int[]{9, 9}, new int[]{10, 6}, new int[]{11, 18}, new int[]{12, 54}, new int[]{13, 24}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 34}, new int[]{19, 33}, new int[]{20, 32}, new int[]{21, 35}};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f11345s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f11346t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11347u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f11348v = new a();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f11349w = new b();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public byte f11350x = 5;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f11351y = new c();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f11352z = new d();
    public Runnable A = new e();
    public int B = 0;
    public int C = 0;
    public float D = 0.0f;
    public int E = 255;
    public int F = 255;
    public Runnable G = new f();
    public Runnable H = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 6, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = vf.S;
            int i3 = u0.b.D;
            if (i2 != i3) {
                if (i3 != 13 && vf.S == 13) {
                    z.k.s(227, 116, 2, 1, 1);
                    z.k.s(227, 116, 2, 1, 0);
                }
                vf.S = u0.b.D;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vf.this.f11352z);
            vf.this.f11350x = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vf vfVar = vf.this;
            byte b2 = (byte) (vfVar.f11350x - 1);
            vfVar.f11350x = b2;
            if (b2 <= 0) {
                l0.b0.p0(vfVar.f11352z);
                vf.this.f11350x = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.D != 13 && nt.f8645g[133] != 0) {
                z.k.s(227, 116, 2, 1, 1);
                z.k.s(227, 116, 2, 1, 0);
            }
            vf vfVar2 = vf.this;
            vfVar2.G3(vfVar2.f11328b.b(3, 10));
            vf vfVar3 = vf.this;
            vfVar3.F3(vfVar3.f11328b.b(4, 10));
            vf vfVar4 = vf.this;
            vfVar4.C3(vfVar4.f11328b.b(5, 10));
            vf vfVar5 = vf.this;
            vfVar5.A3(vfVar5.f11328b.b(6, 10));
            vf vfVar6 = vf.this;
            vfVar6.z3(vfVar6.f11328b.b(7, 10));
            vf vfVar7 = vf.this;
            vfVar7.B3(vfVar7.f11328b.b(8, 10));
            vf vfVar8 = vf.this;
            vfVar8.E3(vfVar8.f11328b.b(9, 1));
            vf vfVar9 = vf.this;
            vfVar9.D3(vfVar9.f11328b.b(10, 0));
            z.k.s(227, 144, 1, 2);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 8, vf.T[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vf.this.D = u0.b.f17359s0;
            if (vf.this.D > 360.0f) {
                vf.h3(vf.this, 360.0f);
            }
            if (vf.this.D < 0.0f) {
                vf.h3(vf.this, 360.0f);
                vf vfVar = vf.this;
                vfVar.D = 360.0f - Math.abs(vfVar.D);
            }
            if ((vf.this.D <= 22.5d && vf.this.D >= 0.0f) || (vf.this.D >= 337.5d && vf.this.D <= 360.0f)) {
                vf.this.F = 48;
            } else if (vf.this.D > 22.5d && vf.this.D < 67.5d) {
                vf.this.F = 96;
            } else if (vf.this.D >= 67.5d && vf.this.D <= 112.5d) {
                vf.this.F = 0;
            } else if (vf.this.D > 112.5d && vf.this.D < 157.5d) {
                vf.this.F = 64;
            } else if (vf.this.D >= 157.5d && vf.this.D <= 202.5d) {
                vf.this.F = 16;
            } else if (vf.this.D > 202.5d && vf.this.D < 247.5d) {
                vf.this.F = 80;
            } else if (vf.this.D >= 247.5d && vf.this.D <= 292.5d) {
                vf.this.F = 32;
            } else if (vf.this.D <= 292.5d || vf.this.D >= 337.5d) {
                vf.this.F = 240;
            } else {
                vf.this.F = 112;
            }
            vf.this.C = u0.b.f17361t0;
            if (vf.this.F == vf.this.E && vf.this.C == vf.this.B) {
                return;
            }
            z.k.s(227, -55, 3, vf.this.F, (vf.this.C >> 8) & 255, vf.this.C & 255);
            vf vfVar2 = vf.this;
            vfVar2.E = vfVar2.F;
            vf vfVar3 = vf.this;
            vfVar3.B = vfVar3.C;
            qt.y0(126, vf.this.C);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 225, 5, (byte) (time.hour & 127), (byte) time.minute, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay);
        }
    }

    public static int a3(int i2) {
        if (i2 <= 0 || i2 > 14) {
            return 15;
        }
        return i2 / 2;
    }

    public static /* synthetic */ float h3(vf vfVar, float f2) {
        float f3 = vfVar.D % f2;
        vfVar.D = f3;
        return f3;
    }

    public final void A3(int i2) {
        N = i2;
        z.k.s(227, 132, 2, 5, i2);
        qt.y0(145, N);
        int iB = this.f11328b.b(6, 10);
        int i3 = N;
        if (iB != i3) {
            this.f11328b.g(6, i3);
        }
    }

    public final void B3(int i2) {
        P = i2;
        z.k.s(227, 132, 2, 1, i2);
        qt.y0(147, P);
        int iB = this.f11328b.b(8, 10);
        int i3 = P;
        if (iB != i3) {
            this.f11328b.g(8, i3);
        }
    }

    public final void C3(int i2) {
        M = i2;
        z.k.s(227, 132, 2, 4, i2);
        qt.y0(144, M);
        int iB = this.f11328b.b(5, 10);
        int i3 = M;
        if (iB != i3) {
            this.f11328b.g(5, i3);
        }
    }

    public final void D3(int i2) {
        R = i2;
        z.k.s(227, 132, 2, 6, i2);
        qt.y0(148, R);
        int iB = this.f11328b.b(10, 0);
        int i3 = R;
        if (iB != i3) {
            this.f11328b.g(10, i3);
        }
    }

    public final void E3(int i2) {
        Q = i2;
        z.k.s(227, 132, 2, 7, i2);
        qt.y0(149, Q);
        int iB = this.f11328b.b(9, 1);
        int i3 = Q;
        if (iB != i3) {
            this.f11328b.g(9, i3);
        }
    }

    public final void F3(int i2) {
        L = i2;
        z.k.s(227, 132, 2, 3, i2);
        qt.y0(143, L);
        int iB = this.f11328b.b(4, 10);
        int i3 = L;
        if (iB != i3) {
            this.f11328b.g(4, i3);
        }
    }

    public final void G3(int i2) {
        K = i2;
        z.k.s(227, 132, 2, 8, i2);
        qt.y0(142, K);
        int iB = this.f11328b.b(3, 10);
        int i3 = K;
        if (iB != i3) {
            this.f11328b.g(3, i3);
        }
    }

    public final void H3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        I = i2;
        qt.y0(115, i2);
        int iB = this.f11328b.b(2, 0);
        int i3 = I;
        if (iB != i3) {
            this.f11328b.g(2, i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8637c != 160) {
            y0.f.C0 = 18;
        } else {
            y0.f.C0 = 14;
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] != 0) {
                b3(3);
                return;
            }
            b3(2);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                b3(5);
                return;
            } else {
                b3(4);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = iArr[1];
            if (i3 == 2) {
                z.k.s(227, -117, 2, 1, 0);
                return;
            }
            if (i3 == 3) {
                z.k.s(227, -117, 2, 1, 1);
                return;
            } else if (i3 == 4) {
                z.k.s(227, -117, 2, 1, 2);
                return;
            } else {
                if (i3 != 5) {
                    return;
                }
                z.k.s(227, -117, 2, 1, 3);
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    b3(1);
                } else if (nt.f8645g[10] == 0) {
                    b3(21);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(23);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(23);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        b3(21);
                    }
                } else if (nt.f8645g[13] == 0) {
                    b3(21);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        b3(48);
                    }
                } else if (nt.f8645g[65] == 0) {
                    b3(48);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(49);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(49);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        b3(25);
                    }
                } else if (nt.f8645g[12] == 0) {
                    b3(25);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(9);
                } else {
                    b3(10);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f11328b.a();
        H3(this.f11328b.b(2, 1));
        qt.z(this.H);
        o1.h.f16865a.a(this.G, 1);
        o1.h.f16867c.a(this.G, 1);
        u0.c.f17386m.a(this.f11351y, 1);
        u0.c.f17374a.a(this.f11349w, 1);
        qt.x(this.f11348v);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8317l = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8633a;
        if (i2 == 3473864 || i2 == 3539400 || i2 == 3604936) {
            mtVar.f8317l = 1;
        }
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int[][] iArr2;
        int i6;
        int i7 = bArr[i2] & 255;
        int i8 = 1;
        if (i7 == 1) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f11340n = b2 & 255;
            int i9 = 0;
            while (true) {
                iArr = this.f11341o;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f11340n;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f11339m = i9;
                    break;
                }
                i9++;
            }
            int i11 = this.f11340n;
            if (i11 == 10) {
                if ((b3 & 255) == 1) {
                    int i12 = h0.c.E;
                    if (i12 == 3 || i12 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            if (i11 == 16 || i11 == 17) {
                if ((b3 & 255) == 1) {
                    int i13 = nt.f8633a;
                    if (i13 != 3473864 && i13 != 3539400 && i13 != 3604936) {
                        l0.b0.l0(62, 0);
                        l0.b0.l0(62, 1);
                        return;
                    } else {
                        if (o1.u.a0()) {
                            return;
                        }
                        l0.b0.l0(62, 0);
                        l0.b0.l0(62, 1);
                        return;
                    }
                }
                return;
            }
            int i14 = b3 & 255;
            if (i14 == 1) {
                if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f11339m;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f11339m = 255;
                    return;
                }
                return;
            }
        }
        if (i7 == 2) {
            int i16 = bArr[i2 + 2] & 255;
            int i17 = bArr[i2 + 3] & 255;
            int i18 = i2 + 4;
            int i19 = bArr[i18] & 255;
            int i20 = i2 + 5;
            int i21 = bArr[i20] & 255;
            qt.y0(10, (i16 >> 7) & 1);
            qt.y0(11, (i16 >> 6) & 1);
            qt.y0(12, (i16 >> 5) & 1);
            qt.y0(54, (i16 >> 4) & 1);
            qt.y0(13, (i16 >> 3) & 1);
            qt.y0(14, (i16 >> 2) & 1);
            qt.y0(65, (i16 >> 1) & 1);
            qt.y0(16, (i16 >> 0) & 1);
            qt.y0(18, (i17 >> 7) & 1);
            qt.y0(19, (i17 >> 6) & 1);
            qt.y0(20, (i17 >> 5) & 1);
            qt.y0(21, i17 & 31);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i5 = i19;
                i4 = i21;
                i5 = bArr[i20];
                i4 = bArr[i18];
            }
            i5 = i19;
            i4 = i21;
            int i22 = i5 & 255;
            if (i22 == 0) {
                qt.y0(27, -2);
            } else if (i22 == 32) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i22);
            }
            int i23 = i4 & 255;
            if (i23 == 0) {
                qt.y0(28, -2);
            } else if (i23 == 32) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i23);
            }
            qt.y0(42, (bArr[i2 + 8] >> 7) & 1);
            int i24 = bArr[i2 + 7] & 255;
            int i25 = i24 & 127;
            int i26 = (i24 & 128) != 0 ? 1000 - (i25 * 10) : (i25 * 10) + 1000;
            if (i26 > 600) {
                u0.d.A3(i26);
                return;
            }
            return;
        }
        if (i7 == 3) {
            byte b4 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b4 >> 6) & 1);
                qt.y0(1, (b4 >> 7) & 1);
            } else {
                qt.y0(2, (b4 >> 7) & 1);
                qt.y0(1, (b4 >> 6) & 1);
            }
            qt.y0(4, (b4 >> 5) & 1);
            qt.y0(3, (b4 >> 4) & 1);
            qt.y0(0, (b4 >> 2) & 1);
            qt.y0(5, (b4 >> 3) & 1);
            int i27 = i2 + 3;
            if (this.f11345s != ((bArr[i27] >> 0) & 1)) {
                int i28 = (bArr[i27] >> 0) & 1;
                this.f11345s = i28;
                if (u0.b.f17357r0 == 0) {
                    if (i28 != 1) {
                        if (i28 == 0) {
                            y0.h.t0(this.f11347u);
                            if (this.f11346t && o1.u.a0()) {
                                qt.y0(152, 0);
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                            }
                            this.f11346t = false;
                            return;
                        }
                        return;
                    }
                    if (!o1.u.a0()) {
                        qt.y0(152, 1);
                        this.f11346t = true;
                        SystemProperties.set("persist.lesc.video.ignore", "true");
                        a.i.a0(200L);
                        o1.u.z();
                        float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                        this.f11347u = y0.f.f18037c;
                        y0.h.t0((int) f2);
                    }
                    u0.d.C2(0);
                    return;
                }
                return;
            }
            return;
        }
        if (i7 == 4) {
            qt.y0(101, bArr[i2 + 2] & 255);
            qt.y0(102, bArr[i2 + 3] & 255);
            qt.y0(103, 255 & bArr[i2 + 4]);
            int i29 = i2 + 5;
            qt.y0(104, (bArr[i29] >> 0) & 1);
            qt.y0(106, (bArr[i29] >> 1) & 1);
            int i30 = i2 + 6;
            qt.y0(109, (bArr[i30] >> 0) & 3);
            qt.y0(108, (bArr[i30] >> 2) & 1);
            qt.y0(105, (bArr[i30] >> 3) & 1);
            qt.y0(110, (bArr[i30] >> 4) & 1);
            qt.y0(107, (bArr[i30] >> 5) & 1);
            int i31 = i2 + 7;
            qt.y0(132, (bArr[i31] >> 3) & 1);
            qt.y0(111, (bArr[i31] >> 0) & 1);
            qt.y0(112, (bArr[i31] >> 1) & 1);
            qt.y0(113, (bArr[i31] >> 2) & 1);
            return;
        }
        if (i7 == 6) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5360);
            return;
        }
        if (i7 == 19) {
            int i32 = bArr[i2 + 2] & 255;
            qt.y0(29, (i32 >> 0) & 15);
            qt.y0(31, (i32 >> 4) & 15);
            int i33 = bArr[i2 + 3] & 255;
            qt.y0(93, (i33 >> 0) & 15);
            qt.y0(95, (i33 >> 4) & 15);
            int i34 = bArr[i2 + 4] & 255;
            qt.y0(30, (i34 >> 0) & 15);
            qt.y0(32, (i34 >> 4) & 15);
            int i35 = bArr[i2 + 5] & 255;
            qt.y0(94, (i35 >> 0) & 15);
            qt.y0(96, (i35 >> 4) & 15);
            return;
        }
        if (i7 == 28) {
            qt.y0(133, bArr[i2 + 2] & 255);
            qt.y0(134, bArr[i2 + 5] & 255);
            int i36 = i2 + 7;
            qt.y0(135, (bArr[i36] >> 0) & 1);
            qt.y0(136, (bArr[i36] >> 1) & 1);
            qt.y0(137, (bArr[i36] >> 3) & 1);
            qt.y0(138, bArr[i2 + 8] & 255);
            qt.y0(139, bArr[i2 + 9] & 255);
            return;
        }
        if (i7 == 33) {
            if (o1.u.a0()) {
                return;
            }
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f11343q = b5 & 255;
            int i37 = 0;
            while (true) {
                iArr2 = this.f11344r;
                if (i37 >= iArr2.length) {
                    break;
                }
                int i38 = this.f11343q;
                if (i38 == iArr2[i37][0]) {
                    if (i38 == 0) {
                        break;
                    }
                    this.f11342p = i37;
                    break;
                }
                i37++;
            }
            int i39 = this.f11343q;
            if (i39 == 1) {
                for (int i40 = 0; i40 < (b6 & 255); i40++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i39 == 2) {
                for (int i41 = 0; i41 < (b6 & 255); i41++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i39 == 3) {
                for (int i42 = 0; i42 < (b6 & 255); i42++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i39 == 4) {
                for (int i43 = 0; i43 < (b6 & 255); i43++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            int i44 = b6 & 255;
            if (i44 == 1) {
                if (i37 < iArr2.length) {
                    l0.b0.l0(iArr2[i37][1], 0);
                    return;
                }
                return;
            } else {
                if (i44 == 0) {
                    int i45 = this.f11342p;
                    if (i45 < iArr2.length && i45 != 255) {
                        l0.b0.l0(iArr2[i45][1], 1);
                    }
                    this.f11342p = 255;
                    return;
                }
                return;
            }
        }
        if (i7 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            this.f11350x = (byte) 0;
            return;
        }
        if (i7 == 103) {
            if (I == 0) {
                return;
            }
            int i46 = i2 + 2;
            byte b7 = bArr[i46];
            if (b7 == 1) {
                i6 = 1;
                i8 = 0;
            } else if (b7 == 2) {
                i6 = 0;
            } else if (b7 != 3) {
                i6 = 0;
                i8 = 0;
            } else {
                i6 = 1;
            }
            if (qt.k0()) {
                l0.c0.N1(i8, i6, 0);
                return;
            }
            int i47 = bArr[i46] & 255;
            if (u0.b.f17347o == 0) {
                if (i47 == 2) {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i7 == 9) {
            u0.d.D2(a3(bArr[i2 + 3] & 255));
            u0.d.E2(a3(bArr[i2 + 4] & 255));
            u0.d.F2(a3(bArr[i2 + 5] & 255));
            u0.d.G2(a3(bArr[i2 + 6] & 255));
            u0.d.R2(a3(bArr[i2 + 7] & 255));
            u0.d.S2(a3(bArr[i2 + 8] & 255));
            u0.d.T2(a3(bArr[i2 + 9] & 255));
            u0.d.U2(a3(bArr[i2 + 10] & 255));
            return;
        }
        if (i7 == 10) {
            qt.y0(114, bArr[i2 + 2] & 255);
            return;
        }
        if (i7 != 16) {
            if (i7 != 17) {
                return;
            }
            qt.y0(124, bArr[i2 + 2] & 255);
            qt.y0(140, bArr[i2 + 3] & 255);
            qt.y0(122, bArr[i2 + 4] & 255);
            return;
        }
        qt.y0(121, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
        qt.y0(118, bArr[i2 + 4] & 255);
        qt.y0(119, bArr[i2 + 5] & 255);
        qt.y0(120, bArr[i2 + 6] & 255);
        qt.y0(123, bArr[i2 + 7] & 255);
        qt.y0(125, bArr[i2 + 8] & 255);
        qt.y0(150, bArr[i2 + 9] & 255);
        qt.y0(151, bArr[i2 + 10] & 255);
    }

    @Override // k0.lt
    public void W2() {
        this.f11328b.j();
        y3(this.f11328b.b(1, 0));
        qt.q0(this.H);
        o1.h.f16865a.d(this.G);
        o1.h.f16867c.d(this.G);
        y0.g.f18094d.d(this.A);
        u0.c.f17386m.d(this.f11351y);
        l0.b0.p0(this.f11352z);
        u0.c.f17374a.d(this.f11349w);
        qt.o0(this.f11348v);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 153) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, -32, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            H3(iArr[0]);
            return;
        }
        int i3 = 8;
        if (i2 == 1005) {
            if (iArr[0] == 4) {
                i3 = 1;
            } else if (iArr[0] == 5) {
                i3 = 2;
            } else if (iArr[0] == 6) {
                i3 = 7;
            } else if (iArr[0] != 7) {
                i3 = 0;
            }
            z.k.s(227, 131, 3, 10, (byte) i3, 255);
            return;
        }
        if (i2 != 1029) {
            switch (i2) {
                case 4:
                    z.k.s(227, 116, 2, iArr[0], iArr[1]);
                    break;
                case 5:
                    z.k.s(227, 138, 2, iArr[0], iArr[1]);
                    break;
                case 6:
                    switch (iArr[0]) {
                        case 1:
                            B3(iArr[1]);
                            break;
                        case 2:
                            z3(iArr[1]);
                            break;
                        case 3:
                            F3(iArr[1]);
                            break;
                        case 4:
                            C3(iArr[1]);
                            break;
                        case 5:
                            A3(iArr[1]);
                            break;
                        case 6:
                            D3(iArr[1]);
                            break;
                        case 7:
                            E3(iArr[1]);
                            break;
                        case 8:
                            G3(iArr[1]);
                            break;
                    }
                    break;
                case 7:
                    z.k.s(227, 144, 1, iArr[0]);
                    break;
                case 8:
                    if (nt.U == 1) {
                        o1.x.x(nt.f8643f, 1001, iArr[0]);
                    }
                    break;
                case 9:
                    z.k.s(227, 118, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                    break;
            }
            return;
        }
        if (T2(iArr, 2)) {
            a.f.p().t(LogType.CANBUS, "touch_x = " + iArr[1] + "\\\\\\touch_y = " + iArr[2] + "touch_state = " + iArr[0]);
            if (App.c().getResources().getConfiguration().orientation != 1) {
                int i4 = iArr[1];
                int i5 = iArr[2];
                if (iArr[0] == 0) {
                    if (i4 < (a.f.w() * MediaProperties.HEIGHT_360) / 1024 && i5 < (a.f.i() * 150) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 139, 2, 1, 0);
                        return;
                    }
                    if (i4 < (a.f.w() * 100) / 1024 && i5 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i5 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 139, 2, 1, 2);
                        return;
                    }
                    if (i4 < (a.f.w() * 420) / 1024 && i4 > (a.f.w() * 220) / 1024 && i5 < (a.f.i() * 450) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR && i5 > (a.f.i() * 200) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                        z.k.s(227, 139, 2, 1, 3);
                    } else {
                        if (i4 >= (a.f.w() * 260) / 1024 || i5 <= (a.f.i() * 480) / CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) {
                            return;
                        }
                        z.k.s(227, 139, 2, 1, 1);
                    }
                }
            }
        }
    }

    public final void b3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, -32, 2, i2, 0);
    }

    public final void y3(int i2) {
        J = i2;
        z.k.s(227, 131, 3, 2, (byte) i2, 0);
        int iB = this.f11328b.b(1, 0);
        int i3 = J;
        if (iB != i3) {
            this.f11328b.g(1, i3);
        }
    }

    public final void z3(int i2) {
        O = i2;
        z.k.s(227, 132, 2, 2, i2);
        qt.y0(146, O);
        int iB = this.f11328b.b(7, 10);
        int i3 = O;
        if (iB != i3) {
            this.f11328b.g(7, i3);
        }
    }
}
