package l0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class h0 extends l0.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Runnable f13058d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Runnable f13059e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Runnable f13060f = new c();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Runnable f13061g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Runnable f13062h = new e();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Runnable f13063i = new f();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.f13057c;
            if (i2 > 0) {
                h0.f13057c = i2 - 1;
            }
            if (h0.f13057c == 0) {
                h0.g();
            }
        }
    }

    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.f13057c;
            if (i2 > 0) {
                h0.f13057c = i2 - 1;
            }
            if (h0.f13057c == 0) {
                h0.h();
            }
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.f13057c;
            if (i2 > 0) {
                h0.f13057c = i2 - 1;
            }
            if (h0.f13057c == 0) {
                h0.i();
            }
        }
    }

    public class d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.f13057c;
            if (i2 > 0) {
                h0.f13057c = i2 - 1;
            }
            if (h0.f13057c == 0) {
                h0.j();
            }
        }
    }

    public class e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            h0.m();
        }
    }

    public class f implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            h0.n();
        }
    }

    public static void g() {
        int[] iArr = new int[16];
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 14;
        iArr[1] = 145;
        iArr[2] = k();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17797i;
                iArr[4] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[5] = ((i6 % 10000) / 1000) + 48;
                iArr[6] = ((i6 % 1000) / 100) + 48;
                iArr[7] = 46;
                iArr[8] = ((i6 % 100) / 10) + 48;
                iArr[9] = (i6 % 10) + 48;
                iArr[10] = 77;
                iArr[11] = 104;
                iArr[12] = 122;
            } else {
                int i7 = w0.d.f17797i;
                iArr[4] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[5] = (i7 % 10000) / 1000 == 0 ? ((i7 % 10000) / 1000) + 32 : ((i7 % 10000) / 1000) + 48;
                iArr[6] = ((i7 % 1000) / 100) + 48;
                iArr[7] = ((i7 % 100) / 10) + 48;
                iArr[8] = (i7 % 10) + 48;
                iArr[9] = 75;
                iArr[10] = 104;
                iArr[11] = 122;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    iArr[3] = 84;
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
                    int i11 = u0.b.t3;
                    int i12 = (i11 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i12 / 10) + 48;
                    iArr[10] = (i12 % 10) + 48;
                    iArr[11] = 32;
                    int i13 = i11 % 60;
                    iArr[12] = (i13 / 10) + 48;
                    iArr[13] = (i13 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i14 = d1.d.f1572e;
                if (i14 / 10 > 0) {
                    iArr[4] = (i14 / 10) + 48;
                }
                iArr[5] = (i14 % 10) + 48;
                iArr[6] = 45;
                int i15 = d1.d.f1571d / 100;
                int i16 = i15 / 10000;
                if (i16 > 0) {
                    iArr[7] = i16 + 48;
                }
                iArr[8] = ((i15 % 10000) / 1000) + 48;
                iArr[9] = ((i15 % 1000) / 100) + 48;
                iArr[10] = 46;
                iArr[11] = ((i15 % 100) / 10) + 48;
                iArr[12] = ((i15 % 10) / 1) + 48;
                iArr[13] = 77;
                iArr[14] = 104;
                iArr[15] = 122;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            int i17 = o0.e.B % 10000;
            iArr[4] = (i17 / 1000) + 48;
            int i18 = (i17 % 100) / 10;
            int i19 = i17 % 1000;
            if (i18 != 0) {
                i19 /= 10;
            }
            iArr[5] = i19 + 48;
            iArr[6] = i18 + 48;
            iArr[7] = (i17 % 10) + 48;
            int i20 = o0.e.f16794r;
            int i21 = (i20 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i21 / 10) + 48;
            iArr[10] = (i21 % 10) + 48;
            iArr[11] = 32;
            int i22 = i20 % 60;
            iArr[12] = (i22 / 10) + 48;
            iArr[13] = (i22 % 10) + 48;
        }
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i2 < 16) {
            int i23 = i2 + 1;
            iArr2[i23] = (byte) iArr[i2];
            i2 = i23;
        }
        z.k.s(iArr2);
    }

    public static void h() {
        int[] iArr = new int[15];
        for (int i2 = 0; i2 < 15; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = k();
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17797i;
                iArr[4] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                iArr[5] = ((i5 % 10000) / 1000) + 48;
                iArr[6] = ((i5 % 1000) / 100) + 48;
                iArr[7] = 46;
                iArr[8] = ((i5 % 100) / 10) + 48;
                iArr[9] = (i5 % 10) + 48;
                iArr[10] = 77;
                iArr[11] = 104;
                iArr[12] = 122;
            } else {
                int i6 = w0.d.f17797i;
                iArr[4] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[5] = (i6 % 10000) / 1000 == 0 ? ((i6 % 10000) / 1000) + 32 : ((i6 % 10000) / 1000) + 48;
                iArr[6] = ((i6 % 1000) / 100) + 48;
                iArr[7] = ((i6 % 100) / 10) + 48;
                iArr[8] = (i6 % 10) + 48;
                iArr[9] = 75;
                iArr[10] = 104;
                iArr[11] = 122;
            }
        } else if (i3 != 4) {
            if (i3 != 6) {
                if ((i3 == 8 || i3 == 9) && u0.b.s3 != 0) {
                    iArr[3] = 84;
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
                    iArr[4] = (i13 / 10) + 48;
                }
                iArr[5] = (i13 % 10) + 48;
                iArr[6] = 45;
                int i14 = d1.d.f1571d / 100;
                int i15 = i14 / 10000;
                if (i15 > 0) {
                    iArr[7] = i15 + 48;
                }
                iArr[8] = ((i14 % 10000) / 1000) + 48;
                iArr[9] = ((i14 % 1000) / 100) + 48;
                iArr[10] = 46;
                iArr[11] = ((i14 % 100) / 10) + 48;
                iArr[12] = ((i14 % 10) / 1) + 48;
                iArr[13] = 77;
                iArr[14] = 104;
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
        iArr2[0] = 227;
        int i22 = 0;
        while (i22 < 15) {
            int i23 = i22 + 1;
            iArr2[i23] = (byte) iArr[i22];
            i22 = i23;
        }
        z.k.s(iArr2);
    }

    public static void i() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = l();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17798j;
                int i7 = i6 % 6;
                if (i7 == 0 && i6 != 0) {
                    i7 = 6;
                }
                iArr[3] = (i7 / 10) + 48;
                iArr[4] = (i7 % 10) + 48;
                iArr[5] = 32;
                int i8 = w0.d.f17797i;
                iArr[6] = i8 / 10000 == 0 ? (i8 / 10000) + 32 : (i8 / 10000) + 48;
                iArr[7] = ((i8 % 10000) / 1000) + 48;
                iArr[8] = ((i8 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i8 % 100) / 10) + 48;
            } else if ((w0.d.f17797i % 10000) / 1000 == 0) {
                int i9 = w0.d.f17798j;
                int i10 = i9 % 6;
                if (i10 == 0 && i9 != 0) {
                    i10 = 6;
                }
                iArr[3] = (i10 / 10) + 48;
                iArr[4] = (i10 % 10) + 48;
                iArr[5] = 32;
                int i11 = w0.d.f17797i;
                iArr[6] = ((i11 % 1000) / 100) + 48;
                iArr[7] = ((i11 % 100) / 10) + 48;
                iArr[8] = (i11 % 10) + 48;
            } else {
                int i12 = w0.d.f17798j;
                int i13 = i12 % 6;
                if (i13 == 0 && i12 != 0) {
                    i13 = 6;
                }
                iArr[3] = (i13 / 10) + 48;
                iArr[4] = (i13 % 10) + 48;
                iArr[5] = 32;
                int i14 = w0.d.f17797i;
                iArr[6] = ((i14 % 10000) / 1000) + 48;
                iArr[7] = ((i14 % 1000) / 100) + 48;
                iArr[8] = ((i14 % 100) / 10) + 48;
                iArr[9] = (i14 % 10) + 48;
            }
        } else if (i4 != 6) {
            if (i4 == 3) {
                int i15 = h0.c.J % 1000;
                iArr[3] = ((i15 % 1000) / 100) + 48;
                iArr[4] = ((i15 % 100) / 10) + 48;
                iArr[5] = (i15 % 10) + 48;
                iArr[6] = 32;
                int i16 = h0.c.H;
                int i17 = (i16 / 60) % 60;
                iArr[7] = (i17 / 10) + 48;
                iArr[8] = (i17 % 10) + 48;
                int i18 = i16 % 60;
                iArr[9] = (i18 / 10) + 48;
                iArr[10] = (i18 % 10) + 48;
            } else if (i4 != 4) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i19 = u0.b.r3 % 1000;
                    iArr[3] = ((i19 % 1000) / 100) + 48;
                    iArr[4] = ((i19 % 100) / 10) + 48;
                    iArr[5] = (i19 % 10) + 48;
                    iArr[6] = 32;
                    int i20 = u0.b.t3;
                    int i21 = (i20 / 60) % 60;
                    iArr[7] = (i21 / 10) + 48;
                    iArr[8] = (i21 % 10) + 48;
                    int i22 = i20 % 60;
                    iArr[9] = (i22 / 10) + 48;
                    iArr[10] = (i22 % 10) + 48;
                }
            } else if (o0.e.C != 0) {
                int i23 = o0.e.B % 1000;
                iArr[3] = ((i23 % 1000) / 100) + 48;
                iArr[4] = ((i23 % 100) / 10) + 48;
                iArr[5] = (i23 % 10) + 48;
                iArr[6] = 32;
                int i24 = o0.e.f16794r;
                int i25 = (i24 / 60) % 60;
                iArr[7] = (i25 / 10) + 48;
                iArr[8] = (i25 % 10) + 48;
                int i26 = i24 % 60;
                iArr[9] = (i26 / 10) + 48;
                iArr[10] = (i26 % 10) + 48;
            }
        } else if (d1.d.f1570c == 1) {
            int i27 = d1.d.f1572e;
            if (i27 / 10 > 0) {
                iArr[3] = (i27 / 10) + 48;
            }
            iArr[4] = (i27 % 10) + 48;
            iArr[5] = 45;
            int i28 = d1.d.f1571d / 100;
            int i29 = i28 / 10000;
            if (i29 > 0) {
                iArr[6] = i29 + 48;
            }
            iArr[7] = ((i28 % 10000) / 1000) + 48;
            iArr[8] = ((i28 % 1000) / 100) + 48;
            iArr[9] = 46;
            iArr[10] = ((i28 % 100) / 10) + 48;
            iArr[11] = ((i28 % 10) / 1) + 48;
            iArr[12] = 77;
            iArr[13] = 104;
            iArr[14] = 122;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i30 = i2 + 1;
            iArr2[i30] = (byte) iArr[i2];
            i2 = i30;
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
        iArr[1] = 225;
        iArr[2] = l();
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17798j;
                int i7 = i6 % 6;
                if (i7 == 0 && i6 != 0) {
                    i7 = 6;
                }
                iArr[3] = (i7 / 10) + 48;
                iArr[4] = (i7 % 10) + 48;
                iArr[5] = 32;
                int i8 = w0.d.f17797i;
                iArr[6] = i8 / 10000 == 0 ? (i8 / 10000) + 32 : (i8 / 10000) + 48;
                iArr[7] = ((i8 % 10000) / 1000) + 48;
                iArr[8] = ((i8 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i8 % 100) / 10) + 48;
            } else if ((w0.d.f17797i % 10000) / 1000 == 0) {
                int i9 = w0.d.f17798j;
                int i10 = i9 % 6;
                if (i10 == 0 && i9 != 0) {
                    i10 = 6;
                }
                iArr[3] = (i10 / 10) + 48;
                iArr[4] = (i10 % 10) + 48;
                iArr[5] = 32;
                int i11 = w0.d.f17797i;
                iArr[6] = ((i11 % 1000) / 100) + 48;
                iArr[7] = ((i11 % 100) / 10) + 48;
                iArr[8] = (i11 % 10) + 48;
            } else {
                int i12 = w0.d.f17798j;
                int i13 = i12 % 6;
                if (i13 == 0 && i12 != 0) {
                    i13 = 6;
                }
                iArr[3] = (i13 / 10) + 48;
                iArr[4] = (i13 % 10) + 48;
                iArr[5] = 32;
                int i14 = w0.d.f17797i;
                iArr[6] = ((i14 % 10000) / 1000) + 48;
                iArr[7] = ((i14 % 1000) / 100) + 48;
                iArr[8] = ((i14 % 100) / 10) + 48;
                iArr[9] = (i14 % 10) + 48;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i15 = u0.b.r3 % 1000;
                    iArr[3] = ((i15 % 1000) / 100) + 48;
                    iArr[4] = ((i15 % 100) / 10) + 48;
                    iArr[5] = (i15 % 10) + 48;
                    iArr[6] = 32;
                    int i16 = u0.b.t3;
                    iArr[7] = ((i16 / 60) / 10) + 48;
                    iArr[8] = ((i16 / 60) % 10) + 48;
                    iArr[9] = ((i16 % 60) / 10) + 48;
                    iArr[10] = ((i16 % 60) % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i17 = d1.d.f1572e;
                if (i17 / 10 > 0) {
                    iArr[3] = (i17 / 10) + 48;
                }
                iArr[4] = (i17 % 10) + 48;
                iArr[5] = 45;
                int i18 = d1.d.f1571d / 100;
                int i19 = i18 / 10000;
                if (i19 > 0) {
                    iArr[6] = i19 + 48;
                }
                iArr[7] = ((i18 % 10000) / 1000) + 48;
                iArr[8] = ((i18 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i18 % 100) / 10) + 48;
                iArr[11] = ((i18 % 10) / 1) + 48;
                iArr[12] = 77;
                iArr[13] = 104;
                iArr[14] = 122;
            }
        } else if (o0.e.C != 0) {
            int i20 = o0.e.B % 1000;
            iArr[3] = ((i20 % 1000) / 100) + 48;
            iArr[4] = ((i20 % 100) / 10) + 48;
            iArr[5] = (i20 % 10) + 48;
            iArr[6] = 32;
            int i21 = o0.e.f16794r;
            int i22 = (i21 / 60) % 60;
            iArr[7] = (i22 / 10) + 48;
            iArr[8] = (i22 % 10) + 48;
            int i23 = i21 % 60;
            iArr[9] = (i23 / 10) + 48;
            iArr[10] = (i23 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i24 = i2 + 1;
            iArr2[i24] = (byte) iArr[i2];
            i2 = i24;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static byte k() {
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
                    b2 = 6;
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
            case 11:
                b2 = 1;
                break;
            case 12:
                b2 = -2;
                break;
            case 13:
                b2 = -1;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:6:0x0011  */
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
            case 12:
                b2 = -123;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 != 1) {
                    b2 = (i3 != 2 && i3 != 3) ? (byte) 0 : (byte) 13;
                } else {
                    b2 = 6;
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
            case 11:
                b2 = 1;
                break;
            case 13:
                b2 = 21;
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
        int[] iArr = new int[16];
        f13057c = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 16; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 14;
        iArr[1] = 145;
        iArr[2] = k();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[4] = 77;
            iArr[5] = 85;
            iArr[6] = 84;
            iArr[7] = 69;
        } else {
            iArr[4] = 86;
            iArr[5] = 79;
            iArr[6] = 76;
            if (i2 >= 10) {
                iArr[9] = (i2 / 10) + 48;
            }
            iArr[10] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i3 < 16) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public static void n() {
        int i2;
        int[] iArr = new int[15];
        f13057c = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = k();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[4] = 77;
            iArr[5] = 85;
            iArr[6] = 84;
            iArr[7] = 69;
        } else {
            iArr[4] = 86;
            iArr[5] = 79;
            iArr[6] = 76;
            if (i2 >= 10) {
                iArr[9] = (i2 / 10) + 48;
            }
            iArr[10] = (i2 % 10) + 48;
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

    public static int o(int i2) {
        int i3 = (((i2 + 1) * 10) / 8) - 1;
        if (i3 > 9) {
            return 15;
        }
        return i3;
    }

    public static int p(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    public static int q(int i2) {
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

    public static int r(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 != 1) {
            return i2 != 2 ? 15 : 8;
        }
        return 0;
    }

    public static int s(int i2) {
        if (i2 != 0) {
            return (i2 - 1) * 2;
        }
        return 15;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    public static void t() {
        int i2;
        switch (u0.b.D) {
            case 0:
            case 9:
            case 11:
            default:
                i2 = 9;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 == i3 - 65536) {
                    i2 = 3;
                } else if (i3 + 0 != 0) {
                    i2 = 1 != i3 - 0 ? 9 : 5;
                } else {
                    i2 = 4;
                }
                break;
            case 2:
            case 3:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 7;
                } else if (i4 == 2) {
                    i2 = 14;
                } else if (i4 != 3) {
                    i2 = 9;
                } else {
                    i2 = 13;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 12:
                i2 = 254;
                break;
            case 13:
                i2 = 255;
                break;
        }
        if (u0.b.f17347o == 1) {
            i2 = 16;
        }
        z.k.s(227, 14, 145, i2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    }

    public static void u(int i2) {
        if (i2 == 0) {
            u0.d.B3(0);
        } else {
            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i2 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i2 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }
}
