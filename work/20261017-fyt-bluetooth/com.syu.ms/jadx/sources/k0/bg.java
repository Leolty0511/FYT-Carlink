package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class bg extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static final int[] E = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};
    public static final int[] F = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    public static final int[] G = {0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 14};
    public static final o1.f<h> H = new o1.f<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f3648s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f3649t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f3650u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f3651v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f3652w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f3653x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f3654y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f3655z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3657c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3658d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f3659e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3660f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3661g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3662h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f3663i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3664j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3665k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3666l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3667m = new f();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3668n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3669o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3670p = 100;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f3671q = new g();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3672r = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(bg.this.f3661g);
            bg.this.f3659e = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bg bgVar = bg.this;
            bgVar.f3659e = (byte) (bgVar.f3659e - 1);
            bgVar.W3();
            bg bgVar2 = bg.this;
            if (bgVar2.f3659e <= 0) {
                l0.b0.p0(bgVar2.f3661g);
                bg.this.f3659e = (byte) 5;
            } else if (u0.b.f17306a0 == 1) {
                z.k.s(227, 198, 2, 0, 1);
                bg.this.W3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (bg.this.f3663i == millis && bg.this.f3664j == zIs24HourFormat) {
                return;
            }
            bg.this.f3663i = millis;
            bg.this.f3664j = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 130, 6, bg.this.O3((byte) (time.year + DrmManagerClient.ERROR_UNKNOWN)), bg.this.O3((byte) (time.month + 1)), bg.this.O3((byte) time.monthDay), bg.this.O3((byte) time.hour), bg.this.O3((byte) time.minute), 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.e();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.s0();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z2 = true;
            boolean z3 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                default:
                    i3 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                case 5:
                    i3 = 1;
                    break;
            }
            if (bg.this.f3668n != i3) {
                bg.this.f3668n = i3;
            } else {
                z2 = false;
            }
            if (z2) {
                if (bg.this.f3668n != 0) {
                    bg bgVar = bg.this;
                    bgVar.V3(bgVar.f3668n);
                }
                if (bg.this.f3669o != z3) {
                    bg.this.f3669o = z3;
                    bg.this.f3668n = 0;
                }
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bg.this.f3670p > 100) {
                bg.M3(bg.this);
                if (bg.this.f3672r == bg.this.f3670p / 100) {
                    bg.this.f3672r = 0;
                    return;
                }
            }
            int i2 = u0.b.f17306a0;
            int i3 = u0.b.f17320f;
            int i4 = y0.f.f18055i;
            if (i2 == 0 || i3 == 0 || i4 == 1) {
                int unused = bg.f3649t = bg.E[0];
            } else {
                int unused2 = bg.f3649t = bg.E[o1.o0.a(y0.f.f18037c, 0, 36)];
            }
            if (bg.this.f7886a.f8307b == 1 && bg.f3648s != bg.f3649t) {
                bg.this.U3();
            }
            if (bg.this.f7886a.f8309d == 1) {
                if (bg.f3650u != bg.f3653x) {
                    bg.this.Q3();
                }
                if (bg.f3651v != bg.f3654y) {
                    bg.this.S3();
                }
                if (bg.f3652w != bg.f3655z) {
                    bg.this.T3();
                }
            }
            if (bg.this.f7886a.f8308c == 1) {
                if (bg.A != bg.C) {
                    bg.this.R3();
                }
                if (bg.B != bg.D) {
                    bg.this.P3();
                }
            }
        }
    }

    public static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3680a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f3681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3682c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3683d;

        public synchronized void a(int i2) {
            this.f3681b = i2;
            if (!this.f3682c) {
                this.f3682c = true;
                o1.k.a().postDelayed(this, this.f3683d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 132, 2, this.f3680a, this.f3681b);
            this.f3682c = false;
        }
    }

    public static /* synthetic */ int M3(bg bgVar) {
        int i2 = bgVar.f3672r;
        bgVar.f3672r = i2 + 1;
        return i2;
    }

    public static void N3(int i2, int i3) {
        h hVarC = H.c(i2);
        if (hVarC != null) {
            hVarC.a(i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final int O3(int i2) {
        return ((i2 / 10) * 16) + (i2 % 10);
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (this.f7886a.f8309d == 1) {
            int[] iArr2 = F;
            int[] iArr3 = y0.f.f18038c0;
            f3653x = iArr2[o1.o0.a(iArr3[0] >> 1, 0, 10)];
            f3654y = iArr2[o1.o0.a(iArr3[1] >> 1, 0, 10)];
            f3655z = iArr2[o1.o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    public final synchronized void P3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        N3(2, D);
    }

    public final synchronized void Q3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        N3(4, f3653x);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (this.f7886a.f8308c == 1) {
            int[] iArr2 = G;
            C = iArr2[o1.o0.a(y0.f.f18061l, 0, 16)];
            D = iArr2[o1.o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    public final synchronized void R3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        N3(1, C);
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 1;
        l0.b0.b(this.f3665k);
        y0.g.f18094d.a(this.f3666l, 1);
        y0.g.f18095e.a(this.f3666l, 1);
        w0.e.f17815a.a(this.f3665k, 1);
        u0.c.f17374a.a(this.f3665k, 1);
        u0.c.f17392s.a(this.f3665k, 1);
        u0.c.f17393t.a(this.f3665k, 1);
        h0.d.f2464c.a(this.f3667m, 1);
        qt.z(this.f3662h);
        u0.c.f17386m.a(this.f3660f, 1);
    }

    public final synchronized void S3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        N3(6, f3654y);
    }

    public final synchronized void T3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        N3(5, f3655z);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(98, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            int i4 = i2 + 5;
            int i5 = i2 + 4;
            qt.y0(99, ((bArr[i4] << 8) & 65280) | (bArr[i5] & 255));
            qt.y0(1032, (65280 & (bArr[i4] << 8)) | (bArr[i5] & 255));
        }
        if (b2 == 28) {
            if (bArr[i2 + 2] == 2) {
                qt.y0(109, bArr[i2 + 4] & 255);
                qt.y0(110, bArr[i2 + 5] & 255);
                qt.y0(112, bArr[i2 + 8] & 255);
                qt.y0(111, bArr[i2 + 9] & 255);
                return;
            }
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            qt.y0(81, (b3 >> 7) & 1);
            qt.y0(43, (b3 >> 6) & 1);
            qt.y0(84, (b3 >> 5) & 1);
            qt.y0(82, (b3 >> 4) & 1);
            qt.y0(83, (b3 >> 3) & 1);
            qt.y0(48, (b3 >> 2) & 1);
            qt.y0(46, (b3 >> 1) & 1);
            qt.y0(47, (b3 >> 0) & 1);
            qt.y0(42, (b4 >> 7) & 1);
            int i6 = b5 & 255;
            if (b5 == -2) {
                qt.y0(40, -2);
            } else if (b5 == -1) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i6);
            }
            int i7 = b6 & 255;
            if (b6 == -2) {
                qt.y0(41, -2);
                return;
            } else if (b6 == -1) {
                qt.y0(41, -3);
                return;
            } else {
                qt.y0(41, i7);
                return;
            }
        }
        int i8 = 10;
        if (b2 == 65) {
            byte b7 = bArr[i2 + 2];
            if (b7 != 2) {
                if (b7 != 3) {
                    return;
                }
                int i9 = i2 + 3;
                qt.y0(103, (bArr[i9] >> 7) & 1);
                qt.y0(104, (bArr[i9] >> 6) & 1);
                return;
            }
            qt.y0(100, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(102, bArr[i2 + 14] & 255);
            qt.y0(101, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            int i10 = ((bArr[i2 + 9] << 8) & 65280) | ((bArr[i2 + 10] << 0) & 255);
            u0.d.A3((i10 & 128) != 0 ? 1000 - ((65535 - i10) + 1) : i10 + 1000);
            return;
        }
        if (b2 == 116) {
            int i11 = i2 + 3;
            if (((bArr[i11] >> 7) & 1) == 1 || ((bArr[i2 + 4] >> 7) & 1) == 1) {
                o1.x.C(nt.f8643f, 115, new int[]{1}, null, null);
            }
            qt.y0(114, (bArr[i11] >> 4) & 7);
            qt.y0(113, (bArr[i2 + 4] >> 6) & 1);
            return;
        }
        switch (b2) {
            case 32:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                this.f3657c = b8 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f3658d;
                    if (i12 < iArr.length) {
                        int i13 = this.f3657c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f3656b = i12;
                        }
                    }
                }
                if ((b9 & 255) != 0 && i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    l0.b0.l0(this.f3658d[i12][1], 1);
                    break;
                }
                break;
            case 33:
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 3];
                int i14 = i2 + 4;
                byte b12 = bArr[i14];
                int i15 = i2 + 5;
                byte b13 = bArr[i15];
                byte b14 = bArr[i2 + 6];
                byte b15 = bArr[i2 + 7];
                qt.y0(10, (b10 >> 7) & 1);
                qt.y0(11, (b10 >> 6) & 1);
                qt.y0(12, (b10 >> 5) & 1);
                qt.y0(14, (b10 >> 2) & 1);
                qt.y0(15, (b10 >> 1) & 1);
                qt.y0(38, b10 & 1);
                int i16 = (b14 >> 7) & 1;
                qt.y0(54, i16);
                qt.y0(29, (b14 >> 4) & 3);
                qt.y0(67, (b14 >> 3) & 1);
                qt.y0(53, (b14 >> 2) & 1);
                qt.y0(30, b14 & 3);
                qt.y0(36, i16);
                qt.y0(55, (b15 >> 3) & 1);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b12 = bArr[i15];
                    b13 = bArr[i14];
                }
                byte b16 = b13;
                int i17 = b12 & 255;
                if (b12 == -2) {
                    qt.y0(27, -2);
                } else if (b12 == -1) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i17);
                }
                int i18 = b16 & 255;
                if (b16 == -2) {
                    qt.y0(28, -2);
                } else if (b16 == -1) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i18);
                }
                qt.y0(18, (b11 >> 7) & 1);
                qt.y0(19, (b11 >> 6) & 1);
                qt.y0(20, (b11 >> 5) & 1);
                qt.y0(21, b11 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(22, (b15 >> 7) & 1);
                qt.y0(23, (b15 >> 6) & 1);
                qt.y0(24, (b15 >> 5) & 1);
                qt.y0(13, (b10 >> 4) & 1);
                qt.y0(26, (b10 >> 3) & 1);
                break;
            case 34:
                byte b17 = bArr[i2 + 2];
                byte b18 = bArr[i2 + 3];
                byte b19 = bArr[i2 + 4];
                byte b20 = bArr[i2 + 5];
                int i19 = b17 & 255;
                if (i19 > 10) {
                    i19 = 10;
                } else if (i19 == 0) {
                    i19 = 15;
                }
                u0.d.R2(i19);
                int i20 = b18 & 255;
                if (i20 > 10) {
                    i20 = 10;
                } else if (i20 == 0) {
                    i20 = 15;
                }
                u0.d.S2(i20);
                int i21 = b19 & 255;
                if (i21 > 10) {
                    i21 = 10;
                } else if (i21 == 0) {
                    i21 = 15;
                }
                u0.d.T2(i21);
                int i22 = b20 & 255;
                if (i22 <= 10) {
                    i8 = i22 == 0 ? 15 : i22;
                }
                u0.d.U2(i8);
                break;
            case 35:
                byte b21 = bArr[i2 + 2];
                byte b22 = bArr[i2 + 3];
                byte b23 = bArr[i2 + 4];
                byte b24 = bArr[i2 + 5];
                int i23 = b21 & 255;
                if (i23 > 10) {
                    i23 = 10;
                } else if (i23 == 0) {
                    i23 = 15;
                }
                u0.d.D2(i23);
                int i24 = b22 & 255;
                if (i24 > 10) {
                    i24 = 10;
                } else if (i24 == 0) {
                    i24 = 15;
                }
                u0.d.E2(i24);
                int i25 = b23 & 255;
                if (i25 > 10) {
                    i25 = 10;
                } else if (i25 == 0) {
                    i25 = 15;
                }
                u0.d.F2(i25);
                int i26 = b24 & 255;
                if (i26 <= 10) {
                    i8 = i26 == 0 ? 15 : i26;
                }
                u0.d.G2(i8);
                break;
            case 36:
                byte b25 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b25 >> 1) & 1);
                    qt.y0(2, (b25 >> 0) & 1);
                } else {
                    qt.y0(1, (b25 >> 0) & 1);
                    qt.y0(2, (b25 >> 1) & 1);
                }
                qt.y0(3, (b25 >> 2) & 1);
                qt.y0(4, (b25 >> 3) & 1);
                qt.y0(5, (b25 >> 4) & 1);
                qt.y0(0, (b25 >> 5) & 1);
                break;
            case 37:
                qt.y0(117, bArr[i2 + 2] & 1);
                break;
            case 38:
                qt.l(bArr[i2 + 2], bArr[i2 + 3], false, 11436);
                break;
            case 39:
                qt.y0(116, bArr[i2 + 3] & 255);
                break;
        }
    }

    public final synchronized void U3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f3648s;
        int i3 = f3649t;
        if (i2 < i3) {
            i2++;
        } else if (i2 > i3) {
            i2--;
        }
        N3(7, i2);
    }

    public final void V3(int i2) {
        z.k.s(-29, -59, 1, (byte) i2);
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.p0(this.f3665k);
        y0.g.f18094d.d(this.f3666l);
        y0.g.f18095e.d(this.f3666l);
        w0.e.f17815a.d(this.f3665k);
        u0.c.f17374a.d(this.f3665k);
        u0.c.f17392s.d(this.f3665k);
        u0.c.f17393t.d(this.f3665k);
        h0.d.f2464c.d(this.f3667m);
        u0.c.f17386m.d(this.f3660f);
        l0.b0.p0(this.f3661g);
        qt.q0(this.f3662h);
    }

    public final void W3() {
        Time time = new Time(Time.getCurrentTimezone());
        time.setToNow();
        z.k.s(227, 130, 6, O3((byte) (time.year + DrmManagerClient.ERROR_UNKNOWN)), O3((byte) (time.month + 1)), O3((byte) time.monthDay), O3((byte) time.hour), O3((byte) time.minute), 0);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            b3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            a3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            d3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            c3(iArr[0], iArr[1]);
            return;
        }
        if (i2 == 6 && iArr != null && iArr.length > 0) {
            z.k.s(227, 196, 1, (byte) iArr[0]);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (this.f7886a.f8307b == 1) {
            f3649t = E[o1.o0.a(i2, 0, 36)];
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 113, 2, (byte) i2, (byte) i3);
    }

    public final void b3(int i2, int i3) {
        z.k.s(227, 198, 2, (byte) i2, (byte) i3);
    }

    public final void c3(int i2, int i3) {
        z.k.s(227, 138, 2, (byte) i2, (byte) i3);
    }

    public final void d3(int i2, int i3) {
        z.k.s(227, 118, 2, (byte) i2, (byte) i3);
    }
}
