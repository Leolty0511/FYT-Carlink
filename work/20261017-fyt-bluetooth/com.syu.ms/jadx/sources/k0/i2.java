package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class i2 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6255c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6254b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6256d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6257e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{15, 13}, new int[]{16, 6}, new int[]{23, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6258f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{11, 2}, new int[]{13, 4}, new int[]{14, 3}, new int[]{15, 29}, new int[]{16, 5}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6259g = {new int[]{1, -1}, new int[]{2, -1}, new int[]{3, -1}, new int[]{7, -1}, new int[]{8, 33}, new int[]{9, 32}, new int[]{11, 12}, new int[]{13, 4}, new int[]{14, 3}, new int[]{15, 29}, new int[]{16, 9}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f6260h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{7, -1}, new int[]{8, -1}, new int[]{9, -1}, new int[]{11, 2}, new int[]{14, 3}, new int[]{15, 29}, new int[]{16, 9}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f6261i = {new int[]{3, 18}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 2}, new int[]{11, 12}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 38}, new int[]{16, 6}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f6262j = {new int[]{3, 18}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 2}, new int[]{11, 12}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 38}, new int[]{16, 6}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f6263k = {new int[]{3, 18}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 2}, new int[]{11, 12}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 38}, new int[]{16, 6}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f6264l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f6265m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f6266n = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i2 i2Var = i2.this;
            int i2 = i2Var.f6254b;
            if (i2 > 0) {
                i2Var.f6254b = i2 - 1;
            }
            if (i2Var.f6254b == 0) {
                i2.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i2.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? 1 : 0, 0, 0, 0, 0);
            int i2 = nt.f8633a;
            if (i2 == 196702 || i2 == 262238) {
                z.k.s(227, 2, 36, 2, 1);
            } else if (i2 == 327774 || i2 == 393310) {
                z.k.s(227, 2, 36, 4, 1);
            }
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
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f6266n);
        if (nt.a()) {
            qt.z(this.f6264l);
            y0.g.f18094d.a(this.f6265m, 1);
            y0.g.f18095e.a(this.f6265m, 1);
            w0.e.f17815a.a(this.f6264l, 1);
            w0.e.f17819e.a(this.f6264l, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 114) {
            if (b2 != 115) {
                return;
            }
            byte b3 = bArr[i2 + 9];
            if ((b3 & 1) != 0) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 7) & 1);
                } else {
                    qt.y0(1, (b3 >> 7) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                }
                qt.y0(3, (b3 >> 5) & 1);
                qt.y0(4, (b3 >> 4) & 1);
                qt.y0(5, (b3 >> 3) & 1);
            }
            if (nt.a()) {
                int i4 = ((bArr[i2 + 8] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                if (i4 > 600) {
                    u0.d.A3(i4);
                    return;
                } else {
                    u0.d.A3(0);
                    return;
                }
            }
            return;
        }
        if (nt.a()) {
            int i5 = nt.f8633a;
            if (i5 == 196702 || i5 == 262238 || i5 == 327774 || i5 == 393310) {
                this.f6256d = bArr[i2 + 4] & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f6257e;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    int i7 = this.f6256d;
                    if (i7 == iArr[i6][0]) {
                        if (i7 == 0) {
                            break;
                        }
                        this.f6255c = i6;
                        break;
                    }
                    i6++;
                }
                if (this.f6256d != 0) {
                    if (i6 < iArr.length) {
                        l0.b0.l0(iArr[i6][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i8 = this.f6255c;
                    if (i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f6255c = 255;
                    return;
                }
            }
            if (i5 == 65630) {
                this.f6256d = bArr[i2 + 4] & 255;
                int i9 = 0;
                while (true) {
                    iArr4 = this.f6259g;
                    if (i9 >= iArr4.length) {
                        break;
                    }
                    int i10 = this.f6256d;
                    if (i10 == iArr4[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f6255c = i9;
                        break;
                    }
                    i9++;
                }
                if (this.f6256d != 0) {
                    if (i9 < iArr4.length) {
                        l0.b0.l0(iArr4[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i11 = this.f6255c;
                    if (i11 < iArr4.length && i11 != 255) {
                        l0.b0.l0(iArr4[i11][1], 1);
                    }
                    this.f6255c = 255;
                    return;
                }
            }
            if (i5 == 94) {
                this.f6256d = bArr[i2 + 4] & 255;
                int i12 = 0;
                while (true) {
                    iArr3 = this.f6258f;
                    if (i12 >= iArr3.length) {
                        break;
                    }
                    int i13 = this.f6256d;
                    if (i13 == iArr3[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f6255c = i12;
                        break;
                    }
                    i12++;
                }
                if (this.f6256d != 0) {
                    if (i12 < iArr3.length) {
                        l0.b0.l0(iArr3[i12][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i14 = this.f6255c;
                    if (i14 < iArr3.length && i14 != 255) {
                        l0.b0.l0(iArr3[i14][1], 1);
                    }
                    this.f6255c = 255;
                    return;
                }
            }
            this.f6256d = bArr[i2 + 4] & 255;
            int i15 = 0;
            while (true) {
                iArr2 = this.f6260h;
                if (i15 >= iArr2.length) {
                    break;
                }
                int i16 = this.f6256d;
                if (i16 == iArr2[i15][0]) {
                    if (i16 == 0) {
                        break;
                    }
                    this.f6255c = i15;
                    break;
                }
                i15++;
            }
            if (this.f6256d != 0) {
                if (i15 < iArr2.length) {
                    l0.b0.l0(iArr2[i15][1], 0);
                }
            } else {
                int i17 = this.f6255c;
                if (i17 < iArr2.length && i17 != 255) {
                    l0.b0.l0(iArr2[i17][1], 1);
                }
                this.f6255c = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f6266n);
        qt.q0(this.f6264l);
        y0.g.f18094d.d(this.f6265m);
        y0.g.f18095e.d(this.f6265m);
        w0.e.f17815a.d(this.f6264l);
        w0.e.f17819e.d(this.f6264l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 6) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f6254b = 4;
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
}
