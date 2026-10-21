package k0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class eh extends lt {
    public static int A;
    public static final int[] B = {0, 3, 6, 9, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static int f4762y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f4763z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4764b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4767e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4770h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4765c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4766d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 4}, new int[]{20, 3}, new int[]{21, 21}, new int[]{22, 52}, new int[]{23, 22}, new int[]{24, -1}, new int[]{25, 3}, new int[]{26, 4}, new int[]{27, 1}, new int[]{28, 75}, new int[]{29, 74}, new int[]{30, 64}, new int[]{135, 12}, new int[]{137, 74}, new int[]{138, 58}, new int[]{139, 55}, new int[]{140, 16}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4768f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4769g = {new int[]{1, 34}, new int[]{2, 34}, new int[]{3, 33}, new int[]{4, 33}, new int[]{5, 35}, new int[]{6, 35}, new int[]{7, 32}, new int[]{8, 32}, new int[]{16, 31}, new int[]{17, 30}, new int[]{18, 29}, new int[]{19, 6}, new int[]{20, 5}, new int[]{21, 38}, new int[]{22, 1}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4771i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f4772j = {new int[]{1, 75}, new int[]{2, 74}, new int[]{3, 74}, new int[]{4, 53}, new int[]{5, 1}, new int[]{6, 25}, new int[]{7, 5}, new int[]{8, 58}, new int[]{9, 25}, new int[]{10, 56}, new int[]{11, 72}, new int[]{12, 38}, new int[]{13, 11}, new int[]{14, 15}, new int[]{16, 38}, new int[]{17, 62}, new int[]{18, 6}, new int[]{19, 0}, new int[]{20, 31}, new int[]{21, 30}, new int[]{22, 55}, new int[]{23, 5}, new int[]{24, 32}, new int[]{25, 32}, new int[]{26, 35}, new int[]{27, 35}, new int[]{28, 33}, new int[]{29, 33}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4773k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f4774l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f4775m = 27;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f4776n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public o1.g0 f4777o = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4778p = new a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f4779q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4780r = new c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4781s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f4782t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f4783u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f4784v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f4785w = new f();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f4786x = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 132, 2, 7, eh.B[o1.o0.a(y0.f.f18037c, 0, 36)]);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 136, 1, y0.f.C0 | 128);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 135, 2, (byte) time.hour, (byte) time.minute);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(eh.this.f4783u);
            eh.this.f4781s = 10;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            eh ehVar = eh.this;
            int i2 = ehVar.f4781s - 1;
            ehVar.f4781s = i2;
            if (i2 <= 0) {
                l0.b0.p0(ehVar.f4783u);
                eh.this.f4781s = 11;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                eh ehVar2 = eh.this;
                ehVar2.i3(ehVar2.f4777o.b(27, 0));
                eh ehVar3 = eh.this;
                ehVar3.h3(ehVar3.f4777o.b(2, 0));
                z.k.s(227, 144, 2, 48, 0);
                switch (nt.f8633a) {
                    case 917956:
                    case 15008198:
                        z.k.s(227, 226, 1, 80);
                        break;
                    case 983492:
                    case 15598022:
                        z.k.s(227, 226, 1, 81);
                        break;
                    case 983495:
                    case 3015111:
                    case 3342791:
                    case 4719048:
                    case 4850120:
                    case 5308868:
                    case 8913349:
                    case 10420679:
                    case 16581062:
                        z.k.s(227, 226, 1, 100);
                        break;
                    case 1049031:
                    case 3080647:
                    case 3408327:
                    case 4784584:
                    case 4915656:
                    case 5374404:
                    case 8978885:
                    case 10486215:
                    case 16646598:
                        z.k.s(227, 226, 1, 101);
                        break;
                    case 1114565:
                    case 4981192:
                        z.k.s(227, 226, 1, 96);
                        break;
                    case 1180101:
                    case 5046728:
                        z.k.s(227, 226, 1, 97);
                        break;
                    case 2687431:
                        z.k.s(227, -30, 1, 36);
                        break;
                    case 2752967:
                        z.k.s(227, -30, 1, 37);
                        break;
                    case 2818503:
                        z.k.s(227, -30, 1, 38);
                        break;
                    case 3080631:
                    case 4391368:
                    case 11928007:
                    case 12255687:
                        z.k.s(227, 226, 1, 32);
                        break;
                    case 3146167:
                    case 4456904:
                    case 12321223:
                    case 12452295:
                        z.k.s(227, 226, 1, 33);
                        break;
                    case 3211703:
                    case 11993543:
                        z.k.s(227, 226, 1, 48);
                        break;
                    case 3277239:
                    case 12386759:
                        z.k.s(227, 226, 1, 49);
                        break;
                    case 3539398:
                    case 12648903:
                        z.k.s(227, 226, 1, 102);
                        z.k.s(227, 132, 2, 8, 1);
                        break;
                    case 3604934:
                    case 12714439:
                        z.k.s(227, 226, 1, 103);
                        z.k.s(227, 132, 2, 8, 1);
                        break;
                    case 3801542:
                        z.k.s(227, 226, 1, 110);
                        z.k.s(227, 132, 2, 8, 1);
                        break;
                    case 3867078:
                        z.k.s(227, 226, 1, 111);
                        z.k.s(227, 132, 2, 8, 1);
                        break;
                    case 5439940:
                        z.k.s(227, 226, 1, 98);
                        break;
                    case 5505476:
                        z.k.s(227, 226, 1, 99);
                        break;
                    case 7864776:
                    case 8323528:
                    case 8389064:
                    case 8454600:
                    case 15139270:
                        z.k.s(227, -30, 1, 112);
                        break;
                    case 7930312:
                    case 15532486:
                        z.k.s(227, -30, 1, 113);
                        break;
                    case 9634245:
                        z.k.s(227, 226, 1, 108);
                        break;
                    case 9699781:
                        z.k.s(227, 226, 1, 109);
                        z.k.s(227, 132, 2, 8, 1);
                        break;
                }
                int i3 = u0.b.D;
                if (i3 == 11 || i3 == 13) {
                    return;
                }
                z.k.s(227, 132, 2, 48, 5);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 != eh.this.f4784v) {
                if (i2 == 11 || i2 == 13) {
                    z.k.s(227, 227, 1, 1);
                } else {
                    z.k.s(227, 132, 2, 48, 5);
                    z.k.s(227, 227, 1, 0);
                }
                eh.this.f4784v = u0.b.D;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void N2() {
        if (nt.f8633a != 1049031) {
            return;
        }
        y0.f.C0 = 18;
    }

    @Override // k0.lt
    public void S2() {
        this.f4777o.a();
        u0.c.f17386m.a(this.f4782t, 1);
        qt.z(this.f4780r);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        switch (nt.f8633a) {
            case 983495:
            case 1049031:
            case 3015111:
            case 3080647:
            case 3342791:
            case 3408327:
            case 4719048:
            case 4784584:
            case 8913349:
            case 8978885:
            case 10420679:
            case 10486215:
            case 16581062:
            case 16646598:
                y0.g.f18094d.a(this.f4779q, 1);
                y0.g.f18095e.a(this.f4779q, 1);
                break;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8314i = 0;
            mtVar2.f8322q = 1;
            if (a.f.w() == 1080) {
                this.f7886a.f8314i = 1;
            }
        } else {
            mt mtVar3 = this.f7886a;
            mtVar3.f8314i = 1;
            mtVar3.f8322q = 0;
        }
        switch (nt.f8633a) {
            case 11928007:
            case 11993543:
            case 12255687:
            case 12321223:
            case 12386759:
            case 12452295:
                this.f7886a.f8314i = 0;
                break;
        }
        u0.c.f17374a.a(this.f4785w, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        byte b2 = bArr[i2];
        if (b2 == 36) {
            int i4 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i4 >> 6) & 1);
                qt.y0(1, (i4 >> 7) & 1);
            } else {
                qt.y0(2, (i4 >> 7) & 1);
                qt.y0(1, (i4 >> 6) & 1);
            }
            qt.y0(4, (i4 >> 5) & 1);
            qt.y0(3, (i4 >> 4) & 1);
            qt.y0(5, (i4 >> 3) & 1);
            int i5 = i2 + 3;
            l0.c0.N1((bArr[i5] >> 3) & 1, (bArr[i5] >> 2) & 1, 0);
        }
        if (b2 == 38) {
            byte b3 = bArr[i2 + 2];
            int[] iArr4 = new int[1];
            iArr4[0] = (b3 & 128) == 0 ? 0 : 1;
            qt.y0(159, iArr4);
            qt.y0(160, (b3 & 112) >> 4);
            qt.y0(161, (b3 & DhcpPacket.DHCP_HOST_NAME) >> 2);
            qt.y0(162, b3 & 3);
            byte b4 = bArr[i2 + 3];
            int[] iArr5 = new int[1];
            iArr5[0] = (b4 & 128) == 0 ? 0 : 1;
            qt.y0(163, iArr5);
            int[] iArr6 = new int[1];
            iArr6[0] = (b4 & 64) == 0 ? 0 : 1;
            qt.y0(164, iArr6);
            int[] iArr7 = new int[1];
            iArr7[0] = (b4 & 32) == 0 ? 0 : 1;
            qt.y0(165, iArr7);
            int[] iArr8 = new int[1];
            iArr8[0] = (b4 & 16) == 0 ? 0 : 1;
            qt.y0(166, iArr8);
            qt.y0(167, b4 & 7);
            byte b5 = bArr[i2 + 4];
            int[] iArr9 = new int[1];
            iArr9[0] = (b5 & 128) == 0 ? 0 : 1;
            qt.y0(168, iArr9);
            int[] iArr10 = new int[1];
            iArr10[0] = (b5 & 64) == 0 ? 0 : 1;
            qt.y0(169, iArr10);
            int[] iArr11 = new int[1];
            iArr11[0] = (b5 & 32) == 0 ? 0 : 1;
            qt.y0(170, iArr11);
            int[] iArr12 = new int[1];
            iArr12[0] = (b5 & 16) == 0 ? 0 : 1;
            qt.y0(171, iArr12);
            int[] iArr13 = new int[1];
            iArr13[0] = (b5 & 8) == 0 ? 0 : 1;
            qt.y0(172, iArr13);
            qt.y0(173, b5 & 7);
            byte b6 = bArr[i2 + 5];
            int[] iArr14 = new int[1];
            iArr14[0] = (b6 & 128) == 0 ? 0 : 1;
            qt.y0(174, iArr14);
            int[] iArr15 = new int[1];
            iArr15[0] = (b6 & 64) == 0 ? 0 : 1;
            qt.y0(175, iArr15);
            qt.y0(176, (b6 >> 2) & 3);
            qt.y0(177, b6 & 3);
            byte b7 = bArr[i2 + 6];
            qt.y0(178, (b7 >> 2) & 7);
            qt.y0(179, b7 & 3);
            qt.y0(180, (b7 >> 5) & 3);
            return;
        }
        if (b2 == 53) {
            int i6 = i2 + 2;
            int i7 = i2 + 3;
            qt.y0(143, ((bArr[i6] << 8) & 65280) | (bArr[i7] & 255));
            o1.x[] xVarArr = nt.f8643f;
            o1.x.C(xVarArr, 1049, new int[]{16, ((bArr[i6] << 8) & 65280) | 131072 | (bArr[i7] & 255)}, null, null);
            qt.y0(144, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            int i8 = i2 + 6;
            int i9 = i2 + 7;
            qt.y0(145, ((bArr[i8] << 8) & 65280) | (bArr[i9] & 255));
            o1.x.C(xVarArr, 1049, new int[]{5, ((bArr[i8] << 8) & 65280) | (bArr[i9] & 255)}, null, null);
            qt.y0(146, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(147, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
            return;
        }
        if (b2 == 80) {
            qt.y0(1032, (bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 40) {
            int i10 = bArr[i2 + 2] & 255;
            int i11 = bArr[i2 + 3] & 255;
            int i12 = bArr[i2 + 6] & 255;
            int i13 = bArr[i2 + 7] & 255;
            qt.y0(10, (i10 >> 7) & 1);
            qt.y0(11, (i10 >> 6) & 1);
            qt.y0(12, (i10 >> 5) & 1);
            qt.y0(59, (i10 >> 4) & 1);
            qt.y0(13, (i10 >> 3) & 1);
            qt.y0(14, (i10 >> 2) & 1);
            qt.y0(15, (i10 >> 1) & 1);
            qt.y0(38, (i10 >> 0) & 1);
            if (f4763z == 0) {
                qt.y0(18, (i11 >> 7) & 1);
                qt.y0(19, (i11 >> 6) & 1);
                qt.y0(20, (i11 >> 5) & 1);
                if ((bArr[i2 + 1] & 255) >= 10) {
                    int i14 = i2 + 11;
                    qt.y0(22, (bArr[i14] >> 7) & 1);
                    qt.y0(23, (bArr[i14] >> 6) & 1);
                    qt.y0(24, (bArr[i14] >> 5) & 1);
                }
            } else {
                qt.y0(22, (i11 >> 7) & 1);
                qt.y0(23, (i11 >> 6) & 1);
                qt.y0(24, (i11 >> 5) & 1);
                if ((bArr[i2 + 1] & 255) >= 10) {
                    int i15 = i2 + 11;
                    qt.y0(18, (bArr[i15] >> 7) & 1);
                    qt.y0(19, (bArr[i15] >> 6) & 1);
                    qt.y0(20, (bArr[i15] >> 5) & 1);
                }
            }
            qt.y0(21, i11 & 15);
            int i16 = i2 + 4;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 5;
            int i19 = bArr[i18] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i17 = bArr[i18] & 255;
                i19 = bArr[i16] & 255;
            }
            int i20 = SystemProperties.getInt("persist.fyt.temperature", 0);
            if (i17 == 0) {
                qt.y0(27, -2);
            } else if (i17 == 31) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i20 == 1 ? (i17 * 9) + 635 : (i17 * 5) + 175);
            }
            if (i19 == 0) {
                qt.y0(28, -2);
            } else if (i19 == 31) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i20 == 1 ? (i19 * 9) + 635 : (i19 * 5) + 175);
            }
            qt.y0(33, (i12 >> 7) & 1);
            qt.y0(16, (i12 >> 6) & 1);
            qt.y0(54, (i12 >> 5) & 1);
            qt.y0(76, (i12 >> 2) & 1);
            qt.y0(17, (i12 >> 1) & 1);
            int i21 = i2 + 8;
            if ((bArr[i21] & 255) == 0) {
                qt.y0(40, -2);
            } else if ((bArr[i21] & 255) == 31) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, i20 == 1 ? ((bArr[i21] & 255) * 9) + 635 : ((bArr[i21] & 255) * 5) + 175);
            }
            int i22 = i2 + 1;
            if ((bArr[i22] & 255) >= 9) {
                int i23 = i2 + 10;
                if ((bArr[i23] & 255) == 0) {
                    qt.y0(41, -2);
                } else if ((bArr[i23] & 255) == 31) {
                    qt.y0(41, -3);
                } else {
                    qt.y0(41, i20 == 1 ? ((bArr[i23] & 255) * 9) + 635 : ((bArr[i23] & 255) * 5) + 175);
                }
            }
            int i24 = i2 + 9;
            qt.y0(86, (bArr[i24] >> 5) & 7);
            qt.y0(85, (bArr[i24] >> 7) & 1);
            qt.y0(63, (bArr[i24] >> 5) & 1);
            qt.y0(43, (bArr[i24] >> 4) & 1);
            qt.y0(35, (bArr[i24] >> 3) & 1);
            qt.y0(44, (bArr[i24] >> 0) & 7);
            if ((bArr[i22] & 255) >= 10) {
                qt.y0(75, (bArr[i2 + 11] >> 1) & 1);
            }
            if ((bArr[i22] & 255) >= 11) {
                int i25 = i2 + 12;
                qt.y0(29, (bArr[i25] >> 4) & 15);
                qt.y0(30, (bArr[i25] >> 0) & 15);
            }
            if (i13 == 0) {
                u0.d.B3(0);
                return;
            } else {
                u0.d.B3(i20 == 1 ? (268435456 | ((i13 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i13 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
        }
        if (b2 == 41) {
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
            return;
        }
        if (b2 == 97) {
            int i26 = i2 + 2;
            qt.y0(106, (bArr[i26] >> 0) & 1);
            qt.y0(107, (bArr[i26] >> 1) & 1);
            qt.y0(108, (bArr[i26] >> 2) & 1);
            qt.y0(109, (bArr[i26] >> 3) & 1);
            qt.y0(110, (bArr[i26] >> 4) & 1);
            qt.y0(111, (bArr[i26] >> 5) & 1);
            qt.y0(112, (bArr[i2 + 3] >> 4) & 15);
            qt.y0(113, (bArr[i2 + 4] >> 0) & 15);
            return;
        }
        if (b2 == 98) {
            if (this.f4781s == 11) {
                int i27 = i2 + 2;
                if (bArr[i27] != this.f4786x) {
                    byte b8 = bArr[i27];
                    this.f4786x = b8;
                    if (b8 == 1) {
                        g3();
                    } else if (b8 == 2) {
                        f3();
                    }
                }
            }
            int i28 = i2 + 2;
            qt.y0(114, bArr[i28] & 255);
            int i29 = bArr[i28] & 255;
            if (i29 != 1) {
                if (i29 != 2) {
                    if (i29 != 4) {
                        return;
                    }
                    qt.y0(183, (bArr[i2 + 6] >> 6) & 1);
                    return;
                }
                qt.y0(113, (bArr[i2 + 4] >> 0) & 15);
                int i30 = i2 + 5;
                qt.y0(126, (bArr[i30] >> 4) & 15);
                qt.y0(127, (bArr[i30] >> 0) & 15);
                qt.y0(128, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(129, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(132, bArr[i2 + 10] & 255);
                qt.y0(131, bArr[i2 + 11] & 255);
                qt.y0(130, bArr[i2 + 12] & 255);
                qt.y0(135, bArr[i2 + 13] & 255);
                qt.y0(134, bArr[i2 + 14] & 255);
                qt.y0(133, bArr[i2 + 15] & 255);
                return;
            }
            int i31 = i2 + 3;
            if (bArr[i31] == 0) {
                qt.y0(115, bArr[i2 + 4] & 255);
                int i32 = i2 + 5;
                qt.y0(118, (bArr[i32] >> 7) & 1);
                qt.y0(117, (bArr[i32] >> 5) & 1);
                qt.y0(116, (bArr[i32] >> 0) & 15);
                qt.y0(119, (bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280));
                return;
            }
            if (bArr[i31] == 1) {
                qt.y0(115, bArr[i2 + 4] & 255);
                qt.y0(120, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(121, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(122, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(123, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 11] & 255));
                qt.y0(124, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 13] & 255));
                qt.y0(125, (bArr[i2 + 15] & 255) | ((bArr[i2 + 16] << 8) & 65280));
                return;
            }
            return;
        }
        if (b2 == 100) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            this.f4771i = b9 & 255;
            int i33 = 0;
            while (true) {
                iArr = this.f4772j;
                if (i33 >= iArr.length) {
                    break;
                }
                int i34 = this.f4771i;
                if (i34 == iArr[i33][0]) {
                    if (i34 == 0) {
                        break;
                    }
                    this.f4770h = i33;
                    break;
                }
                i33++;
            }
            int i35 = this.f4771i;
            if (i35 == 20) {
                for (int i36 = 0; i36 < (b10 & 255); i36++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i35 == 21) {
                for (int i37 = 0; i37 < (b10 & 255); i37++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i38 = b10 & 255;
            if (i38 == 1) {
                if (i33 < iArr.length) {
                    l0.b0.l0(iArr[i33][1], 0);
                    return;
                }
                return;
            } else {
                if (i38 == 0) {
                    int i39 = this.f4770h;
                    if (i39 < iArr.length && i39 != 255) {
                        l0.b0.l0(iArr[i39][1], 1);
                    }
                    this.f4770h = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 101) {
            byte b11 = bArr[i2 + 2];
            byte b12 = bArr[i2 + 3];
            this.f4768f = b11 & 255;
            int i40 = 0;
            while (true) {
                iArr2 = this.f4769g;
                if (i40 >= iArr2.length) {
                    break;
                }
                int i41 = this.f4768f;
                if (i41 == iArr2[i40][0]) {
                    if (i41 == 0) {
                        break;
                    }
                    this.f4767e = i40;
                    break;
                }
                i40++;
            }
            int i42 = b12 & 255;
            if (i42 == 1) {
                if (i40 < iArr2.length) {
                    l0.b0.l0(iArr2[i40][1], 0);
                    return;
                }
                return;
            } else {
                if (i42 == 0) {
                    int i43 = this.f4767e;
                    if (i43 < iArr2.length && i43 != 255) {
                        l0.b0.l0(iArr2[i43][1], 1);
                    }
                    this.f4767e = 255;
                    return;
                }
                return;
            }
        }
        switch (b2) {
            case 29:
                int i44 = i2 + 2;
                int i45 = bArr[i44] & 255;
                int i46 = i2 + 3;
                int i47 = bArr[i46] & 255;
                int i48 = i2 + 4;
                int i49 = bArr[i48] & 255;
                int i50 = i2 + 5;
                int i51 = bArr[i50] & 255;
                if (i45 == 0 && i47 == 0 && i49 == 0 && i51 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i45 || l0.c0.f13014h != i47 || l0.c0.f13015i != i49 || l0.c0.f13016j != i51) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i45;
                l0.c0.f13014h = i47;
                l0.c0.f13015i = i49;
                l0.c0.f13016j = i51;
                u0.d.D2(l0.c0.E0(bArr[i44] & 255));
                u0.d.E2(l0.c0.E0(bArr[i46] & 255));
                u0.d.F2(l0.c0.E0(bArr[i48] & 255));
                u0.d.G2(l0.c0.E0(bArr[i50] & 255));
                break;
            case 30:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                int i52 = i2 + 6;
                qt.y0(151, (bArr[i52] >> 7) & 1);
                qt.y0(152, (bArr[i52] >> 6) & 1);
                qt.y0(153, (bArr[i52] >> 5) & 1);
                qt.y0(154, (bArr[i52] >> 0) & 7);
                break;
            case 31:
                int i53 = i2 + 2;
                byte b13 = bArr[i53];
                qt.y0(148, (b13 >> 0) & 15);
                qt.y0(149, (b13 >> 7) & 1);
                int i54 = i2 + 3;
                qt.y0(150, bArr[i54] & 255);
                o1.x.C(nt.f8643f, 1049, new int[]{15, (bArr[i54] & 255) | ((bArr[i53] << 8) & 65280)}, null, null);
                break;
            case 32:
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                this.f4765c = b14 & 255;
                int i55 = 0;
                while (true) {
                    iArr3 = this.f4766d;
                    if (i55 < iArr3.length) {
                        int i56 = this.f4765c;
                        if (i56 != iArr3[i55][0]) {
                            i55++;
                        } else if (i56 != 0) {
                            this.f4764b = i55;
                        }
                    }
                }
                int i57 = this.f4765c;
                if (i57 != 19) {
                    if (i57 != 20) {
                        int i58 = b15 & 255;
                        if (i58 == 1) {
                            if (i55 < iArr3.length) {
                                l0.b0.l0(iArr3[i55][1], 0);
                            }
                        } else if (i58 == 0) {
                            int i59 = this.f4764b;
                            if (i59 < iArr3.length && i59 != 255) {
                                l0.b0.l0(iArr3[i59][1], 1);
                            }
                            this.f4764b = 255;
                        }
                    } else if ((b15 & 255) == 1) {
                        int i60 = u0.b.D;
                        if (i60 == 11) {
                            z.k.s(227, -124, 2, 37, 0);
                        } else if (i60 != 13) {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                        } else {
                            z.k.s(227, -124, 2, 19, 0);
                        }
                    }
                } else if ((b15 & 255) == 1) {
                    int i61 = u0.b.D;
                    if (i61 == 11) {
                        z.k.s(227, -124, 2, 38, 0);
                    } else if (i61 != 13) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                    } else {
                        z.k.s(227, -124, 2, 20, 0);
                    }
                }
                break;
            case 33:
                qt.y0(100, bArr[i2 + 2] & 255);
                qt.y0(101, bArr[i2 + 4] & 255);
                qt.y0(102, bArr[i2 + 5] & 255);
                qt.y0(103, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(104, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                qt.y0(105, bArr[i2 + 10] & 255);
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i62 = i2 + 2;
                        qt.y0(136, (bArr[i62] >> 4) & 15);
                        qt.y0(137, (bArr[i62] >> 0) & 15);
                        int i63 = i2 + 3;
                        qt.y0(139, (bArr[i63] >> 4) & 15);
                        qt.y0(140, (bArr[i63] >> 0) & 15);
                        int i64 = i2 + 4;
                        qt.y0(141, (bArr[i64] >> 4) & 15);
                        qt.y0(138, (bArr[i64] >> 0) & 15);
                        qt.y0(142, (bArr[i2 + 5] >> 0) & 255);
                        break;
                    case 50:
                        byte b16 = bArr[i2 + 2];
                        int i65 = (b16 >> 6) & 1;
                        if ((b16 & 1) != 0) {
                            if (i65 == 0) {
                                z.k.s(227, 132, 2, 8, 1);
                            }
                            this.f4773k = true;
                        } else {
                            this.f4773k = false;
                        }
                        int i66 = (b16 & 8) == 0 ? 0 : 1;
                        f4762y = i66;
                        qt.y0(Process.MEDIA_UID, i66);
                        if (u0.b.f17357r0 != 0 && !qt.k0() && A == 1) {
                            if (f4762y != 0) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4777o.j();
        u0.c.f17386m.d(this.f4782t);
        l0.b0.p0(this.f4783u);
        u0.c.f17374a.d(this.f4785w);
        qt.q0(this.f4780r);
        y0.g.f18094d.d(this.f4779q);
        y0.g.f18095e.d(this.f4779q);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 184) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 30) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            qt.y0(158, iArr[0]);
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 255) / a.f.w();
                int i3 = (iArr[2] * 255) / a.f.i();
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    i3 = (iArr[2] * 255) / BluetoothClass.Device.PHONE_CORDLESS;
                }
                if (iArr[0] == 0) {
                    z.k.s(227, 134, 2, iW, i3);
                    return;
                } else {
                    z.k.s(227, 134, 2, 0, 0);
                    return;
                }
            }
            return;
        }
        if (i2 == 1040) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
            if (iArr[0] != 0) {
                return;
            }
            switch (iArr[1]) {
                case 1:
                    if (iArr[2] == 1) {
                        a3(10);
                    } else if (iArr[2] == 2) {
                        a3(9);
                    }
                    break;
                case 2:
                    if (iArr[2] == 1) {
                        a3(3);
                    } else if (iArr[2] == 2) {
                        a3(2);
                    }
                    break;
                case 3:
                    if (iArr[2] == 1) {
                        a3(5);
                    } else if (iArr[2] == 2) {
                        a3(4);
                    }
                    break;
                case 4:
                    a3(18);
                    break;
                case 5:
                    a3(20);
                    break;
                case 6:
                    a3(23);
                    break;
                case 7:
                    a3(16);
                    break;
                case 8:
                    a3(36);
                    break;
            }
        }
        switch (i2) {
            case 0:
                int i4 = iArr[0];
                if (i4 == 2) {
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        z.k.s(227, 224, 2, 2, iArr[1]);
                    } else {
                        z.k.s(227, 224, 2, 4, iArr[1]);
                    }
                } else if (i4 == 3) {
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        z.k.s(227, 224, 2, 3, iArr[1]);
                    } else {
                        z.k.s(227, 224, 2, 5, iArr[1]);
                    }
                } else if (i4 == 4) {
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        z.k.s(227, 224, 2, 4, iArr[1]);
                    } else {
                        z.k.s(227, 224, 2, 2, iArr[1]);
                    }
                } else if (i4 == 5) {
                    if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        z.k.s(227, 224, 2, 5, iArr[1]);
                    } else {
                        z.k.s(227, 224, 2, 3, iArr[1]);
                    }
                } else if (i4 == 36) {
                    if (f4763z != 1) {
                        z.k.s(227, 224, 2, 36, iArr[1]);
                    } else {
                        z.k.s(227, 224, 2, 37, iArr[1]);
                    }
                } else if (i4 != 37) {
                    z.k.s(227, 224, 2, iArr[0], iArr[1]);
                } else if (f4763z != 1) {
                    z.k.s(227, 224, 2, 37, iArr[1]);
                } else {
                    z.k.s(227, 224, 2, 36, iArr[1]);
                }
                break;
            case 1:
                z.k.s(227, 197, 2, iArr[0], 0);
                break;
            case 2:
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 4:
                z.k.s(227, 229, 2, iArr[0], iArr[1]);
                break;
            case 5:
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                break;
            case 6:
                i3(iArr[0]);
                break;
            case 7:
                h3(iArr[0]);
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 224, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, 224, 2, i2, 0);
    }

    public final void f3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.lz.lexusis.LuzLexusISCd")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.lz.lexusis.LuzLexusISCd");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void g3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.lz.lexusis.LuzLexusISRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.lz.lexusis.LuzLexusISRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void h3(int i2) {
        A = i2;
        qt.y0(182, i2);
        int iB = this.f4777o.b(2, 0);
        int i3 = A;
        if (iB != i3) {
            this.f4777o.g(2, i3);
        }
    }

    public final void i3(int i2) {
        qt.y0(181, i2);
        f4763z = i2;
        int iB = this.f4777o.b(27, 0);
        int i3 = f4763z;
        if (iB != i3) {
            this.f4777o.g(27, i3);
        }
    }
}
