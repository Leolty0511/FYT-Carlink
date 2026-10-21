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
public class q extends lt {
    public static int A;
    public static int B;
    public static int C;
    public static final int[] D = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 35};
    public static final int[] E = {0, 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 19, 20};
    public static final o1.f<g> F = new o1.f<>();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f14657v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f14658w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f14659x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f14660y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f14661z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14663c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f14664d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 38}, new int[]{51, 24}, new int[]{52, 55}, new int[]{53, 24}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 0}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f14665e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 18}, new int[]{49, 1}, new int[]{50, 1}, new int[]{51, 58}, new int[]{52, 55}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 0}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f14666f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, 25}, new int[]{49, 1}, new int[]{50, 5}, new int[]{51, 38}, new int[]{52, 55}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, 0}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f14667g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, -1}, new int[]{50, 29}, new int[]{51, -1}, new int[]{52, 55}, new int[]{53, -1}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, 3}, new int[]{58, 4}, new int[]{59, -1}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f14668h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, 3}, new int[]{50, 18}, new int[]{51, 25}, new int[]{52, 55}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 75}, new int[]{56, 54}, new int[]{57, -1}, new int[]{58, 4}, new int[]{59, 0}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f14669i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, -1}, new int[]{50, 29}, new int[]{51, 3}, new int[]{52, 4}, new int[]{53, -1}, new int[]{54, 54}, new int[]{55, 18}, new int[]{56, 6}, new int[]{57, 9}, new int[]{58, 55}, new int[]{59, 21}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f14670j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 56}, new int[]{12, 6}, new int[]{13, 35}, new int[]{14, 34}, new int[]{15, 25}, new int[]{16, 26}, new int[]{18, 13}, new int[]{48, -1}, new int[]{49, 3}, new int[]{50, 1}, new int[]{51, 25}, new int[]{52, 55}, new int[]{53, 29}, new int[]{54, 21}, new int[]{55, 54}, new int[]{56, 18}, new int[]{57, -1}, new int[]{58, 4}, new int[]{59, 0}, new int[]{64, 25}, new int[]{65, 3}, new int[]{66, 4}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 12}, new int[]{60, 7}, new int[]{61, 8}, new int[]{62, 81}, new int[]{63, 80}, new int[]{129, 7}, new int[]{130, 8}, new int[]{138, 7}, new int[]{139, 8}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f14671k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f14672l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14673m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f14674n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f14675o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f14676p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f14677q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f14678r = 100;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f14679s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f14680t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14681u;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
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
            l0.b0.b(q.this.f14676p);
            q qVar = q.this;
            qVar.f14674n = (byte) 5;
            qVar.f14671k = 0;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = q.this;
            byte b2 = (byte) (qVar.f14674n - 1);
            qVar.f14674n = b2;
            if (b2 <= 0) {
                l0.b0.p0(qVar.f14676p);
                q.this.f14674n = (byte) 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 41);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 198, 8, 1, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) ((((!DateFormat.is24HourFormat(App.c()) ? 1 : 0) << 7) | time.hour) & 255), (byte) time.minute, (byte) time.second, 1);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                q.p3(q.this);
                if (q.this.f14681u == 10) {
                    q.this.f14681u = 0;
                    q.this.D3();
                }
                if (q.this.f14678r > 100) {
                    q.u3(q.this);
                    if (q.this.f14680t == q.this.f14678r / 100) {
                        q.this.f14680t = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = q.f14660y = q.D[0];
                } else {
                    int unused2 = q.f14660y = q.D[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (q.this.f7886a.f8307b == 1 && (q.f14659x != q.f14660y || q.f14657v != i4)) {
                    int unused3 = q.f14657v = i4;
                    q.this.E3();
                }
                q qVar = q.this;
                if (qVar.f7886a.f8308c == 1) {
                    qVar.R2(null);
                    if (q.f14661z == q.B && q.A == q.C) {
                        return;
                    }
                    int unused4 = q.f14661z = q.B;
                    int unused5 = q.A = q.C;
                    q.this.F3();
                }
            }
        }
    }

    public static class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f14689b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14690c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f14691d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f14692e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f14693f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f14694g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14695h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f14696i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f14697j;

        public g(int i2, int i3) {
            this.f14688a = i2;
            this.f14690c = i3;
        }

        public synchronized void a(int i2) {
            this.f14697j = i2;
            if (!this.f14689b) {
                this.f14689b = true;
                o1.k.a().postDelayed(this, this.f14690c);
            }
        }

        public synchronized void b(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.f14691d = i2;
            this.f14692e = i4;
            this.f14693f = i3;
            this.f14695h = i5;
            this.f14696i = i6;
            this.f14694g = i7;
            if (!this.f14689b) {
                this.f14689b = true;
                o1.k.a().postDelayed(this, this.f14690c);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.f14688a == 2) {
                z.k.s(227, 196, 1, this.f14697j);
                this.f14689b = false;
            } else {
                z.k.s(227, 199, 6, 0, this.f14693f, this.f14692e, 10, 10, 10);
                this.f14689b = false;
            }
        }
    }

    public static void B3(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        g gVarC = F.c(i2);
        if (gVarC != null) {
            gVarC.b(i3 == 0 ? 1 : 0, i4, i5, i6, i7, i8);
        }
    }

    public static void C3(int i2, int i3) {
        g gVarC = F.c(i2);
        if (gVarC != null) {
            gVarC.a(i3);
        }
    }

    public static /* synthetic */ int p3(q qVar) {
        int i2 = qVar.f14681u;
        qVar.f14681u = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int u3(q qVar) {
        int i2 = qVar.f14680t;
        qVar.f14680t = i2 + 1;
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
        if (u0.b.f17306a0 == 0) {
            return;
        }
        if (f14657v == 1) {
            C3(2, f14660y | 128);
        } else {
            C3(2, f14660y & 127);
        }
    }

    public final synchronized void F3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        B3(1, f14658w, f14661z, A, 10, 10, 10);
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
        if (nt.f8637c != 2) {
            y0.f.C0 = 18;
        } else {
            y0.f.C0 = 36;
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = E;
            B = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            C = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f14673m);
            qt.z(this.f14672l);
            w0.e.f17815a.a(this.f14672l, 1);
            u0.c.f17386m.a(this.f14675o, 1);
        }
        qt.z(this.f14677q);
        if (nt.f8637c != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 1;
        mtVar2.f8311f = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8307b = 1;
        mtVar2.f8308c = 1;
        mtVar2.f8309d = 0;
        if (nt.a()) {
            init();
            l0.b0.a(this.f14679s);
            D3();
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
        int[][] iArr7;
        byte b2 = bArr[i2];
        if (b2 == 39) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                int i4 = b3 & 128;
                int i5 = b3 & 255;
                u0.d.A3(i4 != 0 ? 1000 - ((255 - (i5 - 1)) * 10) : (i5 * 10) + 1000);
            }
            return;
        }
        if (b2 == 41) {
            nt.a();
            return;
        }
        int i6 = 0;
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    int i7 = b4 & 255;
                    this.f14663c = i7;
                    if (i7 != 129) {
                        if (i7 != 130) {
                            if (i7 != 138) {
                                if (i7 != 139) {
                                    switch (i7) {
                                        case 60:
                                            break;
                                        case 61:
                                            break;
                                        case 62:
                                            for (int i8 = 0; i8 < (b5 & 255); i8++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                            break;
                                        case 63:
                                            for (int i9 = 0; i9 < (b5 & 255); i9++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                            break;
                                        default:
                                            int i10 = nt.f8637c;
                                            if (i10 == 0) {
                                                int i11 = 0;
                                                while (true) {
                                                    iArr = this.f14666f;
                                                    if (i11 < iArr.length) {
                                                        int i12 = this.f14663c;
                                                        if (i12 != iArr[i11][0]) {
                                                            i11++;
                                                        } else if (i12 != 0) {
                                                            this.f14662b = i11;
                                                        }
                                                    }
                                                }
                                                int i13 = b5 & 255;
                                                if (i13 == 1) {
                                                    if (i11 < iArr.length) {
                                                        l0.b0.l0(iArr[i11][1], 0);
                                                    }
                                                } else if (i13 == 0) {
                                                    int i14 = this.f14662b;
                                                    if (i14 < iArr.length && i14 != 255) {
                                                        l0.b0.l0(iArr[i14][1], 1);
                                                    }
                                                    this.f14662b = 255;
                                                }
                                                break;
                                            } else if (i10 == 1) {
                                                int i15 = 0;
                                                while (true) {
                                                    iArr2 = this.f14665e;
                                                    if (i15 < iArr2.length) {
                                                        int i16 = this.f14663c;
                                                        if (i16 != iArr2[i15][0]) {
                                                            i15++;
                                                        } else if (i16 != 0) {
                                                            this.f14662b = i15;
                                                        }
                                                    }
                                                }
                                                int i17 = b5 & 255;
                                                if (i17 == 1) {
                                                    if (i15 < iArr2.length) {
                                                        l0.b0.l0(iArr2[i15][1], 0);
                                                    }
                                                } else if (i17 == 0) {
                                                    int i18 = this.f14662b;
                                                    if (i18 < iArr2.length && i18 != 255) {
                                                        l0.b0.l0(iArr2[i18][1], 1);
                                                    }
                                                    this.f14662b = 255;
                                                }
                                                break;
                                            } else {
                                                switch (i10) {
                                                    case 10:
                                                        int i19 = 0;
                                                        while (true) {
                                                            iArr3 = this.f14667g;
                                                            if (i19 < iArr3.length) {
                                                                int i20 = this.f14663c;
                                                                if (i20 != iArr3[i19][0]) {
                                                                    i19++;
                                                                } else if (i20 != 0) {
                                                                    this.f14662b = i19;
                                                                }
                                                            }
                                                        }
                                                        int i21 = b5 & 255;
                                                        if (i21 == 1) {
                                                            if (i19 < iArr3.length) {
                                                                l0.b0.l0(iArr3[i19][1], 0);
                                                            }
                                                        } else if (i21 == 0) {
                                                            int i22 = this.f14662b;
                                                            if (i22 < iArr3.length && i22 != 255) {
                                                                l0.b0.l0(iArr3[i22][1], 1);
                                                            }
                                                            this.f14662b = 255;
                                                        }
                                                        break;
                                                    case 11:
                                                        int i23 = 0;
                                                        while (true) {
                                                            iArr4 = this.f14668h;
                                                            if (i23 < iArr4.length) {
                                                                int i24 = this.f14663c;
                                                                if (i24 != iArr4[i23][0]) {
                                                                    i23++;
                                                                } else if (i24 != 0) {
                                                                    this.f14662b = i23;
                                                                }
                                                            }
                                                        }
                                                        int i25 = b5 & 255;
                                                        if (i25 == 1) {
                                                            if (i23 < iArr4.length) {
                                                                l0.b0.l0(iArr4[i23][1], 0);
                                                            }
                                                        } else if (i25 == 0) {
                                                            int i26 = this.f14662b;
                                                            if (i26 < iArr4.length && i26 != 255) {
                                                                l0.b0.l0(iArr4[i26][1], 1);
                                                            }
                                                            this.f14662b = 255;
                                                        }
                                                        break;
                                                    case 12:
                                                        int i27 = 0;
                                                        while (true) {
                                                            iArr5 = this.f14669i;
                                                            if (i27 < iArr5.length) {
                                                                int i28 = this.f14663c;
                                                                if (i28 != iArr5[i27][0]) {
                                                                    i27++;
                                                                } else if (i28 != 0) {
                                                                    this.f14662b = i27;
                                                                }
                                                            }
                                                        }
                                                        int i29 = b5 & 255;
                                                        if (i29 == 1) {
                                                            if (i27 < iArr5.length) {
                                                                l0.b0.l0(iArr5[i27][1], 0);
                                                            }
                                                        } else if (i29 == 0) {
                                                            int i30 = this.f14662b;
                                                            if (i30 < iArr5.length && i30 != 255) {
                                                                l0.b0.l0(iArr5[i30][1], 1);
                                                            }
                                                            this.f14662b = 255;
                                                        }
                                                        break;
                                                    case 13:
                                                        int i31 = 0;
                                                        while (true) {
                                                            iArr6 = this.f14670j;
                                                            if (i31 < iArr6.length) {
                                                                int i32 = this.f14663c;
                                                                if (i32 != iArr6[i31][0]) {
                                                                    i31++;
                                                                } else if (i32 != 0) {
                                                                    this.f14662b = i31;
                                                                }
                                                            }
                                                        }
                                                        int i33 = b5 & 255;
                                                        if (i33 == 1) {
                                                            if (i31 < iArr6.length) {
                                                                l0.b0.l0(iArr6[i31][1], 0);
                                                            }
                                                        } else if (i33 == 0) {
                                                            int i34 = this.f14662b;
                                                            if (i34 < iArr6.length && i34 != 255) {
                                                                l0.b0.l0(iArr6[i34][1], 1);
                                                            }
                                                            this.f14662b = 255;
                                                        }
                                                        break;
                                                    default:
                                                        int i35 = 0;
                                                        while (true) {
                                                            iArr7 = this.f14664d;
                                                            if (i35 < iArr7.length) {
                                                                int i36 = this.f14663c;
                                                                if (i36 != iArr7[i35][0]) {
                                                                    i35++;
                                                                } else if (i36 != 0) {
                                                                    this.f14662b = i35;
                                                                }
                                                            }
                                                        }
                                                        int i37 = b5 & 255;
                                                        if (i37 == 1) {
                                                            if (i35 < iArr7.length) {
                                                                l0.b0.l0(iArr7[i35][1], 0);
                                                            }
                                                        } else if (i37 == 0) {
                                                            int i38 = this.f14662b;
                                                            if (i38 < iArr7.length && i38 != 255) {
                                                                l0.b0.l0(iArr7[i38][1], 1);
                                                            }
                                                            this.f14662b = 255;
                                                        }
                                                        break;
                                                }
                                            }
                                            break;
                                    }
                                }
                            }
                        }
                        while (i6 < (b5 & 255)) {
                            l0.b0.l0(8, 0);
                            i6++;
                        }
                        l0.b0.l0(8, 1);
                        break;
                    }
                    while (i6 < (b5 & 255)) {
                        l0.b0.l0(7, 0);
                        i6++;
                    }
                    l0.b0.l0(7, 1);
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
                    int i39 = i2 + 2;
                    int i40 = bArr[i39] & 255;
                    int i41 = i2 + 3;
                    int i42 = bArr[i41] & 255;
                    int i43 = i2 + 4;
                    int i44 = bArr[i43] & 255;
                    int i45 = i2 + 5;
                    int i46 = bArr[i45] & 255;
                    if (i40 == 0 && i42 == 0 && i44 == 0 && i46 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i40 || l0.c0.f13014h != i42 || l0.c0.f13015i != i44 || l0.c0.f13016j != i46) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i40;
                    l0.c0.f13014h = i42;
                    l0.c0.f13015i = i44;
                    l0.c0.f13016j = i46;
                    u0.d.D2(c3(bArr[i39] & 255));
                    u0.d.E2(c3(bArr[i41] & 255));
                    u0.d.F2(c3(bArr[i43] & 255));
                    u0.d.G2(c3(bArr[i45] & 255));
                }
                break;
            case 36:
                byte b8 = bArr[i2 + 3];
                qt.y0(0, (b8 >> 5) & 1);
                qt.y0(5, (b8 >> 4) & 1);
                qt.y0(4, (b8 >> 3) & 1);
                qt.y0(3, (b8 >> 2) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 1) & 1);
                    qt.y0(2, (b8 >> 0) & 1);
                } else {
                    qt.y0(1, (b8 >> 0) & 1);
                    qt.y0(2, (b8 >> 1) & 1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f14673m);
        qt.q0(this.f14672l);
        w0.e.f17815a.d(this.f14672l);
        qt.q0(this.f14677q);
        u0.c.f17386m.d(this.f14675o);
        l0.b0.p0(this.f14676p);
        l0.b0.o0(this.f14679s);
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
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            G3(i.a.Theme_preferenceFragmentStyle, iArr);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            z.k.s(227, 198, 8, 2, iArr[0], 0, 0, 0, 0, 0, 0);
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f14660y = D[o0.a(i2, 0, 36)];
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
        o1.f<g> fVar = F;
        fVar.f(1, new g(1, 100));
        fVar.f(2, new g(2, 100));
    }
}
