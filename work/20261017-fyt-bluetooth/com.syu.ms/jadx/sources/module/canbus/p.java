package module.canbus;

import android.drm.DrmManagerClient;
import android.net.wifi.BatchedScanSettings;
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
public class p extends lt {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f14615p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f14616q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f14617r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f14618s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f14619t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f14620u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f14621v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f14622w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int[] f14623x = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 35};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f14624y = {0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 19, 20};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final o1.f<h> f14625z = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14627c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14628d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 38}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 25}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f14629e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f14630f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f14631g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f14632h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f14633i = new d();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f14634j = new e();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14635k = new f();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14636l = 100;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14637m = new g();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14638n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f14639o;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 1, 38);
                z.k.s(227, 144, 4, 38, 0, 0, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.this.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 144, 1, 39);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(p.this.f14634j);
            p.this.f14632h = (byte) 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p pVar = p.this;
            byte b2 = (byte) (pVar.f14632h - 1);
            pVar.f14632h = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(pVar.f14634j);
                p.this.f14632h = (byte) 5;
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
                p.p3(p.this);
                if (p.this.f14639o == 10) {
                    p.this.f14639o = 0;
                    p.this.D3();
                }
                if (p.this.f14636l > 100) {
                    p.u3(p.this);
                    if (p.this.f14638n == p.this.f14636l / 100) {
                        p.this.f14638n = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = p.f14618s = p.f14623x[0];
                } else {
                    int unused2 = p.f14618s = p.f14623x[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (p.this.f7886a.f8307b == 1 && (p.f14617r != p.f14618s || p.f14615p != i4)) {
                    int unused3 = p.f14615p = i4;
                    p.this.E3();
                }
                p pVar = p.this;
                if (pVar.f7886a.f8308c == 1) {
                    pVar.R2(null);
                    if (p.f14619t == p.f14621v && p.f14620u == p.f14622w) {
                        return;
                    }
                    int unused4 = p.f14619t = p.f14621v;
                    int unused5 = p.f14620u = p.f14622w;
                    p.this.F3();
                }
            }
        }
    }

    public static class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14647a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14648b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14649c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f14650d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14651e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14652f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f14653g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14654h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14655i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f14656j;

        public h(int i2, int i3) {
            this.f14647a = i2;
            this.f14649c = i3;
        }

        public synchronized void a(int i2) {
            this.f14656j = i2;
            if (!this.f14648b) {
                this.f14648b = true;
                o1.k.a().postDelayed(this, this.f14649c);
            }
        }

        public synchronized void b(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f14650d = i2;
            this.f14651e = i4;
            this.f14652f = i3;
            this.f14654h = i5;
            this.f14655i = i6;
            this.f14653g = i7;
            if (!this.f14648b) {
                this.f14648b = true;
                o1.k.a().postDelayed(this, this.f14649c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.f14647a == 2) {
                z.k.s(227, 196, 1, this.f14656j);
                this.f14648b = false;
            } else {
                z.k.s(227, 199, 6, 0, this.f14652f, this.f14651e, 10, 10, 10);
                this.f14648b = false;
            }
        }
    }

    public static void B3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        h hVarC = f14625z.c(i2);
        if (hVarC != null) {
            hVarC.b(i3 == 0 ? 1 : 0, i4, i5, i6, i7, i8);
        }
    }

    public static void C3(int i2, int i3) {
        h hVarC = f14625z.c(i2);
        if (hVarC != null) {
            hVarC.a(i3);
        }
    }

    public static /* synthetic */ int p3(p pVar) {
        int i2 = pVar.f14639o;
        pVar.f14639o = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int u3(p pVar) {
        int i2 = pVar.f14638n;
        pVar.f14638n = i2 + 1;
        return i2;
    }

    public final void D3() {
        E3();
        F3();
    }

    public final synchronized void E3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f14617r;
        int i3 = f14618s;
        if (i2 < i3) {
            f14617r = i2 + 1;
            this.f14639o = 0;
        } else if (i2 > i3) {
            f14617r = i2 - 1;
            this.f14639o = 0;
        } else {
            f14617r = i3;
        }
        if (f14615p == 1) {
            C3(2, f14617r | 128);
        } else {
            C3(2, f14617r & 127);
        }
    }

    public final synchronized void F3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        B3(1, f14616q, f14619t, f14620u, 10, 10, 10);
    }

    public final void G3(int i2, int... iArr) {
        if (iArr == null) {
            return;
        }
        int length = iArr.length;
        int[] iArr2 = new int[length + 3];
        iArr2[0] = 227;
        iArr2[1] = i2;
        iArr2[2] = length;
        for (int i3 = 0; i3 < length; i3++) {
            iArr2[i3 + 3] = iArr[i3];
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        int i2 = nt.f8637c;
        if (i2 == 2 || i2 == 9) {
            y0.f.C0 = 36;
        } else {
            y0.f.C0 = 18;
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f14624y;
            f14621v = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f14622w = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f14630f);
            qt.z(this.f14631g);
            w0.e.f17815a.a(this.f14630f, 1);
            qt.y(this.f14629e);
            u0.c.f17386m.a(this.f14633i, 1);
        }
        qt.z(this.f14635k);
        int i2 = nt.f8637c;
        if (i2 != 2 && i2 != 9) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = null;
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = null;
        mtVar2.f8310e = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8307b = 1;
        mtVar2.f8308c = 1;
        mtVar2.f8309d = 1;
        if (nt.a()) {
            init();
            l0.b0.a(this.f14637m);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4 = 0;
        switch (bArr[i2]) {
            case 32:
                if (nt.a()) {
                    byte b2 = bArr[i2 + 2];
                    byte b3 = bArr[i2 + 3];
                    this.f14627c = b2 & 255;
                    int i5 = 0;
                    while (true) {
                        iArr = this.f14628d;
                        if (i5 < iArr.length) {
                            int i6 = this.f14627c;
                            if (i6 != iArr[i5][0]) {
                                i5++;
                            } else if (i6 != 0) {
                                this.f14626b = i5;
                            }
                        }
                    }
                    int i7 = this.f14627c;
                    if (i7 != 50) {
                        if (i7 != 138 && i7 != 129) {
                            if (i7 != 130) {
                                switch (i7) {
                                    case 59:
                                    case 61:
                                        break;
                                    case 60:
                                        break;
                                    case 62:
                                        for (int i8 = 0; i8 < (b3 & 255); i8++) {
                                            l0.b0.l0(31, 0);
                                        }
                                        l0.b0.l0(31, 1);
                                        break;
                                    case 63:
                                        for (int i9 = 0; i9 < (b3 & 255); i9++) {
                                            l0.b0.l0(30, 0);
                                        }
                                        l0.b0.l0(30, 1);
                                        break;
                                    default:
                                        if ((b3 & 255) == 0) {
                                            int i10 = this.f14626b;
                                            if (i10 < iArr.length && i10 != 255) {
                                                l0.b0.l0(iArr[i10][1], 1);
                                            }
                                            this.f14626b = 255;
                                        } else if (i5 < iArr.length) {
                                            l0.b0.l0(iArr[i5][1], 0);
                                        }
                                        break;
                                }
                            }
                        }
                        while (i4 < (b3 & 255)) {
                            l0.b0.l0(7, 0);
                            i4++;
                        }
                        l0.b0.l0(7, 1);
                        break;
                    }
                    while (i4 < (b3 & 255)) {
                        l0.b0.l0(8, 0);
                        i4++;
                    }
                    l0.b0.l0(8, 1);
                }
                break;
            case 33:
                byte b4 = bArr[i2 + 2];
                qt.y0(10, (b4 >> 7) & 1);
                qt.y0(53, (b4 >> 6) & 1);
                qt.y0(12, (b4 >> 5) & 1);
                qt.y0(13, (b4 >> 3) & 1);
                qt.y0(14, (b4 >> 2) & 1);
                qt.y0(65, (b4 >> 0) & 1);
                byte b5 = bArr[i2 + 3];
                qt.y0(18, (b5 >> 7) & 1);
                qt.y0(19, (b5 >> 6) & 1);
                qt.y0(20, (b5 >> 5) & 1);
                qt.y0(21, (b5 >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 5] & 255);
                    qt.y0(28, bArr[i2 + 4] & 255);
                } else {
                    qt.y0(27, bArr[i2 + 4] & 255);
                    qt.y0(28, bArr[i2 + 5] & 255);
                }
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
                    int i11 = i2 + 2;
                    int i12 = bArr[i11] & 255;
                    int i13 = i2 + 3;
                    int i14 = bArr[i13] & 255;
                    int i15 = i2 + 4;
                    int i16 = bArr[i15] & 255;
                    int i17 = i2 + 5;
                    int i18 = bArr[i17] & 255;
                    if (i12 == 0 && i14 == 0 && i16 == 0 && i18 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i16 || l0.c0.f13016j != i18) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i12;
                    l0.c0.f13014h = i14;
                    l0.c0.f13015i = i16;
                    l0.c0.f13016j = i18;
                    u0.d.D2(c3(bArr[i11] & 255));
                    u0.d.E2(c3(bArr[i13] & 255));
                    u0.d.F2(c3(bArr[i15] & 255));
                    u0.d.G2(c3(bArr[i17] & 255));
                }
                break;
            case 36:
                byte b6 = bArr[i2 + 3];
                qt.y0(0, (b6 >> 5) & 1);
                qt.y0(5, (b6 >> 4) & 1);
                qt.y0(4, (b6 >> 3) & 1);
                qt.y0(3, (b6 >> 2) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 1) & 1);
                    qt.y0(2, (b6 >> 0) & 1);
                } else {
                    qt.y0(1, (b6 >> 0) & 1);
                    qt.y0(2, (b6 >> 1) & 1);
                }
                break;
            case 38:
                qt.o(bArr[i2 + 2], false, 100);
                break;
            case 39:
                if (nt.a()) {
                    byte b7 = bArr[i2 + 2];
                    int i19 = b7 & 128;
                    int i20 = b7 & 255;
                    u0.d.A3(i19 != 0 ? 1000 - ((255 - (i20 - 1)) * 10) : (i20 * 10) + 1000);
                }
                break;
            case 41:
                if (nt.a()) {
                    byte b8 = bArr[i2 + 2];
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f14635k);
        qt.q0(this.f14631g);
        qt.q0(this.f14630f);
        w0.e.f17815a.d(this.f14630f);
        qt.q0(this.f14629e);
        l0.b0.o0(this.f14637m);
        u0.c.f17386m.d(this.f14633i);
        l0.b0.p0(this.f14634j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 1) {
            G3(i.a.Theme_preferenceFragmentStyle, iArr);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14618s = f14623x[o0.a(i2, 0, 36)];
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17797i;
                int i4 = w0.d.f17798j & 255;
                int i5 = w0.d.f17796h;
                if (i5 == 65536) {
                    iArr[4] = 1;
                } else if (i5 == 65537) {
                    iArr[4] = 2;
                } else if (i5 == 65538) {
                    iArr[4] = 3;
                } else if (i5 == 0) {
                    iArr[4] = 17;
                } else if (i5 == 1) {
                    iArr[4] = 18;
                }
                iArr[5] = i3 & 255;
                iArr[6] = (i3 >> 8) & 255;
                iArr[7] = (i4 % 6) + 1;
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
                int i6 = o0.e.C;
                iArr[4] = (i6 >> 8) & 255;
                iArr[5] = i6 & 255;
                iArr[6] = 0;
                int i7 = o0.e.f16794r;
                iArr[7] = i7 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i7 % 60;
                break;
            case 8:
            case 9:
                int i8 = u0.b.s3;
                iArr[4] = (i8 >> 8) & 255;
                iArr[5] = i8 & 255;
                iArr[6] = 0;
                int i9 = u0.b.t3;
                iArr[7] = i9 / BatchedScanSettings.MAX_INTERVAL_SEC;
                iArr[8] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = i9 % 60;
                break;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i10 = i2 + 1;
            iArr2[i10] = iArr[i2];
            i2 = i10;
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

    public final void init() {
        o1.f<h> fVar = f14625z;
        fVar.f(1, new h(1, 100));
        fVar.f(2, new h(2, 100));
    }
}
