package k0;

import android.content.Intent;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ck extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4078b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4081e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4079c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4080d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4082f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4083g = {new int[]{1, 0}, new int[]{6, 6}, new int[]{22, 29}, new int[]{32, 1}, new int[]{43, 5}, new int[]{44, 2}, new int[]{48, 18}, new int[]{75, 21}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4084h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4085i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4086j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4087k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4088l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4089m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4090n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f4091o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4092p = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 9 || i2 == 8) {
                ck.this.d3((byte) -44, u0.b.i3);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ck.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            byte b3 = (byte) time.hour;
            byte b4 = (byte) time.minute;
            int[] iArr = new int[13];
            iArr[0] = 227;
            iArr[1] = 10;
            iArr[2] = -53;
            iArr[3] = 0;
            iArr[4] = 0;
            iArr[5] = 0;
            iArr[6] = b3;
            iArr[7] = b4;
            iArr[8] = b2;
            iArr[9] = b3 < 12 ? 0 : 1;
            iArr[10] = 0;
            iArr[11] = 0;
            iArr[12] = 0;
            z.k.s(iArr);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ck ckVar = ck.this;
            ckVar.f4085i = 0;
            ckVar.f4086j = 0;
            l0.b0.b(ckVar.f4092p);
            ck.this.f4090n = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ck ckVar = ck.this;
            int i2 = ckVar.f4090n - 1;
            ckVar.f4090n = i2;
            if (i2 <= 0) {
                l0.b0.p0(ckVar.f4092p);
                ck.this.f4090n = 5;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8633a;
                if (i3 == 65979) {
                    z.k.s(227, 2, 36, 8, 13);
                    return;
                }
                switch (i3) {
                    case 443:
                    case 7012795:
                    case 8716731:
                        z.k.s(227, 2, 36, 3, 26);
                        break;
                    case 6357436:
                        z.k.s(227, 2, 36, 13, 26);
                        break;
                    case 6422972:
                    case 6554044:
                        z.k.s(227, 2, 36, 14, 26);
                        break;
                    case 8782267:
                        z.k.s(227, 2, 36, 4, 26);
                        break;
                    case 8847803:
                        z.k.s(227, 2, 36, 5, 26);
                        break;
                    case 8913339:
                        z.k.s(227, 2, 36, 6, 26);
                        break;
                    case 8978875:
                    case 9241019:
                        z.k.s(227, 2, 36, 7, 26);
                        break;
                    case 9044411:
                        z.k.s(227, 2, 36, 8, 26);
                        break;
                    case 9175483:
                        z.k.s(227, 2, 36, 10, 26);
                        break;
                    case 14352827:
                        z.k.s(227, 2, 36, 9, 26);
                        break;
                    case 14418363:
                        z.k.s(227, 2, 36, 11, 26);
                        break;
                    case 14811579:
                    case 14877115:
                        z.k.s(227, 2, 36, 12, 26);
                        break;
                    default:
                        z.k.s(227, 2, 36, 0, 26);
                        break;
                }
            }
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
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[3] = 48;
                int i6 = w0.d.f17798j;
                if ((i6 & 255) % 6 != 0 || (i6 & 255) == 0) {
                    iArr[4] = ((i6 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                int i7 = w0.d.f17797i;
                iArr[6] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[7] = ((i7 % 10000) / 1000) + 48;
                iArr[8] = ((i7 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i7 % 100) / 10) + 48;
            } else {
                iArr[3] = 48;
                int i8 = w0.d.f17798j;
                if ((i8 & 255) % 6 != 0 || (i8 & 255) == 0) {
                    iArr[4] = ((i8 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                int i9 = w0.d.f17797i;
                if (i9 / 1000 == 0) {
                    iArr[6] = ((i9 % 1000) / 100) + 48;
                    iArr[7] = ((i9 % 100) / 10) + 48;
                    iArr[8] = (i9 % 10) + 48;
                } else {
                    iArr[6] = (i9 / 1000) + 48;
                    iArr[7] = ((i9 % 1000) / 100) + 48;
                    iArr[8] = ((i9 % 100) / 10) + 48;
                    iArr[9] = (i9 % 10) + 48;
                }
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i10 = u0.b.r3;
                    iArr[3] = ((i10 / 100) % 10) + 48;
                    iArr[4] = ((i10 / 10) % 10) + 48;
                    iArr[5] = (i10 % 10) + 48;
                    iArr[6] = 32;
                    int i11 = u0.b.t3;
                    iArr[7] = ((i11 / 60) / 10) + 48;
                    iArr[8] = ((i11 / 60) % 10) + 48;
                    iArr[9] = ((i11 % 60) / 10) + 48;
                    iArr[10] = ((i11 % 60) % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i12 = d1.d.f1572e;
                if (i12 / 10 > 0) {
                    iArr[3] = (i12 / 10) + 48;
                }
                iArr[4] = (i12 % 10) + 48;
                iArr[5] = 45;
                int i13 = d1.d.f1571d / 100;
                int i14 = i13 / 10000;
                if (i14 > 0) {
                    iArr[6] = i14 + 48;
                }
                iArr[7] = ((i13 % 10000) / 1000) + 48;
                iArr[8] = ((i13 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i13 % 100) / 10) + 48;
                iArr[11] = ((i13 % 10) / 1) + 48;
            }
        } else if (o0.e.C != 0) {
            int i15 = o0.e.B;
            iArr[3] = ((i15 / 100) % 10) + 48;
            iArr[4] = ((i15 / 10) % 10) + 48;
            iArr[5] = (i15 % 10) + 48;
            iArr[6] = 32;
            int i16 = o0.e.f16794r;
            iArr[7] = ((i16 / 60) / 10) + 48;
            iArr[8] = ((i16 / 60) % 10) + 48;
            iArr[9] = ((i16 % 60) / 10) + 48;
            iArr[10] = ((i16 % 60) % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i17 = i2 + 1;
            iArr2[i17] = (byte) iArr[i2];
            i2 = i17;
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

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 1;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(this.f4091o, 1);
        switch (nt.f8633a) {
            case 443:
            case 7012795:
                this.f7886a.f8314i = 1;
                break;
            case 6357436:
            case 8847803:
            case 9175483:
            case 14418363:
                qt.z(this.f4089m);
                qt.z(this.f4088l);
                u0.c.f17388o.a(this.f4087k, 1);
                break;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        switch (bArr[i2 + 1]) {
            case CameraBinderDecorator.DEAD_OBJECT /* -32 */:
                int i9 = i2 + 2;
                if (this.f4084h != bArr[i9]) {
                    this.f4084h = bArr[i9];
                    switch (bArr[i9]) {
                        case 32:
                            l0.b0.l0(75, 0);
                            l0.b0.l0(75, 1);
                            break;
                        case 33:
                        case 34:
                            l0.b0.l0(74, 0);
                            l0.b0.l0(74, 1);
                            break;
                        case 36:
                        case 39:
                            l0.b0.l0(54, 0);
                            l0.b0.l0(54, 1);
                            break;
                        case 37:
                            l0.b0.l0(76, 0);
                            l0.b0.l0(76, 1);
                            break;
                        case 38:
                            l0.b0.l0(53, 0);
                            l0.b0.l0(53, 1);
                            break;
                    }
                }
                break;
            case -16:
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                break;
            case 17:
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 5];
                this.f4079c = b3 & 255;
                int i10 = 0;
                while (true) {
                    iArr = this.f4080d;
                    if (i10 < iArr.length) {
                        int i11 = this.f4079c;
                        if (i11 != iArr[i10][0]) {
                            i10++;
                        } else if (i11 != 0) {
                            this.f4078b = i10;
                        }
                    }
                }
                int i12 = b4 & 255;
                if (i12 != 1) {
                    if (i12 == 0) {
                        int i13 = this.f4078b;
                        if (i13 < iArr.length) {
                            b2 = 255;
                            if (i13 != 255) {
                                l0.b0.l0(iArr[i13][1], 1);
                            }
                        } else {
                            b2 = 255;
                        }
                        this.f4078b = b2;
                    }
                    qt.i(bArr[i2 + 9] & b2, bArr[i2 + 8] & b2, true, 540);
                } else if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                }
                b2 = 255;
                qt.i(bArr[i2 + 9] & b2, bArr[i2 + 8] & b2, true, 540);
                break;
            case 18:
                byte b5 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                } else {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                }
                qt.y0(3, (b5 >> 5) & 1);
                qt.y0(4, (b5 >> 4) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                break;
            case 24:
                qt.y0(122, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(123, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(124, bArr[i2 + 6] & 255);
                qt.y0(125, bArr[i2 + 7] & 255);
                qt.y0(126, bArr[i2 + 8] & 255);
                qt.y0(127, bArr[i2 + 9] & 255);
                qt.y0(128, bArr[i2 + 10] & 255);
                qt.y0(129, bArr[i2 + 11] & 255);
                qt.y0(130, (bArr[i2 + 13] & 255) | ((bArr[i2 + 12] << 8) & 65280));
                break;
            case 26:
                o1.x[] xVarArr = nt.f8643f;
                int i14 = i2 + 4;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i14] >> 7) & 1}, null, null);
                l0.c0.N1((bArr[i14] >> 0) & 1, (bArr[i14] >> 1) & 1, (bArr[i14] >> 2) & 1);
                o1.x.C(xVarArr, 1049, new int[]{11, ((((bArr[i14] >> 1) & 1) << 4) & 16) | ((((bArr[i14] >> 0) & 1) << 3) & 8) | ((u0.b.f17366w << 6) & 64)}, null, null);
                break;
            case 31:
                int i15 = i2 + 2;
                qt.y0(146, (bArr[i15] >> 7) & 1);
                qt.y0(147, (bArr[i15] >> 0) & 15);
                int i16 = i2 + 3;
                qt.y0(148, (bArr[i16] >> 7) & 1);
                qt.y0(149, (bArr[i16] >> 6) & 1);
                qt.y0(150, (bArr[i16] >> 5) & 1);
                qt.y0(151, (bArr[i16] >> 4) & 1);
                break;
            case 33:
                this.f4081e = bArr[i2 + 2] & 255;
                byte b6 = bArr[i2 + 3];
                int i17 = 0;
                while (true) {
                    iArr2 = this.f4083g;
                    if (i17 < iArr2.length) {
                        int i18 = this.f4081e;
                        if (i18 != iArr2[i17][0]) {
                            i17++;
                        } else if (i18 != 0) {
                            this.f4082f = i17;
                        }
                    }
                }
                if ((b6 & 255) == 0) {
                    int i19 = this.f4082f;
                    if (i19 < iArr2.length) {
                        i4 = 255;
                        if (i19 != 255) {
                            l0.b0.l0(iArr2[i19][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f4082f = i4;
                } else if (i17 < iArr2.length) {
                    l0.b0.l0(iArr2[i17][1], 0);
                }
                break;
            case 34:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                if (b7 == 1) {
                    int i20 = this.f4085i;
                    if (b8 != i20) {
                        if (b8 > i20) {
                            for (int i21 = 0; i21 < b8 - this.f4085i; i21++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (b8 < i20) {
                            for (int i22 = 0; i22 < this.f4085i - b8; i22++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        this.f4085i = b8;
                    }
                } else if ((b7 == 2 || b7 == 3 || b7 == 4 || b7 == 5) && b8 != (i5 = this.f4086j)) {
                    if (b8 > i5) {
                        for (int i23 = 0; i23 < b8 - this.f4086j; i23++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b8 < i5) {
                        for (int i24 = 0; i24 < this.f4086j - b8; i24++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f4086j = b8;
                }
                break;
            case 49:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 6];
                byte b13 = bArr[i2 + 7];
                qt.y0(10, (b9 >> 6) & 1);
                qt.y0(13, (b9 >> 3) & 1);
                qt.y0(11, (b10 >> 6) & 1);
                qt.y0(12, (b10 >> 4) & 1);
                qt.y0(14, (b10 >> 2) & 1);
                qt.y0(16, (b11 >> 5) & 1);
                qt.y0(65, (b11 >> 4) & 1);
                if (b12 == 3) {
                    i6 = 0;
                    i7 = 0;
                    i8 = 1;
                } else if (b12 != 12) {
                    if (b12 == 5) {
                        i6 = 0;
                        i7 = 1;
                    } else if (b12 != 6) {
                        i6 = 0;
                        i7 = 0;
                    } else {
                        i6 = 0;
                        i8 = 0;
                        i7 = 1;
                    }
                    i8 = i7;
                } else {
                    i7 = 0;
                    i6 = 1;
                    i8 = 1;
                }
                qt.y0(18, i6);
                qt.y0(19, i7);
                qt.y0(20, i8);
                qt.y0(21, b13 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i25 = i2 + 8;
                    if ((bArr[i25] & 255) == 254) {
                        qt.y0(28, -2);
                    } else if ((bArr[i25] & 255) == 255) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i25] & 255);
                    }
                    int i26 = i2 + 9;
                    if ((bArr[i26] & 255) == 254) {
                        qt.y0(27, -2);
                    } else if ((bArr[i26] & 255) == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i26] & 255);
                    }
                } else {
                    int i27 = i2 + 8;
                    if ((bArr[i27] & 255) == 254) {
                        qt.y0(27, -2);
                    } else if ((bArr[i27] & 255) == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i27] & 255);
                    }
                    int i28 = i2 + 9;
                    if ((bArr[i28] & 255) == 254) {
                        qt.y0(28, -2);
                    } else if ((bArr[i28] & 255) == 255) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i28] & 255);
                    }
                }
                break;
            case 50:
                int i29 = bArr[i2 + 4] & 255;
                int i30 = bArr[i2 + 5] & 255;
                int i31 = bArr[i2 + 6] & 255;
                int i32 = bArr[i2 + 7] & 255;
                qt.y0(1032, (i29 << 8) | i30);
                int i33 = (i31 << 8) | i32;
                qt.y0(1031, i33);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i33}, null, null);
                qt.y0(119, bArr[i2 + 8] & 255);
                qt.y0(120, bArr[i2 + 11] & 255);
                qt.y0(121, bArr[i2 + 15] & 255);
                break;
            case 52:
                int i34 = i2 + 4;
                int i35 = i2 + 5;
                qt.y0(157, ((bArr[i34] << 8) & 65280) | (bArr[i35] & 255));
                qt.y0(158, ((bArr[i34] << 8) & 65280) | (bArr[i35] & 255));
                qt.y0(159, ((bArr[i34] << 8) & 65280) | (bArr[i35] & 255));
                qt.y0(160, ((bArr[i34] << 8) & 65280) | (bArr[i35] & 255));
                int i36 = i2 + 6;
                int i37 = i2 + 7;
                int i38 = i2 + 8;
                qt.y0(115, ((bArr[i36] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i37] << 8) & 65280) | (bArr[i38] & 255));
                int i39 = i2 + 9;
                int i40 = i2 + 10;
                qt.y0(116, (bArr[i40] & 255) | ((bArr[i39] << 8) & 65280));
                int i41 = i2 + 11;
                int i42 = i2 + 12;
                int i43 = i2 + 13;
                qt.y0(117, (bArr[i43] & 255) | ((bArr[i41] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i42] << 8) & 65280));
                int i44 = i2 + 14;
                int i45 = i2 + 15;
                qt.y0(118, ((bArr[i44] << 8) & 65280) | (bArr[i45] & 255));
                int i46 = ((bArr[i36] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i37] << 8) & 65280) | (bArr[i38] & 255);
                int i47 = (16711680 & (bArr[i41] << 16)) | ((bArr[i42] << 8) & 65280) | (bArr[i43] & 255);
                int i48 = ((bArr[i39] << 8) & 65280) | (bArr[i40] & 255);
                int i49 = (bArr[i45] & 255) | ((bArr[i44] << 8) & 65280);
                Intent intent = new Intent();
                intent.putExtra("driving_mile", i46);
                intent.putExtra("driving_fuel", i48);
                intent.putExtra("driving_lmile", i47);
                intent.putExtra("driving_averagefuel", i49);
                intent.setAction("syu.intent.action.oulande");
                App.c().sendBroadcast(intent);
                break;
            case 54:
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                qt.y0(98, (b14 >> 7) & 1);
                qt.y0(99, (b14 >> 6) & 1);
                qt.y0(100, (b14 >> 5) & 1);
                qt.y0(101, (b14 >> 4) & 1);
                qt.y0(102, (b14 >> 3) & 1);
                qt.y0(103, (b15 >> 7) & 1);
                qt.y0(104, (b15 >> 6) & 1);
                break;
            case 65:
                u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                int i50 = i2 + 6;
                int i51 = bArr[i50] & 255;
                int i52 = i2 + 7;
                int i53 = bArr[i52] & 255;
                int i54 = i2 + 8;
                int i55 = bArr[i54] & 255;
                int i56 = i2 + 9;
                int i57 = bArr[i56] & 255;
                if (i51 == 255 && i53 == 255 && i55 == 255 && i57 == 255) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i51 || l0.c0.f13014h != i53 || l0.c0.f13015i != i55 || l0.c0.f13016j != i57) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i51;
                l0.c0.f13014h = i53;
                l0.c0.f13015i = i55;
                l0.c0.f13016j = i57;
                u0.d.D2(l0.c0.L0(bArr[i50] & 255));
                u0.d.E2(l0.c0.L0(bArr[i52] & 255));
                u0.d.F2(l0.c0.L0(bArr[i54] & 255));
                u0.d.G2(l0.c0.L0(bArr[i56] & 255));
                break;
            case 72:
                qt.y0(131, bArr[i2 + 4] & 255);
                qt.y0(132, bArr[i2 + 5] & 255);
                qt.y0(133, bArr[i2 + 6] & 255);
                qt.y0(134, bArr[i2 + 7] & 255);
                break;
            case 80:
                int i58 = bArr[i2 + 2] & 255;
                if (i58 == 1) {
                    qt.y0(161, bArr[i2 + 4] & 255);
                    qt.y0(162, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(163, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(164, bArr[i2 + 9] & 255);
                    break;
                } else if (i58 == 2) {
                    qt.y0(165, bArr[i2 + 4] & 255);
                    qt.y0(166, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(167, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(168, bArr[i2 + 9] & 255);
                    break;
                } else if (i58 == 3) {
                    qt.y0(169, bArr[i2 + 4] & 255);
                    qt.y0(170, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(171, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(172, bArr[i2 + 9] & 255);
                    break;
                } else if (i58 == 4) {
                    qt.y0(173, bArr[i2 + 4] & 255);
                    qt.y0(174, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(175, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(176, bArr[i2 + 9] & 255);
                    break;
                } else if (i58 == 5) {
                    qt.y0(177, bArr[i2 + 4] & 255);
                    qt.y0(178, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                    qt.y0(179, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                    qt.y0(180, bArr[i2 + 9] & 255);
                    break;
                }
                break;
            case 94:
                qt.y0(153, bArr[i2 + 2] & 255);
                qt.y0(154, bArr[i2 + 3] & 255);
                qt.y0(155, bArr[i2 + 4] & 255);
                qt.y0(156, bArr[i2 + 5] & 255);
                break;
            case 97:
                int i59 = i2 + 2;
                qt.y0(152, (bArr[i59] >> 7) & 1);
                qt.y0(135, (bArr[i59] >> 6) & 1);
                qt.y0(136, (bArr[i59] >> 4) & 3);
                qt.y0(137, (bArr[i59] >> 0) & 7);
                int i60 = i2 + 3;
                qt.y0(138, (bArr[i60] >> 5) & 7);
                qt.y0(139, (bArr[i60] >> 3) & 3);
                qt.y0(140, (bArr[i60] >> 0) & 7);
                int i61 = i2 + 4;
                qt.y0(141, (bArr[i61] >> 6) & 3);
                qt.y0(142, (bArr[i61] >> 4) & 3);
                qt.y0(143, (bArr[i61] >> 3) & 1);
                qt.y0(144, (bArr[i61] >> 1) & 3);
                qt.y0(145, (bArr[i61] >> 0) & 1);
                break;
            case 116:
                byte b16 = bArr[i2 + 2];
                byte b17 = bArr[i2 + 3];
                byte b18 = bArr[i2 + 4];
                byte b19 = bArr[i2 + 5];
                byte b20 = bArr[i2 + 6];
                byte b21 = bArr[i2 + 7];
                byte b22 = bArr[i2 + 8];
                byte b23 = bArr[i2 + 9];
                qt.y0(106, b16 & 255);
                qt.y0(107, b17 & 255);
                qt.y0(108, b18 & 255);
                qt.y0(109, b19 & 255);
                qt.y0(110, b20 & 255);
                qt.y0(111, b21 & 255);
                qt.y0(112, b22 & 255);
                qt.y0(113, b23 & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4091o);
        l0.b0.p0(this.f4092p);
        qt.q0(this.f4089m);
        qt.q0(this.f4088l);
        u0.c.f17388o.d(this.f4087k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 181) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 2, 27, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 4, 95, iArr[0], iArr[1], iArr[2], iArr[3]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 10, 78, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6], iArr[7], iArr[8], iArr[9]);
            return;
        }
        if (i2 == 1003) {
            z.k.s(227, 2, -3, 1, 1);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * Process.MEDIA_RW_GID) / a.f.w();
            int i3 = (iArr[2] * 1000) / a.f.i();
            if (iArr[0] == 0) {
                z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            } else if (iArr[0] == 1) {
                z.k.s(227, 6, 44, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
            }
        }
    }

    public final void d3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
