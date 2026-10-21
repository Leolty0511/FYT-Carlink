package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class kd extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7232e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f7233f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}, new int[]{23, 1}, new int[]{43, 5}, new int[]{44, 21}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7234g = {new int[]{1, 0}, new int[]{6, 6}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{37, 1}, new int[]{42, 29}, new int[]{43, 5}, new int[]{55, 55}, new int[]{67, 2}, new int[]{69, 7}, new int[]{70, 8}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7235h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7236i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7237j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7238k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7239l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7240m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7241n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7242o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7243p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f7244q = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kd.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kd kdVar = kd.this;
            kdVar.f7235h = 0;
            kdVar.f7236i = 0;
            l0.b0.b(kdVar.f7240m);
            kd.this.f7238k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kd kdVar = kd.this;
            int i2 = kdVar.f7238k - 1;
            kdVar.f7238k = i2;
            if (i2 <= 0) {
                l0.b0.p0(kdVar.f7240m);
                kd.this.f7238k = 5;
                return;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 29 || i3 == 30) {
                    z.k.s(227, 2, 36, 23, 53);
                } else if (i3 == 35 || i3 == 36) {
                    z.k.s(227, 2, 36, 25, 53);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                kd.this.e3((byte) -110, u0.b.i3);
            } else {
                kd.this.e3((byte) -110, " ");
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                kd.this.e3((byte) -109, u0.b.k3);
            } else {
                kd.this.e3((byte) -109, " ");
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, -116, 3, (y0.f.f18037c * 30) / 36);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, time.hour, time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? 1 : 0, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, 0);
        }
    }

    public static int b3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 2:
            case 5:
            case 6:
                i2 = 12;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 != i3 - 65536) {
                    if (i3 + 0 != 0) {
                        i2 = 1 != i3 - 0 ? 0 : 5;
                    } else {
                        i2 = 4;
                    }
                }
                break;
            case 3:
                i2 = 133;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 13;
                } else if (i4 != 2) {
                    i2 = i4 != 3 ? 0 : 13;
                } else {
                    i2 = 25;
                }
                break;
            case 7:
                i2 = 22;
                break;
            case 8:
            case 10:
                i2 = 13;
                break;
            case 9:
            default:
                i2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        if (u0.b.f17320f == 0) {
            return 0;
        }
        return i2;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[10] == 0) {
                    c3(1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[10] == 1) {
                    c3(1);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    c3(2);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    c3(2);
                    return;
                }
                return;
            }
        }
        if (i2 == 36) {
            if (iArr[1] != 0) {
                if (nt.f8645g[15] == 0) {
                    c3(5);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[15] == 1) {
                    c3(5);
                    return;
                }
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 9) {
                z.k.s(227, 2, 140, 25, 0);
                return;
            } else {
                if (iArr[1] == 10) {
                    z.k.s(227, 2, 140, 25, 1);
                    return;
                }
                return;
            }
        }
        if (i2 == 38) {
            if (iArr[1] == 1) {
                if (nt.f8645g[12] == 0) {
                    c3(7);
                    return;
                }
                return;
            } else {
                if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    c3(7);
                    return;
                }
                return;
            }
        }
        if (i2 == 39) {
            if (iArr[1] == -1) {
                c3(11);
                return;
            } else {
                c3(12);
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                c3(13);
                return;
            } else {
                c3(14);
                return;
            }
        }
        if (i2 != 42) {
            return;
        }
        if (iArr[1] != 0) {
            c3(15);
        } else {
            c3(16);
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8319n = 1;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 == 29 || i2 == 30) {
            mtVar.f8314i = 0;
        } else if (i2 == 35 || i2 == 36) {
            mtVar.f8314i = 1;
        }
        qt.z(this.f7244q);
        u0.c.f17386m.a(this.f7239l, 1);
        w0.e.f17815a.a(this.f7237j, 1);
        w0.e.f17819e.a(this.f7237j, 1);
        u0.c.f17374a.a(this.f7237j, 1);
        y0.g.f18094d.a(this.f7243p, 1);
        u0.c.f17388o.a(this.f7241n, 1);
        u0.c.f17390q.a(this.f7242o, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56, 70};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        int[][] iArr2;
        int i8;
        byte b2 = bArr[i2 + 1];
        if (b2 == -121) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            int i9 = bArr[i2 + 8] & 255;
            int i10 = bArr[i2 + 9] & 255;
            qt.y0(98, (b3 >> 7) & 1);
            qt.y0(99, (b5 >> 7) & 1);
            qt.y0(100, (b5 >> 5) & 3);
            qt.y0(101, (((b3 >> 6) & 1) << 8) | ((b5 >> 4) & 1));
            qt.y0(102, (((b3 >> 5) & 1) << 8) | ((b5 >> 3) & 1));
            qt.y0(103, (((b3 >> 4) & 1) << 8) | ((b5 >> 2) & 1));
            qt.y0(104, (((b3 >> 3) & 1) << 8) | ((b5 >> 1) & 1));
            qt.y0(105, (((b3 >> 2) & 1) << 8) | ((b5 >> 0) & 1));
            qt.y0(106, (((b3 >> 1) & 1) << 8) | ((b6 >> 6) & 3));
            qt.y0(107, (((b3 >> 0) & 1) << 8) | (31 & b6));
            qt.y0(108, (((b4 >> 7) & 1) << 8) | ((b7 >> 4) & 15));
            qt.y0(109, (((b4 >> 6) & 1) << 8) | ((b7 >> 3) & 1));
            qt.y0(110, (((b4 >> 5) & 1) << 8) | ((b7 >> 2) & 1));
            qt.y0(111, (((b4 >> 4) & 1) << 8) | ((b7 >> 1) & 1));
            qt.y0(113, (((b4 >> 3) & 1) << 8) | ((b7 >> 0) & 1));
            qt.y0(114, (((b4 >> 2) & 1) << 8) | ((b8 >> 7) & 1));
            qt.y0(115, (((b4 >> 1) & 1) << 8) | ((b8 >> 5) & 3));
            qt.y0(120, (b8 >> 4) & 1);
            qt.y0(121, (b8 >> 3) & 1);
            qt.y0(116, (((i10 >> 7) & 1) << 8) | ((i9 >> 6) & 3));
            qt.y0(117, (((i10 >> 6) & 1) << 8) | ((i9 >> 4) & 3));
            qt.y0(118, (((i10 >> 5) & 1) << 8) | ((i9 >> 3) & 1));
            qt.y0(119, (((i10 >> 4) & 1) << 8) | ((i9 >> 2) & 1));
            qt.y0(122, (((i10 >> 3) & 1) << 8) | ((i9 >> 1) & 1));
            return;
        }
        if (b2 == -24) {
            if (!nt.a() || qt.k0()) {
                return;
            }
            if (bArr[i2 + 5] != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            byte b11 = bArr[i2 + 4];
            byte b12 = bArr[i2 + 6];
            byte b13 = bArr[i2 + 7];
            qt.y0(10, (b9 >> 6) & 1);
            qt.y0(53, (b9 >> 5) & 1);
            qt.y0(13, (b9 >> 3) & 1);
            qt.y0(11, (b10 >> 6) & 1);
            qt.y0(12, (b10 >> 4) & 1);
            qt.y0(14, (b10 >> 2) & 1);
            qt.y0(16, (b11 >> 5) & 1);
            qt.y0(15, (b11 >> 4) & 1);
            int i11 = b12 & 255;
            if (i11 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
            } else if (i11 != 3) {
                if (i11 == 5) {
                    i7 = 0;
                    i4 = 0;
                    i5 = 1;
                } else if (i11 != 6) {
                    switch (i11) {
                        case 11:
                            i7 = 0;
                            i5 = 0;
                            i6 = 0;
                            i4 = 1;
                            break;
                        case 12:
                            i7 = 0;
                            i5 = 0;
                            i4 = 1;
                            i6 = 1;
                            break;
                        case 13:
                            i7 = 0;
                            i6 = 0;
                            i4 = 1;
                            i5 = 1;
                            break;
                        case 14:
                            i7 = 0;
                            i4 = 1;
                            i5 = i4;
                            break;
                        default:
                            i7 = 0;
                            i4 = 0;
                            i5 = i4;
                            break;
                    }
                } else {
                    i7 = 0;
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                }
                i6 = i5;
            } else {
                i7 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(49, i7);
            qt.y0(18, i4);
            qt.y0(19, i5);
            qt.y0(20, i6);
            qt.y0(21, b13 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i12 = i2 + 8;
                if ((bArr[i12] & 255) == 254) {
                    qt.y0(28, -2);
                } else if ((bArr[i12] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i12] & 255);
                }
                int i13 = i2 + 9;
                if ((bArr[i13] & 255) == 254) {
                    qt.y0(27, -2);
                } else if ((bArr[i13] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i13] & 255);
                }
            } else {
                int i14 = i2 + 8;
                if ((bArr[i14] & 255) == 254) {
                    qt.y0(27, -2);
                } else if ((bArr[i14] & 255) == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i14] & 255);
                }
                int i15 = i2 + 9;
                if ((bArr[i15] & 255) == 254) {
                    qt.y0(28, -2);
                } else if ((bArr[i15] & 255) == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i15] & 255);
                }
            }
            int i16 = bArr[i2 + 13] & 255;
            int i17 = (i16 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
            if (i16 == 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3(i17);
                return;
            }
        }
        if (b2 == 65) {
            u0.d.R2(l0.c0.Y0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.Y0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.Y0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.Y0(bArr[i2 + 5] & 255));
            int i18 = i2 + 6;
            int i19 = bArr[i18] & 255;
            int i20 = bArr[i2 + 7] & 255;
            int i21 = bArr[i2 + 8] & 255;
            int i22 = i2 + 9;
            int i23 = bArr[i22] & 255;
            if (i19 == 255 && i20 == 255 && i21 == 255 && i23 == 255) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i20 || l0.c0.f13015i != i21 || l0.c0.f13016j != i23) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i19;
            l0.c0.f13014h = i20;
            l0.c0.f13015i = i21;
            l0.c0.f13016j = i23;
            u0.d.D2(l0.c0.Y0(bArr[i18] & 255));
            u0.d.E2(l0.c0.Y0(bArr[i18] & 255));
            u0.d.F2(l0.c0.Y0(bArr[i22] & 255));
            u0.d.G2(l0.c0.Y0(bArr[i22] & 255));
            return;
        }
        if (b2 == 17) {
            if (nt.a()) {
                byte b14 = bArr[i2 + 4];
                byte b15 = bArr[i2 + 5];
                this.f7230c = b14 & 255;
                int i24 = 0;
                while (true) {
                    iArr = this.f7233f;
                    if (i24 >= iArr.length) {
                        break;
                    }
                    int i25 = this.f7230c;
                    if (i25 == iArr[i24][0]) {
                        if (i25 == 0) {
                            break;
                        }
                        this.f7229b = i24;
                        break;
                    }
                    i24++;
                }
                if ((b15 & 255) == 0) {
                    int i26 = this.f7229b;
                    if (i26 < iArr.length && i26 != 255) {
                        l0.b0.l0(iArr[i26][1], 1);
                    }
                    this.f7229b = 255;
                } else if (i24 < iArr.length) {
                    l0.b0.l0(iArr[i24][1], 0);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 10000);
            return;
        }
        if (b2 == 18) {
            byte b16 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b16 >> 6) & 1);
                qt.y0(2, (b16 >> 7) & 1);
            } else {
                qt.y0(1, (b16 >> 7) & 1);
                qt.y0(2, (b16 >> 6) & 1);
            }
            qt.y0(3, (b16 >> 5) & 1);
            qt.y0(4, (b16 >> 4) & 1);
            qt.y0(5, (b16 >> 3) & 1);
            qt.y0(0, (b16 >> 0) & 1);
            return;
        }
        if (b2 == 33) {
            if (nt.a()) {
                this.f7231d = bArr[i2 + 2] & 255;
                byte b17 = bArr[i2 + 3];
                int i27 = 0;
                while (true) {
                    iArr2 = this.f7234g;
                    if (i27 >= iArr2.length) {
                        break;
                    }
                    int i28 = this.f7231d;
                    if (i28 == iArr2[i27][0]) {
                        if (i28 == 0) {
                            break;
                        }
                        this.f7232e = i27;
                        break;
                    }
                    i27++;
                }
                if (this.f7231d == 67) {
                    if ((b17 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                        return;
                    }
                    o1.u.g("com.syu.carlink");
                    return;
                }
                if ((b17 & 255) != 0) {
                    if (i27 < iArr2.length) {
                        l0.b0.l0(iArr2[i27][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i29 = this.f7232e;
                    if (i29 < iArr2.length && i29 != 255) {
                        l0.b0.l0(iArr2[i29][1], 1);
                    }
                    this.f7232e = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 34 && nt.a()) {
            byte b18 = bArr[i2 + 2];
            byte b19 = bArr[i2 + 3];
            if (b18 == 1) {
                int i30 = this.f7235h;
                if (b19 != i30) {
                    if (b19 > i30) {
                        for (int i31 = 0; i31 < b19 - this.f7235h; i31++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (b19 < i30) {
                        for (int i32 = 0; i32 < this.f7235h - b19; i32++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    }
                    this.f7235h = b19;
                    return;
                }
                return;
            }
            if ((b18 == 2 || b18 == 3 || b18 == 4 || b18 == 5) && b19 != (i8 = this.f7236i)) {
                if (b19 > i8) {
                    for (int i33 = 0; i33 < b19 - this.f7236i; i33++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else if (b19 < i8) {
                    for (int i34 = 0; i34 < this.f7236i - b19; i34++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                }
                this.f7236i = b19;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f7244q);
        u0.c.f17386m.d(this.f7239l);
        w0.e.f17815a.d(this.f7237j);
        w0.e.f17819e.d(this.f7237j);
        u0.c.f17374a.d(this.f7237j);
        y0.g.f18094d.d(this.f7243p);
        u0.c.f17388o.d(this.f7241n);
        u0.c.f17390q.d(this.f7242o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 123) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 61, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (qt.l0(iArr, 2)) {
                z.k.s(227, 2, 154, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            if (iArr[0] == 170 && iArr[1] == 254) {
                z.k.s(227, 2, -3, 4, 8);
                return;
            } else {
                z.k.s(227, 2, -116, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 != 3) {
            if (i2 == 1003) {
                int i3 = nt.f8637c;
                if (i3 == 6) {
                    z.k.s(227, 3, -3, 2, 3, 1);
                    return;
                }
                if (i3 == 30) {
                    if (u0.b.f17347o == 1) {
                        z.k.s(227, 2, -3, 4, 3);
                        return;
                    } else {
                        z.k.s(227, 2, -3, 4, 1);
                        return;
                    }
                }
                if (iArr[0] == 1) {
                    z.k.s(227, 2, -3, 1, 3);
                    return;
                } else {
                    z.k.s(227, 2, -3, 1, 1);
                    return;
                }
            }
            if (i2 != 1005) {
                if (i2 == 1029 && T2(iArr, 2)) {
                    int iW = (iArr[1] * 1024) / a.f.w();
                    int i4 = (iArr[2] * CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) / a.f.i();
                    z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0);
                    return;
                }
                return;
            }
        } else if (iArr != null && iArr.length >= 2) {
            z.k.s(227, 4, 111, iArr[0], iArr[1], 0, 0);
        }
        int i5 = nt.f8637c;
        if (i5 == 6) {
            z.k.s(227, 3, -3, 2, 3, iArr[0]);
        } else if (i5 == 15 || i5 == 28) {
            z.k.s(227, 2, -3, 4, iArr[0]);
        } else {
            z.k.s(227, 2, -3, 1, 2);
        }
    }

    public void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 145;
        iArr[2] = b3();
        if (u0.b.f17320f == 1) {
            int i4 = u0.b.D;
            if (i4 == 1) {
                iArr[3] = 48;
                iArr[4] = ((w0.d.f17798j & 255) % 6) + 1 + 48;
                int i5 = w0.d.f17796h;
                if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                    int i6 = w0.d.f17797i;
                    iArr[6] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                    iArr[7] = ((i6 % 10000) / 1000) + 48;
                    iArr[8] = ((i6 % 1000) / 100) + 48;
                    iArr[9] = 46;
                    iArr[10] = ((i6 % 100) / 10) + 48;
                } else {
                    int i7 = w0.d.f17797i;
                    if ((i7 % 10000) / 1000 == 1) {
                        iArr[6] = ((i7 % 10000) / 1000) + 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    } else {
                        iArr[6] = 48;
                        iArr[7] = ((i7 % 1000) / 100) + 48;
                        iArr[8] = ((i7 % 100) / 10) + 48;
                        iArr[9] = (i7 % 10) + 48;
                    }
                }
            } else if (i4 == 4) {
                int i8 = o0.e.B;
                if (i8 <= 999) {
                    int i9 = i8 / 100;
                    iArr[4] = (i8 / 100) + 48;
                    int i10 = (i8 % 100) / 10;
                    iArr[5] = ((i8 % 100) / 10) + 48;
                    iArr[6] = (i8 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i11 = o0.e.f16794r;
                iArr[8] = ((i11 / 60) / 10) + 48;
                iArr[9] = ((i11 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i11 % 60) / 10) + 48;
                iArr[12] = ((i11 % 60) % 10) + 48;
            } else if (i4 == 8) {
                int i12 = u0.b.r3;
                if (i12 <= 999) {
                    int i13 = i12 / 100;
                    iArr[4] = (i12 / 100) + 48;
                    int i14 = (i12 % 100) / 10;
                    iArr[5] = ((i12 % 100) / 10) + 48;
                    iArr[6] = (i12 % 10) + 48;
                } else {
                    iArr[4] = 57;
                    iArr[5] = 57;
                    iArr[6] = 57;
                }
                iArr[7] = 32;
                int i15 = u0.b.t3;
                iArr[8] = ((i15 / 60) / 10) + 48;
                iArr[9] = ((i15 / 60) % 10) + 48;
                iArr[10] = 58;
                iArr[11] = ((i15 % 60) / 10) + 48;
                iArr[12] = ((i15 % 60) % 10) + 48;
            }
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i16 = i2 + 1;
            iArr2[i16] = (byte) iArr[i2];
            i2 = i16;
        }
        z.k.s(iArr2);
    }

    public final void c3(int i2) {
        z.k.s(227, 2, 61, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final void e3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 16 ? str.length() : 16;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
