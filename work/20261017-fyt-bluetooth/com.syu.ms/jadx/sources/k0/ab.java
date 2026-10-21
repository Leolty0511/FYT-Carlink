package k0;

import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ab extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3259b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f3267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte f3268k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3260c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3261d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 34}, new int[]{20, 35}, new int[]{23, 12}, new int[]{136, 2}, new int[]{21, 6}, new int[]{22, 29}, new int[]{129, 5}, new int[]{130, 1}, new int[]{131, 54}, new int[]{132, 1}, new int[]{133, 6}, new int[]{134, 58}, new int[]{135, 19}, new int[]{136, 8}, new int[]{137, 7}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3262e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f3263f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3264g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f3265h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f3266i = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f3269l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f3270m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3271n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[] f3272o = {34, 204};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3273p = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 1) {
                int i2 = w0.d.f17797i;
                int i3 = w0.d.f17796h;
                if (i3 - 65536 != 0 && 1 != i3 - 65536 && 2 != i3 - 65536) {
                    z.k.s(227, -123, 3, 1, (i2 >> 8) & 255, i2 & 255);
                } else {
                    int i4 = w0.d.f17797i / 10;
                    z.k.s(227, -123, 3, 0, (i4 >> 8) & 255, i4 & 255);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ab.this.f3265h);
            ab.this.f3263f = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ab abVar = ab.this;
            byte b2 = (byte) (abVar.f3263f - 1);
            abVar.f3263f = b2;
            if (b2 <= 0) {
                l0.b0.p0(abVar.f3265h);
                ab.this.f3263f = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                ab.this.a3(37);
                ab.this.a3(51);
                ab.this.a3(85);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ab.this.c3(u0.b.K3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (ab.this.f3270m == millis && ab.this.f3271n == i2) {
                return;
            }
            ab.this.f3270m = millis;
            ab.this.f3271n = i2;
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            ab.this.f3267j = (byte) time.hour;
            ab.this.f3268k = (byte) time.minute;
            if (nt.f8633a == 262470) {
                z.k.s(227, -124, 5, b2, b3, b4, ab.this.f3267j, ab.this.f3268k);
            } else {
                z.k.s(227, -126, 3, ab.this.f3267j, ab.this.f3268k, (byte) ab.this.b3());
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f3269l);
        u0.c.f17397x.a(this.f3266i, 1);
        u0.c.f17386m.a(this.f3264g, 1);
        int i2 = nt.f8633a;
        if (i2 == 196934) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            mt mtVar = this.f7886a;
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
            return;
        }
        if (i2 == 262470) {
            mt mtVar2 = this.f7886a;
            mtVar2.f8306a = new String[]{"com.syu.canbus"};
            mtVar2.f8310e = 1;
            mtVar2.f8311f = 0;
            mtVar2.f8312g = 1;
            qt.z(this.f3262e);
            return;
        }
        mt mtVar3 = this.f7886a;
        mtVar3.f8306a = new String[]{"com.syu.canbus"};
        mtVar3.f8310e = 1;
        mtVar3.f8311f = 0;
        mtVar3.f8312g = 0;
        mtVar3.f8320o = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        int i7;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            if (nt.a()) {
                u0.d.D2(l0.c0.S0(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.S0(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.S0(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.S0(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (b2 == 30) {
            if (nt.a()) {
                u0.d.R2(l0.c0.S0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.S0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.S0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.S0(bArr[i2 + 5] & 255));
                return;
            }
            return;
        }
        if (b2 == 41) {
            if (nt.a()) {
                int i8 = nt.f8633a;
                if (i8 == 326) {
                    qt.m(bArr[i2 + 3], bArr[i2 + 2], 32795, true, 5180);
                    return;
                }
                if (i8 == 196934 || i8 == 262470) {
                    int i9 = i2 + 3;
                    if ((bArr[i9] & 128) != 0) {
                        qt.j(bArr[i2 + 2], bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                        return;
                    } else {
                        int i10 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i9] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                        qt.i(i10 & 255, (i10 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 51) {
            qt.y0(102, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
            qt.y0(103, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(104, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(105, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 53) {
            int i11 = bArr[i2 + 2] & 255;
            int i12 = bArr[i2 + 3] & 255;
            int i13 = bArr[i2 + 4] & 255;
            qt.y0(1032, (i11 << 8) | i12);
            qt.y0(1031, i13);
            return;
        }
        if (b2 == 83) {
            qt.y0(107, bArr[i2 + 2] & 255);
            qt.y0(108, bArr[i2 + 3] & 255);
            qt.y0(109, bArr[i2 + 4] & 255);
            qt.y0(110, bArr[i2 + 5] & 255);
            qt.y0(111, bArr[i2 + 6] & 255);
            qt.y0(112, bArr[i2 + 7] & 255);
            qt.y0(113, bArr[i2 + 8] & 255);
            qt.y0(114, bArr[i2 + 10] & 255);
            return;
        }
        if (b2 != 85) {
            switch (b2) {
                case 32:
                    if (nt.a()) {
                        int i14 = bArr[i2 + 2] & 255;
                        this.f3260c = i14;
                        int i15 = 0;
                        while (true) {
                            iArr = this.f3261d;
                            if (i15 < iArr.length) {
                                int i16 = this.f3260c;
                                if (i16 != iArr[i15][0]) {
                                    i15++;
                                } else if (i16 != 0) {
                                    this.f3259b = i15;
                                }
                            }
                        }
                        if (i14 != 0 && (i7 = this.f3259b) < iArr.length) {
                            l0.b0.l0(iArr[i7][1], 0);
                            l0.b0.l0(this.f3261d[this.f3259b][1], 1);
                            break;
                        }
                    }
                    break;
                case 33:
                    byte b3 = bArr[i2 + 2];
                    if (b3 == 6) {
                        o1.u.v();
                    }
                    if (nt.a()) {
                        byte b4 = bArr[i2 + 3];
                        this.f3260c = (b3 | 128) & 255;
                        int i17 = 0;
                        while (true) {
                            iArr2 = this.f3261d;
                            if (i17 < iArr2.length) {
                                int i18 = this.f3260c;
                                if (i18 != iArr2[i17][0]) {
                                    i17++;
                                } else if (i18 != 0) {
                                    this.f3259b = i17;
                                }
                            }
                        }
                        if ((b4 & 255) == 0) {
                            if (i17 <= iArr2.length) {
                                l0.b0.l0(iArr2[this.f3259b][1], 1);
                            }
                        } else if (i17 < iArr2.length) {
                            l0.b0.l0(iArr2[i17][1], 0);
                        }
                    }
                    break;
                case 34:
                    if (nt.a()) {
                        u0.d.R2(l0.c0.T0(bArr[i2 + 2] & 255));
                        u0.d.S2(l0.c0.T0(bArr[i2 + 3] & 255));
                        u0.d.T2(l0.c0.T0(bArr[i2 + 4] & 255));
                        u0.d.U2(l0.c0.T0(bArr[i2 + 5] & 255));
                    }
                    break;
                case 35:
                    if (nt.a()) {
                        u0.d.D2(l0.c0.T0(bArr[i2 + 2] & 255));
                        u0.d.E2(l0.c0.T0(bArr[i2 + 3] & 255));
                        u0.d.F2(l0.c0.T0(bArr[i2 + 4] & 255));
                        u0.d.G2(l0.c0.T0(bArr[i2 + 5] & 255));
                    }
                    break;
                case 36:
                    byte b5 = bArr[i2 + 2];
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b5 >> 7) & 1);
                        qt.y0(2, (b5 >> 6) & 1);
                    } else {
                        qt.y0(1, (b5 >> 6) & 1);
                        qt.y0(2, (b5 >> 7) & 1);
                    }
                    qt.y0(3, (b5 >> 4) & 1);
                    qt.y0(4, (b5 >> 5) & 1);
                    qt.y0(5, (b5 >> 3) & 1);
                    qt.y0(0, (b5 >> 2) & 1);
                    break;
                case 37:
                    qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                    qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                    qt.y0(100, ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
                    qt.y0(101, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] & 255) << 8));
                    break;
            }
            return;
        }
        int i19 = i2 + 2;
        byte b6 = bArr[i19];
        int i20 = i2 + 3;
        byte b7 = bArr[i20];
        byte b8 = bArr[i2 + 4];
        byte b9 = bArr[i2 + 6];
        byte b10 = bArr[i2 + 7];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b6 = bArr[i20];
            b7 = bArr[i19];
        }
        if (b6 == 16) {
            qt.y0(27, -2);
        } else if (b6 == 80) {
            qt.y0(27, -3);
        } else if (b6 < 30 || b6 > 64) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, ((b6 - 30) * 5) + 150);
        }
        if (b7 == 16) {
            qt.y0(28, -2);
        } else if (b7 == 80) {
            qt.y0(28, -3);
        } else if (b7 < 30 || b7 > 64) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, ((b7 - 30) * 5) + 150);
        }
        qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
        switch ((b8 >> 4) & 15) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 2:
                i4 = 0;
                i6 = 1;
                i5 = i6;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 5:
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 6:
                i6 = 0;
                i5 = 0;
                i4 = 1;
                break;
            case 7:
                i4 = 1;
                i6 = i4;
                i5 = i6;
                break;
            default:
                i4 = 0;
                i6 = i4;
                i5 = i6;
                break;
        }
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(13, b9 & 1);
        qt.y0(11, (b9 >> 1) & 1);
        qt.y0(62, (b9 >> 2) & 1);
        qt.y0(12, (b9 >> 3) & 1);
        qt.y0(53, (b9 >> 4) & 1);
        qt.y0(65, (b9 >> 5) & 1);
        qt.y0(16, (b9 >> 6) & 1);
        qt.y0(15, (b9 >> 7) & 1);
        int i21 = b10 & 255;
        if (i21 == 255 || i21 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i21 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f3269l);
        u0.c.f17397x.d(this.f3266i);
        u0.c.f17386m.d(this.f3264g);
        l0.b0.p0(this.f3265h);
        qt.q0(this.f3262e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 115) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            a3(36);
            a3(37);
            a3(48);
            a3(50);
            a3(51);
            return;
        }
        if (i2 != 1) {
            if (i2 == 2 && T2(iArr, 2)) {
                z.k.s(227, -125, 2, (byte) iArr[0], (byte) iArr[1]);
                return;
            }
            return;
        }
        if (T2(iArr, 2)) {
            int i3 = this.f3273p + 1;
            this.f3273p = i3;
            int i4 = i3 % 2;
            this.f3273p = i4;
            z.k.s(227, 51, 4, (byte) iArr[0], this.f3272o[i4], 0, 0);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -112, 2, (byte) i2, 0);
    }

    public final int b3() {
        int i2 = u0.b.K3;
        if (i2 == 1) {
            return 0;
        }
        return i2 == 2 ? 1 : 2;
    }

    public final void c3(int i2) {
        if (nt.f8633a != 262470) {
            z.k.s(227, 50, 3, this.f3267j, this.f3268k, (byte) b3());
        } else if (i2 == 1 || i2 == 2) {
            z.k.s(227, -126, 2, 8, 0);
        } else {
            z.k.s(227, -126, 2, 8, 1);
        }
    }
}
