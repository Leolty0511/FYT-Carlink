package k0;

import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class yn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12581b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12584e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12582c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12583d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 0}, new int[]{96, 34}, new int[]{97, 34}, new int[]{98, 33}, new int[]{99, 35}, new int[]{100, 35}, new int[]{101, 35}, new int[]{102, 32}, new int[]{103, 34}, new int[]{112, 29}, new int[]{113, 6}, new int[]{114, 1}, new int[]{115, 5}, new int[]{116, 30}, new int[]{117, 31}, new int[]{118, 16}, new int[]{119, 65}, new int[]{122, 40}, new int[]{123, 41}, new int[]{124, 42}, new int[]{125, 43}, new int[]{126, 44}, new int[]{127, 45}, new int[]{128, 24}, new int[]{129, 54}, new int[]{130, 21}, new int[]{131, 39}, new int[]{132, 78}, new int[]{133, -1}, new int[]{136, -1}, new int[]{137, 54}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12585f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f12586g = {new int[]{1, 75}, new int[]{2, 74}, new int[]{3, 74}, new int[]{4, 22}, new int[]{5, 54}, new int[]{6, 54}, new int[]{7, 76}, new int[]{8, 53}, new int[]{9, 74}, new int[]{10, 54}, new int[]{11, 21}, new int[]{12, 21}, new int[]{13, 21}, new int[]{14, 52}, new int[]{15, -1}, new int[]{16, 5}, new int[]{17, 18}, new int[]{18, 26}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12587h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12588i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12589j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12590k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12591l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f12592m = new e();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12593n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f12594o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f12595p = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f12596q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f12597r = new f();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f12598s = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 1, 41);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -58, 4, 1, (byte) time.hour, (byte) time.minute, (byte) ((((byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1)) << 7) | ((!DateFormat.is24HourFormat(App.c()) ? 1 : 0) << 6)));
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(yn.this.f12591l);
            yn.this.f12589j = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yn ynVar = yn.this;
            int i2 = ynVar.f12589j - 1;
            ynVar.f12589j = i2;
            if (i2 <= 0) {
                l0.b0.p0(ynVar.f12591l);
                yn.this.f12589j = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            switch (nt.f8633a) {
                case 65989:
                    z.k.s(227, 226, 1, 18);
                    break;
                case 131525:
                    z.k.s(227, 226, 1, 19);
                    break;
                case 1704391:
                    z.k.s(227, 226, 1, 128);
                    break;
                case 1769927:
                    z.k.s(227, 226, 1, 129);
                    break;
                case 1835463:
                    z.k.s(227, 226, 1, 130);
                    break;
                case 1900999:
                    z.k.s(227, 226, 1, 1);
                    break;
                case 1966535:
                    z.k.s(227, 226, 1, 2);
                    break;
                case 2032071:
                    z.k.s(227, 226, 1, 3);
                    break;
                case 2097607:
                    z.k.s(227, 226, 1, 4);
                    break;
                case 4260295:
                    z.k.s(227, 226, 1, 20);
                    break;
                case 7668164:
                    z.k.s(227, 226, 1, 11);
                    break;
                case 7733700:
                    z.k.s(227, 226, 1, 10);
                    break;
                case 10224071:
                    z.k.s(227, 226, 1, 21);
                    break;
                case 13763014:
                    z.k.s(227, 226, 1, 12);
                    break;
                case 13828550:
                    z.k.s(227, 226, 1, 13);
                    break;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int i3 = h0.c.E;
            boolean z3 = true;
            boolean z4 = i3 == 5 || i3 == 3 || i3 == 4;
            switch (i3) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    i2 = 2;
                    break;
                case 3:
                case 4:
                case 5:
                    i2 = 1;
                    break;
            }
            if (yn.this.f12593n != i2) {
                yn.this.f12593n = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (yn.this.f12595p.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                yn.this.f12595p = h0.c.f2437h;
                if (yn.this.f12595p == null) {
                    yn.this.f12595p = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                yn ynVar = yn.this;
                ynVar.m3(ynVar.f12593n, yn.this.f12595p);
                if (yn.this.f12594o != z4) {
                    yn.this.f12594o = z4;
                    yn.this.f12593n = 0;
                }
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yn ynVar = yn.this;
            int i2 = ynVar.f12596q;
            if (i2 > 0) {
                ynVar.f12596q = i2 - 1;
            }
            if (ynVar.f12596q == 0) {
                ynVar.a3();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            yn ynVar = yn.this;
            ynVar.f12596q = 4;
            ynVar.c3();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        switch (nt.f8633a) {
            case 1704391:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8314i = 1;
                h0.d.f2464c.a(this.f12592m, 1);
                h0.d.f2462a.a(this.f12592m, 1);
                qt.z(this.f12597r);
                y0.g.f18094d.a(this.f12598s, 1);
                y0.g.f18095e.a(this.f12598s, 1);
                w0.e.f17815a.a(this.f12597r, 1);
                w0.e.f17819e.a(this.f12597r, 1);
                break;
            case 1769927:
            case 1835463:
            case 1900999:
            case 1966535:
            case 2032071:
            case 2097607:
            case 4260295:
            case 10224071:
            case 13763014:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8314i = 1;
                break;
            case 13828550:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8314i = 1;
                mtVar.f8313h = 2;
                break;
            default:
                h0.d.f2464c.a(this.f12592m, 1);
                h0.d.f2462a.a(this.f12592m, 1);
                qt.z(this.f12597r);
                y0.g.f18094d.a(this.f12598s, 1);
                y0.g.f18095e.a(this.f12598s, 1);
                w0.e.f17815a.a(this.f12597r, 1);
                w0.e.f17819e.a(this.f12597r, 1);
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = null;
                mtVar2.f8314i = 0;
                break;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            mt mtVar3 = this.f7886a;
            mtVar3.f8306a = new String[]{"com.syu.canbus"};
            mtVar3.f8314i = 0;
        }
        u0.c.f17386m.a(this.f12590k, 1);
        qt.z(this.f12588i);
        qt.y(this.f12587h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == -109) {
            qt.y0(100, bArr[i2 + 2] & 255);
            qt.y0(101, bArr[i2 + 3] & 255);
            qt.y0(102, bArr[i2 + 4] & 255);
            qt.y0(103, bArr[i2 + 5] & 255);
            qt.y0(104, bArr[i2 + 6] & 255);
            qt.y0(105, bArr[i2 + 7] & 255);
            qt.y0(106, bArr[i2 + 8] & 255);
            qt.y0(107, bArr[i2 + 9] & 255);
            qt.y0(108, bArr[i2 + 10] & 255);
        }
        if (b2 == 41) {
            int i5 = nt.f8633a;
            if (i5 == 4260295 || i5 == 10224071 || i5 == 13763014) {
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 6303);
                return;
            } else {
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 5696);
                return;
            }
        }
        if (b2 == 50) {
            if (((bArr[i2 + 2] >> 3) & 1) == 1) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == 105) {
            int i6 = i2 + 2;
            qt.y0(98, (bArr[i6] >> 2) & 1);
            qt.y0(99, (bArr[i6] >> 3) & 1);
            return;
        }
        if (b2 == 47) {
            if (nt.a()) {
                this.f12585f = bArr[i2 + 2] & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f12586g;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f12585f;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f12584e = i7;
                        break;
                    }
                    i7++;
                }
                if (this.f12585f == 0 || (i4 = this.f12584e) >= iArr.length) {
                    return;
                }
                l0.b0.l0(iArr[i4][1], 0);
                l0.b0.l0(this.f12586g[this.f12584e][1], 1);
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f12582c = b3 & 255;
                int i9 = 0;
                while (true) {
                    iArr2 = this.f12583d;
                    if (i9 < iArr2.length) {
                        int i10 = this.f12582c;
                        if (i10 != iArr2[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f12581b = i9;
                        }
                    }
                }
                if (this.f12582c != 136) {
                    int i11 = b4 & 255;
                    if (i11 != 1) {
                        if (i11 == 0) {
                            int i12 = this.f12581b;
                            if (i12 < iArr2.length && i12 != 255) {
                                l0.b0.l0(iArr2[i12][1], 1);
                            }
                            this.f12581b = 255;
                        }
                    } else if (i9 < iArr2.length) {
                        l0.b0.l0(iArr2[i9][1], 0);
                    }
                } else if ((b4 & 255) == 1) {
                    if (u0.b.f17347o != 0) {
                        qt.a(0);
                    } else {
                        qt.a(1);
                    }
                }
                break;
            case 33:
                int i13 = i2 + 2;
                qt.y0(10, (bArr[i13] >> 7) & 1);
                qt.y0(11, (bArr[i13] >> 6) & 1);
                qt.y0(12, (bArr[i13] >> 5) & 1);
                qt.y0(16, (bArr[i13] >> 4) & 1);
                qt.y0(13, (bArr[i13] >> 3) & 1);
                qt.y0(14, (bArr[i13] >> 2) & 1);
                qt.y0(65, (bArr[i13] >> 1) & 1);
                int i14 = i2 + 3;
                qt.y0(18, (bArr[i14] >> 7) & 1);
                qt.y0(19, (bArr[i14] >> 6) & 1);
                qt.y0(20, (bArr[i14] >> 5) & 1);
                qt.y0(21, (bArr[i14] >> 0) & 15);
                int i15 = i2 + 4;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 5;
                int i18 = bArr[i17] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i18 = bArr[i15] & 255;
                    i16 = bArr[i17] & 255;
                }
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 == 127) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i16);
                }
                if (i18 == 0) {
                    qt.y0(28, -2);
                } else if (i18 == 127) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i18);
                }
                int i19 = i2 + 6;
                qt.y0(38, (bArr[i19] >> 0) & 1);
                qt.y0(33, (bArr[i19] >> 1) & 1);
                qt.y0(53, (bArr[i19] >> 2) & 1);
                qt.y0(17, (bArr[i19] >> 4) & 1);
                qt.y0(37, (bArr[i19] >> 6) & 1);
                int i20 = i2 + 8;
                if ((bArr[i20] & 255) == 0) {
                    qt.y0(40, -2);
                } else if ((bArr[i20] & 255) == 127) {
                    qt.y0(40, -3);
                } else {
                    qt.y0(40, bArr[i20] & 255);
                }
                int i21 = i2 + 9;
                qt.y0(86, (bArr[i21] >> 0) & 1);
                qt.y0(67, (bArr[i21] >> 1) & 1);
                qt.y0(44, (bArr[i21] >> 4) & 15);
                u0.d.A3((bArr[i2 + 7] * 10) + 1000);
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i22 = i2 + 2;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 3;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 4;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 5;
                int i29 = bArr[i28] & 255;
                if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i23;
                l0.c0.f13014h = i25;
                l0.c0.f13015i = i27;
                l0.c0.f13016j = i29;
                u0.d.D2(l0.c0.K0(bArr[i22] & 255));
                u0.d.E2(l0.c0.K0(bArr[i24] & 255));
                u0.d.F2(l0.c0.K0(bArr[i26] & 255));
                u0.d.G2(l0.c0.K0(bArr[i28] & 255));
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
                if ((bArr[i2 + 3] & 255) != 32) {
                    qt.a(0);
                } else {
                    qt.a(1);
                }
                break;
            default:
                switch (b2) {
                    case 112:
                        int i30 = i2 + 2;
                        qt.y0(109, (bArr[i30] >> 7) & 1);
                        qt.y0(110, (bArr[i30] >> 6) & 1);
                        qt.y0(111, (bArr[i30] >> 5) & 1);
                        qt.y0(112, (bArr[i30] >> 4) & 1);
                        qt.y0(113, (bArr[i30] >> 3) & 1);
                        qt.y0(114, (bArr[i30] >> 2) & 1);
                        qt.y0(115, (bArr[i30] >> 1) & 1);
                        qt.y0(116, (bArr[i30] >> 0) & 1);
                        qt.y0(117, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(118, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(119, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(120, (65280 & (bArr[i2 + 10] << 8)) | (255 & bArr[i2 + 9]));
                        int i31 = i2 + 11;
                        qt.y0(121, (bArr[i31] >> 7) & 1);
                        qt.y0(122, (bArr[i31] >> 6) & 1);
                        qt.y0(123, (bArr[i31] >> 5) & 1);
                        qt.y0(124, (bArr[i31] >> 4) & 1);
                        break;
                    case 113:
                        qt.y0(125, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                        qt.y0(126, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
                        qt.y0(127, (bArr[i2 + 6] & 255) | ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280));
                        break;
                    case 114:
                        qt.y0(128, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
                        qt.y0(129, bArr[i2 + 4] & 255);
                        break;
                    default:
                        switch (b2) {
                            case 116:
                                int i32 = i2 + 2;
                                qt.y0(130, (bArr[i32] >> 4) & 1);
                                qt.y0(131, (bArr[i32] >> 3) & 1);
                                qt.y0(132, (bArr[i32] >> 2) & 1);
                                qt.y0(133, (bArr[i32] >> 1) & 1);
                                qt.y0(134, (bArr[i32] >> 0) & 1);
                                int i33 = i2 + 3;
                                qt.y0(135, (bArr[i33] >> 0) & 7);
                                qt.y0(136, (bArr[i33] >> 3) & 7);
                                qt.y0(137, (bArr[i33] >> 6) & 3);
                                int i34 = i2 + 4;
                                qt.y0(138, (bArr[i34] >> 0) & 3);
                                qt.y0(139, (bArr[i34] >> 2) & 3);
                                qt.y0(140, (bArr[i34] >> 4) & 3);
                                qt.y0(141, (bArr[i34] >> 6) & 1);
                                int i35 = i2 + 5;
                                qt.y0(142, (bArr[i35] >> 0) & 7);
                                qt.y0(143, (bArr[i35] >> 3) & 1);
                                int i36 = i2 + 6;
                                qt.y0(144, (bArr[i36] >> 0) & 1);
                                qt.y0(145, (bArr[i36] >> 1) & 7);
                                qt.y0(146, (bArr[i36] >> 4) & 7);
                                int i37 = i2 + 7;
                                qt.y0(150, (bArr[i37] >> 0) & 1);
                                qt.y0(151, (bArr[i37] >> 1) & 1);
                                qt.y0(152, (bArr[i37] >> 2) & 1);
                                qt.y0(153, (bArr[i37] >> 3) & 1);
                                qt.y0(154, (bArr[i37] >> 4) & 1);
                                qt.y0(155, (bArr[i37] >> 5) & 1);
                                qt.y0(156, (bArr[i37] >> 6) & 1);
                                int i38 = i2 + 8;
                                qt.y0(157, (bArr[i38] >> 0) & 1);
                                qt.y0(158, (bArr[i38] >> 1) & 1);
                                qt.y0(159, (bArr[i38] >> 2) & 1);
                                qt.y0(160, (bArr[i38] >> 4) & 3);
                                qt.y0(161, (bArr[i38] >> 6) & 3);
                                break;
                            case 117:
                                qt.y0(147, bArr[i2 + 2] & 255);
                                break;
                            case 118:
                                int i39 = i2 + 2;
                                qt.y0(148, (bArr[i39] >> 0) & 1);
                                qt.y0(149, (bArr[i39] >> 1) & 1);
                                qt.y0(162, (bArr[i39] >> 2) & 3);
                                qt.y0(163, (bArr[i39] >> 4) & 3);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12590k);
        l0.b0.p0(this.f12591l);
        h0.d.f2464c.d(this.f12592m);
        h0.d.f2462a.d(this.f12592m);
        qt.q0(this.f12597r);
        y0.g.f18094d.d(this.f12598s);
        y0.g.f18095e.d(this.f12598s);
        w0.e.f17815a.d(this.f12597r);
        w0.e.f17819e.d(this.f12597r);
        qt.q0(this.f12588i);
        qt.p0(this.f12587h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 164) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 228, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4) {
            z.k.s(227, 229, 1, iArr[0]);
            return;
        }
        if (i2 == 5) {
            z.k.s(227, 141, 2, iArr[0], iArr[1]);
        } else if (i2 == 1003 && iArr != null && iArr.length > 0) {
            z.k.s(227, -28, 2, 36, 1);
        }
    }

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
            iArr[7] = (i5 % 6) + 1;
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i7 = u0.b.s3;
                iArr[4] = i7 & 255;
                iArr[5] = (i7 >> 8) & 255;
                int i8 = u0.b.r3;
                iArr[6] = i8 & 255;
                iArr[7] = (i8 >> 8) & 255;
                int i9 = u0.b.t3;
                iArr[8] = i9 / 60;
                iArr[9] = i9 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i10 = o0.e.f16794r;
            iArr[7] = i10 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i10 % 60;
        } else {
            int i11 = o0.e.C;
            iArr[4] = i11 & 255;
            iArr[5] = (i11 >> 8) & 255;
            int i12 = o0.e.B;
            iArr[6] = i12 & 255;
            iArr[7] = (i12 >> 8) & 255;
            int i13 = o0.e.f16794r;
            iArr[8] = i13 / 60;
            iArr[9] = i13 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i14 = i2 + 1;
            iArr2[i14] = iArr[i2];
            i2 = i14;
        }
        z.k.s(iArr2);
    }

    public final void b3(int[] iArr) {
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

    public final void c3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 36) {
            iArr[2] = 36;
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

    public final void m3(int i2, String str) {
        if (str == null) {
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
