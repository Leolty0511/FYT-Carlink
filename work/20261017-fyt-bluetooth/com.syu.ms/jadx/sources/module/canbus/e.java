package module.canbus;

import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class e extends lt {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f13926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f13927j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f13928k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f13929l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f13930m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f13931n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f13932o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f13933p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f13934q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f13935r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f13936s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f13937t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f13938u = {0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f13939v = {6, 8, 10, 13, 15, 16, 17, 19, 22, 24, 26};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int[] f13940w = {6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 23, 24, 25, 26};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final o1.f<RunnableC0076e> f13941x = new o1.f<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final o1.y f13942y = new o1.y();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13943b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f13944c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f13945d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f13946e = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13947f = 200;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f13948g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13949h = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e eVar = e.this;
            int i2 = eVar.f13943b;
            if (i2 > 0) {
                eVar.f13943b = i2 - 1;
            }
            if (eVar.f13943b == 0) {
                e.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.I3();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (e.this.f13947f > 100) {
                    e.s3(e.this);
                    if (e.this.f13949h == e.this.f13947f / 100) {
                        e.this.f13949h = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = e.f13927j = e.f13938u[0];
                } else {
                    int unused2 = e.f13927j = e.f13938u[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (e.this.f7886a.f8307b == 1 && e.f13926i != e.f13927j) {
                    e.this.I3();
                }
                if (e.this.f7886a.f8309d == 1) {
                    if (e.f13928k != e.f13931n) {
                        e.this.E3();
                    }
                    if (e.f13929l != e.f13932o) {
                        e.this.G3();
                    }
                    if (e.f13930m != e.f13933p) {
                        e.this.H3();
                    }
                }
                if (e.this.f7886a.f8308c == 1) {
                    if (e.f13934q != e.f13936s) {
                        e.this.F3();
                    }
                    if (e.f13935r != e.f13937t) {
                        e.this.D3();
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: module.canbus.e$e, reason: collision with other inner class name */
    public static class RunnableC0076e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13955b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13956c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13957d;

        public RunnableC0076e(int i2, int i3) {
            this.f13954a = i2;
            this.f13957d = i3;
        }

        public synchronized void a(int i2) {
            this.f13955b = i2;
            if (!this.f13956c) {
                this.f13956c = true;
                o1.k.a().postDelayed(this, this.f13957d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f13954a, this.f13955b);
            this.f13956c = false;
        }
    }

    public static void B3(int i2, int i3) {
        RunnableC0076e runnableC0076eC = f13941x.c(i2);
        if (runnableC0076eC != null) {
            runnableC0076eC.a(i3);
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17798j;
            if (i5 % 6 != 0 || i5 == 0) {
                iArr[12] = ((i5 & 255) % 6) + 48;
            } else {
                iArr[12] = 54;
            }
            iArr[13] = 32;
            iArr[14] = 32;
            int i6 = w0.d.f17796h;
            if (i6 - 65536 == 0 || 1 == i6 - 65536 || 2 == i6 - 65536) {
                int i7 = w0.d.f17797i;
                iArr[3] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[4] = ((i7 % 10000) / 1000) + 48;
                iArr[5] = ((i7 % 1000) / 100) + 48;
                iArr[6] = 46;
                iArr[7] = ((i7 % 100) / 10) + 48;
                iArr[8] = ((i7 % 100) % 10) + 48;
                iArr[9] = 77;
                iArr[10] = 72;
                iArr[11] = 90;
            } else {
                int i8 = w0.d.f17797i;
                iArr[4] = (i8 % 10000) / 1000 == 0 ? ((i8 % 10000) / 1000) + 32 : ((i8 % 10000) / 1000) + 48;
                iArr[5] = ((i8 % 1000) / 100) + 48;
                iArr[6] = ((i8 % 100) / 10) + 48;
                iArr[7] = (i8 % 10) + 48;
                iArr[8] = 75;
                iArr[9] = 72;
                iArr[10] = 90;
                iArr[11] = 32;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i9 = u0.b.r3;
                    if (i9 <= 999) {
                        int i10 = i9 / 100;
                        iArr[9] = (i9 / 100) + 48;
                        int i11 = (i9 % 100) / 10;
                        iArr[10] = ((i9 % 100) / 10) + 48;
                        iArr[11] = (i9 % 10) + 48;
                    } else {
                        iArr[9] = 57;
                        iArr[10] = 57;
                        iArr[11] = 57;
                    }
                    int i12 = u0.b.t3;
                    iArr[3] = (i12 / BatchedScanSettings.MAX_INTERVAL_SEC) + 48;
                    iArr[4] = (((i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) + 48;
                    iArr[5] = (((i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
                    iArr[6] = ((i12 % 60) / 10) + 48;
                    iArr[7] = (i12 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i13 = d1.d.f1572e;
                if (i13 / 10 > 0) {
                    iArr[3] = (i13 / 10) + 48;
                }
                iArr[4] = (i13 % 10) + 48;
                iArr[5] = 45;
                int i14 = d1.d.f1571d / 100;
                int i15 = i14 / 10000;
                if (i15 > 0) {
                    iArr[6] = i15 + 48;
                }
                iArr[7] = ((i14 % 10000) / 1000) + 48;
                iArr[8] = ((i14 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i14 % 100) / 10) + 48;
                iArr[11] = ((i14 % 10) / 1) + 48;
            }
        } else if (o0.e.C != 0) {
            int i16 = o0.e.B;
            iArr[3] = ((i16 / 100) % 10) + 48;
            iArr[4] = ((i16 / 10) % 10) + 48;
            iArr[5] = (i16 % 10) + 48;
            iArr[6] = 32;
            int i17 = o0.e.f16794r;
            iArr[7] = ((i17 / 60) / 10) + 48;
            iArr[8] = ((i17 / 60) % 10) + 48;
            iArr[9] = ((i17 % 60) / 10) + 48;
            iArr[10] = ((i17 % 60) % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i18 = i2 + 1;
            iArr2[i18] = (byte) iArr[i2];
            i2 = i18;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000e  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 != 0) {
                        b2 = 1 != i2 - 0 ? (byte) 0 : (byte) 5;
                    } else {
                        b2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                b2 = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    b2 = 7;
                } else if (i3 == 2) {
                    b2 = 14;
                } else if (i3 != 3) {
                    b2 = 0;
                } else {
                    b2 = 13;
                }
                break;
            case 5:
                b2 = DhcpPacket.DHCP_HOST_NAME;
                break;
            case 6:
                b2 = 8;
                break;
            case 7:
                b2 = 11;
                break;
            case 8:
            case 10:
                b2 = 13;
                break;
            case 9:
            default:
                b2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static /* synthetic */ int s3(e eVar) {
        int i2 = eVar.f13949h;
        eVar.f13949h = i2 + 1;
        return i2;
    }

    public final void C3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final synchronized void D3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        B3(2, f13937t);
    }

    public final synchronized void E3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        B3(4, f13931n);
    }

    public final synchronized void F3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        B3(3, f13936s);
    }

    public final synchronized void G3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        B3(5, f13932o);
    }

    public final synchronized void H3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        B3(6, f13933p);
    }

    public final synchronized void I3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        B3(1, f13927j);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = f13939v;
            int[] iArr3 = y0.f.f18038c0;
            f13931n = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f13932o = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            f13933p = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f13940w;
            f13936s = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f13937t = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (((nt.f8633a >> 16) & 65535) != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
        } else {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 0;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            mtVar2.f8307b = 1;
            mtVar2.f8308c = 1;
            mtVar2.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f13948g);
                C3();
                y0.g.f18094d.a(this.f13946e, 1);
            }
        }
        if (nt.a()) {
            qt.z(this.f13944c);
            w0.e.f17815a.a(this.f13944c, 1);
            w0.e.f17819e.a(this.f13944c, 1);
        }
        z.k.s(227, 2, 36, 36, 9);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005c  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2 + 1];
        if (b2 == -90) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                byte b7 = bArr[i2 + 6];
                byte b8 = bArr[i2 + 7];
                f13926i = o0.a(b3 & 255, 0, 45);
                f13934q = o0.a(b5 & 255, 6, 26);
                f13935r = o0.a(b4 & 255, 6, 26);
                f13928k = o0.a(b6 & 255, 6, 26);
                f13929l = o0.a(b7 & 255, 6, 26);
                f13930m = o0.a(b8 & 255, 6, 26);
                return;
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 49) {
            return;
        }
        byte b9 = bArr[i2 + 2];
        qt.y0(10, (b9 >> 6) & 1);
        qt.y0(13, (b9 >> 3) & 1);
        qt.y0(14, (b9 >> 2) & 1);
        qt.y0(53, b9 & 3);
        byte b10 = bArr[i2 + 6];
        if (b10 == 0) {
            i4 = 0;
            i5 = 0;
            i6 = i5;
        } else if (b10 == 12) {
            i4 = 1;
            i6 = 1;
            i5 = 0;
        } else if (b10 == 2) {
            i4 = 1;
            i5 = 0;
            i6 = i5;
        } else if (b10 == 3) {
            i6 = 1;
            i4 = 0;
            i5 = 0;
        } else if (b10 == 5) {
            i5 = 1;
            i6 = 1;
            i4 = 0;
        } else if (b10 != 6) {
            i4 = 0;
            i5 = 0;
            i6 = i5;
        } else {
            i5 = 1;
            i4 = 0;
            i6 = 0;
        }
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(21, bArr[i2 + 7] & DhcpPacket.DHCP_DOMAIN_NAME);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            qt.y0(27, bArr[i2 + 9] & 255);
            qt.y0(28, bArr[i2 + 8] & 255);
        } else {
            qt.y0(27, bArr[i2 + 8] & 255);
            qt.y0(28, bArr[i2 + 9] & 255);
        }
        if (nt.a()) {
            int i7 = bArr[i2 + 13] & 255;
            int i8 = i7 >= 80 ? ((((i7 / 2) * 10) + ((i7 % 2) * 5)) - 400) + 1000 : 1000 - (400 - (((i7 / 2) * 10) + ((i7 % 2) * 5)));
            if (i8 > 600) {
                u0.d.A3(i8);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f13944c);
        w0.e.f17815a.d(this.f13944c);
        w0.e.f17819e.d(this.f13944c);
        l0.b0.o0(this.f13948g);
        y0.g.f18094d.d(this.f13946e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f13927j = f13938u[o0.a(i2, 0, 36)];
        }
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f13943b = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 77;
            iArr[4] = 85;
            iArr[5] = 84;
            iArr[6] = 69;
        } else {
            iArr[3] = 86;
            iArr[4] = 79;
            iArr[5] = 76;
            if (i2 >= 10) {
                iArr[7] = (i2 / 10) + 48;
            }
            iArr[8] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i3 < 15) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public final void init() {
        o1.f<RunnableC0076e> fVar = f13941x;
        fVar.f(3, new RunnableC0076e(3, 100));
        fVar.f(2, new RunnableC0076e(2, 100));
        fVar.f(4, new RunnableC0076e(4, 100));
        fVar.f(6, new RunnableC0076e(6, 100));
        fVar.f(5, new RunnableC0076e(5, 100));
        fVar.f(1, new RunnableC0076e(1, 100));
    }
}
