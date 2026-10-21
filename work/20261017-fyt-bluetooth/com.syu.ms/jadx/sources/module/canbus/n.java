package module.canbus;

import android.drm.DrmManagerClient;
import android.net.wifi.BatchedScanSettings;
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
public class n extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static final int[] E = {0, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38};
    public static final int[] F = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
    public static final int[] G = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
    public static final o1.f<h> H = new o1.f<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14518s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f14519t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f14520u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f14521v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f14522w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f14523x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f14524y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f14525z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14527c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14528d = {new int[]{1, 2}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 3}, new int[]{5, 4}, new int[]{6, 18}, new int[]{7, 13}, new int[]{8, 21}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 12}, new int[]{12, 25}, new int[]{13, 6}, new int[]{14, 67}, new int[]{15, 68}, new int[]{16, 29}, new int[]{17, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14529e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f14530f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f14531g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f14532h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f14533i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f14534j = 0.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14535k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14536l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14537m = new e();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f14538n = new f();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14539o = 100;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f14540p = new g();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f14541q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f14542r;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(n.this.f14532h);
            n.this.f14530f = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n nVar = n.this;
            byte b2 = (byte) (nVar.f14530f - 1);
            nVar.f14530f = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                z.k.s(227, 255, 2, 127, 0);
            } else {
                l0.b0.p0(nVar.f14532h);
                n.this.f14530f = (byte) 5;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17306a0;
            if (i2 == 0) {
                z.k.s(227, 130, 1, 0);
            } else {
                if (i2 != 1) {
                    return;
                }
                z.k.s(227, 130, 1, 1);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.f14534j = u0.b.f17359s0;
            if ((n.this.f14534j <= 22.5d && n.this.f14534j >= 0.0f) || (n.this.f14534j >= 337.5d && n.this.f14534j <= 360.0f)) {
                n.this.f14536l = 0;
            } else if (n.this.f14534j > 22.5d && n.this.f14534j < 67.5d) {
                n.this.f14536l = 1;
            } else if (n.this.f14534j >= 67.5d && n.this.f14534j <= 112.5d) {
                n.this.f14536l = 2;
            } else if (n.this.f14534j > 112.5d && n.this.f14534j < 157.5d) {
                n.this.f14536l = 3;
            } else if (n.this.f14534j >= 157.5d && n.this.f14534j <= 202.5d) {
                n.this.f14536l = 4;
            } else if (n.this.f14534j > 202.5d && n.this.f14534j < 247.5d) {
                n.this.f14536l = 5;
            } else if (n.this.f14534j >= 247.5d && n.this.f14534j <= 292.5d) {
                n.this.f14536l = 6;
            } else if (n.this.f14534j <= 292.5d || n.this.f14534j >= 337.5d) {
                n.this.f14536l = 15;
            } else {
                n.this.f14536l = 7;
            }
            if (n.this.f14536l != n.this.f14535k) {
                z.k.s(227, -119, 4, n.this.f14536l, 0, 0, 0);
                n nVar = n.this;
                nVar.f14535k = nVar.f14536l;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            if (zIs24HourFormat && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, 135, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) ((b2 | ((zIs24HourFormat ? 1 : 0) << 7)) & 255), (byte) (b3 & 255), (byte) (b4 & 255), (byte) ((zIs24HourFormat ? 1 : 0) & 255));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            if (nt.a() || (i2 = nt.f8637c) == 2 || i2 == 3) {
                n.D3(n.this);
                if (n.this.f14542r == 10) {
                    n.this.f14542r = 0;
                    n.this.N3();
                }
                if (n.this.f14539o > 100) {
                    n.I3(n.this);
                    if (n.this.f14541q == n.this.f14539o / 100) {
                        n.this.f14541q = 0;
                        return;
                    }
                }
                int i3 = u0.b.f17306a0;
                int i4 = u0.b.f17320f;
                int i5 = y0.f.f18055i;
                if (i3 == 0 || i4 == 0 || i5 == 1) {
                    int unused = n.f14519t = n.E[0];
                } else {
                    int unused2 = n.f14519t = n.E[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (n.this.f7886a.f8307b == 1 && n.f14518s != n.f14519t) {
                    n.this.P3();
                }
                n nVar = n.this;
                if (nVar.f7886a.f8309d == 1) {
                    nVar.P2(null);
                    if (n.f14520u != n.f14523x || n.f14521v != n.f14524y || n.f14522w != n.f14525z) {
                        int unused3 = n.f14520u = n.f14523x;
                        int unused4 = n.f14521v = n.f14524y;
                        int unused5 = n.f14522w = n.f14525z;
                        n.this.O3();
                    }
                }
                n nVar2 = n.this;
                if (nVar2.f7886a.f8308c == 1) {
                    nVar2.R2(null);
                    if (n.A == n.C && n.B == n.D) {
                        return;
                    }
                    int unused6 = n.A = n.C;
                    int unused7 = n.B = n.D;
                    n.this.O3();
                }
            }
        }
    }

    public static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14550a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14551b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14552c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f14553d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14554e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14555f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f14556g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14557h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14558i;

        public h(int i2, int i3) {
            this.f14550a = i2;
            this.f14552c = i3;
        }

        public synchronized void a(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f14553d = i2;
            this.f14554e = i3;
            this.f14555f = i4;
            this.f14557h = i5;
            this.f14558i = i6;
            this.f14556g = i7;
            if (!this.f14551b) {
                this.f14551b = true;
                o1.k.a().postDelayed(this, this.f14552c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 131, 7, this.f14553d, 10, 10, 10, this.f14554e, this.f14555f, 0);
            this.f14551b = false;
        }
    }

    public static /* synthetic */ int D3(n nVar) {
        int i2 = nVar.f14542r;
        nVar.f14542r = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int I3(n nVar) {
        int i2 = nVar.f14541q;
        nVar.f14541q = i2 + 1;
        return i2;
    }

    public static void M3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        h hVarC = H.c(i2);
        if (hVarC != null) {
            hVarC.a(i3, i4, i5, i6, i7, i8);
        }
    }

    public static void a3() {
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 132;
        iArr[1] = 5;
        b3(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17798j & 255;
            int i5 = w0.d.f17796h;
            if (i5 == 0) {
                iArr[4] = 3;
            } else if (i5 != 1) {
                switch (i5) {
                    case 65536:
                        iArr[4] = 0;
                        break;
                    case 65537:
                        iArr[4] = 1;
                        break;
                    case 65538:
                        iArr[4] = 2;
                        break;
                }
            } else {
                iArr[4] = 4;
            }
            int i6 = i4 % 6;
            if (i6 != 0 || i4 == 0) {
                iArr[4] = iArr[4] + (i6 << 3);
            } else {
                iArr[4] = iArr[4] + 48;
            }
            int i7 = w0.d.f17797i;
            iArr[5] = (i7 >> 8) & 255;
            iArr[6] = i7 & 255;
        } else if (i3 != 4) {
            switch (i3) {
                case 8:
                case 9:
                case 10:
                    int i8 = u0.b.r3;
                    iArr[4] = i8 & 255;
                    iArr[5] = (i8 >> 8) & 255;
                    int i9 = (iArr[5] << 6) & 192;
                    int i10 = u0.b.t3;
                    iArr[5] = i9 + ((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60);
                    iArr[6] = i10 % 60;
                    break;
            }
        } else {
            int i11 = o0.e.B;
            iArr[4] = i11 & 255;
            iArr[5] = (i11 >> 8) & 255;
            int i12 = (iArr[5] << 6) & 192;
            int i13 = o0.e.f16794r;
            iArr[5] = i12 & ((i13 % 60) + 255) & 255;
            iArr[6] = ((i13 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) & 255;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i14 = i2 + 1;
            iArr2[i14] = iArr[i2];
            i2 = i14;
        }
        z.k.s(iArr2);
    }

    public static void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                break;
            case 2:
                iArr[2] = 5;
                break;
            case 3:
                iArr[2] = 10;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                }
                break;
            case 5:
                iArr[2] = 7;
                break;
            case 6:
                iArr[2] = 3;
                break;
            case 7:
                iArr[2] = 6;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                break;
            default:
                iArr[2] = 14;
                break;
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void N3() {
        P3();
        O3();
    }

    public final synchronized void O3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        M3(1, f14519t, D, C, f14525z, f14524y, f14523x);
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        int i2;
        if ((nt.a() || (i2 = nt.f8637c) == 2 || i2 == 3) && this.f7886a.f8309d == 1) {
            int[] iArr2 = F;
            int[] iArr3 = y0.f.f18038c0;
            f14523x = iArr2[o0.a(iArr3[0], 0, 20)];
            f14524y = iArr2[o0.a(iArr3[1], 0, 20)];
            f14525z = iArr2[o0.a(iArr3[2], 0, 20)];
        }
    }

    public final synchronized void P3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f14518s;
        int i3 = f14519t;
        if (i2 < i3) {
            f14518s = i2 + 1;
            this.f14542r = 0;
        } else if (i2 > i3) {
            f14518s = i2 - 1;
            this.f14542r = 0;
        } else {
            f14518s = i3;
        }
        M3(1, f14518s, D, C, f14525z, f14524y, f14523x);
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        int i2;
        if ((nt.a() || (i2 = nt.f8637c) == 2 || i2 == 3) && this.f7886a.f8308c == 1) {
            int[] iArr2 = G;
            C = iArr2[(o0.a(y0.f.f18061l, 0, 16) * 20) / 16];
            D = iArr2[(o0.a(y0.f.f18057j, 0, 16) * 20) / 16];
        }
    }

    @Override // k0.lt
    public void S2() {
        int i2;
        qt.z(this.f14538n);
        if (nt.a() || (i2 = nt.f8637c) == 2 || i2 == 3) {
            w0.e.f17815a.a(this.f14529e, 1);
            l0.b0.b(this.f14529e);
            u0.c.f17393t.a(this.f14529e, 1);
            u0.c.f17392s.a(this.f14529e, 1);
            u0.c.f17374a.a(this.f14529e, 1);
            u0.c.f17386m.a(this.f14531g, 1);
        }
        int i3 = nt.f8637c;
        if (i3 == 1) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = null;
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
            mtVar.f8307b = 1;
            mtVar.f8308c = 1;
            mtVar.f8309d = 1;
            mtVar.f8320o = 0;
            if (nt.a()) {
                init();
                l0.b0.a(this.f14540p);
                u0.c.f17386m.a(this.f14533i, 1);
                return;
            }
            return;
        }
        if (i3 == 2) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 0;
            mtVar2.f8312g = 1;
            mtVar2.f8307b = 0;
            mtVar2.f8308c = 0;
            mtVar2.f8309d = 0;
            mtVar2.f8320o = 0;
            o1.h.f16865a.a(this.f14537m, 1);
            return;
        }
        if (i3 != 3) {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = null;
            mtVar3.f8310e = 1;
            mtVar3.f8311f = 0;
            mtVar3.f8312g = 0;
            mtVar3.f8307b = 0;
            mtVar3.f8308c = 0;
            mtVar3.f8309d = 0;
            mtVar3.f8320o = 0;
            return;
        }
        mt mtVar4 = this.f7886a;
        mtVar4.f8306a = new String[]{"com.syu.canbus"};
        mtVar4.f8310e = 1;
        mtVar4.f8311f = 0;
        mtVar4.f8312g = 1;
        mtVar4.f8307b = 1;
        mtVar4.f8308c = 1;
        mtVar4.f8309d = 1;
        mtVar4.f8320o = 0;
        if (nt.a()) {
            init();
            l0.b0.a(this.f14540p);
            u0.c.f17386m.a(this.f14533i, 1);
        }
        o1.h.f16865a.a(this.f14537m, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a() || (i4 = nt.f8637c) == 2 || i4 == 3) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f14527c = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f14528d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f14527c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f14526b = i5;
                        break;
                    }
                    i5++;
                }
                int i7 = b4 & 255;
                if (i7 == 1) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i7 == 0) {
                        int i8 = this.f14526b;
                        if (i8 < iArr.length && i8 != 255) {
                            l0.b0.l0(iArr[i8][1], 1);
                        }
                        this.f14526b = 255;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 4) {
            if (nt.f8637c == 3 && (bArr[i2 + 2] & 255) == 1) {
                u0.d.R2(c3(bArr[i2 + 3] & 255));
                u0.d.S2(c3(bArr[i2 + 4] & 255));
                u0.d.T2(c3(bArr[i2 + 5] & 255));
                u0.d.U2(c3(bArr[i2 + 6] & 255));
                return;
            }
            return;
        }
        if (b2 == 5) {
            if (nt.f8637c == 3 && (bArr[i2 + 2] & 255) == 1) {
                u0.d.D2(c3(bArr[i2 + 3] & 255));
                u0.d.E2(c3(bArr[i2 + 4] & 255));
                u0.d.F2(c3(bArr[i2 + 5] & 255));
                u0.d.G2(c3(bArr[i2 + 6] & 255));
                return;
            }
            return;
        }
        switch (b2) {
            case 8:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(2, (b5 >> 7) & 1);
                    qt.y0(1, (b5 >> 6) & 1);
                }
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                break;
            case 9:
                int i9 = nt.f8637c;
                if (i9 == 2 || i9 == 3) {
                    int i10 = bArr[i2 + 2] & 255;
                    int i11 = bArr[i2 + 3] & 255;
                    u0.d.A3((i10 & 1) == 1 ? (i11 >= 80 ? ((int) ((((double) ((i11 * 5) - 400)) * 1.8d) + 320.0d)) + 1000 : 1000 - ((int) ((400.0d - (((double) (i11 * 5)) * 1.8d)) + 320.0d))) | 32768 : i11 >= 80 ? ((i11 * 5) + 1000) - 400 : 1000 - (400 - (i11 * 5)));
                }
                break;
            case 10:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 540);
                break;
            case 11:
                int i12 = i2 + 2;
                qt.y0(7, (bArr[i12] >> 6) & 3);
                qt.y0(8, (bArr[i12] >> 4) & 3);
                qt.y0(9, (bArr[i12] >> 2) & 3);
                qt.y0(10, (bArr[i12] >> 1) & 1);
                qt.y0(11, (bArr[i12] >> 0) & 1);
                int i13 = i2 + 3;
                qt.y0(12, (bArr[i13] >> 7) & 1);
                qt.y0(13, (bArr[i13] >> 6) & 1);
                qt.y0(14, (bArr[i13] >> 5) & 1);
                qt.y0(15, (bArr[i13] >> 4) & 1);
                qt.y0(16, (bArr[i13] >> 3) & 1);
                qt.y0(17, (bArr[i13] >> 2) & 1);
                qt.y0(18, (bArr[i13] >> 0) & 3);
                int i14 = i2 + 4;
                qt.y0(19, (bArr[i14] >> 6) & 3);
                qt.y0(20, (bArr[i14] >> 5) & 1);
                qt.y0(21, (bArr[i14] >> 4) & 1);
                qt.y0(22, (bArr[i14] >> 2) & 3);
                qt.y0(23, (bArr[i14] >> 0) & 3);
                int i15 = i2 + 5;
                qt.y0(24, (bArr[i15] >> 7) & 1);
                qt.y0(25, (bArr[i15] >> 6) & 1);
                int i16 = i2 + 6;
                qt.y0(26, (bArr[i16] >> 7) & 1);
                qt.y0(27, (bArr[i16] >> 6) & 1);
                qt.y0(28, (bArr[i16] >> 4) & 1);
                qt.y0(29, (bArr[i16] >> 3) & 1);
                qt.y0(30, (bArr[i16] >> 2) & 1);
                qt.y0(31, (bArr[i16] >> 1) & 1);
                qt.y0(32, (bArr[i16] >> 0) & 1);
                int i17 = i2 + 7;
                qt.y0(33, (bArr[i17] >> 4) & 3);
                qt.y0(34, (bArr[i17] >> 2) & 3);
                qt.y0(35, (bArr[i17] >> 0) & 3);
                int i18 = i2 + 8;
                qt.y0(36, (bArr[i18] >> 4) & 15);
                qt.y0(37, (bArr[i18] >> 0) & 15);
                int i19 = i2 + 9;
                qt.y0(38, (bArr[i19] >> 7) & 1);
                qt.y0(39, (bArr[i19] >> 6) & 1);
                qt.y0(40, (bArr[i19] >> 5) & 1);
                qt.y0(41, (bArr[i19] >> 4) & 1);
                qt.y0(42, (bArr[i19] >> 3) & 1);
                qt.y0(43, (bArr[i19] >> 2) & 1);
                qt.y0(44, (bArr[i19] >> 1) & 1);
                qt.y0(45, (bArr[i19] >> 0) & 1);
                int i20 = i2 + 10;
                qt.y0(46, (bArr[i20] >> 6) & 1);
                qt.y0(47, (bArr[i20] >> 5) & 1);
                qt.y0(48, (bArr[i20] >> 4) & 1);
                qt.y0(49, (bArr[i20] >> 2) & 3);
                qt.y0(50, (bArr[i20] >> 1) & 1);
                qt.y0(51, (bArr[i20] >> 0) & 1);
                int i21 = i2 + 11;
                qt.y0(52, (bArr[i21] >> 4) & 1);
                qt.y0(53, (bArr[i21] >> 3) & 1);
                qt.y0(54, (bArr[i21] >> 2) & 1);
                qt.y0(55, (bArr[i21] >> 1) & 1);
                qt.y0(56, (bArr[i21] >> 0) & 1);
                int i22 = i2 + 12;
                qt.y0(57, (bArr[i22] >> 5) & 1);
                qt.y0(58, 3 & (bArr[i22] >> 3));
                qt.y0(59, (bArr[i22] >> 2) & 1);
                qt.y0(60, (bArr[i22] >> 1) & 1);
                qt.y0(61, (bArr[i22] >> 0) & 1);
                qt.y0(62, (bArr[i2 + 13] >> 0) & 1);
                break;
            case 12:
                int i23 = i2 + 2;
                qt.y0(63, (bArr[i23] >> 6) & 3);
                qt.y0(64, (bArr[i23] >> 4) & 3);
                qt.y0(65, (bArr[i23] >> 2) & 3);
                qt.y0(66, (bArr[i23] >> 1) & 1);
                qt.y0(67, (bArr[i23] >> 0) & 1);
                int i24 = i2 + 3;
                qt.y0(68, (bArr[i24] >> 7) & 1);
                qt.y0(69, (bArr[i24] >> 6) & 1);
                qt.y0(70, (bArr[i24] >> 5) & 1);
                qt.y0(71, (bArr[i24] >> 4) & 1);
                qt.y0(72, (bArr[i24] >> 3) & 1);
                qt.y0(73, (bArr[i24] >> 2) & 1);
                qt.y0(74, (bArr[i24] >> 0) & 3);
                int i25 = i2 + 4;
                qt.y0(75, (bArr[i25] >> 6) & 3);
                qt.y0(76, (bArr[i25] >> 5) & 1);
                qt.y0(77, (bArr[i25] >> 4) & 1);
                qt.y0(78, (bArr[i25] >> 2) & 3);
                qt.y0(79, (bArr[i25] >> 0) & 3);
                int i26 = i2 + 5;
                qt.y0(80, (bArr[i26] >> 7) & 1);
                qt.y0(81, (bArr[i26] >> 6) & 1);
                int i27 = i2 + 6;
                qt.y0(82, (bArr[i27] >> 7) & 1);
                qt.y0(83, (bArr[i27] >> 6) & 1);
                qt.y0(84, (bArr[i27] >> 4) & 1);
                qt.y0(85, (bArr[i27] >> 3) & 1);
                qt.y0(86, (bArr[i27] >> 2) & 1);
                qt.y0(87, (bArr[i27] >> 1) & 1);
                qt.y0(88, (bArr[i27] >> 0) & 1);
                int i28 = i2 + 7;
                qt.y0(89, (bArr[i28] >> 4) & 3);
                qt.y0(90, (bArr[i28] >> 2) & 3);
                qt.y0(91, (bArr[i28] >> 0) & 3);
                int i29 = i2 + 8;
                qt.y0(92, (bArr[i29] >> 4) & 15);
                qt.y0(93, (bArr[i29] >> 0) & 15);
                int i30 = i2 + 9;
                qt.y0(94, (bArr[i30] >> 7) & 1);
                qt.y0(95, (bArr[i30] >> 6) & 1);
                qt.y0(96, (bArr[i30] >> 5) & 1);
                qt.y0(97, (bArr[i30] >> 4) & 1);
                qt.y0(98, (bArr[i30] >> 3) & 1);
                qt.y0(99, (bArr[i30] >> 2) & 1);
                qt.y0(100, (bArr[i30] >> 1) & 1);
                qt.y0(101, (bArr[i30] >> 0) & 1);
                int i31 = i2 + 10;
                qt.y0(102, (bArr[i31] >> 6) & 1);
                qt.y0(103, (bArr[i31] >> 5) & 1);
                qt.y0(104, (bArr[i31] >> 4) & 1);
                qt.y0(105, (bArr[i31] >> 2) & 3);
                qt.y0(106, (bArr[i31] >> 1) & 1);
                qt.y0(107, (bArr[i31] >> 0) & 1);
                int i32 = i2 + 11;
                qt.y0(108, (bArr[i32] >> 4) & 1);
                qt.y0(109, (bArr[i32] >> 3) & 1);
                qt.y0(110, (bArr[i32] >> 2) & 1);
                qt.y0(111, (bArr[i32] >> 1) & 1);
                qt.y0(112, (bArr[i32] >> 0) & 1);
                int i33 = i2 + 12;
                qt.y0(113, (bArr[i33] >> 5) & 1);
                qt.y0(114, 3 & (bArr[i33] >> 3));
                qt.y0(115, (bArr[i33] >> 2) & 1);
                qt.y0(116, (bArr[i33] >> 1) & 1);
                qt.y0(117, (bArr[i33] >> 0) & 1);
                qt.y0(118, (bArr[i2 + 13] >> 0) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        int i2;
        qt.q0(this.f14538n);
        if (nt.a() || (i2 = nt.f8637c) == 2 || i2 == 3) {
            l0.b0.p0(this.f14529e);
            w0.e.f17815a.d(this.f14529e);
            u0.c.f17393t.d(this.f14529e);
            u0.c.f17392s.d(this.f14529e);
            u0.c.f17374a.d(this.f14529e);
            u0.c.f17386m.d(this.f14531g);
            l0.b0.p0(this.f14532h);
        }
        l0.b0.o0(this.f14540p);
        u0.c.f17386m.d(this.f14533i);
        o1.h.f16865a.d(this.f14537m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 119) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        int i3 = 57;
        if (i2 == 57) {
            z.k.s(227, 255, 2, iArr[0], 0);
            return;
        }
        if (iArr.length >= 2) {
            int i4 = iArr[1];
            switch (i2) {
                case 1:
                    i3 = 5;
                    break;
                case 2:
                    i3 = 4;
                    break;
                case 3:
                    i3 = 3;
                    break;
                case 4:
                    i3 = 2;
                    break;
                case 5:
                    i3 = 1;
                    break;
                case 6:
                    i3 = 12;
                    break;
                case 7:
                    i3 = 11;
                    break;
                case 8:
                    i3 = 10;
                    break;
                case 9:
                    i3 = 9;
                    break;
                case 10:
                    i3 = 8;
                    break;
                case 11:
                    i3 = 7;
                    break;
                case 12:
                    i3 = 6;
                    break;
                case 13:
                    i3 = 17;
                    break;
                case 14:
                    i3 = 16;
                    break;
                case 15:
                    i3 = 15;
                    break;
                case 16:
                    i3 = 14;
                    break;
                case 17:
                    i3 = 13;
                    break;
                case 18:
                    i3 = 18;
                    break;
                case 19:
                    i3 = 19;
                    break;
                case 20:
                    i3 = 41;
                    break;
                case 21:
                    i3 = 42;
                    break;
                case 22:
                    i3 = 37;
                    break;
                case 23:
                    i3 = 36;
                    break;
                case 24:
                    i3 = 35;
                    break;
                case 25:
                    i3 = 34;
                    break;
                case 26:
                    i3 = 33;
                    break;
                case 27:
                    i3 = 40;
                    break;
                case 28:
                    i3 = 39;
                    break;
                case 29:
                    i3 = 38;
                    break;
                case 30:
                    i3 = 43;
                    break;
                case 31:
                    i3 = 44;
                    break;
                case 32:
                    i3 = 56;
                    break;
                case 33:
                    i3 = 55;
                    break;
                case 34:
                    i3 = 54;
                    break;
                case 35:
                    i3 = 53;
                    break;
                case 36:
                    i3 = 52;
                    break;
                case 37:
                    i3 = 51;
                    break;
                case 38:
                    i3 = 50;
                    break;
                case 39:
                    i3 = 49;
                    break;
                case 40:
                    i3 = 62;
                    break;
                case 41:
                    i3 = 61;
                    break;
                case 42:
                    i3 = 59;
                    break;
                case 43:
                    i3 = 60;
                    break;
                case 44:
                    i3 = 58;
                    break;
                case 45:
                    break;
                case 46:
                    i3 = 69;
                    break;
                case 47:
                    i3 = 68;
                    break;
                case 48:
                    i3 = 67;
                    break;
                case 49:
                    i3 = 66;
                    break;
                case 50:
                    i3 = 65;
                    break;
                case 51:
                    i3 = 85;
                    break;
                case 52:
                    i3 = 84;
                    break;
                case 53:
                    i3 = 83;
                    break;
                case 54:
                    i3 = 82;
                    break;
                case 55:
                    i3 = 81;
                    break;
                case 56:
                    i3 = 97;
                    break;
                default:
                    i3 = 255;
                    break;
            }
            if (i3 == 255 || i4 == 255) {
                return;
            }
            z.k.s(227, 138, 2, i3, i4);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        int i3;
        if ((nt.a() || (i3 = nt.f8637c) == 2 || i3 == 3) && this.f7886a.f8307b == 1) {
            f14519t = E[o0.a(i2, 0, 36)];
        }
    }

    public int c3(int i2) {
        if (i2 == 255) {
            return 10;
        }
        return i2;
    }

    public final void init() {
        H.f(1, new h(1, 100));
    }
}
