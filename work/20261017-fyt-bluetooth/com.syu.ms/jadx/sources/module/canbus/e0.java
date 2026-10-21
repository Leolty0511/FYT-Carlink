package module.canbus;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class e0 extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static int J;
    public static int K;
    public static final int[] L = {0, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38};
    public static final int[] M = {1, 3, 5, 7, 9, 10, 11, 13, 15, 17, 19};
    public static final int[] N = {1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19};
    public static final o1.f<e> O = new o1.f<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f13958x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f13959y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f13960z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13962c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13963d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13965f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13966g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13967h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13968i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f13969j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{10, 2}, new int[]{103, 13}, new int[]{129, 0}, new int[]{130, 28}, new int[]{131, 27}, new int[]{134, 6}, new int[]{137, 12}, new int[]{160, 1}, new int[]{165, 1}, new int[]{172, 2}, new int[]{191, 55}, new int[]{192, 5}, new int[]{193, 2}, new int[]{194, 38}, new int[]{195, 12}, new int[]{197, 7}, new int[]{198, 8}, new int[]{199, 18}, new int[]{200, 26}, new int[]{201, 21}, new int[]{202, 55}, new int[]{203, 1}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f13970k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f13971l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f13972m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13973n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f13974o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f13975p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f13976q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f13977r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f13978s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f13979t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f13980u = 200;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f13981v = new d();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f13982w = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0 e0Var = e0.this;
            e0Var.f13967h = 0;
            e0Var.f13968i = 0;
            int i2 = u0.b.f17306a0;
            if (i2 == 0) {
                e0Var.f13974o = false;
            } else if (i2 == 1 && !e0Var.f13974o) {
                e0Var.f13974o = true;
            }
            if (i2 == 1) {
                int i3 = nt.f8637c;
                if (i3 != 1) {
                    if (i3 == 2 || i3 == 3) {
                        z.k.s(227, 2, 36, 7, 17);
                        e0 e0Var2 = e0.this;
                        e0Var2.O3(e0Var2.f13970k.b(2, 1));
                        return;
                    } else if (i3 == 4) {
                        z.k.s(227, 2, 36, 7, 17);
                        e0 e0Var3 = e0.this;
                        e0Var3.O3(e0Var3.f13970k.b(2, 1));
                        return;
                    } else if (i3 != 5) {
                        z.k.s(227, 2, 36, 3, 17);
                        return;
                    }
                }
                z.k.s(227, 2, 36, 3, 17);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.d3(u0.b.K3);
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
            if (e0.this.f13978s == millis && e0.this.f13979t == zIs24HourFormat) {
                return;
            }
            e0.this.f13978s = millis;
            e0.this.f13979t = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, 0, 0, 0, 0, 0);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (e0.this.f13980u > 100) {
                    e0.D3(e0.this);
                    if (e0.this.f13982w == e0.this.f13980u / 100) {
                        e0.this.f13982w = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = e0.A = e0.L[0];
                } else {
                    int unused2 = e0.A = e0.L[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (e0.this.f7886a.f8307b == 1 && e0.f13960z != e0.A) {
                    e0.this.S3();
                }
                if (e0.this.f7886a.f8309d == 1) {
                    if (e0.B != e0.E) {
                        e0.this.M3();
                    }
                    if (e0.C != e0.F) {
                        e0.this.Q3();
                    }
                    if (e0.D != e0.G) {
                        e0.this.R3();
                    }
                }
                if (e0.this.f7886a.f8308c == 1) {
                    if (e0.H != e0.J) {
                        e0.this.N3();
                    }
                    if (e0.I != e0.K) {
                        e0.this.L3();
                    }
                }
            }
        }
    }

    public static class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13987a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13988b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13989c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13990d;

        public e(int i2, int i3) {
            this.f13987a = i2;
            this.f13990d = i3;
        }

        public synchronized void a(int i2) {
            this.f13988b = i2;
            if (!this.f13989c) {
                this.f13989c = true;
                o1.k.a().postDelayed(this, this.f13990d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f13987a, this.f13988b);
            this.f13989c = false;
        }
    }

    public static /* synthetic */ int D3(e0 e0Var) {
        int i2 = e0Var.f13982w;
        e0Var.f13982w = i2 + 1;
        return i2;
    }

    public static void I3(int i2, int i3) {
        e eVarC = O.c(i2);
        if (eVarC != null) {
            eVarC.a(i3);
        }
    }

    public static int a3(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? 15 : 8;
        }
        return 0;
    }

    public static int b3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 8;
        }
        return 4;
    }

    public static int c3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 8;
        }
        return 6;
    }

    public final void J3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final boolean K3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final synchronized void L3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        int i2 = I;
        int i3 = K;
        if (i2 < i3) {
            i3 = i2 + 1;
        } else if (i2 > i3) {
            i3 = i2 - 1;
        }
        I3(2, i3);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final synchronized void M3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        int i2 = B;
        int i3 = E;
        if (i2 < i3) {
            i3 = i2 + 1;
        } else if (i2 > i3) {
            i3 = i2 - 1;
        }
        I3(4, i3);
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 1 || i2 == 5) {
            y0.f.C0 = 36;
        }
    }

    public final synchronized void N3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        int i2 = H;
        int i3 = J;
        if (i2 < i3) {
            i3 = i2 + 1;
        } else if (i2 > i3) {
            i3 = i2 - 1;
        }
        I3(3, i3);
    }

    public final void O3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f13959y = i2;
        qt.y0(19, i2);
        z.k.s(227, 4, 109, 0, (byte) f13959y, 255, 255);
        int iB = this.f13970k.b(2, 0);
        int i3 = f13959y;
        if (iB != i3) {
            this.f13970k.g(2, i3);
        }
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = M;
            int[] iArr3 = y0.f.f18038c0;
            E = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            F = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            G = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    public final void P3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f13958x = i2;
        qt.y0(18, i2);
        int iB = this.f13970k.b(1, 0);
        int i3 = f13958x;
        if (iB != i3) {
            this.f13970k.g(1, i3);
        }
    }

    public final synchronized void Q3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        int i2 = C;
        int i3 = F;
        if (i2 < i3) {
            i3 = i2 + 1;
        } else if (i2 > i3) {
            i3 = i2 - 1;
        }
        I3(5, i3);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = N;
            J = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            K = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    public final synchronized void R3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        int i2 = D;
        int i3 = G;
        if (i2 < i3) {
            i3 = i2 + 1;
        } else if (i2 > i3) {
            i3 = i2 - 1;
        }
        I3(6, i3);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x008b  */
    /* JADX WARN: Code duplicated, block: B:19:0x009d  */
    @Override // k0.lt
    public void S2() {
        this.f13970k.a();
        P3(this.f13970k.b(1, 1));
        u0.c.f17386m.a(this.f13975p, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8317l = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 == 1) {
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 1;
            mtVar.f8308c = 1;
            mtVar.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f13981v);
                J3();
            }
            z.k.s(227, 2, 36, 3, 17);
        } else if (i2 == 2 || i2 == 3) {
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            z.k.s(227, 2, 36, 7, 17);
        } else if (i2 == 4) {
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 1;
            mtVar.f8308c = 1;
            mtVar.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f13981v);
                J3();
            }
            z.k.s(227, 2, 36, 7, 17);
        } else if (i2 != 5) {
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            z.k.s(227, 2, 36, 3, 17);
        } else {
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 1;
            mtVar.f8308c = 1;
            mtVar.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f13981v);
                J3();
            }
            z.k.s(227, 2, 36, 3, 17);
        }
        z.k.s(227, 3, 106, 5, 166, 1);
        qt.z(this.f13977r);
        u0.c.f17397x.a(this.f13976q, 1);
    }

    public final synchronized void S3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = 0;
        int i3 = f13960z;
        int i4 = A;
        if (i3 <= i4) {
            i2 = i4 - i3;
            if (i2 >= 5) {
                i2 = 5;
            }
        } else if (i3 > i4) {
            int i5 = i3 - i4;
            i2 = i5 >= 5 ? 251 : (255 - i5) + 1;
        }
        I3(1, i2);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        int[][] iArr2;
        int i5;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            byte b3 = bArr[i2 + 8];
            qt.y0(11, b3 & 3);
            qt.y0(12, (b3 >> 2) & 3);
            if (nt.a()) {
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                byte b6 = bArr[i2 + 4];
                byte b7 = bArr[i2 + 5];
                byte b8 = bArr[i2 + 6];
                byte b9 = bArr[i2 + 7];
                f13960z = o0.a(b4 & 255, 0, 38);
                H = o0.a(b6 & 255, 1, 19);
                I = o0.a(b5 & 255, 1, 19);
                B = o0.a(b7 & 255, 1, 19);
                C = o0.a(b8 & 255, 1, 19);
                D = o0.a(b9 & 255, 1, 19);
                return;
            }
            return;
        }
        if (b2 == -24) {
            if (f13958x == 0) {
                return;
            }
            if (nt.a() && (i4 = nt.f8637c) != 3 && i4 != 4) {
                int i6 = bArr[i2 + 4] & 255;
                if (u0.b.f17347o != 0) {
                    return;
                }
                if (i6 != 0) {
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
            if (nt.a()) {
                int i7 = nt.f8637c;
                if (i7 == 3 || i7 == 4) {
                    int i8 = i2 + 5;
                    if (this.f13973n != (bArr[i8] & 255)) {
                        int i9 = bArr[i8] & 255;
                        this.f13973n = i9;
                        if (i9 != 0) {
                            qt.a(1);
                            return;
                        } else {
                            qt.a(0);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 50) {
            int i10 = i2 + 4;
            int i11 = i2 + 5;
            qt.y0(8, ((bArr[i10] << 8) & 65280) | (bArr[i11] & 255));
            qt.y0(1032, ((bArr[i10] << 8) & 65280) | (bArr[i11] & 255));
            qt.y0(7, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(c3(bArr[i2 + 3] & 255));
                u0.d.T2(c3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                int i12 = i2 + 6;
                int i13 = bArr[i12] & 255;
                int i14 = i2 + 7;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 8;
                int i17 = bArr[i16] & 255;
                int i18 = i2 + 9;
                int i19 = bArr[i18] & 255;
                if (i13 == 255 && i15 == 255 && i17 == 255 && i19 == 255) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i13;
                l0.c0.f13014h = i15;
                l0.c0.f13015i = i17;
                l0.c0.f13016j = i19;
                u0.d.D2(a3(bArr[i12] & 255));
                u0.d.E2(b3(bArr[i14] & 255));
                u0.d.F2(b3(bArr[i16] & 255));
                u0.d.G2(a3(bArr[i18] & 255));
                return;
            }
            return;
        }
        if (b2 == 98) {
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 6];
            qt.y0(13, (((b10 >> 7) & 1) << 8) | ((b11 >> 6) & 3));
            qt.y0(14, (((b10 >> 6) & 1) << 8) | ((b11 >> 4) & 3));
            qt.y0(15, (((b10 >> 5) & 1) << 8) | ((b11 >> 2) & 3));
            qt.y0(16, (((b10 >> 4) & 1) << 8) | ((b11 >> 1) & 1));
            qt.y0(17, ((b11 >> 0) & 1) | (((b10 >> 3) & 1) << 8));
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b12 = bArr[i2 + 4];
                byte b13 = bArr[i2 + 5];
                this.f13962c = b12 & 255;
                int i20 = 0;
                while (true) {
                    iArr = this.f13969j;
                    if (i20 >= iArr.length) {
                        break;
                    }
                    int i21 = this.f13962c;
                    if (i21 == iArr[i20][0]) {
                        if (i21 == 0) {
                            break;
                        }
                        this.f13961b = i20;
                        break;
                    }
                    i20++;
                }
                if ((b13 & 255) == 0) {
                    int i22 = this.f13961b;
                    if (i22 < iArr.length && i22 != 255) {
                        l0.b0.l0(iArr[i22][1], 1);
                    }
                    this.f13961b = 255;
                } else if (i20 < iArr.length) {
                    l0.b0.l0(iArr[i20][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b14 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b14 >> 6) & 1);
                qt.y0(2, (b14 >> 7) & 1);
            } else {
                qt.y0(1, (b14 >> 7) & 1);
                qt.y0(2, (b14 >> 6) & 1);
            }
            qt.y0(3, (b14 >> 5) & 1);
            qt.y0(4, (b14 >> 4) & 1);
            qt.y0(5, (b14 >> 3) & 1);
            qt.y0(0, (b14 >> 2) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 3];
                this.f13963d = (b15 & 255) | 128;
                int i23 = 0;
                while (true) {
                    iArr2 = this.f13969j;
                    if (i23 >= iArr2.length) {
                        break;
                    }
                    int i24 = this.f13963d;
                    if (i24 == iArr2[i23][0]) {
                        if (i24 == 0) {
                            break;
                        }
                        this.f13964e = i23;
                        break;
                    }
                    i23++;
                }
                if ((b16 & 255) != 0) {
                    if (i23 < iArr2.length) {
                        l0.b0.l0(iArr2[i23][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i25 = this.f13964e;
                    if (i25 < iArr2.length && i25 != 255) {
                        l0.b0.l0(iArr2[i25][1], 1);
                    }
                    this.f13964e = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34 && nt.a()) {
            byte b17 = bArr[i2 + 2];
            byte b18 = bArr[i2 + 3];
            if (b17 != 1) {
                if (b17 == 2 && b18 != (i5 = this.f13968i)) {
                    if (b18 > i5) {
                        for (int i26 = 0; i26 < b18 - this.f13968i; i26++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b18 < i5) {
                        for (int i27 = 0; i27 < this.f13968i - b18; i27++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f13968i = b18;
                    return;
                }
                return;
            }
            int i28 = this.f13967h;
            if (b18 != i28) {
                boolean z2 = this.f13974o;
                if (z2 || u0.b.f17306a0 != 1) {
                    if (z2) {
                        this.f13974o = false;
                    }
                } else if (b18 > i28) {
                    for (int i29 = 0; i29 < b18 - this.f13967h; i29++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b18 < i28) {
                    for (int i30 = 0; i30 < this.f13967h - b18; i30++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f13967h = b18;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f13970k.j();
        qt.q0(this.f13977r);
        u0.c.f17397x.d(this.f13976q);
        u0.c.f17386m.d(this.f13975p);
        l0.b0.o0(this.f13981v);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 20) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (K3(iArr, 2)) {
                z.k.s(227, 2, 173, (byte) iArr[0], (byte) iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (K3(iArr, 2)) {
                z.k.s(227, 4, 111, (byte) iArr[0], (byte) iArr[1], 255, 255);
            }
        } else {
            if (i2 == 2) {
                if (iArr == null || iArr.length <= 0) {
                    return;
                }
                P3(iArr[0]);
                return;
            }
            if (i2 != 3) {
                if (i2 != 1005) {
                    return;
                }
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, 3, (byte) iArr[0]);
            } else if (K3(iArr, 2)) {
                O3(iArr[1]);
            }
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            A = L[o0.a(i2, 0, 36)];
        }
    }

    public final void d3(int i2) {
        int[] iArr = new int[5];
        iArr[0] = 227;
        iArr[1] = 2;
        iArr[2] = -102;
        iArr[3] = 1;
        iArr[4] = i2 != 0 ? 2 : 1;
        z.k.s(iArr);
    }

    public final void init() {
        o1.f<e> fVar = O;
        fVar.f(3, new e(3, 100));
        fVar.f(2, new e(2, 100));
        fVar.f(4, new e(4, 100));
        fVar.f(6, new e(6, 100));
        fVar.f(5, new e(5, 100));
        fVar.f(1, new e(1, 0));
    }
}
