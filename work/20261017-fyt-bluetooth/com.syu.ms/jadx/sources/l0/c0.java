package l0;

import android.net.wifi.BatchedScanSettings;
import k0.nt;
import k0.qt;
import k0.x5;
import n0.j4;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Runnable f13007a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Runnable f13008b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13009c = 15;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f13010d = 15;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f13011e = 15;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f13012f = 15;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f13013g = 15;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f13014h = 15;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f13015i = 15;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f13016j = 15;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f13017k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static Runnable f13018l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f13019m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Runnable f13020n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static Runnable f13021o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static boolean f13022p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static boolean f13023q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f13024r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static Runnable f13025s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f13026t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static Runnable f13027u = new g();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f13028v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static Runnable f13029w = new h();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            c0.n();
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            c0.y0();
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = c0.f13017k - 1;
            c0.f13017k = i2;
            if (i2 <= 0) {
                u0.d.C2(0);
                b0.p0(c0.f13018l);
            }
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            b0.b(c0.f13021o);
            c0.f13019m = 5;
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = c0.f13019m - 1;
            c0.f13019m = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                b0.p0(c0.f13021o);
                c0.f13019m = 5;
            }
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = c0.f13024r;
            if (i2 > 0) {
                c0.f13024r = i2 - 1;
            }
            if (c0.f13024r <= 0) {
                if (c0.M1()) {
                    qt.a(0);
                } else if (qt.k0()) {
                    u0.i.l3().g4(8192, false);
                }
                u0.b.K2 = 0;
                u0.c.f17380g.c();
                b0.o0(c0.f13025s);
            }
        }
    }

    public class g implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = c0.f13026t;
            if (i2 > 0) {
                c0.f13026t = i2 - 1;
            }
            if (c0.f13026t <= 0) {
                if (c0.M1()) {
                    qt.a(0);
                } else if (qt.k0()) {
                    u0.i.l3().g4(4096, false);
                }
                u0.b.J2 = 0;
                u0.c.f17380g.c();
                b0.o0(c0.f13027u);
            }
        }
    }

    public class h implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = c0.f13028v;
            if (i2 > 0) {
                c0.f13028v = i2 - 1;
            }
            if (c0.f13028v <= 0) {
                if (c0.M1()) {
                    qt.a(0);
                } else if (qt.k0()) {
                    u0.d.I3(139, 0);
                }
                u0.b.L2 = 0;
                u0.c.f17380g.c();
                b0.o0(c0.f13029w);
            }
        }
    }

    public static void A() {
        int[] iArr = new int[14];
        int i2 = 0;
        iArr[0] = 131;
        iArr[1] = 12;
        b0(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 < 65536 || i4 > 65538) {
                int i5 = w0.d.f17797i;
                iArr[6] = (i5 % 10000) / 1000 == 0 ? ((i5 % 10000) / 1000) + 32 : ((i5 % 10000) / 1000) + 48;
                iArr[7] = ((i5 % 1000) / 100) + 48;
                iArr[8] = ((i5 % 100) / 10) + 48;
                iArr[9] = (i5 % 10) + 48;
                iArr[10] = 32;
            } else {
                int i6 = w0.d.f17797i;
                iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
                iArr[11] = (i6 % 10) + 48;
            }
        } else if (i3 == 4) {
            int i7 = o0.e.B;
            if (i7 < 999) {
                int i8 = i7 / 100;
                iArr[5] = (i7 / 100) + 48;
                int i9 = (i7 % 100) / 10;
                iArr[6] = ((i7 % 100) / 10) + 48;
                iArr[7] = (i7 % 10) + 48;
            } else {
                iArr[5] = 57;
                iArr[6] = 57;
                iArr[7] = 57;
            }
            int i10 = o0.e.f16794r;
            iArr[8] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) + 48;
            iArr[9] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[10] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) / 10) + 48;
            iArr[11] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) % 10) + 48;
        } else if (i3 == 8 || i3 == 10) {
            int i11 = u0.b.r3;
            if (i11 <= 999) {
                iArr[5] = (i11 / 100) + 48;
                iArr[6] = ((i11 % 100) / 10) + 48;
                iArr[7] = (i11 % 10) + 48;
            } else {
                iArr[5] = 57;
                iArr[6] = 57;
                iArr[7] = 57;
            }
            int i12 = u0.b.t3;
            iArr[8] = (((i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) + 48;
            iArr[9] = (((i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[10] = (((i12 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) / 10) + 48;
            iArr[11] = (((i12 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) % 10) + 48;
        }
        int[] iArr2 = new int[15];
        iArr2[0] = 227;
        while (i2 < 14) {
            int i13 = i2 + 1;
            iArr2[i13] = iArr[i2];
            i2 = i13;
        }
        z.k.s(iArr2);
    }

    public static void A0() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = iArr[2] | 0;
        }
        if (y0.f.C0 > 30) {
            iArr[2] = 30;
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

    public static int A1(int i2) {
        switch (i2) {
            case 0:
                return 0;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
                return 8;
            case 6:
                return 9;
            default:
                return 15;
        }
    }

    public static void B() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        c0(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr[3] = 1;
            } else if (i5 == 65537) {
                iArr[3] = 2;
            } else if (i5 == 65538) {
                iArr[3] = 3;
            } else if (i5 == 0) {
                iArr[3] = 17;
            } else if (i5 == 1) {
                iArr[3] = 18;
            }
            iArr[4] = i4 & 255;
            iArr[5] = (i4 >> 8) & 255;
            iArr[6] = w0.d.f17798j;
        } else if (i3 == 2 || i3 == 4 || i3 == 8 || i3 == 9) {
            iArr[3] = 18;
            iArr[4] = 0;
            iArr[5] = 0;
        }
        int i6 = u0.b.D;
        if (i6 != 2) {
            if (i6 == 1) {
                int[] iArr2 = new int[8];
                iArr2[0] = 227;
                while (i2 < 7) {
                    int i7 = i2 + 1;
                    iArr2[i7] = iArr[i2];
                    i2 = i7;
                }
                z.k.s(iArr2);
                return;
            }
            if (i6 == 3 || i6 == 4 || i6 == 8 || i6 == 9 || i6 == 10) {
                int[] iArr3 = new int[7];
                iArr3[0] = 227;
                while (i2 < 6) {
                    int i8 = i2 + 1;
                    iArr3[i8] = iArr[i2];
                    i2 = i8;
                }
                z.k.s(iArr3);
                return;
            }
            int[] iArr4 = new int[4];
            iArr4[0] = 227;
            while (i2 < 3) {
                int i9 = i2 + 1;
                iArr4[i9] = iArr[i2];
                i2 = i9;
            }
            z.k.s(iArr4);
        }
    }

    public static void B0() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = iArr[2] | 128;
        }
        if (y0.f.C0 > 30) {
            iArr[2] = 30;
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

    public static int B1(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 >= 10) {
            return 9;
        }
        return i2;
    }

    public static void C() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        d0(iArr);
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 11:
            case 12:
            case 13:
                iArr[3] = 0;
                break;
            case 1:
                iArr[3] = 1;
                int i3 = w0.d.f17798j;
                int i4 = w0.d.f17796h;
                if (i4 == 65536) {
                    if (i3 >= 65536) {
                        i3 -= 65536;
                    }
                    iArr[4] = 1;
                } else if (i4 == 65537) {
                    if (i3 >= 65536) {
                        i3 -= 65536;
                    }
                    iArr[4] = 2;
                } else if (i4 == 65538) {
                    if (i3 >= 65536) {
                        i3 -= 65536;
                    }
                    iArr[4] = 3;
                } else if (i4 == 0) {
                    iArr[4] = 17;
                } else if (i4 == 1) {
                    iArr[4] = 18;
                }
                int i5 = w0.d.f17797i;
                iArr[5] = i5 & 255;
                iArr[6] = (i5 >> 8) & 255;
                int i6 = i3 % 6;
                if (i6 != 0 || i3 == 0) {
                    iArr[7] = i6;
                } else {
                    iArr[7] = 6;
                }
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 4:
                iArr[3] = 0;
                break;
            case 8:
            case 10:
                iArr[3] = 0;
                break;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static void C0() {
        int i2 = 0;
        int[] iArr = {132, 5, 13, y0.f.C0, 0, 0, 0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[3] = iArr[3] | 128;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public static int C1(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 4;
        }
        if (i2 != 4) {
            return i2 != 5 ? 15 : 8;
        }
        return 6;
    }

    public static void D() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        e0(iArr);
        if (u0.b.D == 1) {
            iArr[3] = 1;
            int i3 = w0.d.f17798j;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                if (i3 >= 65536) {
                    i3 -= 65536;
                }
                iArr[4] = 1;
            } else if (i4 == 65537) {
                if (i3 >= 65536) {
                    i3 -= 65536;
                }
                iArr[4] = 2;
            } else if (i4 == 65538) {
                if (i3 >= 65536) {
                    i3 -= 65536;
                }
                iArr[4] = 0;
            } else if (i4 == 0) {
                iArr[4] = 17;
            } else if (i4 == 1) {
                iArr[4] = 18;
            }
            int i5 = w0.d.f17797i;
            iArr[5] = i5 & 255;
            iArr[6] = (i5 >> 8) & 255;
            int i6 = i3 % 6;
            if (i6 != 0 || i3 == 0) {
                iArr[7] = i6;
            } else {
                iArr[7] = 6;
            }
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static void D0() {
        int i2 = 0;
        int i3 = y0.f.C0 & 127;
        int[] iArr = {134, 1, i3 | 128};
        if (i3 > 36) {
            iArr[2] = 164;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static int D1(int i2, int i3) {
        if (i3 == 0 || i2 <= 1) {
            return 0;
        }
        if (i2 == 0) {
            return 15;
        }
        return ((i2 - 1) * 10) / i3;
    }

    public static void E() {
        Q();
        int i2 = 0;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 5:
            case 6:
            case 11:
            case 12:
            case 13:
            case 14:
                break;
            case 1:
                int[] iArr = new int[6];
                int i3 = w0.d.f17798j;
                iArr[0] = 194;
                iArr[1] = 4;
                int i4 = w0.d.f17796h;
                if (i4 == 0) {
                    iArr[2] = 17;
                } else if (i4 != 1) {
                    switch (i4) {
                        case 65536:
                            iArr[2] = 1;
                            break;
                        case 65537:
                            iArr[2] = 2;
                            break;
                        case 65538:
                            iArr[2] = 3;
                            break;
                    }
                } else {
                    iArr[2] = 18;
                }
                int i5 = w0.d.f17797i;
                iArr[3] = i5 & 255;
                iArr[4] = (i5 >> 8) & 255;
                int[] iArr2 = new int[7];
                iArr2[0] = 227;
                while (i2 < 6) {
                    int i6 = i2 + 1;
                    iArr2[i6] = iArr[i2];
                    i2 = i6;
                }
                z.k.s(iArr2);
                break;
            case 4:
            case 7:
                int i7 = o0.e.f16794r;
                int[] iArr3 = {195, 6, o0.e.B, o0.e.C, 0, 0, (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
                int[] iArr4 = new int[9];
                iArr4[0] = 227;
                while (i2 < 8) {
                    int i8 = i2 + 1;
                    iArr4[i8] = iArr3[i2];
                    i2 = i8;
                }
                z.k.s(iArr4);
                break;
            case 8:
            case 10:
                int i9 = u0.b.t3;
                int[] iArr5 = {195, 6, u0.b.s3 & 255, u0.b.r3 & 255, 0, 0, (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i2 < 8) {
                    int i10 = i2 + 1;
                    iArr6[i10] = iArr5[i2];
                    i2 = i10;
                }
                z.k.s(iArr6);
                break;
            case 9:
            default:
                z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                break;
        }
    }

    public static int E0(int i2) {
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

    public static int E1(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 < 15) {
            return 1;
        }
        if (i2 < 30) {
            return 3;
        }
        if (i2 < 45) {
            return 5;
        }
        if (i2 < 60) {
            return 6;
        }
        if (i2 < 75) {
            return 7;
        }
        if (i2 < 90) {
            return 8;
        }
        return i2 < 105 ? 9 : 10;
    }

    public static void F() {
        int[] iArr = new int[18];
        for (int i2 = 0; i2 < 18; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 192;
        iArr[1] = 16;
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[2] = 70;
                iArr[3] = 77;
                iArr[4] = 49;
            } else if (i4 == 65537) {
                iArr[2] = 70;
                iArr[3] = 77;
                iArr[4] = 50;
            } else if (i4 == 65538) {
                iArr[2] = 70;
                iArr[3] = 77;
                iArr[4] = 51;
            } else if (i4 == 0) {
                iArr[2] = 65;
                iArr[3] = 77;
                iArr[4] = 49;
            } else if (i4 == 1) {
                iArr[2] = 65;
                iArr[3] = 77;
                iArr[4] = 50;
            }
            iArr[5] = 32;
            if (i4 < 65536 || i4 > 65538) {
                int i5 = w0.d.f17797i;
                iArr[6] = ((i5 / 1000) % 10) + 48;
                iArr[7] = ((i5 / 100) % 10) + 48;
                iArr[8] = ((i5 / 10) % 10) + 48;
                iArr[9] = (i5 % 10) + 48;
                iArr[10] = 75;
                iArr[11] = 104;
                iArr[12] = 122;
            } else {
                int i6 = w0.d.f17797i;
                if (i6 / 10000 == 0) {
                    iArr[6] = ((i6 / 1000) % 10) + 48;
                    iArr[7] = ((i6 / 100) % 10) + 48;
                    iArr[8] = 46;
                    iArr[9] = ((i6 / 10) % 10) + 48;
                    iArr[10] = (i6 % 10) + 48;
                    iArr[11] = 77;
                    iArr[12] = 104;
                    iArr[13] = 122;
                } else {
                    iArr[6] = (i6 / 10000) + 48;
                    iArr[7] = ((i6 / 1000) % 10) + 48;
                    iArr[8] = ((i6 / 100) % 10) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 / 10) % 10) + 48;
                    iArr[11] = (i6 % 10) + 48;
                    iArr[12] = 77;
                    iArr[13] = 104;
                    iArr[14] = 122;
                }
            }
        } else if (i3 == 2) {
            iArr[2] = 66;
            iArr[3] = 84;
            iArr[4] = 32;
            iArr[5] = 80;
            iArr[6] = 104;
            iArr[7] = 111;
            iArr[8] = 110;
            iArr[9] = 101;
        } else if (i3 == 3) {
            iArr[2] = 66;
            iArr[3] = 84;
            iArr[4] = 32;
            iArr[5] = 77;
            iArr[6] = 117;
            iArr[7] = 115;
            iArr[8] = 105;
            iArr[9] = 99;
        } else if (i3 == 5) {
            iArr[2] = 65;
            iArr[3] = 85;
            iArr[4] = 88;
        } else if (i3 == 8 || i3 == 10) {
            iArr[2] = 77;
            iArr[3] = 80;
            iArr[4] = 51;
            iArr[5] = 32;
            int i7 = u0.b.r3;
            iArr[6] = (i7 / 1000) + 48;
            iArr[7] = ((i7 % 1000) / 100) + 48;
            iArr[8] = ((i7 % 100) / 10) + 48;
            iArr[9] = (i7 % 10) + 48;
            iArr[10] = 47;
            int i8 = u0.b.s3;
            iArr[11] = (i8 / 1000) + 48;
            iArr[12] = ((i8 % 1000) / 100) + 48;
            iArr[13] = ((i8 % 100) / 10) + 48;
            iArr[14] = (i8 % 10) + 48;
        } else if (i3 == 13) {
            iArr[2] = 67;
            iArr[3] = 68;
        }
        int[] iArr2 = new int[19];
        iArr2[0] = 227;
        int i9 = 0;
        while (i9 < 18) {
            int i10 = i9 + 1;
            iArr2[i10] = iArr[i9];
            i9 = i10;
        }
        z.k.s(iArr2);
    }

    public static int F0(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 8;
        }
        return 5;
    }

    public static int F1(int i2) {
        if (i2 == 0 || i2 > 32) {
            return 15;
        }
        return ((i2 - 1) * 9) / 32;
    }

    public static void G() {
        int[] iArr = new int[10];
        int i2 = 0;
        for (int i3 = 0; i3 < 10; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 192;
        iArr[1] = 8;
        f0(iArr);
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
        r0();
    }

    public static int G0(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? 10 : 8;
        }
        return 2;
    }

    public static int G1(int i2) {
        switch (i2) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
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
            default:
                return 15;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003a  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b6 A[LOOP:1: B:51:0x00b4->B:52:0x00b6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
    public static void H() {
        int[] iArr;
        int[] iArr2 = new int[7];
        int i2 = 0;
        for (int i3 = 0; i3 < 7; i3++) {
            iArr2[i3] = 0;
        }
        iArr2[0] = 192;
        boolean z2 = true;
        iArr2[1] = 5;
        int i4 = u0.b.D;
        if (i4 == 1) {
            iArr2[2] = 1;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr2[3] = 0;
            } else if (i5 == 65537) {
                iArr2[3] = 1;
            } else if (i5 == 65538) {
                iArr2[3] = 2;
            } else if (i5 == 0 || i5 == 1) {
                iArr2[3] = 16;
            }
            if (i5 < 65536 || i5 > 65538) {
                int i6 = w0.d.f17797i;
                iArr2[4] = (i6 >> 8) & 255;
                iArr2[5] = i6 & 255;
            } else {
                int i7 = w0.d.f17797i;
                iArr2[4] = (i7 >> 8) & 255;
                iArr2[5] = i7 & 255;
            }
            int i8 = w0.d.f17798j;
            int i9 = i8 % 6;
            if (i9 != 0 || i8 == 0) {
                iArr2[6] = i9;
            } else {
                iArr2[6] = 6;
            }
            int i10 = w0.d.f17796h;
            if (i10 == 65536 || i10 == 65537 || i10 == 65538 ? w0.d.f17797i >= 2000 : (i10 != 0 && i10 != 1) || w0.d.f17797i <= 2000) {
            }
            iArr = new int[8];
            iArr[0] = 227;
            while (i2 < 7) {
                int i11 = i2 + 1;
                iArr[i11] = iArr2[i2];
                i2 = i11;
            }
            if (z2) {
            }
            z.k.s(iArr);
        }
        if (i4 == 13) {
            iArr2[2] = 2;
        } else if (i4 == 4) {
            iArr2[2] = 2;
            iArr2[3] = o0.e.C;
        } else if (i4 != 5) {
            switch (i4) {
                case 7:
                    iArr2[2] = 2;
                    iArr2[3] = o0.e.C;
                    break;
                case 8:
                case 9:
                case 10:
                    iArr2[2] = 8;
                    iArr2[3] = u0.b.r3;
                    break;
                default:
                    iArr2[2] = 12;
                    break;
            }
        } else {
            iArr2[2] = 7;
        }
        z2 = false;
        iArr = new int[8];
        iArr[0] = 227;
        while (i2 < 7) {
            int i12 = i2 + 1;
            iArr[i12] = iArr2[i2];
            i2 = i12;
        }
        if (z2) {
            z.k.s(iArr);
        }
    }

    public static int H0(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 8;
        }
        return 6;
    }

    public static int H1(int i2) {
        if (i2 < 25) {
            return 0;
        }
        if (i2 < 50) {
            return 1;
        }
        if (i2 < 75) {
            return 2;
        }
        if (i2 < 100) {
            return 3;
        }
        if (i2 < 125) {
            return 4;
        }
        if (i2 < 150) {
            return 5;
        }
        if (i2 < 175) {
            return 6;
        }
        if (i2 < 200) {
            return 7;
        }
        if (i2 < 225) {
            return 8;
        }
        return i2 < 254 ? 9 : 10;
    }

    public static void I() {
        int[] iArr = new int[16];
        int i2 = 0;
        iArr[0] = 198;
        iArr[1] = 14;
        Y(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17798j;
            int i5 = w0.d.f17796h;
            if (i5 >= 65536 && i5 <= 65538 && i4 >= 65536) {
                i4 -= 65536;
            }
            int i6 = w0.d.f17797i;
            iArr[3] = ((i6 >> 8) & 255) | 128;
            iArr[4] = i6 & 255;
            iArr[11] = 0;
            iArr[12] = i4;
            iArr[13] = (i6 >> 8) & 255;
            iArr[14] = i6 & 255;
        } else if (i3 == 4) {
            int i7 = o0.e.B;
            iArr[3] = i7 & 255;
            iArr[4] = (i7 >> 8) & 255;
        } else if (i3 == 8 || i3 == 10) {
            int i8 = u0.b.r3;
            iArr[3] = (i8 >> 8) & 255;
            iArr[4] = i8 & 255;
        }
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i2 < 16) {
            int i9 = i2 + 1;
            iArr2[i9] = iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    public static int I0(int i2) {
        return (i2 - 1) * 3;
    }

    public static int I1(int i2) {
        if (i2 == 0) {
            return 15;
        }
        return ((i2 - 1) * 3) + 1;
    }

    public static void J() {
        h0();
    }

    public static int J0(int i2) {
        return i2 * 2;
    }

    public static int J1(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 10 : 9;
        }
        return 5;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00c6  */
    public static void K() {
        j0();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[6];
            int i4 = w0.d.f17798j;
            iArr[0] = 194;
            iArr[1] = 4;
            int i5 = w0.d.f17796h;
            if (i5 == 0) {
                iArr[2] = 17;
            } else if (i5 != 1) {
                switch (i5) {
                    case 65536:
                        iArr[2] = 1;
                        if (i4 >= 65536) {
                            i4 -= 65536;
                        }
                        break;
                    case 65537:
                        iArr[2] = 2;
                        if (i4 >= 65536) {
                            i4 -= 65536;
                        }
                        break;
                    case 65538:
                        iArr[2] = 3;
                        if (i4 >= 65536) {
                            i4 -= 65536;
                        }
                        break;
                }
            } else {
                iArr[2] = 18;
            }
            int i6 = w0.d.f17797i;
            iArr[3] = i6 & 255;
            iArr[4] = (i6 >> 8) & 255;
            int i7 = i4 % 6;
            if (i7 != 0 || i4 == 0) {
                iArr[5] = i7;
            } else {
                iArr[5] = 6;
            }
            int[] iArr2 = new int[7];
            iArr2[0] = 227;
            while (i3 < 6) {
                int i8 = i3 + 1;
                iArr2[i8] = iArr[i3];
                i3 = i8;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 2) {
            int[] iArr3 = new int[3];
            iArr3[0] = 197;
            iArr3[1] = 1;
            int i9 = h0.c.E;
            if (i9 == 0) {
                iArr3[2] = 0;
            } else if (i9 == 2) {
                iArr3[2] = 3;
            } else if (i9 == 3) {
                iArr3[2] = 2;
            } else if (i9 == 4) {
                iArr3[2] = 1;
            }
            int[] iArr4 = new int[4];
            iArr4[0] = 227;
            while (i3 < 3) {
                int i10 = i3 + 1;
                iArr4[i10] = iArr3[i3];
                i3 = i10;
            }
            z.k.s(iArr4);
            return;
        }
        if (i2 == 4) {
            int[] iArr5 = {195, 4, o0.e.B & 255, o0.e.C & 255, 0, 0};
            int[] iArr6 = new int[7];
            iArr6[0] = 227;
            while (i3 < 6) {
                int i11 = i3 + 1;
                iArr6[i11] = iArr5[i3];
                i3 = i11;
            }
            z.k.s(iArr6);
            return;
        }
        if (i2 != 8 && i2 != 10) {
            z.k.s(227, 195, 4, 0, 0, 0, 0);
            return;
        }
        int i12 = u0.b.r3;
        int[] iArr7 = {195, 4, i12 & 255, (i12 >> 8) & 255, 0, 0};
        int[] iArr8 = new int[7];
        iArr8[0] = 227;
        while (i3 < 6) {
            int i13 = i3 + 1;
            iArr8[i13] = iArr7[i3];
            i3 = i13;
        }
        z.k.s(iArr8);
    }

    public static int K0(int i2) {
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 0;
        }
        return 3;
    }

    public static int K1(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return i2 - 1;
    }

    public static void L() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        i0(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17798j;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
                iArr[4] = 1;
            } else if (i5 == 65537) {
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
                iArr[4] = 2;
            } else if (i5 == 65538) {
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
                iArr[4] = 3;
            } else if (i5 == 0) {
                iArr[4] = 17;
            } else if (i5 == 1) {
                iArr[4] = 18;
            }
            int i6 = w0.d.f17797i;
            iArr[5] = i6 & 255;
            iArr[6] = (i6 >> 8) & 255;
            int i7 = i4 % 6;
            if (i7 != 0 || i4 == 0) {
                iArr[7] = i7;
            } else {
                iArr[7] = 6;
            }
        } else if (i3 != 4) {
            iArr[2] = 7;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i8 = i2 + 1;
            iArr2[i8] = iArr[i2];
            i2 = i8;
        }
        z.k.s(iArr2);
    }

    public static int L0(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 7;
            case 7:
                return 9;
            default:
                return 10;
        }
    }

    public static int L1(int i2) {
        return (i2 % 10) | (((i2 % 100) / 10) << 4);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0070  */
    public static void M() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 10) {
            iArr[2] = 8;
            iArr[3] = 19;
        } else if (i3 != 13) {
            switch (i3) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 1;
                    break;
                case 2:
                    iArr[2] = 5;
                    iArr[3] = 64;
                    break;
                case 3:
                    iArr[2] = 11;
                    iArr[3] = 19;
                    break;
                case 4:
                    int i4 = o0.e.H;
                    if (i4 == 1) {
                        iArr[2] = 2;
                        iArr[3] = 16;
                    } else if (i4 == 2 || i4 == 3) {
                        iArr[2] = 8;
                        iArr[3] = 17;
                    }
                    break;
                case 5:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 6:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 7:
                    iArr[2] = 6;
                    iArr[3] = 18;
                    break;
                case 8:
                    iArr[2] = 8;
                    iArr[3] = 19;
                    break;
                default:
                    iArr[2] = 4;
                    iArr[3] = 48;
                    break;
            }
        } else {
            iArr[2] = 12;
            iArr[3] = 34;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i5 = i2 + 1;
            iArr2[i5] = iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static int M0(int i2) {
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 8;
        }
        return 6;
    }

    public static boolean M1() {
        int i2 = nt.f8633a;
        return i2 == 196888 || i2 == 3670176;
    }

    public static void N() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                iArr[3] = 48;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 48;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i3 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                } else if (i3 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 9;
                iArr[3] = 17;
                break;
            case 9:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i4 = i2 + 1;
            iArr2[i4] = (byte) iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static int N0(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 == 3) {
            return 6;
        }
        if (i2 != 4) {
            return i2 != 5 ? 10 : 9;
        }
        return 8;
    }

    public static void N1(int i2, int i3, int i4) {
        if (!qt.k0() || f13022p) {
            return;
        }
        if (i2 == 1 && i3 == 0) {
            b0.o0(f13025s);
            f13024r = 5;
            f13026t = 0;
            f13028v = 0;
            if (qt.k0()) {
                u0.i.l3().g4(8192, true);
            }
        } else if (f13024r == 5) {
            b0.a(f13025s);
        }
        if (i3 == 1 && i2 == 0) {
            b0.o0(f13027u);
            f13026t = 5;
            f13024r = 0;
            f13028v = 0;
            if (qt.k0()) {
                u0.i.l3().g4(4096, true);
            }
        } else if (f13026t == 5) {
            b0.a(f13027u);
        }
        if ((i3 == 1 && i2 == 1) || i4 == 1) {
            b0.o0(f13029w);
            f13028v = 5;
            f13024r = 0;
            f13026t = 0;
            if (qt.k0()) {
                u0.d.I3(139, 1);
            }
        } else if (f13028v == 5) {
            b0.a(f13029w);
        }
        if (u0.b.J2 == i3 && u0.b.K2 == i2) {
            return;
        }
        u0.b.J2 = f13026t == 0 ? 0 : 1;
        u0.b.K2 = f13024r == 0 ? 0 : 1;
        u0.b.L2 = f13028v != 0 ? 1 : 0;
        u0.c.f17380g.c();
    }

    public static void O(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        iArr[2] = 7;
        switch (u0.b.D) {
            case 0:
            case 7:
            case 11:
            case 12:
                iArr[2] = 255;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 != 0) {
                    if (i2 != 1) {
                        switch (i2) {
                            case 65536:
                                iArr[2] = 1;
                                break;
                            case 65537:
                                iArr[2] = 1;
                                break;
                            case 65538:
                                iArr[2] = 1;
                                break;
                        }
                    } else {
                        iArr[2] = 2;
                        break;
                    }
                } else {
                    iArr[2] = 2;
                    break;
                }
                break;
            case 2:
            case 3:
                iArr[2] = 5;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 3;
                } else if (i3 == 2) {
                    iArr[2] = 6;
                } else if (i3 == 3) {
                    iArr[2] = 4;
                }
                break;
            case 5:
                iArr[2] = 7;
                break;
            case 6:
                iArr[2] = 255;
                break;
            case 8:
            case 10:
                iArr[2] = 4;
                break;
            case 13:
                iArr[2] = 3;
                break;
        }
    }

    public static int O0(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return (i2 - 1) / 3;
    }

    public static void P(int[] iArr) {
        int i2;
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 0:
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 16;
                break;
            case 3:
                iArr[2] = 5;
                iArr[3] = 48;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i3 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                } else if (i3 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 16;
                }
                break;
            case 6:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 7:
            case 11:
            case 12:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            case 9:
                iArr[2] = 13;
                iArr[3] = 34;
                break;
            case 13:
                iArr[2] = 2;
                iArr[3] = 33;
                break;
        }
        if (s0.m("sys.carlink.type", 0) > 0) {
            if (o1.u.S("com.syu.carlink") || (i2 = u0.b.D) == 10 || i2 == 12) {
                if ((nt.f8633a & 65535) == 439) {
                    iArr[2] = 11;
                    iArr[3] = 16;
                } else {
                    iArr[2] = 15;
                    iArr[3] = 0;
                }
            }
        }
    }

    public static int P0(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 8;
        }
        if (i2 == 2) {
            return 5;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    public static void Q() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 10) {
            iArr[2] = 8;
            iArr[3] = 16;
        } else if (i3 != 13) {
            switch (i3) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 1;
                    break;
                case 2:
                    iArr[2] = 5;
                    iArr[3] = 64;
                    break;
                case 3:
                    iArr[2] = 11;
                    iArr[3] = 16;
                    break;
                case 4:
                    int i4 = o0.e.H;
                    if (i4 == 1) {
                        iArr[2] = 2;
                        iArr[3] = 33;
                    } else if (i4 == 2) {
                        iArr[2] = 9;
                        iArr[3] = 33;
                    } else if (i4 == 3) {
                        iArr[2] = 8;
                        iArr[3] = 33;
                    }
                    break;
                case 5:
                    iArr[2] = 7;
                    iArr[3] = 48;
                    break;
                case 6:
                    iArr[2] = 3;
                    iArr[3] = 48;
                    break;
                case 7:
                    iArr[2] = 6;
                    iArr[3] = 18;
                    break;
                case 8:
                    iArr[2] = 8;
                    iArr[3] = 16;
                    break;
                default:
                    iArr[2] = 12;
                    iArr[3] = 48;
                    break;
            }
        } else {
            iArr[2] = 7;
            iArr[3] = 48;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i5 = i2 + 1;
            iArr2[i5] = iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static int Q0(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
                return 7;
            case 6:
                return 8;
            case 7:
                return 9;
            default:
                return 15;
        }
    }

    public static void R(int[] iArr) {
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
            case 10:
                iArr[2] = 8;
                break;
            case 9:
            default:
                iArr[2] = 8;
                break;
        }
    }

    public static int R0(int i2) {
        if (i2 == 0) {
            return 15;
        }
        return (i2 * 10) / 30;
    }

    public static void S(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        iArr[2] = 0;
        int i2 = u0.b.D;
        if (i2 == 1) {
            iArr[2] = 1;
            return;
        }
        if (i2 == 8 || i2 == 10) {
            iArr[2] = 8;
            return;
        }
        if (i2 != 4) {
            if (i2 != 5) {
                return;
            }
            iArr[2] = 7;
            return;
        }
        int i3 = o0.e.H;
        if (i3 == 1) {
            iArr[2] = 2;
        } else if (i3 == 2) {
            iArr[2] = 9;
        } else if (i3 == 3) {
            iArr[2] = 8;
        }
    }

    public static int S0(int i2) {
        if (i2 != 0) {
            if (i2 == 1 || i2 == 2) {
                return 0;
            }
            if (i2 == 3) {
                return 4;
            }
            if (i2 == 4) {
                return 7;
            }
        }
        return 10;
    }

    public static void T(int[] iArr) {
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
                iArr[2] = 5;
                break;
            case 4:
                iArr[2] = 9;
                break;
            case 5:
                iArr[2] = 7;
                break;
            case 6:
                iArr[2] = 0;
                break;
            case 7:
                iArr[2] = 6;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                break;
            case 9:
            default:
                iArr[2] = 0;
                break;
        }
    }

    public static int T0(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 7;
        }
        return 5;
    }

    public static void U(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        iArr[2] = 0;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 8:
            case 10:
                iArr[2] = 3;
                break;
            case 1:
                iArr[2] = 5;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 1;
                } else if (i2 == 2) {
                    iArr[2] = 4;
                } else if (i2 == 3) {
                    iArr[2] = 1;
                }
                break;
            case 5:
                iArr[2] = 3;
                break;
            case 6:
                iArr[2] = 3;
                break;
            case 7:
                iArr[2] = 2;
                break;
        }
    }

    public static int U0(int i2) {
        switch (i2) {
            case 0:
            default:
                return 255;
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 3;
            case 4:
                return 5;
            case 5:
                return 7;
            case 6:
                return 9;
        }
    }

    public static void V(int[] iArr) {
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 0;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public static int V0(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 4;
        }
        if (i2 != 4) {
            return i2 != 5 ? 255 : 9;
        }
        return 6;
    }

    public static void W(int[] iArr) {
        if (iArr == null || iArr.length < 5) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                int i2 = w0.d.f17796h;
                if (i2 != 0) {
                    if (i2 != 1) {
                        switch (i2) {
                            case 65536:
                                iArr[3] = 255;
                                iArr[4] = 17;
                                break;
                            case 65537:
                                iArr[3] = 255;
                                iArr[4] = 18;
                                break;
                            case 65538:
                                iArr[3] = 255;
                                iArr[4] = 19;
                                break;
                        }
                    } else {
                        iArr[3] = 255;
                        iArr[4] = 34;
                        break;
                    }
                } else {
                    iArr[3] = 255;
                    iArr[4] = 33;
                    break;
                }
                break;
            case 2:
                iArr[2] = 9;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                } else if (i3 == 2) {
                    iArr[2] = 3;
                } else if (i3 == 3) {
                    iArr[2] = 4;
                }
                break;
            case 5:
                iArr[2] = 7;
                break;
            case 6:
                iArr[2] = 10;
                break;
            case 7:
                iArr[2] = 5;
                break;
            case 8:
            case 10:
                iArr[2] = 4;
                break;
        }
    }

    public static int W0(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 7;
        }
        if (i2 != 2) {
            return i2 != 3 ? 10 : 0;
        }
        return 4;
    }

    public static void X() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 0) {
            iArr[2] = 0;
            iArr[3] = 48;
        } else if (i3 == 1) {
            iArr[2] = 1;
            iArr[3] = 1;
        } else if (i3 == 4) {
            int i4 = o0.e.H;
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                iArr[2] = 2;
                iArr[3] = 16;
            }
        } else if (i3 == 5) {
            iArr[2] = 7;
            iArr[3] = 48;
        } else if (i3 == 8 || i3 == 10) {
            iArr[2] = 2;
            iArr[3] = 16;
        } else {
            iArr[2] = 7;
            iArr[3] = 48;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i5 = i2 + 1;
            iArr2[i5] = (byte) iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static int X0(int i2) {
        if (i2 < 19) {
            return 0;
        }
        if (i2 < 39) {
            return 1;
        }
        if (i2 < 55) {
            return 2;
        }
        if (i2 < 71) {
            return 3;
        }
        if (i2 < 87) {
            return 4;
        }
        if (i2 < 103) {
            return 5;
        }
        if (i2 < 119) {
            return 6;
        }
        if (i2 < 137) {
            return 7;
        }
        if (i2 < 193) {
            return 8;
        }
        return i2 < 245 ? 9 : 10;
    }

    public static void Y(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 != 0) {
                    if (i2 != 1) {
                        switch (i2) {
                            case 65536:
                                iArr[2] = 0;
                                break;
                            case 65537:
                                iArr[2] = 0;
                                break;
                            case 65538:
                                iArr[2] = 0;
                                break;
                        }
                    } else {
                        iArr[2] = 1;
                        break;
                    }
                } else {
                    iArr[2] = 1;
                    break;
                }
                break;
            case 2:
                iArr[2] = 9;
                break;
            case 3:
                iArr[2] = 9;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                } else if (i3 == 2) {
                    iArr[2] = 3;
                } else if (i3 == 3) {
                    iArr[2] = 2;
                }
                break;
            case 5:
                iArr[2] = 7;
                break;
            case 6:
                iArr[2] = 7;
                break;
            case 7:
                iArr[2] = 5;
                break;
            case 8:
            case 10:
                iArr[2] = 2;
                break;
            case 9:
            default:
                iArr[2] = 31;
                break;
        }
    }

    public static int Y0(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 3;
        }
        if (i2 != 2) {
            return i2 != 3 ? 255 : 9;
        }
        return 6;
    }

    public static void Z(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                break;
            case 2:
            case 3:
                iArr[2] = 3;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                } else if (i2 == 2) {
                    iArr[2] = 4;
                } else if (i2 == 3) {
                    iArr[2] = 5;
                }
                break;
            case 5:
                iArr[2] = 3;
                break;
            case 6:
                iArr[2] = 3;
                break;
            case 7:
                iArr[2] = 3;
                break;
            case 8:
            case 10:
                iArr[2] = 5;
                break;
            case 9:
            default:
                iArr[2] = 3;
                break;
        }
    }

    public static int Z0(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 8;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 3;
        }
        return 6;
    }

    public static void a(int i2, int i3, int i4) {
        if (!qt.k0() || f13022p) {
            return;
        }
        if (i2 == 1 && i3 == 0) {
            f13024r = 20;
            u0.i.l3().g4(8192, true);
        } else {
            f13024r = 0;
            u0.i.l3().g4(8192, false);
        }
        if (i3 == 1 && i2 == 0) {
            f13026t = 20;
            u0.i.l3().g4(4096, true);
        } else {
            f13026t = 0;
            u0.i.l3().g4(4096, false);
        }
        if ((i3 == 1 && i2 == 1) || i4 == 1) {
            f13028v = 20;
            u0.d.I3(139, 1);
        } else {
            f13028v = 0;
            u0.d.I3(139, 0);
        }
        if (u0.b.J2 == i3 && u0.b.K2 == i2) {
            return;
        }
        u0.b.J2 = f13026t == 0 ? 0 : 1;
        u0.b.K2 = f13024r == 0 ? 0 : 1;
        u0.b.L2 = f13028v != 0 ? 1 : 0;
        u0.c.f17380g.c();
    }

    public static void a0(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        iArr[2] = 7;
        iArr[3] = 48;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 19;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 19;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
            case 11:
            case 12:
            case 13:
            case 14:
                break;
            case 6:
                if (d1.d.f1570c != 1) {
                    iArr[2] = 10;
                } else {
                    iArr[2] = 3;
                }
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                if (j4.f16464b != 11) {
                    iArr[2] = 8;
                    iArr[3] = 255;
                } else {
                    iArr[2] = 8;
                    iArr[3] = 19;
                }
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public static int a1(int i2) {
        return (i2 * 10) / i.a.Theme_dialogTitleDecorLayout;
    }

    public static void b(int i2, int i3, int i4) {
        if (M1() || (qt.k0() && !f13022p)) {
            if (i2 == 1 && i3 == 0) {
                b0.o0(f13025s);
                f13024r = 20;
                f13026t = 0;
                f13028v = 0;
                if (M1()) {
                    qt.a(1);
                } else if (qt.k0()) {
                    u0.i.l3().g4(8192, true);
                }
            } else if (f13024r == 20) {
                b0.a(f13025s);
            }
            if (i3 == 1 && i2 == 0) {
                b0.o0(f13027u);
                f13026t = 20;
                f13024r = 0;
                f13028v = 0;
                if (M1()) {
                    qt.a(1);
                } else if (qt.k0()) {
                    u0.i.l3().g4(4096, true);
                }
            } else if (f13026t == 20) {
                b0.a(f13027u);
            }
            if ((i3 == 1 && i2 == 1) || i4 == 1) {
                b0.o0(f13029w);
                f13028v = 20;
                f13024r = 0;
                f13026t = 0;
                if (M1()) {
                    qt.a(1);
                } else if (qt.k0()) {
                    u0.d.I3(139, 1);
                }
            } else if (f13028v == 20) {
                b0.a(f13029w);
            }
            if (u0.b.J2 == i3 && u0.b.K2 == i2) {
                return;
            }
            u0.b.J2 = f13026t == 0 ? 0 : 1;
            u0.b.K2 = f13024r == 0 ? 0 : 1;
            u0.b.L2 = f13028v != 0 ? 1 : 0;
            u0.c.f17380g.c();
        }
    }

    public static void b0(int[] iArr) {
        if (iArr == null || iArr.length < 7) {
            return;
        }
        for (int i2 = 2; i2 < iArr.length; i2++) {
            iArr[i2] = 32;
        }
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 == 0) {
                    iArr[2] = 74;
                    iArr[3] = 77;
                    iArr[4] = 49;
                    break;
                } else if (i3 == 1) {
                    iArr[2] = 74;
                    iArr[3] = 77;
                    iArr[4] = 50;
                    break;
                } else {
                    switch (i3) {
                        case 65536:
                            iArr[2] = 70;
                            iArr[3] = 77;
                            iArr[4] = 49;
                            break;
                        case 65537:
                            iArr[2] = 70;
                            iArr[3] = 77;
                            iArr[4] = 50;
                            break;
                        case 65538:
                            iArr[2] = 70;
                            iArr[3] = 77;
                            iArr[4] = 51;
                            break;
                    }
                }
                break;
            case 2:
                iArr[2] = 80;
                iArr[3] = 72;
                iArr[4] = 79;
                iArr[5] = 78;
                iArr[6] = 69;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    iArr[2] = 68;
                    iArr[3] = 86;
                    iArr[3] = 68;
                } else if (i4 == 2) {
                    iArr[2] = 83;
                    iArr[3] = 86;
                } else if (i4 == 3) {
                    iArr[2] = 85;
                    iArr[3] = 83;
                    iArr[4] = 66;
                }
                break;
            case 5:
                iArr[2] = 74;
                iArr[3] = 85;
                iArr[4] = 88;
                break;
            case 6:
                iArr[2] = 84;
                iArr[3] = 86;
                break;
            case 7:
                iArr[2] = 73;
                iArr[3] = 80;
                iArr[4] = 79;
                iArr[5] = 68;
                break;
            case 8:
            case 10:
                iArr[2] = 77;
                iArr[3] = 80;
                iArr[4] = 51;
                break;
        }
    }

    public static int b1(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 7;
        }
        return 4;
    }

    public static void c(int i2, int i3, int i4) {
        if (!qt.k0() || f13022p) {
            return;
        }
        if (i2 == 1 && i3 == 0) {
            b0.o0(f13025s);
            f13024r = 15;
            f13026t = 0;
            f13028v = 0;
            u0.i.l3().g4(8192, true);
        } else if (f13024r == 15) {
            b0.a(f13025s);
        }
        if (i3 == 1 && i2 == 0) {
            b0.o0(f13027u);
            f13026t = 15;
            f13024r = 0;
            f13028v = 0;
            u0.i.l3().g4(4096, true);
        } else if (f13026t == 15) {
            b0.a(f13027u);
        }
        if (i4 != 1) {
            if (f13028v == 15) {
                b0.a(f13029w);
            }
        } else {
            b0.o0(f13029w);
            f13028v = 15;
            f13024r = 0;
            f13026t = 0;
            u0.d.I3(139, 1);
        }
    }

    public static void c0(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[1] = 5;
                iArr[2] = 1;
                break;
            case 2:
                break;
            case 3:
                iArr[1] = 4;
                iArr[2] = 11;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[1] = 4;
                    iArr[2] = 8;
                } else if (i2 == 2) {
                    iArr[1] = 4;
                    iArr[2] = 8;
                } else if (i2 == 3) {
                    iArr[1] = 4;
                    iArr[2] = 8;
                }
                break;
            case 5:
                iArr[1] = 1;
                iArr[2] = 7;
                break;
            case 6:
                iArr[1] = 1;
                iArr[2] = 7;
                break;
            case 7:
                iArr[1] = 1;
                iArr[2] = 7;
                break;
            case 8:
            case 10:
                iArr[1] = 4;
                iArr[2] = 8;
                break;
            case 9:
            default:
                iArr[1] = 1;
                iArr[2] = 4;
                break;
        }
    }

    public static int c1(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 8;
        }
        if (i2 == 2) {
            return 5;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 1;
        }
        return 3;
    }

    public static void d() {
        int[] iArr = new int[9];
        int i2 = 0;
        iArr[0] = 132;
        iArr[1] = 7;
        iArr[2] = 6;
        switch (y0.f.f18032a0) {
            case 1:
                iArr[3] = 78;
                iArr[4] = 79;
                iArr[5] = 82;
                iArr[6] = 77;
                iArr[7] = 65;
                iArr[8] = 76;
                break;
            case 2:
                iArr[3] = 82;
                iArr[4] = 79;
                iArr[5] = 67;
                iArr[6] = 75;
                iArr[7] = 32;
                iArr[8] = 32;
                break;
            case 3:
                iArr[3] = 83;
                iArr[4] = 79;
                iArr[5] = 70;
                iArr[6] = 84;
                iArr[7] = 32;
                iArr[8] = 32;
                break;
            case 4:
                iArr[3] = 67;
                iArr[4] = 76;
                iArr[5] = 65;
                iArr[6] = 83;
                iArr[7] = 83;
                iArr[8] = 73;
                break;
            case 5:
                iArr[3] = 32;
                iArr[4] = 80;
                iArr[5] = 79;
                iArr[6] = 80;
                iArr[7] = 32;
                iArr[8] = 32;
                break;
            case 6:
                iArr[3] = 72;
                iArr[4] = 65;
                iArr[5] = 76;
                iArr[6] = 76;
                iArr[7] = 32;
                iArr[8] = 32;
                break;
            case 7:
                iArr[3] = 74;
                iArr[4] = 65;
                iArr[5] = 90;
                iArr[6] = 90;
                iArr[7] = 32;
                iArr[8] = 32;
                break;
            case 8:
                iArr[3] = 67;
                iArr[4] = 73;
                iArr[5] = 78;
                iArr[6] = 69;
                iArr[7] = 77;
                iArr[8] = 65;
                break;
            default:
                iArr[3] = 67;
                iArr[4] = 85;
                iArr[5] = 83;
                iArr[6] = 84;
                iArr[7] = 79;
                iArr[8] = 77;
                break;
        }
        int[] iArr2 = new int[10];
        iArr2[0] = 227;
        while (i2 < 9) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public static void d0(int[] iArr) {
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
                iArr[2] = 11;
                break;
            case 4:
                iArr[2] = 8;
                break;
            case 5:
                iArr[2] = 0;
                break;
            case 6:
                iArr[2] = 0;
                break;
            case 7:
                iArr[2] = 8;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                break;
            case 9:
            default:
                iArr[2] = 0;
                break;
        }
    }

    public static int d1(int i2) {
        if (i2 == 1) {
            return 8;
        }
        if (i2 == 2) {
            return 5;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 0;
        }
        return 3;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x010f  */
    public static void e() {
        M();
        int i2 = 0;
        switch (u0.b.D) {
            case 0:
            case 3:
            case 5:
            case 6:
            case 7:
            case 11:
            case 12:
            case 13:
            case 14:
                break;
            case 1:
                int[] iArr = new int[6];
                int i3 = w0.d.f17798j;
                iArr[0] = 194;
                iArr[1] = 4;
                int i4 = w0.d.f17796h;
                if (i4 != 0 && i4 != 1) {
                    switch (i4) {
                        case 65536:
                            iArr[2] = 1;
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            break;
                        case 65537:
                            iArr[2] = 2;
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            break;
                        case 65538:
                            iArr[2] = 0;
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            break;
                    }
                } else {
                    iArr[2] = 16;
                }
                int i5 = w0.d.f17797i;
                iArr[3] = i5 & 255;
                iArr[4] = (i5 >> 8) & 255;
                int i6 = i3 % 6;
                if (i6 != 0 || i3 == 0) {
                    iArr[5] = i6;
                } else {
                    iArr[5] = 6;
                }
                int[] iArr2 = new int[7];
                iArr2[0] = 227;
                while (i2 < 6) {
                    int i7 = i2 + 1;
                    iArr2[i7] = iArr[i2];
                    i2 = i7;
                }
                z.k.s(iArr2);
                break;
            case 2:
                int i8 = h0.c.E;
                if (i8 == 3) {
                    z.k.s(227, 195, 6, 2, 0, 0, 0, 0, 0);
                } else if (i8 == 4) {
                    z.k.s(227, 195, 6, 1, 0, 0, 0, 0, 0);
                } else if (i8 == 5) {
                    z.k.s(227, 195, 6, 3, 0, 0, 0, 0, 0);
                } else {
                    z.k.s(227, 195, 6, 4, 0, 0, 0, 0, 0);
                }
                break;
            case 4:
                int[] iArr3 = new int[8];
                iArr3[0] = 195;
                iArr3[1] = 6;
                if (o0.e.H == 1) {
                    iArr3[2] = o0.e.C;
                    iArr3[3] = o0.e.B;
                    int i9 = o0.e.f16794r;
                    iArr3[6] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                    iArr3[7] = i9 % 60;
                } else {
                    int i10 = o0.e.C;
                    iArr3[2] = i10 & 255;
                    iArr3[3] = (i10 >> 8) & 255;
                    int i11 = o0.e.B;
                    iArr3[4] = i11 & 255;
                    iArr3[5] = (i11 >> 8) & 255;
                    int i12 = o0.e.f16794r;
                    iArr3[6] = (i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                    iArr3[7] = i12 % 60;
                }
                int[] iArr4 = new int[9];
                iArr4[0] = 227;
                while (i2 < 8) {
                    int i13 = i2 + 1;
                    iArr4[i13] = iArr3[i2];
                    i2 = i13;
                }
                z.k.s(iArr4);
                break;
            case 8:
            case 10:
                int i14 = u0.b.s3;
                int i15 = u0.b.r3;
                int i16 = u0.b.t3;
                int[] iArr5 = {195, 6, i14 & 255, (i14 >> 8) & 255, i15 & 255, (i15 >> 8) & 255, (i16 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i16 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i2 < 8) {
                    int i17 = i2 + 1;
                    iArr6[i17] = iArr5[i2];
                    i2 = i17;
                }
                z.k.s(iArr6);
                break;
            case 9:
            default:
                z.k.s(227, 194, 4, 0, 0, 0, 0);
                z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                break;
        }
    }

    public static void e0(int[] iArr) {
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 0;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 8;
                    iArr[3] = 0;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 0;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 0;
                }
                break;
            case 5:
                iArr[2] = 8;
                iArr[3] = 0;
                break;
            case 6:
                iArr[2] = 8;
                iArr[3] = 0;
                break;
            case 7:
                iArr[2] = 8;
                iArr[3] = 0;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 0;
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public static int e1(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 8;
        }
        return 6;
    }

    public static void f() {
        l0();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 != 1) {
            if (i2 != 3) {
                if (i2 == 4) {
                    int i4 = o0.e.f16794r;
                    int[] iArr = {195, 6, o0.e.C, o0.e.B, 0, 0, i4 / 60, i4 % 60};
                    int[] iArr2 = new int[9];
                    iArr2[0] = 227;
                    while (i3 < 8) {
                        int i5 = i3 + 1;
                        iArr2[i5] = iArr[i3];
                        i3 = i5;
                    }
                    z.k.s(iArr2);
                    return;
                }
                if (i2 != 8 && i2 != 9) {
                    z.k.s(227, 194, 4, 0, 0, 0, 0);
                    z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                    return;
                }
            }
            int i6 = u0.b.r3;
            int i7 = u0.b.s3;
            int i8 = u0.b.t3;
            int[] iArr3 = {195, 6, i6 & 255, (i6 >> 8) & 255, i7 & 255, (i7 >> 8) & 255, i8 / 60, i8 % 60};
            int[] iArr4 = new int[9];
            iArr4[0] = 227;
            while (i3 < 8) {
                int i9 = i3 + 1;
                iArr4[i9] = iArr3[i3];
                i3 = i9;
            }
            z.k.s(iArr4);
            return;
        }
        int[] iArr5 = new int[6];
        iArr5[0] = 194;
        iArr5[1] = 4;
        int i10 = w0.d.f17796h;
        if (i10 == 0) {
            iArr5[2] = 17;
        } else if (i10 != 1) {
            switch (i10) {
                case 65536:
                    iArr5[2] = 1;
                    break;
                case 65537:
                    iArr5[2] = 2;
                    break;
                case 65538:
                    iArr5[2] = 3;
                    break;
            }
        } else {
            iArr5[2] = 18;
        }
        int i11 = w0.d.f17797i;
        iArr5[3] = i11 & 255;
        iArr5[4] = (i11 >> 8) & 255;
        iArr5[5] = w0.d.f17798j;
        if (iArr5[5] == 0) {
            iArr5[5] = 6;
        }
        int[] iArr6 = new int[7];
        iArr6[0] = 227;
        while (i3 < 6) {
            int i12 = i3 + 1;
            iArr6[i12] = iArr5[i3];
            i3 = i12;
        }
        z.k.s(iArr6);
    }

    public static void f0(int[] iArr) {
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 == 0 || i2 == 1) {
                    iArr[2] = 1;
                    iArr[3] = 29;
                } else {
                    switch (i2) {
                        case 65536:
                        case 65537:
                        case 65538:
                            iArr[2] = 1;
                            iArr[3] = 0;
                    }
                }
                break;
            case 2:
            case 3:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 0;
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public static int f1(int i2) {
        switch (i2) {
            case 0:
            default:
                return 15;
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 6;
            case 5:
                return 8;
            case 6:
                return 9;
        }
    }

    public static void g() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 8;
        k0(iArr);
        if (u0.b.D == 1) {
            int i3 = w0.d.f17798j;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                if (i3 >= 65536) {
                    i3 -= 65536;
                }
                iArr[4] = 1;
            } else if (i4 == 65537) {
                if (i3 >= 65536) {
                    i3 -= 65536;
                }
                iArr[4] = 2;
            } else if (i4 == 65538) {
                if (i3 >= 65536) {
                    i3 -= 65536;
                }
                iArr[4] = 3;
            } else if (i4 == 0) {
                iArr[4] = 17;
            } else if (i4 == 1) {
                iArr[4] = 18;
            }
            int i5 = w0.d.f17797i;
            iArr[5] = i5 & 255;
            iArr[6] = (i5 >> 8) & 255;
            int i6 = i3 % 6;
            if (i6 != 0 || i3 == 0) {
                iArr[7] = i6;
            } else {
                iArr[7] = 6;
            }
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static void g0() {
        int[] iArr = new int[3];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 1;
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                break;
            case 2:
                iArr[2] = 8;
                break;
            case 3:
            case 9:
            default:
                iArr[2] = 8;
                break;
            case 4:
                iArr[2] = 2;
                break;
            case 5:
                iArr[2] = 3;
                break;
            case 6:
                iArr[2] = 8;
                break;
            case 7:
                iArr[2] = 4;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                break;
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

    public static int g1(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 30) {
            return (i2 / 3) + 1;
        }
        return 9;
    }

    public static void h() {
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 132;
        iArr[1] = 5;
        m0(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            iArr[5] = (i4 >> 8) & 255;
            iArr[6] = i4 & 255;
        } else if (i3 == 4) {
            int i5 = o0.e.A;
            if (i5 == 3 || i5 == 1) {
                iArr[3] = iArr[3] | 16;
            } else {
                iArr[3] = 1 | iArr[3];
            }
            if (o0.e.P != 0) {
                iArr[3] = iArr[3] | 4;
            }
            if (o0.e.O != 0) {
                iArr[3] = iArr[3] | 2;
            }
            int i6 = o0.e.B;
            int i7 = ((i6 >> 8) << 6) | 192;
            iArr[4] = i6;
            int i8 = o0.e.f16794r;
            iArr[5] = i7 | (((i8 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) & 63);
            iArr[6] = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
        } else if (i3 == 8 || i3 == 10) {
            int i9 = u0.b.r3;
            int i10 = ((i9 >> 8) << 6) | 192;
            iArr[4] = i9;
            int i11 = u0.b.t3;
            iArr[5] = i10 | (((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) & 63);
            iArr[6] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i12 = i2 + 1;
            iArr2[i12] = iArr[i2];
            i2 = i12;
        }
        z.k.s(iArr2);
    }

    public static void h0() {
        int[] iArr = new int[3];
        int i2 = 0;
        iArr[0] = 134;
        iArr[1] = 1;
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                break;
            case 2:
                iArr[2] = 5;
                break;
            case 3:
                iArr[2] = 7;
                break;
            case 4:
                if (o0.e.H != 1) {
                    iArr[2] = 4;
                } else {
                    iArr[2] = 2;
                }
                break;
            case 5:
                iArr[2] = 3;
                break;
            case 6:
                iArr[2] = 8;
                break;
            case 7:
                iArr[2] = 4;
                break;
            case 8:
            case 10:
                iArr[2] = 4;
                break;
            case 9:
            default:
                iArr[2] = 3;
                break;
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

    public static int h1(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 8;
        }
        return 5;
    }

    public static void i() {
        int i2;
        int i3;
        int i4;
        int[] iArr = new int[8];
        int i5 = 0;
        iArr[0] = 192;
        iArr[1] = 6;
        n0(iArr);
        int i6 = u0.b.D;
        if (i6 == 1) {
            int i7 = w0.d.f17798j;
            int i8 = w0.d.f17796h;
            if (i8 < 65536 || i8 > 65538) {
                int i9 = w0.d.f17797i;
                i2 = i9 / 100;
                i3 = i9 % 100;
                i4 = 0;
            } else {
                int i10 = w0.d.f17797i;
                i2 = (i10 % 10000) / 100;
                i3 = (i10 % 10000) % 100;
                i4 = i10 >= 10000 ? i10 / 10000 : 0;
                if (i7 >= 65536) {
                    i7 -= 65536;
                }
            }
            iArr[5] = L1(i2);
            iArr[6] = L1(i3);
            int i11 = i7 % 6;
            iArr[4] = L1(((i4 << 3) | ((i11 != 0 || i7 == 0) ? i11 : 6)) & 255);
        } else if (i6 == 4) {
            int i12 = o0.e.B;
            iArr[4] = (i12 >> 8) & 255;
            iArr[5] = i12 & 255;
            int i13 = o0.e.C;
            iArr[6] = (i13 >> 8) & 255;
            iArr[7] = i13 & 255;
        } else if (i6 == 8 || i6 == 10) {
            int i14 = u0.b.r3;
            iArr[4] = (i14 >> 8) & 255;
            iArr[5] = i14 & 255;
            int i15 = u0.b.s3;
            iArr[6] = (i15 >> 8) & 255;
            iArr[7] = i15 & 255;
        }
        int[] iArr2 = new int[9];
        iArr2[0] = 227;
        while (i5 < 8) {
            int i16 = i5 + 1;
            iArr2[i16] = iArr[i5];
            i5 = i16;
        }
        z.k.s(iArr2);
    }

    public static void i0(int[] iArr) {
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                break;
            case 2:
                iArr[2] = 7;
                break;
            case 3:
                iArr[2] = 7;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 16;
                } else if (i2 == 3) {
                    iArr[2] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                break;
            case 6:
                iArr[2] = 7;
                break;
            case 7:
                iArr[2] = 16;
                break;
            case 8:
            case 10:
                iArr[2] = 7;
                break;
            case 9:
            default:
                iArr[2] = 7;
                break;
        }
    }

    public static int i1(int i2) {
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 7;
        }
        if (i2 == 3) {
            return 5;
        }
        if (i2 != 4) {
            return i2 != 5 ? 10 : 0;
        }
        return 3;
    }

    public static void j() {
        int[] iArr = new int[6];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 4;
        o0(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 < 65536 || i4 > 65538) {
                int i5 = w0.d.f17797i;
                iArr[3] = (i5 >> 8) & 255;
                iArr[4] = i5 & 255;
            } else {
                int i6 = w0.d.f17797i / 10;
                iArr[3] = (i6 >> 8) & 255;
                iArr[4] = i6 & 255;
            }
        } else if (i3 == 4) {
            int i7 = o0.e.B;
            iArr[3] = (i7 >> 8) & 255;
            iArr[4] = i7 & 255;
        } else if (i3 == 6) {
            int i8 = d1.d.f1572e;
            iArr[3] = (i8 >> 8) & 255;
            iArr[4] = i8 & 255;
        } else if (i3 == 8 || i3 == 10) {
            int i9 = u0.b.r3;
            iArr[3] = (i9 >> 8) & 255;
            iArr[4] = i9 & 255;
        }
        int[] iArr2 = new int[7];
        iArr2[0] = 227;
        while (i2 < 6) {
            int i10 = i2 + 1;
            iArr2[i10] = iArr[i2];
            i2 = i10;
        }
        z.k.s(iArr2);
    }

    public static void j0() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        switch (u0.b.D) {
            case 0:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 3:
                iArr[2] = 8;
                iArr[3] = 18;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 33;
                } else if (i3 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 33;
                } else if (i3 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 33;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 18;
                break;
            case 9:
            default:
                iArr[2] = 12;
                iArr[3] = 48;
                break;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static int j1(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 8;
        }
        return 6;
    }

    public static void k() {
        int[] iArr = new int[6];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 4;
        q0(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 < 65536 || i4 > 65538) {
                int i5 = w0.d.f17797i;
                iArr[3] = (i5 >> 8) & 255;
                iArr[4] = i5 & 255;
            } else {
                int i6 = w0.d.f17797i / 10;
                iArr[3] = (i6 >> 8) & 255;
                iArr[4] = i6 & 255;
            }
        } else if (i3 == 4) {
            int i7 = o0.e.B;
            iArr[3] = (i7 >> 8) & 255;
            iArr[4] = i7 & 255;
        } else if (i3 != 6) {
            if (i3 == 8 || i3 == 10) {
                int i8 = u0.b.r3;
                iArr[3] = (i8 >> 8) & 255;
                iArr[4] = i8 & 255;
            }
        } else if (d1.d.f1570c == 1) {
            iArr[3] = 0;
            iArr[4] = d1.d.f1572e;
        } else {
            iArr[3] = 0;
            iArr[4] = 0;
        }
        int[] iArr2 = new int[7];
        iArr2[0] = 227;
        while (i2 < 6) {
            int i9 = i2 + 1;
            iArr2[i9] = iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    public static void k0(int[] iArr) {
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 5;
                iArr[3] = 48;
                break;
            case 3:
                iArr[2] = 5;
                iArr[3] = 255;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 48;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 48;
                } else if (i2 == 3) {
                    iArr[2] = 9;
                    iArr[3] = 48;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 48;
                break;
            case 8:
                iArr[2] = 9;
                iArr[3] = 255;
                break;
            case 9:
            default:
                iArr[2] = 192;
                iArr[3] = 48;
                break;
            case 10:
                iArr[2] = 9;
                iArr[3] = 48;
                break;
        }
    }

    public static int k1(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 != 2) {
            return i2 != 255 ? 10 : 255;
        }
        return 5;
    }

    public static void l() {
        int[] iArr = new int[35];
        iArr[0] = 144;
        iArr[1] = 33;
        O(iArr);
        int i2 = u0.b.D;
        if (i2 == 1) {
            int i3 = w0.d.f17796h;
            if (i3 == 65536) {
                iArr[4] = 70;
                iArr[6] = 77;
                iArr[8] = 49;
            } else if (i3 == 65537) {
                iArr[4] = 70;
                iArr[6] = 77;
                iArr[8] = 50;
            } else if (i3 == 65538) {
                iArr[4] = 70;
                iArr[6] = 77;
                iArr[8] = 51;
            } else if (i3 == 0) {
                iArr[4] = 65;
                iArr[6] = 77;
                iArr[8] = 49;
            } else if (i3 == 1) {
                iArr[4] = 65;
                iArr[6] = 77;
                iArr[8] = 50;
            }
            iArr[10] = 32;
            if (i3 < 65536 || i3 > 65538) {
                int i4 = w0.d.f17797i;
                if ((i4 / 1000) % 10 != 0) {
                    iArr[12] = ((i4 / 1000) % 10) + 48;
                    iArr[14] = ((i4 / 100) % 10) + 48;
                    iArr[16] = ((i4 / 10) % 10) + 48;
                    iArr[18] = (i4 % 10) + 48;
                    iArr[20] = 32;
                    iArr[22] = 75;
                    iArr[24] = 104;
                    iArr[26] = 122;
                } else {
                    iArr[12] = ((i4 / 100) % 10) + 48;
                    iArr[14] = ((i4 / 10) % 10) + 48;
                    iArr[16] = (i4 % 10) + 48;
                    iArr[18] = 32;
                    iArr[20] = 75;
                    iArr[22] = 104;
                    iArr[24] = 122;
                }
            } else {
                int i5 = w0.d.f17797i;
                if (i5 / 10000 != 0) {
                    iArr[12] = (i5 / 10000) + 48;
                    iArr[14] = ((i5 / 1000) % 10) + 48;
                    iArr[16] = ((i5 / 100) % 10) + 48;
                    iArr[18] = 46;
                    iArr[20] = ((i5 / 10) % 10) + 48;
                    iArr[22] = (i5 % 10) + 48;
                    iArr[24] = 32;
                    iArr[26] = 77;
                    iArr[28] = 104;
                    iArr[30] = 122;
                } else {
                    iArr[12] = ((i5 / 1000) % 10) + 48;
                    iArr[14] = ((i5 / 100) % 10) + 48;
                    iArr[16] = 46;
                    iArr[18] = ((i5 / 10) % 10) + 48;
                    iArr[20] = (i5 % 10) + 48;
                    iArr[22] = 32;
                    iArr[24] = 77;
                    iArr[26] = 104;
                    iArr[28] = 122;
                }
            }
            int i6 = w0.d.f17796h;
            if (i6 < 65536 || i6 > 65538) {
                int i7 = w0.d.f17797i;
                iArr[33] = (i7 >> 8) & 255;
                iArr[34] = i7 & 255;
            } else {
                int i8 = w0.d.f17797i;
                iArr[33] = ((i8 / 10) >> 8) & 255;
                iArr[34] = (i8 / 10) & 255;
            }
        } else if (i2 == 2) {
            iArr[4] = 66;
            iArr[6] = 84;
            iArr[8] = 32;
            iArr[10] = 80;
            iArr[12] = 104;
            iArr[14] = 111;
            iArr[16] = 110;
            iArr[18] = 101;
        } else if (i2 == 3) {
            iArr[4] = 66;
            iArr[6] = 84;
            iArr[8] = 32;
            iArr[10] = 77;
            iArr[12] = 117;
            iArr[14] = 115;
            iArr[16] = 105;
            iArr[18] = 99;
        } else if (i2 == 4) {
            int i9 = o0.e.H;
            if (i9 == 1) {
                iArr[4] = 68;
                iArr[6] = 86;
                iArr[8] = 68;
            } else if (i9 == 2) {
                iArr[4] = 83;
                iArr[6] = 68;
                iArr[8] = 32;
            } else if (i9 == 3) {
                iArr[4] = 85;
                iArr[6] = 83;
                iArr[8] = 66;
            }
            iArr[10] = 32;
            int i10 = o0.e.f16794r;
            iArr[12] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 100) + 48;
            iArr[14] = ((((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) % 10) + 48;
            iArr[16] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[18] = 58;
            iArr[20] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) / 100) + 48;
            iArr[22] = ((((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) / 10) % 10) + 48;
            iArr[24] = (((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) % 10) + 48;
        } else if (i2 == 5) {
            iArr[4] = 65;
            iArr[6] = 85;
            iArr[8] = 88;
        } else if (i2 == 8 || i2 == 10) {
            iArr[4] = 77;
            iArr[6] = 80;
            iArr[8] = 51;
            iArr[10] = 32;
            int i11 = u0.b.t3;
            iArr[12] = (((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 100) + 48;
            iArr[14] = ((((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) % 10) + 48;
            iArr[16] = (((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[18] = 58;
            iArr[20] = (((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) / 100) + 48;
            iArr[22] = ((((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) / 10) % 10) + 48;
            iArr[24] = (((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) % 10) + 48;
            int i12 = u0.b.r3;
            iArr[33] = (i12 >> 8) & 255;
            iArr[34] = i12 & 255;
        } else if (i2 == 13) {
            iArr[4] = 67;
            iArr[6] = 68;
        }
        int[] iArr2 = new int[36];
        int i13 = 0;
        iArr2[0] = 227;
        while (i13 < 35) {
            int i14 = i13 + 1;
            iArr2[i14] = iArr[i13];
            i13 = i14;
        }
        z.k.s(iArr2);
    }

    public static void l0() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
            case 3:
                iArr[2] = 5;
                iArr[3] = 64;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i3 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 16;
                } else if (i3 == 3) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 18;
                break;
            default:
                iArr[2] = 11;
                iArr[3] = 16;
                break;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i4 = i2 + 1;
            iArr2[i4] = (byte) iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static int l1(int i2) {
        if (i2 == 1) {
            return 8;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 == 3) {
            return 2;
        }
        if (i2 != 4) {
            return i2 != 255 ? 10 : 255;
        }
        return 0;
    }

    public static void m() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        P(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[4] = 1;
            } else if (i4 == 65537) {
                iArr[4] = 2;
            } else if (i4 == 65538) {
                iArr[4] = 3;
            } else if (i4 == 0) {
                iArr[4] = 17;
            } else if (i4 == 1) {
                iArr[4] = 18;
            }
            int i5 = w0.d.f17797i;
            iArr[5] = i5 & 255;
            iArr[6] = (i5 >> 8) & 255;
            iArr[7] = w0.d.f17798j;
        } else if (i3 == 8 || i3 == 10 || i3 == 3) {
            iArr[4] = 0;
            iArr[5] = u0.b.r3;
            iArr[6] = u0.b.s3;
            int i6 = u0.b.t3;
            iArr[7] = i6 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        } else if (i3 == 4) {
            iArr[4] = 0;
            iArr[5] = o0.e.B;
            iArr[6] = o0.e.C;
            int i7 = o0.e.f16794r;
            iArr[7] = i7 % BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i7 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i8 = i2 + 1;
            iArr2[i8] = iArr[i2];
            i2 = i8;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void m0(int[] iArr) {
        if (iArr == null || iArr.length < 5) {
            return;
        }
        int i2 = 1;
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                int i3 = w0.d.f17798j;
                int i4 = w0.d.f17796h;
                if (i4 == 0) {
                    i2 = 3;
                } else if (i4 != 1) {
                    switch (i4) {
                        case 65536:
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            i2 = 0;
                            break;
                        case 65537:
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            break;
                        case 65538:
                            if (i3 >= 65536) {
                                i3 -= 65536;
                            }
                            i2 = 2;
                            break;
                        default:
                            i2 = 0;
                            break;
                    }
                } else {
                    i2 = 4;
                }
                int i5 = i3 % 6;
                if (i5 != 0 || i3 == 0) {
                    iArr[4] = i5;
                } else {
                    iArr[4] = 6;
                }
                iArr[4] = (iArr[4] << 3) & 56;
                iArr[4] = iArr[4] | i2;
                break;
            case 2:
                iArr[2] = 5;
                break;
            case 3:
                iArr[2] = 10;
                break;
            case 4:
                int i6 = o0.e.H;
                if (i6 == 1) {
                    iArr[2] = 2;
                } else if (i6 == 2) {
                    iArr[2] = 9;
                } else if (i6 == 3) {
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
            case 10:
                iArr[2] = 8;
                break;
        }
    }

    public static int m1(int i2) {
        if (i2 == 255) {
            return 10;
        }
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 6;
            case 5:
                return 8;
            case 6:
                return 9;
            default:
                return 10;
        }
    }

    public static void n() {
        X();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 != 1) {
            if (i2 == 4) {
                int i4 = o0.e.f16794r;
                int[] iArr = {195, 6, o0.e.C & 255, o0.e.B & 255, 0, 0, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i4 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
                int[] iArr2 = new int[9];
                iArr2[0] = 227;
                while (i3 < 8) {
                    int i5 = i3 + 1;
                    iArr2[i5] = iArr[i3];
                    i3 = i5;
                }
                z.k.s(iArr2);
                return;
            }
            if (i2 != 8 && i2 != 10) {
                z.k.s(227, 195, 6, 0, 0, 0, 0, 0, 0);
                return;
            }
            int i6 = u0.b.t3;
            int[] iArr3 = {195, 6, u0.b.s3 & 255, u0.b.r3 & 255, 0, 0, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i6 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
            int[] iArr4 = new int[9];
            iArr4[0] = 227;
            while (i3 < 8) {
                int i7 = i3 + 1;
                iArr4[i7] = iArr3[i3];
                i3 = i7;
            }
            z.k.s(iArr4);
            return;
        }
        int[] iArr5 = new int[6];
        iArr5[0] = 194;
        iArr5[1] = 4;
        int i8 = w0.d.f17796h;
        if (i8 != 0 && i8 != 1) {
            switch (i8) {
                case 65536:
                    iArr5[2] = 0;
                    break;
                case 65537:
                    iArr5[2] = 0;
                    break;
                case 65538:
                    iArr5[2] = 0;
                    break;
            }
        } else {
            iArr5[2] = 16;
        }
        int i9 = w0.d.f17797i;
        iArr5[3] = i9 & 255;
        iArr5[4] = (i9 >> 8) & 255;
        int i10 = w0.d.f17798j;
        if (i10 % 6 != 0 || i10 == 0) {
            iArr5[5] = i10 % 6;
        } else {
            iArr5[5] = 6;
        }
        if (iArr5[5] == 0) {
            iArr5[5] = 6;
        }
        int[] iArr6 = new int[7];
        iArr6[0] = 227;
        while (i3 < 6) {
            int i11 = i3 + 1;
            iArr6[i11] = iArr5[i3];
            i3 = i11;
        }
        z.k.s(iArr6);
    }

    public static void n0(int[] iArr) {
        if (iArr == null || iArr.length < 4) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                int i2 = w0.d.f17796h;
                if (i2 != 0) {
                    if (i2 != 1) {
                        switch (i2) {
                            case 65536:
                                iArr[3] = 1;
                                break;
                            case 65537:
                                iArr[3] = 2;
                                break;
                            case 65538:
                                iArr[3] = 2;
                                break;
                        }
                    } else {
                        iArr[3] = 3;
                        break;
                    }
                } else {
                    iArr[3] = 3;
                    break;
                }
                break;
            case 2:
                iArr[2] = 9;
                iArr[3] = 1;
                break;
            case 3:
                iArr[2] = 9;
                iArr[3] = 50;
                break;
            case 4:
                if (o0.e.H != 1) {
                    iArr[2] = 8;
                } else {
                    iArr[2] = 2;
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
            case 10:
                iArr[2] = 8;
                break;
        }
    }

    public static int n1(int i2) {
        if (i2 != 0) {
            return i2 / 2;
        }
        return 15;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0074  */
    public static void o() {
        int[] iArr = new int[7];
        int i2 = 0;
        iArr[0] = 132;
        iArr[1] = 5;
        R(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            iArr[0] = 132;
            iArr[1] = 5;
            iArr[2] = 1;
            iArr[3] = 0;
            int i4 = w0.d.f17798j;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr[4] = 0;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i5 == 65537) {
                iArr[4] = 1;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i5 == 65538) {
                iArr[4] = 2;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i5 == 0) {
                iArr[4] = 3;
            } else if (i5 == 1) {
                iArr[4] = 4;
            }
            int i6 = i4 % 6;
            if (i6 != 0 || i4 == 0) {
                iArr[4] = (i6 << 3) | iArr[4];
            } else {
                iArr[4] = iArr[4] | 48;
            }
            int i7 = w0.d.f17797i;
            iArr[5] = (i7 >> 8) & 255;
            iArr[6] = i7 & 255;
        } else if (i3 == 4) {
            iArr[3] = 35;
            int i8 = o0.e.B;
            iArr[4] = i8 & 255;
            int i9 = o0.e.f16794r;
            iArr[5] = ((((i8 >> 8) & 255) & 3) << 6) | ((i9 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60);
            iArr[6] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
        } else if (i3 == 8 || i3 == 10) {
            iArr[3] = 3;
            int i10 = u0.b.r3;
            iArr[4] = i10 & 255;
            int i11 = u0.b.t3;
            iArr[5] = ((((i10 >> 8) & 255) & 3) << 6) | ((i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60);
            iArr[6] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i2 < 7) {
            int i12 = i2 + 1;
            iArr2[i12] = iArr[i2];
            i2 = i12;
        }
        z.k.s(iArr2);
    }

    public static void o0(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 0:
                iArr[2] = 15;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 != 0) {
                    if (i2 != 1) {
                        switch (i2) {
                            case 65536:
                                iArr[2] = 1;
                                break;
                            case 65537:
                                iArr[2] = 1;
                                break;
                            case 65538:
                                iArr[2] = 1;
                                break;
                        }
                    } else {
                        iArr[2] = 2;
                        break;
                    }
                } else {
                    iArr[2] = 2;
                    break;
                }
                break;
            case 2:
                iArr[2] = 10;
                break;
            case 3:
                iArr[2] = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 6;
                } else if (i3 == 2) {
                    iArr[2] = 3;
                } else if (i3 == 3) {
                    iArr[2] = 4;
                }
                break;
            case 5:
                iArr[2] = 9;
                break;
            case 6:
                iArr[2] = 11;
                break;
            case 7:
                iArr[2] = 5;
                break;
            case 8:
            case 10:
                iArr[2] = 4;
                break;
            case 9:
            default:
                iArr[2] = 15;
                break;
        }
    }

    public static int o1(int i2) {
        if (i2 != 0) {
            return i2 / 3;
        }
        return 15;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x005d  */
    public static void p() {
        int[] iArr = new int[11];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 9;
        S(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17798j;
            int i5 = w0.d.f17797i;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[3] = 1;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i6 == 65537) {
                iArr[3] = 2;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i6 == 65538) {
                iArr[3] = 3;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i6 == 0) {
                iArr[3] = 17;
            } else if (i6 == 1) {
                iArr[3] = 18;
            }
            iArr[4] = i5 & 255;
            iArr[5] = (i5 >> 8) & 255;
            int i7 = i4 % 6;
            if (i7 != 0 || i4 == 0) {
                iArr[6] = i7;
            } else {
                iArr[6] = 6;
            }
        } else if (i3 == 8 || i3 == 10) {
            int i8 = u0.b.s3;
            iArr[3] = (i8 >> 8) & 255;
            iArr[4] = i8 & 255;
            int i9 = u0.b.r3;
            iArr[5] = (i9 >> 8) & 255;
            iArr[6] = i9 & 255;
            int i10 = u0.b.t3;
            iArr[7] = i10 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        }
        int[] iArr2 = new int[12];
        iArr2[0] = 227;
        while (i2 < 11) {
            int i11 = i2 + 1;
            iArr2[i11] = iArr[i2];
            i2 = i11;
        }
        z.k.s(iArr2);
    }

    public static void p0() {
        int[] iArr = new int[3];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 1;
        switch (u0.b.D) {
            case 1:
            case 11:
                iArr[2] = 1;
                break;
            case 2:
                iArr[2] = 5;
                break;
            case 3:
                iArr[2] = 7;
                break;
            case 4:
                if (o0.e.H != 1) {
                    iArr[2] = 4;
                } else {
                    iArr[2] = 2;
                }
                break;
            case 5:
                iArr[2] = 3;
                break;
            case 6:
                iArr[2] = 12;
                break;
            case 7:
                iArr[2] = 4;
                break;
            case 8:
            case 10:
                iArr[2] = 4;
                break;
            case 9:
            default:
                iArr[2] = 12;
                break;
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

    public static int p1(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 8;
        }
        return 6;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002f  */
    public static void q() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        T(iArr);
        switch (u0.b.D) {
            case 0:
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 11:
            case 12:
            case 13:
                iArr[3] = 0;
                break;
            case 1:
                iArr[3] = 1;
                int i3 = w0.d.f17798j;
                int i4 = w0.d.f17797i;
                int i5 = w0.d.f17796h;
                if (i5 == 65536) {
                    iArr[4] = 1;
                    if (i3 >= 65536) {
                        i3 -= 65536;
                    }
                } else if (i5 == 65537) {
                    iArr[4] = 2;
                    if (i3 >= 65536) {
                        i3 -= 65536;
                    }
                } else if (i5 == 65538) {
                    iArr[4] = 3;
                    if (i3 >= 65536) {
                        i3 -= 65536;
                    }
                } else if (i5 == 0) {
                    iArr[4] = 17;
                } else if (i5 == 1) {
                    iArr[4] = 18;
                }
                iArr[5] = i4 & 255;
                iArr[6] = (i4 >> 8) & 255;
                int i6 = i3 % 6;
                if (i6 != 0 || i3 == 0) {
                    iArr[7] = i6;
                } else {
                    iArr[7] = 6;
                }
                iArr[8] = 0;
                iArr[9] = 0;
                break;
            case 4:
                iArr[3] = 0;
                break;
            case 8:
            case 10:
                iArr[3] = 0;
                break;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static void q0(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 0:
                iArr[2] = 0;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 != 0) {
                    if (i2 != 1) {
                        switch (i2) {
                            case 65536:
                                iArr[2] = 1;
                                break;
                            case 65537:
                                iArr[2] = 1;
                                break;
                            case 65538:
                                iArr[2] = 1;
                                break;
                        }
                    } else {
                        iArr[2] = 2;
                        break;
                    }
                } else {
                    iArr[2] = 2;
                    break;
                }
                break;
            case 2:
                iArr[2] = 10;
                break;
            case 3:
                iArr[2] = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 6;
                } else if (i3 == 2) {
                    iArr[2] = 3;
                } else if (i3 == 3) {
                    iArr[2] = 4;
                }
                break;
            case 5:
                iArr[2] = 9;
                break;
            case 6:
                iArr[2] = 11;
                break;
            case 7:
                iArr[2] = 5;
                break;
            case 8:
            case 10:
                iArr[2] = 7;
                break;
            case 12:
                iArr[2] = 10;
                break;
            case 13:
                iArr[2] = 4;
                break;
        }
    }

    public static int q1(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return 10 - i2;
    }

    public static void r() {
        int[] iArr = new int[6];
        int i2 = 0;
        iArr[0] = 131;
        iArr[1] = 4;
        U(iArr);
        if (u0.b.D == 1) {
            int i3 = w0.d.f17797i;
            int i4 = w0.d.f17796h;
            if (i4 < 65536 || i4 > 65538) {
                iArr[3] = 2;
                iArr[4] = (i3 >> 8) & 255;
                iArr[4] = i3 & 255;
            } else {
                iArr[3] = 1;
                iArr[4] = (i3 - 8750) / 10;
                iArr[5] = 0;
            }
        }
        int[] iArr2 = new int[7];
        iArr2[0] = 227;
        while (i2 < 6) {
            int i5 = i2 + 1;
            iArr2[i5] = iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static void r0() {
        int[] iArr = new int[12];
        int i2 = 0;
        for (int i3 = 0; i3 < 12; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 112;
        iArr[1] = 10;
        iArr[2] = 2;
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 < 65536 || i5 > 65538) {
                int i6 = w0.d.f17797i;
                iArr[3] = ((i6 / 1000) % 10) + 48;
                iArr[4] = ((i6 / 100) % 10) + 48;
                iArr[5] = ((i6 / 10) % 10) + 48;
                iArr[6] = (i6 % 10) + 48;
                iArr[7] = 75;
                iArr[8] = 104;
                iArr[9] = 122;
            } else {
                int i7 = w0.d.f17797i;
                if (i7 / 10000 == 0) {
                    iArr[3] = ((i7 / 1000) % 10) + 48;
                    iArr[4] = ((i7 / 100) % 10) + 48;
                    iArr[5] = 46;
                    iArr[6] = ((i7 / 10) % 10) + 48;
                    iArr[7] = (i7 % 10) + 48;
                    iArr[8] = 77;
                    iArr[9] = 104;
                    iArr[10] = 122;
                } else {
                    iArr[3] = (i7 / 10000) + 48;
                    iArr[4] = ((i7 / 1000) % 10) + 48;
                    iArr[5] = ((i7 / 100) % 10) + 48;
                    iArr[6] = 46;
                    iArr[7] = ((i7 / 10) % 10) + 48;
                    iArr[8] = (i7 % 10) + 48;
                    iArr[9] = 77;
                    iArr[10] = 104;
                    iArr[11] = 122;
                }
            }
        } else if (i4 == 2 || i4 == 3) {
            iArr[3] = 66;
            iArr[4] = 84;
            iArr[5] = 32;
            iArr[6] = 77;
            iArr[7] = 117;
            iArr[8] = 115;
            iArr[9] = 105;
            iArr[10] = 99;
        } else if (i4 == 8 || i4 == 10) {
            int i8 = u0.b.r3;
            iArr[3] = (i8 / 1000) + 48;
            iArr[4] = ((i8 % 1000) / 100) + 48;
            iArr[5] = ((i8 % 100) / 10) + 48;
            iArr[6] = (i8 % 10) + 48;
            iArr[7] = 47;
            int i9 = u0.b.s3;
            iArr[8] = (i9 / 1000) + 48;
            iArr[9] = ((i9 % 1000) / 100) + 48;
            iArr[10] = ((i9 % 100) / 10) + 48;
            iArr[11] = (i9 % 10) + 48;
        }
        int[] iArr2 = new int[13];
        iArr2[0] = 227;
        while (i2 < 12) {
            int i10 = i2 + 1;
            iArr2[i10] = iArr[i2];
            i2 = i10;
        }
        z.k.s(iArr2);
    }

    public static int r1(int i2) {
        if (i2 == 0) {
            return 10;
        }
        if (i2 == 1) {
            return 8;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 0;
        }
        return 5;
    }

    public static void s() {
        p0();
    }

    public static void s0() {
        int i2 = 0;
        int i3 = y0.f.C0;
        int[] iArr = {196, 1, i3};
        if (i3 > 36) {
            iArr[2] = 36;
        }
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = iArr[2] | 128;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static int s1(int i2) {
        if (i2 == 1) {
            return 9;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 0;
        }
        return 5;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x009c  */
    public static void t() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        V(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17798j;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr[4] = 1;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i5 == 65537) {
                iArr[4] = 2;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i5 == 65538) {
                iArr[4] = 0;
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
            } else if (i5 == 0 || i5 == 1) {
                iArr[4] = 16;
            }
            int i6 = w0.d.f17797i;
            iArr[5] = i6 & 255;
            iArr[6] = (i6 >> 8) & 255;
            int i7 = i4 % 6;
            if (i7 != 0 || i4 == 0) {
                iArr[7] = i7;
            } else {
                iArr[7] = 6;
            }
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 10) {
                int i8 = u0.b.r3;
                iArr[4] = i8 & 255;
                iArr[5] = (i8 >> 8) & 255;
                int i9 = u0.b.s3;
                iArr[6] = i9 & 255;
                iArr[7] = (i9 >> 8) & 255;
                int i10 = u0.b.t3;
                iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[9] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B;
            iArr[6] = o0.e.C;
            int i11 = o0.e.f16794r;
            iArr[7] = i11 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        } else {
            int i12 = o0.e.C;
            iArr[4] = i12 & 255;
            iArr[5] = (i12 >> 8) & 255;
            int i13 = o0.e.B;
            iArr[6] = i13 & 255;
            iArr[7] = (i13 >> 8) & 255;
            int i14 = o0.e.f16794r;
            iArr[8] = (i14 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i14 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i15 = i2 + 1;
            iArr2[i15] = iArr[i2];
            i2 = i15;
        }
        z.k.s(iArr2);
    }

    public static void t0() {
        int i2;
        int i3 = 0;
        int[] iArr = {132, 5, 13, y0.f.C0, 0, 0, 0};
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[2] = iArr[2] | 0;
        } else if (i2 == 36) {
            iArr[2] = 164;
        }
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        while (i3 < 7) {
            int i4 = i3 + 1;
            iArr2[i4] = iArr[i3];
            i3 = i4;
        }
        z.k.s(iArr2);
    }

    public static int t1(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            case 9:
                return 9;
            default:
                return 15;
        }
    }

    public static void u() {
        int[] iArr = new int[11];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 9;
        W(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17798j;
            int i5 = w0.d.f17796h;
            if (i5 >= 65536 && i5 <= 65538 && i4 >= 65536) {
                i4 -= 65536;
            }
            int i6 = w0.d.f17797i;
            iArr[5] = (i6 >> 8) & 255;
            iArr[6] = i6 & 255;
            int i7 = i4 % 6;
            if (i7 != 0 || i4 == 0) {
                iArr[7] = i7;
            } else {
                iArr[7] = 6;
            }
        } else if (i3 == 4) {
            int i8 = o0.e.B;
            if ((i8 & 255) <= 99) {
                iArr[5] = (i8 >> 8) & 255;
                iArr[6] = i8 & 255;
            } else {
                iArr[5] = 3;
                iArr[6] = 55;
            }
            int i9 = o0.e.f16794r;
            iArr[9] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[10] = (i9 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        } else if (i3 == 8 || i3 == 10) {
            int i10 = u0.b.r3;
            if (i10 <= 999) {
                iArr[5] = (i10 >> 8) & 255;
                iArr[6] = i10 & 255;
            } else {
                iArr[5] = 3;
                iArr[6] = 55;
            }
        }
        iArr[8] = 0;
        if (w0.d.f17814z != 0) {
            iArr[8] = iArr[8] | 64;
        }
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[8] = iArr[8] | 8;
        }
        int[] iArr2 = new int[12];
        iArr2[0] = 227;
        while (i2 < 11) {
            int i11 = i2 + 1;
            iArr2[i11] = iArr[i2];
            i2 = i11;
        }
        z.k.s(iArr2);
    }

    public static void u0() {
        int i2;
        int i3 = 0;
        int i4 = y0.f.C0;
        int[] iArr = {132, 7, 1, i4, 0, 0, 0, 0, 0};
        if (i4 > 36) {
            y0.f.C0 = 36;
        }
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 48;
            iArr[4] = 48;
        } else {
            iArr[3] = (i2 / 10) + 48;
            iArr[4] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[10];
        iArr2[0] = 227;
        while (i3 < 9) {
            int i5 = i3 + 1;
            iArr2[i5] = iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public static int u1(int i2) {
        if (i2 <= 10 && i2 != 0) {
            return i2 - 1;
        }
        return 10;
    }

    public static void v() {
        int[] iArr = new int[8];
        int i2 = 0;
        iArr[0] = 147;
        iArr[1] = 6;
        Z(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17796h;
            if (i5 == 65536) {
                iArr[3] = 0;
            } else if (i5 == 65537) {
                iArr[3] = 1;
            } else if (i5 == 65538) {
                iArr[3] = 2;
            } else if (i5 == 0 || i5 == 1) {
                iArr[3] = 6;
            }
            int i6 = w0.d.f17797i;
            iArr[6] = ((i6 / 10) >> 8) & 255;
            iArr[7] = (i6 / 10) & 255;
        } else if (i3 == 4) {
            iArr[4] = o0.e.B % 99;
            iArr[5] = 2;
        } else if (i3 == 8 || i3 == 10) {
            iArr[4] = u0.b.r3 % 99;
            iArr[5] = 2;
        }
        int[] iArr2 = new int[9];
        iArr2[0] = 227;
        while (i2 < 8) {
            int i7 = i2 + 1;
            iArr2[i7] = iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static void v0() {
        int[] iArr = new int[8];
        int i2 = 0;
        iArr[0] = 132;
        iArr[1] = 7;
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = iArr[2] | 128;
        }
        int i3 = y0.f.C0;
        if (i3 > 30) {
            iArr[2] = 30;
        } else {
            iArr[2] = i3;
        }
        int[] iArr2 = new int[9];
        iArr2[0] = 227;
        while (i2 < 8) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static int v1(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            default:
                return 15;
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x011d  */
    public static void w() {
        g0();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[8];
            int i4 = w0.d.f17798j;
            iArr[0] = 131;
            iArr[1] = 6;
            int i5 = w0.d.f17796h;
            if (i5 != 0 && i5 != 1) {
                switch (i5) {
                    case 65536:
                        iArr[2] = 1;
                        if (i4 >= 65536) {
                            i4 -= 65536;
                        }
                        break;
                    case 65537:
                        iArr[2] = 2;
                        if (i4 >= 65536) {
                            i4 -= 65536;
                        }
                        break;
                    case 65538:
                        iArr[2] = 2;
                        if (i4 >= 65536) {
                            i4 -= 65536;
                        }
                        break;
                }
            } else {
                iArr[2] = 3;
            }
            int i6 = w0.d.f17797i;
            iArr[3] = (i6 >> 8) & 255;
            iArr[4] = i6 & 255;
            int i7 = i4 % 6;
            if (i7 != 0 || i4 == 0) {
                iArr[5] = i7;
            } else {
                iArr[5] = 6;
            }
            int[] iArr2 = new int[9];
            iArr2[0] = 227;
            while (i3 < 8) {
                int i8 = i3 + 1;
                iArr2[i8] = iArr[i3];
                i3 = i8;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 4) {
            int i9 = o0.e.C;
            int i10 = o0.e.f16794r;
            int[] iArr3 = {132, 12, 0, 0, 0, 0, (i9 / 100) & 255, (i9 % 100) & 255, (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) & 255, ((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) & 255, ((i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60) & 255, 255, 0, 0};
            int[] iArr4 = new int[15];
            iArr4[0] = 227;
            while (i3 < 14) {
                int i11 = i3 + 1;
                iArr4[i11] = iArr3[i3];
                i3 = i11;
            }
            z.k.s(iArr4);
            return;
        }
        if (i2 != 10) {
            if (i2 == 7) {
                int[] iArr5 = new int[8];
                iArr5[0] = 195;
                iArr5[1] = 6;
                int i12 = x5.f12015n;
                if (i12 == 0 || (i12 & 128) != 0) {
                    iArr5[2] = x5.f12020s;
                    iArr5[3] = x5.f12021t;
                    iArr5[4] = x5.f12022u;
                    iArr5[5] = x5.f12023v;
                    iArr5[6] = x5.f12024w;
                    iArr5[7] = 0;
                } else {
                    iArr5[2] = x5.f12016o;
                    iArr5[3] = x5.f12024w;
                    iArr5[4] = x5.f12020s;
                    iArr5[5] = x5.f12021t;
                    iArr5[6] = x5.f12017p;
                    iArr5[7] = x5.f12018q;
                }
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i3 < 8) {
                    int i13 = i3 + 1;
                    iArr6[i13] = iArr5[i3];
                    i3 = i13;
                }
                z.k.s(iArr6);
                return;
            }
            if (i2 != 8) {
                return;
            }
        }
        int i14 = u0.b.s3;
        int i15 = u0.b.r3;
        int i16 = u0.b.t3;
        int[] iArr7 = {195, 6, i14 & 255, (i14 >> 8) & 255, i15 & 255, (i15 >> 8) & 255, (i16 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60, (i16 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60};
        int[] iArr8 = new int[9];
        iArr8[0] = 227;
        while (i3 < 8) {
            int i17 = i3 + 1;
            iArr8[i17] = iArr7[i3];
            i3 = i17;
        }
        z.k.s(iArr8);
    }

    public static void w0() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 30) {
            iArr[2] = 30;
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

    public static int w1(int i2) {
        if (i2 != 0) {
            if (i2 > 0 && i2 <= 3) {
                return 3;
            }
            if (i2 >= 4 && i2 <= 6) {
                return 2;
            }
            if (i2 >= 7 && i2 <= 8) {
                return 1;
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00b4  */
    public static void x() {
        int[] iArr = new int[11];
        int i2 = 0;
        iArr[0] = 130;
        iArr[1] = 9;
        if ((nt.f8633a & 65535) != 432) {
            N();
        }
        for (int i3 = 2; i3 < 11; i3++) {
            iArr[i3] = 255;
        }
        int i4 = (y0.f.f18055i == 1 || y0.f.C0 == 0) ? 8 : 0;
        if (h0.c.E != 0) {
            i4 |= 4;
        }
        iArr[8] = i4;
        switch (u0.b.D) {
            case 0:
            case 11:
            case 12:
            case 13:
            case 14:
                iArr[2] = 15;
                break;
            case 1:
                iArr[2] = 1;
                int i5 = w0.d.f17798j;
                int i6 = w0.d.f17796h;
                if (i6 == 65536) {
                    iArr[4] = 17;
                    if (i5 >= 65536) {
                        i5 -= 65536;
                    }
                } else if (i6 == 65537) {
                    iArr[4] = 18;
                    if (i5 >= 65536) {
                        i5 -= 65536;
                    }
                } else if (i6 == 65538) {
                    iArr[4] = 19;
                    if (i5 >= 65536) {
                        i5 -= 65536;
                    }
                } else if (i6 == 0) {
                    iArr[4] = 33;
                } else if (i6 == 1) {
                    iArr[4] = 34;
                }
                int i7 = w0.d.f17797i;
                iArr[5] = (i7 >> 8) & 255;
                iArr[6] = i7 & 255;
                int i8 = i5 % 6;
                if (i8 != 0 || i5 == 0) {
                    iArr[7] = i8;
                } else {
                    iArr[7] = 6;
                }
                break;
            case 2:
            case 3:
                iArr[2] = 9;
                break;
            case 4:
                int i9 = o0.e.H;
                if (i9 == 1) {
                    iArr[2] = 2;
                } else if (i9 == 2) {
                    iArr[2] = 3;
                } else if (i9 == 3) {
                    iArr[2] = 4;
                }
                int i10 = o0.e.B;
                iArr[5] = (i10 >> 8) & 255;
                iArr[6] = i10 & 255;
                int i11 = o0.e.f16794r;
                iArr[9] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[10] = (i11 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
                break;
            case 5:
                iArr[2] = 7;
                break;
            case 6:
                iArr[2] = 10;
                iArr[5] = 0;
                iArr[6] = d1.d.f1574g;
                break;
            case 7:
                iArr[2] = 5;
                break;
            case 8:
            case 10:
                iArr[2] = 4;
                int i12 = u0.b.r3;
                iArr[5] = (i12 >> 8) & 255;
                iArr[6] = i12 & 255;
                int i13 = u0.b.t3;
                iArr[9] = (i13 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
                iArr[10] = (i13 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
                break;
        }
        int[] iArr2 = new int[12];
        iArr2[0] = 227;
        while (i2 < 11) {
            int i14 = i2 + 1;
            iArr2[i14] = iArr[i2];
            i2 = i14;
        }
        z.k.s(iArr2);
    }

    public static void x0() {
        int i2 = 0;
        int[] iArr = {134, 2, 128, y0.f.C0 | 128};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[3] = 0;
        }
        if (y0.f.C0 >= 31) {
            iArr[3] = 159;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public static int x1(int i2) {
        switch (i2) {
            case 1:
                return 9;
            case 2:
                return 7;
            case 3:
                return 5;
            case 4:
                return 3;
            case 5:
                return 1;
            case 6:
                return 0;
            default:
                return 15;
        }
    }

    public static void y() {
        int[] iArr = new int[9];
        int i2 = 0;
        for (int i3 = 0; i3 < 9; i3++) {
            iArr[i3] = 0;
        }
        iArr[0] = 132;
        iArr[1] = 7;
        int i4 = u0.b.D;
        if (i4 != 14) {
            switch (i4) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 0;
                    int i5 = w0.d.f17797i;
                    int i6 = w0.d.f17798j;
                    int i7 = (i6 < 65536 || i6 < 65536) ? i6 % 6 : (i6 - 65536) % 6;
                    int i8 = ((i7 + 1) << 3) & 56;
                    int i9 = w0.d.f17796h;
                    if (i9 == 65536) {
                        iArr[4] = i8 | 0;
                    } else if (i9 == 65537) {
                        iArr[4] = 1 | i8;
                    } else if (i9 == 65538) {
                        iArr[4] = i8 | 2;
                    } else if (i9 == 0) {
                        iArr[4] = i8 | 3;
                    } else if (i9 == 1) {
                        iArr[4] = i8 | 4;
                    }
                    iArr[5] = (i5 >> 8) & 255;
                    iArr[6] = i5 & 255;
                    break;
                case 2:
                    iArr[2] = 5;
                    break;
                case 3:
                    iArr[2] = 10;
                    break;
                case 4:
                    int i10 = o0.e.H;
                    if (i10 == 1) {
                        iArr[2] = 2;
                    } else if (i10 == 2) {
                        iArr[2] = 9;
                    } else if (i10 == 3) {
                        iArr[2] = 8;
                    }
                    if (o0.e.A == 1) {
                        iArr[3] = 16;
                    } else {
                        iArr[3] = 0;
                    }
                    iArr[4] = o0.e.B & 255;
                    int i11 = ((o0.e.C >> 8) & 3) << 6;
                    int i12 = o0.e.f16794r;
                    iArr[5] = i11 | (((i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) & 63);
                    iArr[6] = (i12 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
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
                default:
                    iArr[2] = 14;
                    break;
            }
        } else {
            iArr[2] = 11;
        }
        int[] iArr2 = new int[10];
        iArr2[0] = 227;
        while (i2 < 9) {
            int i13 = i2 + 1;
            iArr2[i13] = iArr[i2];
            i2 = i13;
        }
        z.k.s(iArr2);
    }

    public static void y0() {
        int i2 = 0;
        int[] iArr = {196, 1, (y0.f.C0 * 5) / 6};
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public static int y1(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return 6;
            case 8:
                return 7;
            case 9:
                return 8;
            case 10:
                return 9;
            default:
                return 15;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0085  */
    public static void z() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        a0(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[4] = 1;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 65537) {
                iArr[4] = 2;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 65538) {
                iArr[4] = 3;
                if (i5 >= 65536) {
                    i5 -= 65536;
                }
            } else if (i6 == 0) {
                iArr[4] = 17;
            } else if (i6 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            int i7 = i5 % 6;
            if (i7 != 0 || i5 == 0) {
                iArr[7] = i7;
            } else {
                iArr[7] = 6;
            }
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 == 2) {
            int i8 = h0.c.E;
            if (i8 == 0) {
                iArr[4] = 0;
            } else if (i8 <= 3) {
                iArr[4] = 1;
            } else {
                iArr[4] = 2;
            }
        } else if (i3 == 4) {
            int i9 = o0.e.B;
            iArr[4] = i9 & 255;
            iArr[5] = (i9 >> 8) & 255;
            iArr[6] = 0;
            int i10 = o0.e.f16794r;
            iArr[7] = i10 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        } else if (i3 == 8 || i3 == 9) {
            int i11 = u0.b.r3;
            iArr[4] = i11 & 255;
            iArr[5] = (i11 >> 8) & 255;
            iArr[6] = 0;
            int i12 = u0.b.t3;
            iArr[7] = i12 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i12 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = (i12 % BatchedScanSettings.MAX_INTERVAL_SEC) % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i13 = i2 + 1;
            iArr2[i13] = iArr[i2];
            i2 = i13;
        }
        z.k.s(iArr2);
    }

    public static void z0() {
        int i2 = 0;
        int[] iArr = {134, 1, y0.f.C0 | 128};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 0;
        }
        if (y0.f.C0 == 36) {
            iArr[2] = 164;
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

    public static int z1(int i2) {
        if (i2 != 0) {
            switch ((31 - i2) / 3) {
                case 0:
                case 1:
                    return 0;
                case 2:
                    return 1;
                case 3:
                    return 2;
                case 4:
                    return 3;
                case 5:
                    return 4;
                case 6:
                    return 5;
                case 7:
                    return 6;
                case 8:
                    return 7;
                case 9:
                    return 8;
                case 10:
                    return 9;
            }
        }
        return 15;
    }
}
