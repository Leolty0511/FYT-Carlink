package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class dl extends lt {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Runnable f4522n = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4523b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4526e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4524c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4525d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4527f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4528g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{9, 12}, new int[]{17, 11}, new int[]{20, 1}, new int[]{22, 29}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{32, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{51, 24}, new int[]{55, 55}, new int[]{62, 13}, new int[]{69, 7}, new int[]{70, 8}, new int[]{87, 31}, new int[]{88, 30}, new int[]{112, 49}, new int[]{113, 40}, new int[]{114, 41}, new int[]{115, 42}, new int[]{116, 43}, new int[]{117, 44}, new int[]{118, 45}, new int[]{119, 46}, new int[]{120, 47}, new int[]{121, 48}, new int[]{122, 50}, new int[]{123, 51}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4529h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4530i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4531j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4532k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4533l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4534m = new d();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            dl.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (dl.this.f4529h == millis && dl.this.f4530i == zIs24HourFormat) {
                return;
            }
            dl.this.f4529h = millis;
            dl.this.f4530i = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, zIs24HourFormat ? 1 : 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(dl.this.f4534m);
            dl.this.f4532k = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dl dlVar = dl.this;
            int i2 = dlVar.f4532k - 1;
            dlVar.f4532k = i2;
            if (i2 <= 0) {
                l0.b0.p0(dlVar.f4534m);
                dl.this.f4532k = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8633a;
                if (i3 == 2490812) {
                    z.k.s(227, 2, 36, 3, 24);
                } else if (i3 == 2556348) {
                    z.k.s(227, 2, 36, 5, 24);
                } else {
                    if (i3 != 2621884) {
                        return;
                    }
                    z.k.s(227, 2, 36, 6, 24);
                }
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        for (int i2 = 0; i2 < 15; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = b3();
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                iArr[3] = 48;
                int i5 = w0.d.f17798j;
                if (i5 % 6 != 0 || i5 == 0) {
                    iArr[4] = ((i5 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                if (iArr[4] == 0) {
                    iArr[4] = 54;
                }
                int i6 = w0.d.f17797i;
                iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[7] = ((i6 % 10000) / 1000) + 48;
                iArr[8] = ((i6 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i6 % 100) / 10) + 48;
            } else {
                iArr[3] = 48;
                int i7 = w0.d.f17798j;
                if (i7 % 6 != 0 || i7 == 0) {
                    iArr[4] = ((i7 & 255) % 6) + 48;
                } else {
                    iArr[4] = 54;
                }
                if (iArr[4] == 0) {
                    iArr[4] = 54;
                }
                int i8 = w0.d.f17797i;
                if (i8 >= 1000) {
                    iArr[6] = (i8 / 1000) + 48;
                    iArr[7] = ((i8 % 1000) / 100) + 48;
                    iArr[8] = ((i8 % 100) / 10) + 48;
                    iArr[9] = (i8 % 10) + 48;
                } else {
                    iArr[6] = (i8 / 100) + 48;
                    iArr[7] = ((i8 % 100) / 10) + 48;
                    iArr[8] = (i8 % 10) + 48;
                }
            }
        } else if (i3 == 2) {
            int i9 = h0.c.P;
            iArr[7] = ((i9 / 60) / 10) + 48;
            iArr[8] = ((i9 / 60) % 10) + 48;
            iArr[9] = ((i9 % 60) / 10) + 48;
            iArr[10] = ((i9 % 60) % 10) + 48;
        } else if (i3 != 3) {
            switch (i3) {
                case 8:
                case 9:
                case 10:
                    if (u0.b.s3 != 0) {
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
                    break;
            }
        } else {
            int i12 = h0.c.J;
            iArr[3] = ((i12 / 100) % 10) + 48;
            iArr[4] = ((i12 / 10) % 10) + 48;
            iArr[5] = (i12 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        int i13 = 0;
        while (i13 < 15) {
            int i14 = i13 + 1;
            iArr2[i14] = (byte) iArr[i13];
            i13 = i14;
        }
        z.k.s(iArr2);
    }

    public static byte b3() {
        int i2 = u0.b.D;
        byte b2 = 3;
        if (i2 == 1) {
            int i3 = w0.d.f17796h;
            if (i3 - 65536 == 0) {
                b2 = 1;
            } else if (1 == i3 - 65536) {
                b2 = 2;
            } else if (2 != i3 - 65536) {
                if (i3 + 0 == 0) {
                    b2 = 4;
                } else {
                    b2 = 1 == i3 - 0 ? (byte) 5 : (byte) 0;
                }
            }
        } else if (i2 == 2) {
            b2 = 10;
        } else if (i2 != 3) {
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    b2 = 13;
                    break;
                default:
                    b2 = DhcpPacket.DHCP_HOST_NAME;
                    break;
            }
        } else {
            b2 = -123;
        }
        if (u0.b.f17306a0 == 0) {
            return (byte) 0;
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8309d = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        u0.c.f17386m.a(this.f4533l, 1);
        qt.z(this.f4531j);
        qt.z(f4522n);
        w0.e.f17815a.a(f4522n, 1);
        w0.e.f17819e.a(f4522n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 33) {
            this.f4527f = bArr[i2 + 2] & 255;
            byte b3 = bArr[i2 + 3];
            int i8 = 0;
            while (true) {
                iArr = this.f4528g;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f4527f;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f4526e = i8;
                    break;
                }
                i8++;
            }
            if ((b3 & 255) != 0) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            }
            int i10 = this.f4526e;
            if (i10 < iArr.length) {
                i4 = 255;
                if (i10 != 255) {
                    l0.b0.l0(iArr[i10][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f4526e = i4;
            return;
        }
        if (b2 != 49) {
            if (b2 == 65) {
                u0.d.R2(l0.c0.Q0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.Q0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.Q0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.Q0(bArr[i2 + 5] & 255));
                int i11 = i2 + 6;
                int i12 = bArr[i11] & 255;
                int i13 = i2 + 7;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 8;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 9;
                int i18 = bArr[i17] & 255;
                if (i12 == 255 && i14 == 255 && i16 == 255 && i18 == 255) {
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
                u0.d.D2(l0.c0.Q0(bArr[i11] & 255));
                u0.d.E2(l0.c0.Q0(bArr[i13] & 255));
                u0.d.F2(l0.c0.Q0(bArr[i15] & 255));
                u0.d.G2(l0.c0.Q0(bArr[i17] & 255));
                return;
            }
            if (b2 != 17) {
                if (b2 != 18) {
                    return;
                }
                byte b4 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b4 >> 7) & 1);
                    qt.y0(1, (b4 >> 6) & 1);
                } else {
                    qt.y0(1, (b4 >> 7) & 1);
                    qt.y0(2, (b4 >> 6) & 1);
                }
                qt.y0(3, (b4 >> 5) & 1);
                qt.y0(4, (b4 >> 4) & 1);
                qt.y0(5, (b4 >> 3) & 1);
                qt.y0(0, (b4 >> 2) & 1);
                return;
            }
            byte b5 = bArr[i2 + 5];
            this.f4524c = bArr[i2 + 4] & 255;
            int i19 = 0;
            while (true) {
                iArr2 = this.f4525d;
                if (i19 >= iArr2.length) {
                    break;
                }
                int i20 = this.f4524c;
                if (i20 == iArr2[i19][0]) {
                    if (i20 == 0) {
                        break;
                    }
                    this.f4523b = i19;
                    break;
                }
                i19++;
            }
            if ((b5 & 255) == 0) {
                int i21 = this.f4523b;
                if (i21 < iArr2.length && i21 != 255) {
                    l0.b0.l0(iArr2[i21][1], 1);
                }
                this.f4523b = 255;
            } else if (i19 < iArr2.length) {
                l0.b0.l0(iArr2[i19][1], 0);
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        int i22 = i2 + 2;
        byte b6 = bArr[i22];
        byte b7 = bArr[i2 + 3];
        byte b8 = bArr[i2 + 4];
        byte b9 = bArr[i2 + 6];
        byte b10 = bArr[i2 + 7];
        qt.y0(37, (b6 >> 7) & 1);
        qt.y0(10, (b6 >> 6) & 1);
        qt.y0(13, (b6 >> 3) & 1);
        qt.y0(62, (b6 >> 2) & 1);
        qt.y0(11, (b7 >> 6) & 1);
        qt.y0(12, (b7 >> 4) & 1);
        qt.y0(16, (b8 >> 5) & 1);
        qt.y0(65, (b8 >> 4) & 1);
        qt.y0(29, (b8 >> 0) & 3);
        qt.y0(30, (b8 >> 2) & 3);
        if (b9 != 3) {
            if (b9 == 5) {
                i5 = 0;
                i7 = 1;
            } else if (b9 != 6) {
                switch (b9) {
                    case 11:
                        i7 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 12:
                        i6 = 0;
                        i5 = 1;
                        i7 = 1;
                        break;
                    case 13:
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    case 14:
                        i5 = 1;
                        i7 = i5;
                        break;
                    default:
                        i5 = 0;
                        i7 = i5;
                        break;
                }
            } else {
                i5 = 0;
                i7 = 0;
                i6 = 1;
            }
            i6 = i7;
        } else {
            i5 = 0;
            i6 = 0;
            i7 = 1;
        }
        qt.y0(18, i5);
        qt.y0(20, i7);
        qt.y0(19, i6);
        qt.y0(21, b10);
        int i23 = i2 + 8;
        int i24 = bArr[i23] & 255;
        int i25 = i2 + 9;
        int i26 = bArr[i25] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i24 = bArr[i25] & 255;
            i26 = bArr[i23] & 255;
        }
        if (i24 == 254) {
            qt.y0(27, -2);
        } else if (i24 != 255) {
            qt.y0(27, i24 * 5);
        } else {
            qt.y0(27, -3);
        }
        if (i26 == 254) {
            qt.y0(28, -2);
        } else if (i26 != 255) {
            qt.y0(28, i26 * 5);
        } else {
            qt.y0(28, -3);
        }
        int i27 = bArr[i2 + 13] & 255;
        int i28 = (bArr[i22] >> 7) & 1;
        if (i27 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.B3(i28 == 1 ? (268435456 | ((i27 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1) : (i27 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f4531j);
        qt.q0(f4522n);
        w0.e.f17815a.d(f4522n);
        w0.e.f17819e.d(f4522n);
        u0.c.f17386m.d(this.f4533l);
        l0.b0.p0(this.f4534m);
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 2, 61, iArr[0], iArr[1]);
    }
}
