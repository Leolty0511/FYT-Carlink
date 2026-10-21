package module.canbus;

import android.drm.DrmManagerClient;
import android.net.wifi.BatchedScanSettings;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class b extends lt {
    public static final int[] A = {0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45};
    public static final int[] B = {0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 19, 20};
    public static final o1.f<h> C = new o1.f<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f13651r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f13652s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f13653t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f13654u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f13655v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f13656w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f13657x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f13658y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f13659z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13661c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f13662d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 38}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f13663e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f13664f = new RunnableC0073b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f13665g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f13666h = 8;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f13667i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f13668j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f13669k = new f();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.g0 f13670l = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f13671m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13672n = 100;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f13673o = new g();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13674p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13675q;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a3();
        }
    }

    /* JADX INFO: renamed from: module.canbus.b$b, reason: collision with other inner class name */
    public class RunnableC0073b implements Runnable {
        public RunnableC0073b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 144, 1, 39);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.G3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(b.this.f13668j);
            b.this.f13666h = (byte) 8;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            byte b2 = (byte) (bVar.f13666h - 1);
            bVar.f13666h = b2;
            if (b2 <= 0) {
                l0.b0.p0(bVar.f13668j);
                b.this.f13666h = (byte) 8;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                b bVar2 = b.this;
                bVar2.d3(bVar2.f13670l.b(1, 1));
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
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            byte b2 = (byte) time.hour;
            byte b3 = (byte) time.minute;
            byte b4 = (byte) time.second;
            if (i2 != 0 && b2 > 12) {
                b2 = (byte) (b2 - 12);
            }
            z.k.s(227, 198, 8, 1, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) | b2) & 255), (byte) (b3 & 255), (byte) (b4 & 255), (byte) ((((byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1)) << 7) | 64));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                b.u3(b.this);
                if (b.this.f13675q == 10) {
                    b.this.f13675q = 0;
                    b.this.F3();
                }
                if (b.this.f13672n > 100) {
                    b.z3(b.this);
                    if (b.this.f13674p == b.this.f13672n / 100) {
                        b.this.f13674p = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = b.f13655v = b.A[0];
                } else {
                    int unused2 = b.f13655v = b.A[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (b.this.f7886a.f8307b == 1 && (b.f13654u != b.f13655v || b.f13652s != i4)) {
                    int unused3 = b.f13652s = i4;
                    b.this.G3();
                }
                b bVar = b.this;
                if (bVar.f7886a.f8308c == 1) {
                    bVar.R2(null);
                    if (b.f13656w == b.f13658y && b.f13657x == b.f13659z) {
                        return;
                    }
                    int unused4 = b.f13656w = b.f13658y;
                    int unused5 = b.f13657x = b.f13659z;
                    b.this.H3();
                }
            }
        }
    }

    public static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f13684b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13685c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f13686d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13687e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f13688f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f13689g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f13690h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f13691i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f13692j;

        public h(int i2, int i3) {
            this.f13683a = i2;
            this.f13685c = i3;
        }

        public synchronized void a(int i2) {
            this.f13692j = i2;
            if (!this.f13684b) {
                this.f13684b = true;
                o1.k.a().postDelayed(this, this.f13685c);
            }
        }

        public synchronized void b(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f13686d = i2;
            this.f13687e = i4;
            this.f13688f = i3;
            this.f13690h = i5;
            this.f13691i = i6;
            this.f13689g = i7;
            if (!this.f13684b) {
                this.f13684b = true;
                o1.k.a().postDelayed(this, this.f13685c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.f13683a == 2) {
                z.k.s(227, 196, 1, this.f13692j);
                this.f13684b = false;
            } else {
                z.k.s(227, 199, 6, 0, this.f13688f, this.f13687e, 10, 10, 10);
                this.f13684b = false;
            }
        }
    }

    public static void D3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        h hVarC = C.c(i2);
        if (hVarC != null) {
            hVarC.b(i3 == 0 ? 1 : 0, i4, i5, i6, i7, i8);
        }
    }

    public static void E3(int i2, int i3) {
        h hVarC = C.c(i2);
        if (hVarC != null) {
            hVarC.a(i3);
        }
    }

    public static /* synthetic */ int u3(b bVar) {
        int i2 = bVar.f13675q;
        bVar.f13675q = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int z3(b bVar) {
        int i2 = bVar.f13674p;
        bVar.f13674p = i2 + 1;
        return i2;
    }

    public final void F3() {
        G3();
        H3();
    }

    public final synchronized void G3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        if (u0.b.f17306a0 == 0) {
            return;
        }
        int i2 = f13654u;
        int i3 = f13655v;
        if (i2 < i3) {
            f13654u = i2 + 1;
            this.f13675q = 0;
        } else if (i2 > i3) {
            f13654u = i2 - 1;
            this.f13675q = 0;
        } else {
            f13654u = i3;
        }
        if (f13652s == 1) {
            E3(2, f13654u | 128);
        } else {
            E3(2, f13654u & 127);
        }
    }

    public final synchronized void H3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        D3(1, f13653t, f13656w, f13657x, 10, 10, 10);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (((nt.f8633a >> 16) & 65535) != 2) {
            y0.f.C0 = 18;
        } else {
            y0.f.C0 = 30;
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = B;
            f13658y = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f13659z = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f13663e);
            qt.z(this.f13664f);
            w0.e.f17815a.a(this.f13663e, 1);
        }
        this.f13670l.a();
        d3(this.f13670l.b(1, 1));
        u0.c.f17386m.a(this.f13667i, 1);
        if (nt.f8637c != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
        } else {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 0;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 0;
            mtVar2.f8307b = 1;
            mtVar2.f8308c = 1;
            mtVar2.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f13673o);
                F3();
                y0.g.f18094d.a(this.f13665g, 1);
            }
        }
        this.f7886a.f8320o = 0;
        qt.z(this.f13669k);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 39) {
            if (nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                u0.d.A3((i4 & 128) != 0 ? 1000 - ((256 - i4) * 10) : (i4 * 10) + 1000);
            }
            return;
        }
        if (b2 == 41) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i5 = 0;
        if (b2 == 80) {
            int i6 = i2 + 2;
            int i7 = (bArr[i6] >> 6) & 3;
            if (i7 != 0) {
                qt.a(1);
            } else if (i7 == 0) {
                qt.a(0);
            }
            qt.y0(Process.MEDIA_UID, (bArr[i6] >> 6) & 3);
            int i8 = i2 + 3;
            qt.y0(100, (bArr[i8] >> 7) & 1);
            qt.y0(101, (bArr[i8] >> 6) & 1);
            qt.y0(102, (bArr[i8] >> 3) & 3);
            qt.y0(103, (bArr[i8] >> 0) & 3);
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    this.f13661c = b4 & 255;
                    int i9 = 0;
                    while (true) {
                        iArr = this.f13662d;
                        if (i9 < iArr.length) {
                            int i10 = this.f13661c;
                            if (i10 != iArr[i9][0]) {
                                i9++;
                            } else if (i10 != 0) {
                                this.f13660b = i9;
                            }
                        }
                    }
                    int i11 = this.f13661c;
                    if (i11 != 50) {
                        if (i11 != 129) {
                            if (i11 != 130) {
                                if (i11 != 138) {
                                    if (i11 != 139) {
                                        switch (i11) {
                                            case 59:
                                            case 61:
                                                break;
                                            case 60:
                                                break;
                                            case 62:
                                                for (int i12 = 0; i12 < (b5 & 255); i12++) {
                                                    l0.b0.l0(31, 0);
                                                }
                                                l0.b0.l0(31, 1);
                                                break;
                                            case 63:
                                                for (int i13 = 0; i13 < (b5 & 255); i13++) {
                                                    l0.b0.l0(30, 0);
                                                }
                                                l0.b0.l0(30, 1);
                                                break;
                                            default:
                                                if ((b5 & 255) == 0) {
                                                    int i14 = this.f13660b;
                                                    if (i14 < iArr.length && i14 != 255) {
                                                        l0.b0.l0(iArr[i14][1], 1);
                                                    }
                                                    this.f13660b = 255;
                                                } else if (i9 < iArr.length) {
                                                    l0.b0.l0(iArr[i9][1], 0);
                                                }
                                                break;
                                        }
                                    }
                                }
                            }
                        }
                        while (i5 < (b5 & 255)) {
                            l0.b0.l0(7, 0);
                            i5++;
                        }
                        l0.b0.l0(7, 1);
                        break;
                    }
                    while (i5 < (b5 & 255)) {
                        l0.b0.l0(8, 0);
                        i5++;
                    }
                    l0.b0.l0(8, 1);
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                qt.y0(10, (b6 >> 7) & 1);
                qt.y0(53, (b6 >> 6) & 1);
                qt.y0(12, (b6 >> 5) & 1);
                qt.y0(13, (b6 >> 3) & 1);
                qt.y0(14, (b6 >> 2) & 1);
                qt.y0(65, (b6 >> 0) & 1);
                byte b7 = bArr[i2 + 3];
                qt.y0(18, (b7 >> 7) & 1);
                qt.y0(19, (b7 >> 6) & 1);
                qt.y0(20, (b7 >> 5) & 1);
                qt.y0(21, (b7 >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 5] & 255);
                    qt.y0(28, bArr[i2 + 4] & 255);
                } else {
                    qt.y0(27, bArr[i2 + 4] & 255);
                    qt.y0(28, bArr[i2 + 5] & 255);
                }
                qt.y0(55, (bArr[i2 + 6] >> 6) & 1);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(c3(bArr[i2 + 2] & 255));
                    u0.d.S2(c3(bArr[i2 + 3] & 255));
                    u0.d.T2(c3(bArr[i2 + 4] & 255));
                    u0.d.U2(c3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    u0.d.D2(c3(bArr[i2 + 2] & 255));
                    u0.d.E2(c3(bArr[i2 + 3] & 255));
                    u0.d.F2(c3(bArr[i2 + 4] & 255));
                    u0.d.G2(c3(bArr[i2 + 5] & 255));
                }
                break;
            case 36:
                byte b8 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 1) & 1);
                    qt.y0(2, b8 & 1);
                } else {
                    qt.y0(1, b8 & 1);
                    qt.y0(2, (b8 >> 1) & 1);
                }
                qt.y0(3, (b8 >> 2) & 1);
                qt.y0(4, (b8 >> 3) & 1);
                qt.y0(5, (b8 >> 4) & 1);
                qt.y0(0, (b8 >> 5) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f13663e);
        qt.q0(this.f13664f);
        w0.e.f17815a.d(this.f13663e);
        qt.q0(this.f13669k);
        l0.b0.o0(this.f13673o);
        y0.g.f18094d.d(this.f13665g);
        u0.c.f17386m.d(this.f13667i);
        l0.b0.p0(this.f13668j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
            }
        } else {
            if (i2 == 2) {
                d3(iArr[0]);
                return;
            }
            if (i2 == 1005 && iArr != null && iArr.length > 0) {
                if (iArr[0] <= 4) {
                    z.k.s(227, -124, 2, 1, iArr[0] + 4);
                } else {
                    z.k.s(227, -124, 2, 1, iArr[0] - 4);
                }
            }
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f13655v = A[o0.a(i2, 0, 36)];
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00aa  */
    public final void a3() {
        int i2;
        int[] iArr = new int[10];
        int i3 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        switch (u0.b.D) {
            case 1:
                int i4 = w0.d.f17797i;
                int i5 = w0.d.f17798j;
                int i6 = w0.d.f17796h;
                if (i6 == 65536) {
                    iArr[4] = 1;
                } else if (i6 != 65537) {
                    if (i6 == 65538) {
                        iArr[4] = 3;
                    } else if (i6 == 0) {
                        iArr[4] = 17;
                    } else if (i6 == 1) {
                        iArr[4] = 18;
                    }
                    iArr[5] = i4 & 255;
                    iArr[6] = (i4 >> 8) & 255;
                    i2 = i5 % 6;
                    if (i2 == 0 || i5 == 0) {
                        iArr[7] = i2;
                    } else {
                        iArr[7] = 6;
                    }
                    iArr[8] = 0;
                    iArr[9] = 0;
                } else {
                    iArr[4] = 2;
                }
                i5 -= 65536;
                iArr[5] = i4 & 255;
                iArr[6] = (i4 >> 8) & 255;
                i2 = i5 % 6;
                if (i2 == 0) {
                    iArr[7] = i2;
                } else {
                    iArr[7] = i2;
                }
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 2:
            case 5:
            case 6:
            case 7:
                iArr[4] = 0;
                iArr[5] = 0;
                iArr[6] = 0;
                iArr[7] = 0;
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 4:
                int i7 = o0.e.C;
                iArr[4] = (i7 >> 8) & 255;
                iArr[5] = i7 & 255;
                iArr[6] = 0;
                int i8 = o0.e.f16794r;
                iArr[7] = i8 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i8 % 60;
                break;
            case 8:
            case 9:
                int i9 = u0.b.s3;
                iArr[4] = (i9 >> 8) & 255;
                iArr[5] = i9 & 255;
                iArr[6] = 0;
                int i10 = u0.b.t3;
                iArr[7] = i10 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i10 % 60;
                break;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i3 < 10) {
            int i11 = i3 + 1;
            iArr2[i11] = iArr[i3];
            i3 = i11;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 3:
            case 9:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 19;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 12;
                iArr[3] = 34;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 19;
                break;
        }
    }

    public final int c3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public void d3(int i2) {
        f13651r = i2;
        qt.y0(98, i2);
        int iB = this.f13670l.b(1, 1);
        int i3 = f13651r;
        if (iB != i3) {
            this.f13670l.g(1, i3);
        }
        z.k.s(227, 198, 8, 2, i2, 0, 0, 0, 0, 0, 0);
    }

    public final void init() {
        o1.f<h> fVar = C;
        fVar.f(1, new h(1, 100));
        fVar.f(2, new h(2, 100));
    }
}
