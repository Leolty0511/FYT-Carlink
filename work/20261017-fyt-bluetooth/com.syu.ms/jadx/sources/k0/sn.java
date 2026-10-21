package k0;

import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class sn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10345c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10346d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 29}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{17, 31}, new int[]{18, 30}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, 5}, new int[]{22, 29}, new int[]{135, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10347e = new d();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10348f = new e();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10349g = new f();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10350h = new g();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f10351i = new h();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10352j = new i();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10353k = new j();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f10354l = 0.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f10355m = 255;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f10356n = 255;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f10357o = new k();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f10358p = new l();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10359q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f10360r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f10361s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f10362t = new c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f10363u = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sn.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(sn.this.f10362t);
            sn.this.f10360r = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sn snVar = sn.this;
            int i2 = snVar.f10360r - 1;
            snVar.f10360r = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(snVar.f10362t);
                sn.this.f10360r = 5;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(143, u0.b.f17361t0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(144, (int) (u0.b.b2 * 10000.0d));
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qt.y0(145, (int) (u0.b.c2 * 10000.0d));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.E;
            int i3 = 3;
            if (i2 != 3) {
                if (i2 != 4) {
                    i3 = i2 != 5 ? 0 : 2;
                } else {
                    i3 = 1;
                }
            }
            sn.this.m3(i3, h0.c.f2437h);
            a.f.p().t(LogType.CANBUS, "Nissan  DataBt.sPhoneNumber  ===== " + h0.c.f2437h);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sn.this.l3((byte) 112, u0.b.i3);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sn.this.l3((byte) 113, u0.b.j3);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = w0.d.H;
            if (str == null) {
                sn.this.l3((byte) 112, "----");
            } else {
                sn.this.l3((byte) 112, str);
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sn.this.f10354l = u0.b.f17359s0;
            if ((sn.this.f10354l <= 7.5d && sn.this.f10354l >= 0.0f) || (sn.this.f10354l >= 352.5d && sn.this.f10354l <= 360.0f)) {
                sn.this.f10356n = 0;
            } else if (sn.this.f10354l > 7.5d && sn.this.f10354l < 22.5d) {
                sn.this.f10356n = 1;
            } else if (sn.this.f10354l >= 22.5d && sn.this.f10354l <= 37.5d) {
                sn.this.f10356n = 2;
            } else if (sn.this.f10354l > 37.5d && sn.this.f10354l < 52.5d) {
                sn.this.f10356n = 3;
            } else if (sn.this.f10354l >= 52.5d && sn.this.f10354l <= 67.5d) {
                sn.this.f10356n = 4;
            } else if (sn.this.f10354l > 67.5d && sn.this.f10354l < 82.5d) {
                sn.this.f10356n = 5;
            } else if (sn.this.f10354l >= 82.5d && sn.this.f10354l <= 97.5d) {
                sn.this.f10356n = 6;
            } else if (sn.this.f10354l > 97.5d && sn.this.f10354l < 112.5d) {
                sn.this.f10356n = 7;
            } else if (sn.this.f10354l > 112.5d && sn.this.f10354l < 127.5d) {
                sn.this.f10356n = 8;
            } else if (sn.this.f10354l > 127.5d && sn.this.f10354l < 142.5d) {
                sn.this.f10356n = 9;
            } else if (sn.this.f10354l > 142.5d && sn.this.f10354l < 157.5d) {
                sn.this.f10356n = 10;
            } else if (sn.this.f10354l > 157.5d && sn.this.f10354l < 172.5d) {
                sn.this.f10356n = 11;
            } else if (sn.this.f10354l > 172.5d && sn.this.f10354l < 187.5d) {
                sn.this.f10356n = 12;
            } else if (sn.this.f10354l > 187.5d && sn.this.f10354l < 202.5d) {
                sn.this.f10356n = 13;
            } else if (sn.this.f10354l > 202.5d && sn.this.f10354l < 217.5d) {
                sn.this.f10356n = 14;
            } else if (sn.this.f10354l > 217.5d && sn.this.f10354l < 232.5d) {
                sn.this.f10356n = 15;
            } else if (sn.this.f10354l > 232.5d && sn.this.f10354l < 247.5d) {
                sn.this.f10356n = 16;
            } else if (sn.this.f10354l > 247.5d && sn.this.f10354l < 262.5d) {
                sn.this.f10356n = 17;
            } else if (sn.this.f10354l > 262.5d && sn.this.f10354l < 277.5d) {
                sn.this.f10356n = 18;
            } else if (sn.this.f10354l > 277.5d && sn.this.f10354l < 292.5d) {
                sn.this.f10356n = 19;
            } else if (sn.this.f10354l > 292.5d && sn.this.f10354l < 307.5d) {
                sn.this.f10356n = 20;
            } else if (sn.this.f10354l > 307.5d && sn.this.f10354l < 322.5d) {
                sn.this.f10356n = 21;
            } else if (sn.this.f10354l > 325.5d && sn.this.f10354l < 337.5d) {
                sn.this.f10356n = 22;
            } else if (sn.this.f10354l <= 337.5d || sn.this.f10354l >= 352.5d) {
                sn.this.f10356n = 0;
            } else {
                sn.this.f10356n = 23;
            }
            if (sn.this.f10356n != sn.this.f10355m) {
                z.k.s(227, 145, 1, sn.this.f10356n);
                qt.y0(146, u0.b.f17359s0);
                sn snVar = sn.this;
                snVar.f10355m = snVar.f10356n;
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (!zIs24HourFormat && (i2 = time.hour) > 12) {
                time.hour = i2 - 12;
            }
            z.k.s(227, -56, 4, time.minute, time.hour, zIs24HourFormat ? 1 : 0, 0);
            int i3 = nt.f8637c;
            if (i3 == 212) {
                z.k.s(227, 226, 2, 0, 32);
            }
            switch (i3) {
                case 179:
                    z.k.s(227, 226, 2, 0, 0);
                    break;
                case 180:
                    z.k.s(227, 226, 2, 0, 1);
                    break;
                case 181:
                    z.k.s(227, 226, 2, 0, 2);
                    break;
                case 182:
                    z.k.s(227, 226, 2, 0, 16);
                    break;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f10361s, 1);
        qt.z(this.f10359q);
        w0.e.f17815a.a(this.f10359q, 1);
        w0.e.f17819e.a(this.f10359q, 1);
        u0.c.f17374a.a(this.f10359q, 1);
        qt.z(this.f10358p);
        o1.h.f16865a.a(this.f10357o, 1);
        u0.c.f17388o.a(this.f10351i, 1);
        u0.c.f17389p.a(this.f10352j, 1);
        w0.e.f17817c.a(this.f10353k, 1);
        h0.d.f2464c.a(this.f10350h, 1);
        h0.d.f2462a.a(this.f10350h, 1);
        o1.h.f16867c.a(this.f10347e, 1);
        o1.h.f16868d.a(this.f10348f, 1);
        o1.h.f16869e.a(this.f10349g, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -109) {
            qt.y0(111, bArr[i2 + 2]);
            qt.y0(112, bArr[i2 + 3]);
            qt.y0(113, bArr[i2 + 4]);
            qt.y0(114, bArr[i2 + 5]);
            qt.y0(115, bArr[i2 + 6]);
            qt.y0(116, bArr[i2 + 7]);
            qt.y0(117, bArr[i2 + 8]);
            qt.y0(118, bArr[i2 + 9]);
            qt.y0(119, bArr[i2 + 10]);
        }
        if (b2 == -107) {
            int i7 = i2 + 2;
            qt.y0(127, (bArr[i7] >> 7) & 1);
            qt.y0(128, (bArr[i7] >> 6) & 1);
            qt.y0(129, (bArr[i7] >> 5) & 1);
            int i8 = i2 + 3;
            qt.y0(130, (bArr[i8] >> 7) & 1);
            qt.y0(131, (bArr[i8] >> 5) & 3);
            qt.y0(132, (bArr[i8] >> 4) & 1);
            qt.y0(133, (bArr[i8] >> 0) & 15);
            int i9 = i2 + 4;
            qt.y0(134, (bArr[i9] >> 7) & 1);
            qt.y0(135, (bArr[i9] >> 6) & 1);
            qt.y0(136, (bArr[i9] >> 4) & 1);
            qt.y0(137, (bArr[i9] >> 3) & 1);
            qt.y0(141, (bArr[i9] >> 2) & 1);
            qt.y0(142, (bArr[i9] >> 1) & 1);
            qt.y0(150, (bArr[i9] >> 0) & 1);
            int i10 = i2 + 5;
            qt.y0(138, (bArr[i10] >> 4) & 15);
            qt.y0(139, (bArr[i10] >> 0) & 15);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            switch (bArr[i2 + 2]) {
                case 1:
                    if (u0.b.D == 1) {
                        w0.f.J(28, 30);
                    } else {
                        o1.u.x0();
                    }
                    break;
                case 2:
                    if (u0.b.D == 1) {
                        w0.f.J(28, 27);
                    } else {
                        o1.u.x0();
                    }
                    break;
                case 3:
                    if (u0.b.D == 1) {
                        w0.f.J(28, 28);
                    } else {
                        o1.u.x0();
                    }
                    break;
                case 5:
                case 6:
                case 10:
                    l0.b0.l0(54, 0);
                    l0.b0.l0(54, 1);
                    break;
                case 7:
                    l0.b0.l0(76, 0);
                    l0.b0.l0(76, 1);
                    break;
                case 8:
                    l0.b0.l0(53, 0);
                    l0.b0.l0(53, 1);
                    break;
                case 9:
                    if (u0.b.D == 1) {
                        int i11 = w0.d.f17796h;
                        if (i11 == 0 || i11 == 1) {
                            w0.f.J(28, 27);
                        } else if (i11 == 65536) {
                            w0.f.J(28, 28);
                        } else if (i11 == 65537) {
                            w0.f.J(28, 29);
                        } else if (i11 == 65538) {
                            w0.f.J(28, 27);
                        }
                    } else {
                        o1.u.x0();
                    }
                    break;
                case 11:
                    l0.b0.l0(9, 0);
                    l0.b0.l0(9, 1);
                    break;
            }
        }
        if (b2 == 77) {
            qt.y0(147, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(148, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        if (b2 == 80) {
            byte b3 = bArr[i2 + 2];
            if (b3 == 1) {
                l0.b0.l0(18, 0);
                l0.b0.l0(18, 1);
                return;
            } else if (b3 == 2) {
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
                return;
            } else {
                if (b3 != 3) {
                    return;
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
                return;
            }
        }
        if (b2 == 104) {
            qt.y0(1032, ((bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280)) & 65535);
            return;
        }
        if (b2 == 106) {
            qt.y0(1031, ((bArr[i2 + 2] & 255) | ((bArr[i2 + 3] << 8) & 65280)) & 65535);
            return;
        }
        if (b2 == 40) {
            byte b4 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b4 >> 7) & 1);
                qt.y0(2, (b4 >> 6) & 1);
            } else {
                qt.y0(1, (b4 >> 6) & 1);
                qt.y0(2, (b4 >> 7) & 1);
            }
            qt.y0(4, (b4 >> 5) & 1);
            qt.y0(3, (b4 >> 4) & 1);
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(0, (b4 >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 5400);
            return;
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f10345c = b5 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f10346d;
                    if (i12 < iArr.length) {
                        int i13 = this.f10345c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f10344b = i12;
                        }
                    }
                }
                if (this.f10345c != 20) {
                    int i14 = b6 & 255;
                    if (i14 != 1) {
                        if (i14 == 0) {
                            int i15 = this.f10344b;
                            if (i15 < iArr.length && i15 != 255) {
                                l0.b0.l0(iArr[i15][1], 1);
                            }
                            this.f10344b = 255;
                        }
                    } else if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                    }
                    break;
                } else if ((b6 & 255) == 1 && !o1.u.S("com.syu.carlink")) {
                    o1.u.g("com.syu.carlink");
                    break;
                }
                break;
            case 33:
                int i16 = i2 + 2;
                switch ((bArr[i16] >> 5) & 7) {
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
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                        break;
                    case 6:
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
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
                qt.y0(13, (bArr[i16] >> 4) & 1);
                if (((bArr[i16] >> 2) & 1) == 1) {
                    qt.y0(12, 1);
                } else {
                    qt.y0(12, 0);
                }
                qt.y0(11, (bArr[i16] >> 1) & 1);
                qt.y0(10, (bArr[i16] >> 0) & 1);
                int i17 = i2 + 3;
                qt.y0(21, (bArr[i17] >> 4) & 15);
                qt.y0(53, (bArr[i17] >> 3) & 1);
                qt.y0(65, (bArr[i17] >> 2) & 1);
                qt.y0(16, (bArr[i17] >> 1) & 1);
                qt.y0(14, (bArr[i17] >> 0) & 1);
                int i18 = i2 + 4;
                qt.y0(37, (bArr[i18] >> 1) & 1);
                int i19 = (bArr[i18] >> 2) & 63;
                if (i19 == 0) {
                    qt.y0(27, -1);
                } else if (i19 <= 15) {
                    qt.y0(27, -2);
                } else if (i19 >= 49) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, (bArr[i18] >> 2) & 63);
                }
                int i20 = i2 + 5;
                int i21 = (bArr[i20] >> 2) & 63;
                if (i21 == 0) {
                    qt.y0(28, -1);
                } else if (i21 <= 15) {
                    qt.y0(28, -2);
                } else if (i21 >= 49) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, (bArr[i20] >> 2) & 63);
                }
                int i22 = bArr[i2 + 6] & 255;
                if (i22 == 0 || i22 == 255) {
                    u0.d.A3(0);
                } else if (((bArr[i18] >> 1) & 1) != 1) {
                    u0.d.A3((i22 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                } else {
                    u0.d.B3((268435456 | ((i22 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1));
                }
                break;
            case 34:
                u0.d.R2(l0.c0.d1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.d1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.d1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.d1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i23 = i2 + 2;
                int i24 = bArr[i23] & 255;
                int i25 = i2 + 3;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 4;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 5;
                int i30 = bArr[i29] & 255;
                if (i24 == 0 && i26 == 0 && i28 == 0 && i30 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i24 || l0.c0.f13014h != i26 || l0.c0.f13015i != i28 || l0.c0.f13016j != i30) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i24;
                l0.c0.f13014h = i26;
                l0.c0.f13015i = i28;
                l0.c0.f13016j = i30;
                u0.d.D2(l0.c0.d1(bArr[i23] & 255));
                u0.d.E2(l0.c0.d1(bArr[i25] & 255));
                u0.d.F2(l0.c0.d1(bArr[i27] & 255));
                u0.d.G2(l0.c0.d1(bArr[i29] & 255));
                break;
            default:
                switch (b2) {
                    case 93:
                        int i31 = i2 + 2;
                        qt.y0(110, (bArr[i31] >> 0) & 1);
                        qt.y0(140, (bArr[i31] >> 1) & 1);
                        break;
                    case 94:
                        int i32 = i2 + 2;
                        qt.y0(120, (bArr[i32] >> 7) & 1);
                        qt.y0(121, (bArr[i32] >> 6) & 1);
                        qt.y0(122, (bArr[i32] >> 5) & 1);
                        qt.y0(123, (bArr[i32] >> 4) & 1);
                        qt.y0(124, (bArr[i32] >> 3) & 1);
                        qt.y0(125, (bArr[i32] >> 2) & 1);
                        qt.y0(126, (bArr[i32] >> 1) & 1);
                        break;
                    case 95:
                        int i33 = i2 + 2;
                        qt.y0(98, (bArr[i33] >> 7) & 1);
                        qt.y0(99, (bArr[i33] >> 6) & 1);
                        qt.y0(100, (bArr[i33] >> 5) & 1);
                        qt.y0(101, (bArr[i33] >> 4) & 1);
                        qt.y0(102, (bArr[i33] >> 3) & 1);
                        qt.y0(103, (bArr[i33] >> 2) & 1);
                        qt.y0(104, (bArr[i33] >> 1) & 1);
                        qt.y0(105, (bArr[i33] >> 0) & 1);
                        qt.y0(106, bArr[i2 + 3] & 255);
                        qt.y0(107, bArr[i2 + 4] & 255);
                        qt.y0(108, bArr[i2 + 5] & 255);
                        qt.y0(109, bArr[i2 + 6] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10361s);
        l0.b0.p0(this.f10362t);
        qt.q0(this.f10359q);
        w0.e.f17815a.d(this.f10359q);
        w0.e.f17819e.d(this.f10359q);
        u0.c.f17374a.d(this.f10359q);
        qt.q0(this.f10358p);
        o1.h.f16865a.d(this.f10357o);
        u0.c.f17388o.d(this.f10351i);
        u0.c.f17389p.d(this.f10352j);
        w0.e.f17817c.d(this.f10353k);
        h0.d.f2464c.d(this.f10350h);
        h0.d.f2462a.d(this.f10350h);
        o1.h.f16867c.d(this.f10347e);
        o1.h.f16868d.d(this.f10348f);
        o1.h.f16869e.d(this.f10349g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 151) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 223, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 222, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 221, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 225, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 != 10) {
            return;
        }
        z.k.s(227, -35, 2, iArr[0], iArr[1]);
        if (iArr[0] == 2) {
            int i3 = this.f10363u + 1;
            this.f10363u = i3;
            qt.y0(149, i3);
            if (this.f10363u > 2) {
                this.f10363u = 0;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x006b  */
    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[4] = 1;
            } else if (i6 == 65537) {
                iArr[4] = 2;
            } else if (i6 == 65538) {
                iArr[4] = 0;
            } else if (i6 == 0 || i6 == 1) {
                iArr[4] = 16;
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
        } else if (i3 == 3) {
            int i8 = u0.b.s3;
            iArr[4] = i8 & 255;
            iArr[5] = (i8 >> 8) & 255;
            int i9 = u0.b.r3;
            iArr[6] = i9 & 255;
            iArr[7] = (i9 >> 8) & 255;
            int i10 = u0.b.t3;
            iArr[8] = i10 / 60;
            iArr[9] = i10 % 60;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i11 = u0.b.s3;
                iArr[4] = i11 & 255;
                iArr[5] = (i11 >> 8) & 255;
                int i12 = u0.b.r3;
                iArr[6] = i12 & 255;
                iArr[7] = (i12 >> 8) & 255;
                int i13 = u0.b.t3;
                iArr[8] = i13 / 60;
                iArr[9] = i13 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i14 = o0.e.f16794r;
            iArr[7] = i14 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i14 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i14 % 60;
        } else {
            int i15 = o0.e.C;
            iArr[4] = i15 & 255;
            iArr[5] = (i15 >> 8) & 255;
            int i16 = o0.e.B;
            iArr[6] = i16 & 255;
            iArr[7] = (i16 >> 8) & 255;
            int i17 = o0.e.f16794r;
            iArr[8] = i17 / 60;
            iArr[9] = i17 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i18 = i2 + 1;
            iArr2[i18] = iArr[i2];
            i2 = i18;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
        int i2;
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 16;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i3 == 2 || i3 == 3) {
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
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            case 9:
                iArr[2] = 13;
                iArr[3] = 34;
                break;
            default:
                int i4 = u0.b.f17306a0;
                if (i4 == 0) {
                    iArr[2] = 0;
                    iArr[3] = 0;
                } else if (i4 == 1) {
                    iArr[2] = 7;
                    iArr[3] = 48;
                }
                break;
        }
        if (o1.s0.m("sys.carlink.type", 0) > 0) {
            if (o1.u.S("com.syu.carlink") || (i2 = u0.b.D) == 10 || i2 == 12) {
                iArr[2] = 15;
                iArr[3] = 0;
            }
        }
    }

    public final void l3(byte b2, String str) {
        if (str == null) {
            str = u0.b.D == 9 ? "  " : "Unkown";
        }
        int length = str.length();
        if (length > 30) {
            length = 30;
        }
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 16;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 4] = iCodePointAt & 255;
            iArr[i4 + 5] = (iCodePointAt >> 8) & 255;
        }
        z.k.s(iArr);
    }

    public final void m3(int i2, String str) {
        if (str == null) {
            z.k.s(-29, -59, 2, (byte) i2, 1);
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (byte) i2;
        iArr[4] = 1;
        for (int i3 = 0; i3 < str.length(); i3++) {
            iArr[5 + i3] = (byte) charArray[i3];
        }
        z.k.s(iArr);
    }
}
