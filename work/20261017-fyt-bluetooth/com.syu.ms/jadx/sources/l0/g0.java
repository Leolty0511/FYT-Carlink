package l0;

import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;

/* JADX INFO: loaded from: classes2.dex */
public class g0 extends l0.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Runnable f13048d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Runnable f13049e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Runnable f13050f = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Runnable f13051g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Runnable f13052h = new e();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = g0.f13047c;
            if (i2 > 0) {
                g0.f13047c = i2 - 1;
            }
            if (g0.f13047c == 0) {
                g0.g();
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = g0.f13047c;
            if (i2 > 0) {
                g0.f13047c = i2 - 1;
            }
            if (g0.f13047c == 0) {
                g0.j();
            }
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = g0.f13047c;
            if (i2 > 0) {
                g0.f13047c = i2 - 1;
            }
            if (g0.f13047c == 0) {
                g0.k();
            }
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            g0.h();
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            g0.m();
        }
    }

    public static void g() {
        int[] iArr = new int[15];
        for (int i2 = 0; i2 < 15; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = l();
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
                    int i7 = u0.b.r3 % 10000;
                    iArr[4] = (i7 / 1000) + 48;
                    int i8 = (i7 % 100) / 10;
                    int i9 = i7 % 1000;
                    if (i8 != 0) {
                        i9 /= 10;
                    }
                    iArr[5] = i9 + 48;
                    iArr[6] = i8 + 48;
                    iArr[7] = (i7 % 10) + 48;
                    int i10 = u0.b.t3;
                    int i11 = (i10 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i11 / 10) + 48;
                    iArr[10] = (i11 % 10) + 48;
                    iArr[11] = 32;
                    int i12 = i10 % 60;
                    iArr[12] = (i12 / 10) + 48;
                    iArr[13] = (i12 % 10) + 48;
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
                iArr[12] = 77;
                iArr[13] = 104;
                iArr[14] = 122;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            int i16 = o0.e.B % 10000;
            iArr[4] = (i16 / 1000) + 48;
            int i17 = (i16 % 100) / 10;
            int i18 = i16 % 1000;
            if (i17 != 0) {
                i18 /= 10;
            }
            iArr[5] = i18 + 48;
            iArr[6] = i17 + 48;
            iArr[7] = (i16 % 10) + 48;
            int i19 = o0.e.f16794r;
            int i20 = (i19 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i20 / 10) + 48;
            iArr[10] = (i20 % 10) + 48;
            iArr[11] = 32;
            int i21 = i19 % 60;
            iArr[12] = (i21 / 10) + 48;
            iArr[13] = (i21 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        int i22 = 0;
        iArr2[0] = 227;
        while (i22 < 15) {
            int i23 = i22 + 1;
            iArr2[i23] = (byte) iArr[i22];
            i22 = i23;
        }
        z.k.s(iArr2);
    }

    public static void h() {
        int i2;
        int[] iArr = new int[15];
        f13047c = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = l();
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

    public static void i(int i2) {
        int[] iArr = new int[15];
        f13047c = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = l();
        if (y0.f.f18055i == 1 || i2 == 0) {
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

    public static void j() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = l();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17797i;
                iArr[3] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[4] = ((i6 % 10000) / 1000) + 48;
                iArr[5] = ((i6 % 1000) / 100) + 48;
                iArr[6] = 46;
                iArr[7] = ((i6 % 100) / 10) + 48;
                iArr[8] = (i6 % 10) + 48;
                iArr[9] = 77;
                iArr[10] = 72;
                iArr[11] = 90;
            } else {
                int i7 = w0.d.f17797i;
                iArr[3] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[4] = (i7 % 10000) / 1000 == 0 ? ((i7 % 10000) / 1000) + 32 : ((i7 % 10000) / 1000) + 48;
                iArr[5] = ((i7 % 1000) / 100) + 48;
                iArr[6] = ((i7 % 100) / 10) + 48;
                iArr[7] = (i7 % 10) + 48;
                iArr[8] = 75;
                iArr[9] = 72;
                iArr[10] = 90;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i8 = u0.b.t3;
                    iArr[3] = ((i8 / BatchedScanSettings.MAX_INTERVAL_SEC) % 10) + 48;
                    iArr[4] = (((i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) + 48;
                    iArr[5] = (((i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
                    iArr[6] = ((i8 % 60) / 10) + 48;
                    iArr[7] = ((i8 % 60) % 10) + 48;
                    int i9 = u0.b.r3 % 1000;
                    iArr[8] = 48;
                    iArr[9] = (i9 / 100) + 48;
                    iArr[10] = ((i9 % 100) / 10) + 48;
                    iArr[11] = (i9 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i10 = d1.d.f1572e;
                if (i10 / 10 > 0) {
                    iArr[3] = (i10 / 10) + 48;
                }
                iArr[4] = (i10 % 10) + 48;
                iArr[5] = 45;
                int i11 = d1.d.f1571d / 100;
                int i12 = i11 / 10000;
                if (i12 > 0) {
                    iArr[6] = i12 + 48;
                }
                iArr[7] = ((i11 % 10000) / 1000) + 48;
                iArr[8] = ((i11 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i11 % 100) / 10) + 48;
                iArr[11] = ((i11 % 10) / 1) + 48;
                iArr[12] = 77;
                iArr[13] = 72;
                iArr[14] = 90;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            iArr[4] = 82;
            iArr[5] = 65;
            int i13 = o0.e.B % 1000;
            iArr[9] = (i13 / 100) + 48;
            iArr[10] = ((i13 % 100) / 10) + 48;
            iArr[11] = (i13 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i14 = i2 + 1;
            iArr2[i14] = (byte) iArr[i2];
            i2 = i14;
        }
        z.k.s(iArr2);
    }

    public static void k() {
        int[] iArr = new int[15];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= 15) {
                break;
            }
            iArr[i3] = 32;
            i3++;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = l();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17797i;
                iArr[6] = i6 / 10000 != 0 ? (i6 / 10000) + 48 : 32;
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
            } else {
                int i7 = w0.d.f17797i;
                iArr[6] = i7 / 1000 != 0 ? (i7 / 1000) + 48 : 32;
                iArr[7] = ((i7 % 1000) / 100) + 48;
                iArr[8] = ((i7 % 100) / 10) + 48;
                iArr[9] = (i7 % 10) + 48;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i8 = u0.b.r3 % 1000;
                    iArr[3] = (i8 / 100) + 48;
                    iArr[4] = ((i8 % 100) / 10) + 48;
                    iArr[5] = (i8 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i9 = d1.d.f1572e;
                if (i9 / 10 > 0) {
                    iArr[3] = (i9 / 10) + 48;
                }
                iArr[4] = (i9 % 10) + 48;
                iArr[5] = 45;
                int i10 = d1.d.f1571d / 100;
                int i11 = i10 / 10000;
                if (i11 > 0) {
                    iArr[6] = i11 + 48;
                }
                iArr[7] = ((i10 % 10000) / 1000) + 48;
                iArr[8] = ((i10 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i10 % 100) / 10) + 48;
                iArr[11] = ((i10 % 10) / 1) + 48;
                iArr[12] = 77;
                iArr[13] = 72;
                iArr[14] = 90;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            iArr[4] = 82;
            iArr[5] = 65;
            int i12 = o0.e.B % 1000;
            iArr[9] = (i12 / 100) + 48;
            iArr[10] = ((i12 % 100) / 10) + 48;
            iArr[11] = (i12 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i13 = i2 + 1;
            iArr2[i13] = (byte) iArr[i2];
            i2 = i13;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000c  */
    public static byte l() {
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
                b2 = 10;
                break;
            case 3:
                b2 = 21;
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
            case 9:
            case 10:
                b2 = 13;
                break;
            default:
                b2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static void m() {
        int i2;
        int[] iArr = new int[15];
        f13047c = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = l();
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
}
