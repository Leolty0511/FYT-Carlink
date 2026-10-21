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
public class d extends lt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f13834h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f13835i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f13836j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f13837k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f13838l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f13839m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f13840n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f13841o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f13842p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f13843q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f13844r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f13845s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f13846t = {0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int[] f13847u = {6, 8, 10, 13, 15, 16, 17, 19, 22, 24, 26};

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int[] f13848v = {6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18, 20, 22, 23, 24, 25, 26};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final o1.f<RunnableC0075d> f13849w = new o1.f<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13850b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f13851c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Runnable f13852d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13853e = 200;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f13854f = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13855g = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            int i2 = dVar.f13850b;
            if (i2 > 0) {
                dVar.f13850b = i2 - 1;
            }
            if (dVar.f13850b == 0) {
                d.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.H3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (d.this.f13853e > 100) {
                    d.r3(d.this);
                    if (d.this.f13855g == d.this.f13853e / 100) {
                        d.this.f13855g = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = d.f13835i = d.f13846t[0];
                } else {
                    int unused2 = d.f13835i = d.f13846t[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (d.this.f7886a.f8307b == 1 && d.f13834h != d.f13835i) {
                    d.this.H3();
                }
                if (d.this.f7886a.f8309d == 1) {
                    if (d.f13836j != d.f13839m) {
                        d.this.D3();
                    }
                    if (d.f13837k != d.f13840n) {
                        d.this.F3();
                    }
                    if (d.f13838l != d.f13841o) {
                        d.this.G3();
                    }
                }
                if (d.this.f7886a.f8308c == 1) {
                    if (d.f13842p != d.f13844r) {
                        d.this.E3();
                    }
                    if (d.f13843q != d.f13845s) {
                        d.this.C3();
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: module.canbus.d$d, reason: collision with other inner class name */
    public static class RunnableC0075d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f13859a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13860b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13861c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f13862d;

        public RunnableC0075d(int i2, int i3) {
            this.f13859a = i2;
            this.f13862d = i3;
        }

        public synchronized void a(int i2) {
            this.f13860b = i2;
            if (!this.f13861c) {
                this.f13861c = true;
                o1.k.a().postDelayed(this, this.f13862d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 2, 173, this.f13859a, this.f13860b);
            this.f13861c = false;
        }
    }

    public static void A3(int i2, int i3) {
        RunnableC0075d runnableC0075dC = f13849w.c(i2);
        if (runnableC0075dC != null) {
            runnableC0075dC.a(i3);
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        for (int i2 = 0; i2 < 15; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17797i;
                iArr[3] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                iArr[4] = ((i5 % 10000) / 1000) + 48;
                iArr[5] = ((i5 % 1000) / 100) + 48;
                iArr[6] = 46;
                iArr[7] = ((i5 % 100) / 10) + 48;
                iArr[8] = (i5 % 10) + 48;
                iArr[9] = 77;
                iArr[10] = 104;
                iArr[11] = 122;
            } else {
                int i6 = w0.d.f17797i;
                iArr[3] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[4] = (i6 % 10000) / 1000 == 0 ? ((i6 % 10000) / 1000) + 32 : ((i6 % 10000) / 1000) + 48;
                iArr[5] = ((i6 % 1000) / 100) + 48;
                iArr[6] = ((i6 % 100) / 10) + 48;
                iArr[7] = (i6 % 10) + 48;
                iArr[8] = 75;
                iArr[9] = 104;
                iArr[10] = 122;
            }
        } else if (i3 != 4) {
            if (i3 != 6) {
                if ((i3 == 8 || i3 == 9) && u0.b.s3 != 0) {
                    int i7 = u0.b.t3;
                    iArr[3] = (i7 / BatchedScanSettings.MAX_INTERVAL_SEC) + 48;
                    iArr[4] = (((i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) + 48;
                    iArr[5] = (((i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
                    iArr[6] = ((i7 % 60) / 10) + 48;
                    iArr[7] = ((i7 % 60) % 10) + 48;
                    int i8 = u0.b.r3 % 10000;
                    iArr[4] = (i8 / 1000) + 48;
                    int i9 = (i8 % 100) / 10;
                    int i10 = i8 % 1000;
                    if (i9 != 0) {
                        i10 /= 10;
                    }
                    iArr[5] = i10 + 48;
                    iArr[6] = i9 + 48;
                    iArr[7] = (i8 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i11 = d1.d.f1572e;
                if (i11 / 10 > 0) {
                    iArr[3] = (i11 / 10) + 48;
                }
                iArr[4] = (i11 % 10) + 48;
                iArr[5] = 45;
                int i12 = d1.d.f1571d / 100;
                int i13 = i12 / 10000;
                if (i13 > 0) {
                    iArr[6] = i13 + 48;
                }
                iArr[7] = ((i12 % 10000) / 1000) + 48;
                iArr[8] = ((i12 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i12 % 100) / 10) + 48;
                iArr[11] = ((i12 % 10) / 1) + 48;
                iArr[12] = 77;
                iArr[13] = 104;
                iArr[14] = 122;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            int i14 = o0.e.B % 10000;
            iArr[4] = (i14 / 1000) + 48;
            int i15 = (i14 % 100) / 10;
            int i16 = i14 % 1000;
            if (i15 != 0) {
                i16 /= 10;
            }
            iArr[5] = i16 + 48;
            iArr[6] = i15 + 48;
            iArr[7] = (i14 % 10) + 48;
            int i17 = o0.e.f16794r;
            int i18 = (i17 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i18 / 10) + 48;
            iArr[10] = (i18 % 10) + 48;
            iArr[11] = 32;
            int i19 = i17 % 60;
            iArr[12] = (i19 / 10) + 48;
            iArr[13] = (i19 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        int i20 = 0;
        iArr2[0] = 227;
        while (i20 < 15) {
            int i21 = i20 + 1;
            iArr2[i21] = (byte) iArr[i20];
            i20 = i21;
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

    public static /* synthetic */ int r3(d dVar) {
        int i2 = dVar.f13855g;
        dVar.f13855g = i2 + 1;
        return i2;
    }

    public final void B3() {
        Z2(y0.f.f18037c);
        P2(null);
        R2(null);
    }

    public final synchronized void C3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        A3(2, f13845s);
    }

    public final synchronized void D3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        A3(4, f13839m);
    }

    public final synchronized void E3() {
        if (this.f7886a.f8308c == 0) {
            return;
        }
        A3(3, f13844r);
    }

    public final synchronized void F3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        A3(5, f13840n);
    }

    public final synchronized void G3() {
        if (this.f7886a.f8309d == 0) {
            return;
        }
        A3(6, f13841o);
    }

    public final synchronized void H3() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        A3(1, f13835i);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void P2(int[] iArr) {
        if (nt.a() && this.f7886a.f8309d == 1) {
            int[] iArr2 = f13847u;
            int[] iArr3 = y0.f.f18038c0;
            f13839m = iArr2[o0.a(iArr3[0] >> 1, 0, 10)];
            f13840n = iArr2[o0.a(iArr3[1] >> 1, 0, 10)];
            f13841o = iArr2[o0.a(iArr3[2] >> 1, 0, 10)];
        }
    }

    @Override // k0.lt
    public void R2(int[] iArr) {
        if (nt.a() && this.f7886a.f8308c == 1) {
            int[] iArr2 = f13848v;
            f13844r = iArr2[o0.a(y0.f.f18061l, 0, 16)];
            f13845s = iArr2[o0.a(y0.f.f18057j, 0, 16)];
        }
    }

    @Override // k0.lt
    public void S2() {
        if (((nt.f8633a >> 16) & 65535) != 2) {
            mt mtVar = this.f7886a;
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            mtVar.f8307b = 0;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
        } else {
            mt mtVar2 = this.f7886a;
            mtVar2.f8310e = 0;
            mtVar2.f8311f = 1;
            mtVar2.f8312g = 1;
            mtVar2.f8307b = 1;
            mtVar2.f8308c = 1;
            mtVar2.f8309d = 1;
            if (nt.a()) {
                init();
                l0.b0.a(this.f13854f);
                B3();
                y0.g.f18094d.a(this.f13852d, 1);
            }
        }
        if (nt.a()) {
            qt.z(this.f13851c);
            w0.e.f17815a.a(this.f13851c, 1);
            w0.e.f17819e.a(this.f13851c, 1);
        }
        z.k.s(227, 2, 36, 33, 9);
    }

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
                f13834h = o0.a(b3 & 255, 0, 45);
                f13842p = o0.a(b5 & 255, 6, 26);
                f13843q = o0.a(b4 & 255, 6, 26);
                f13836j = o0.a(b6 & 255, 6, 26);
                f13837k = o0.a(b7 & 255, 6, 26);
                f13838l = o0.a(b8 & 255, 6, 26);
                return;
            }
            return;
        }
        if (b2 != 49) {
            return;
        }
        byte b9 = bArr[i2 + 2];
        byte b10 = bArr[i2 + 6];
        byte b11 = bArr[i2 + 7];
        qt.y0(16, (b9 >> 7) & 1);
        qt.y0(10, (b9 >> 6) & 1);
        qt.y0(13, (b9 >> 3) & 1);
        qt.y0(14, (b9 >> 2) & 1);
        qt.y0(11, (b9 >> 0) & 3);
        if (b10 == 2) {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        } else if (b10 != 3) {
            if (b10 == 5) {
                i6 = 0;
                i4 = 1;
            } else if (b10 == 6) {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            } else if (b10 != 12) {
                i6 = 0;
                i4 = 0;
            } else {
                i4 = 0;
                i6 = 1;
                i5 = 1;
            }
            i5 = i4;
        } else {
            i6 = 0;
            i4 = 0;
            i5 = 1;
        }
        qt.y0(18, i6);
        qt.y0(19, i4);
        qt.y0(20, i5);
        qt.y0(21, b11);
        int i7 = i2 + 8;
        byte b12 = bArr[i7];
        int i8 = i2 + 9;
        byte b13 = bArr[i8];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b12 = bArr[i8];
            b13 = bArr[i7];
        }
        if (b12 == -2) {
            qt.y0(27, -2);
        } else if (b12 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, b12 & 255);
        }
        if (b13 == -2) {
            qt.y0(28, -2);
        } else if (b13 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, b13 & 255);
        }
        if (nt.a()) {
            int i9 = bArr[i2 + 13] & 255;
            int i10 = i9 >= 80 ? ((((i9 / 2) * 10) + ((i9 % 2) * 5)) - 400) + 1000 : 1000 - (400 - (((i9 / 2) * 10) + ((i9 % 2) * 5)));
            if (i10 > 600) {
                u0.d.A3(i10);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f13851c);
        w0.e.f17815a.d(this.f13851c);
        w0.e.f17819e.d(this.f13851c);
        l0.b0.o0(this.f13854f);
        y0.g.f18094d.d(this.f13852d);
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
            f13835i = f13846t[o0.a(i2, 0, 36)];
        }
    }

    public final void init() {
        o1.f<RunnableC0075d> fVar = f13849w;
        fVar.f(3, new RunnableC0075d(3, 100));
        fVar.f(2, new RunnableC0075d(2, 100));
        fVar.f(4, new RunnableC0075d(4, 100));
        fVar.f(6, new RunnableC0075d(6, 100));
        fVar.f(5, new RunnableC0075d(5, 100));
        fVar.f(1, new RunnableC0075d(1, 100));
    }
}
