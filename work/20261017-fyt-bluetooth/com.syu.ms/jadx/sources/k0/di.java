package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class di extends lt {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static int f4474z = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4475b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4478e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4481h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4476c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4477d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 6}, new int[]{10, 12}, new int[]{11, 5}, new int[]{12, 34}, new int[]{13, 35}, new int[]{14, 32}, new int[]{15, 33}, new int[]{16, 5}, new int[]{17, 29}, new int[]{18, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4479f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f4480g = {new int[]{1, 3}, new int[]{2, 4}, new int[]{3, 34}, new int[]{4, 35}, new int[]{5, 32}, new int[]{6, 33}, new int[]{7, 29}, new int[]{8, 5}, new int[]{9, 6}, new int[]{10, 25}, new int[]{11, 25}, new int[]{16, 34}, new int[]{17, 35}, new int[]{18, 32}, new int[]{19, 33}, new int[]{32, 31}, new int[]{33, 30}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4482i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f4483j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{7, 1}, new int[]{8, 24}, new int[]{9, 25}, new int[]{10, 12}, new int[]{11, -1}, new int[]{12, -1}, new int[]{13, 55}, new int[]{14, -1}, new int[]{15, 54}, new int[]{16, 34}, new int[]{17, 35}, new int[]{18, 32}, new int[]{19, 33}, new int[]{20, 29}, new int[]{21, 6}, new int[]{22, 5}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4484k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4485l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f4486m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f4487n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4488o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4489p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f4490q = new c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f4491r = new d();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4492s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f4493t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f4494u = new e();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f4495v = new f();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public o1.g0 f4496w = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f4497x = 15;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f4498y = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            di.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (di.this.f4487n == millis && di.this.f4488o == i2) {
                return;
            }
            di.this.f4487n = millis;
            di.this.f4488o = i2;
            z.k.s(227, 197, 6, i2, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 6095303:
                case 6160839:
                case 9830854:
                    z.k.s(227, 133, 1, 7);
                    break;
                case 6226375:
                case 10944966:
                    z.k.s(227, 133, 1, 9);
                    break;
                case 6291911:
                case 6488519:
                    z.k.s(227, 133, 1, 11);
                    break;
                case 6881734:
                    z.k.s(227, 133, 1, 5);
                    break;
                case 7733702:
                    z.k.s(227, 133, 1, 4);
                    break;
                case 9634246:
                case 9699782:
                    z.k.s(227, 133, 1, 6);
                    break;
                case 10682822:
                    z.k.s(227, 133, 1, 8);
                    break;
                case 11010502:
                    z.k.s(227, 133, 1, 10);
                    break;
                case 11534775:
                case 12190148:
                    z.k.s(227, 133, 1, 1);
                    break;
                case 12845508:
                    z.k.s(227, 133, 1, 2);
                    break;
                case 13500868:
                    z.k.s(227, 133, 1, 3);
                    break;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 6095303:
                case 6160839:
                case 6226375:
                case 7733702:
                case 9634246:
                case 9699782:
                case 9830854:
                case 10682822:
                case 10944966:
                case 11010502:
                case 12190148:
                case 12845508:
                case 13500868:
                    di.this.b3();
                    break;
                default:
                    l0.c0.E();
                    break;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(di.this.f4495v);
            di.this.f4493t = 5;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            di diVar = di.this;
            int i2 = diVar.f4493t - 1;
            diVar.f4493t = i2;
            if (i2 <= 0) {
                l0.b0.p0(diVar.f4495v);
                di.this.f4493t = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                di diVar2 = di.this;
                diVar2.l3(diVar2.f4496w.b(15, 1));
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(160, 1);
            } else {
                qt.y0(160, 0);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f4494u, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        qt.z(this.f4489p);
        switch (nt.f8633a) {
            case 4456887:
            case 7406022:
            case 7471558:
            case 7602630:
                qt.z(this.f4491r);
                break;
            case 4522423:
            case 12059063:
                break;
            case 6095303:
            case 6160839:
            case 6226375:
            case 7733702:
            case 9634246:
            case 9699782:
            case 9830854:
            case 10682822:
            case 10944966:
            case 11010502:
            case 12190148:
            case 12845508:
            case 13500868:
                u0.c.f17374a.a(this.f4491r, 1);
                break;
            case 6291911:
                mt mtVar2 = this.f7886a;
                mtVar2.f8314i = 1;
                mtVar2.f8317l = 1;
                qt.z(this.f4491r);
                u0.c.f17374a.a(this.f4491r, 1);
                u0.c.f17388o.a(this.f4486m, 1);
                w0.e.f17815a.a(this.f4486m, 1);
                w0.e.f17819e.a(this.f4486m, 1);
                u0.c.f17379f.a(this.f4498y, 1);
                break;
            case 6488519:
                mt mtVar3 = this.f7886a;
                mtVar3.f8314i = 1;
                mtVar3.f8313h = 2;
                mtVar3.f8317l = 1;
                qt.z(this.f4491r);
                u0.c.f17374a.a(this.f4491r, 1);
                u0.c.f17388o.a(this.f4486m, 1);
                w0.e.f17815a.a(this.f4486m, 1);
                w0.e.f17819e.a(this.f4486m, 1);
                u0.c.f17379f.a(this.f4498y, 1);
                break;
            case 6881734:
                qt.z(this.f4491r);
                u0.c.f17388o.a(this.f4486m, 1);
                w0.e.f17815a.a(this.f4486m, 1);
                w0.e.f17819e.a(this.f4486m, 1);
                break;
            case 7274948:
                qt.z(this.f4486m);
                break;
            case 8257988:
            case 11665847:
            case 11731383:
            case 13566404:
                qt.z(this.f4486m);
                u0.c.f17388o.a(this.f4486m, 1);
                w0.e.f17815a.a(this.f4486m, 1);
                w0.e.f17819e.a(this.f4486m, 1);
                break;
            default:
                qt.z(this.f4491r);
                break;
        }
        qt.z(this.f4490q);
        this.f4496w.a();
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        byte b2 = bArr[i2];
        if (b2 == 6) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            qt.y0(42, (b3 >> 7) & 1);
            int i4 = nt.f8633a;
            if (i4 == 6291911 || i4 == 6488519) {
                qt.y0(43, (b3 >> 5) & 1);
            } else {
                qt.y0(43, (b3 >> 3) & 1);
            }
            qt.y0(55, (b3 >> 4) & 1);
            qt.y0(48, (b3 >> 2) & 1);
            qt.y0(46, (b3 >> 1) & 1);
            qt.y0(47, (b3 >> 0) & 1);
            qt.y0(81, (b4 >> 4) & 1);
            qt.y0(84, (b4 >> 7) & 1);
            qt.y0(82, (b4 >> 6) & 1);
            qt.y0(83, (b4 >> 5) & 1);
            qt.y0(44, (b4 >> 0) & 15);
            int i5 = b5 & 255;
            if (i5 == 0) {
                qt.y0(40, -2);
            } else if (i5 == 254) {
                qt.y0(40, -3);
            } else {
                qt.y0(40, b5);
            }
            int i6 = b6 & 255;
            if (i6 == 0) {
                qt.y0(41, -2);
                return;
            } else {
                if (i6 == 254) {
                    qt.y0(41, -3);
                    return;
                }
                qt.y0(41, b6);
            }
        }
        if (b2 == 41) {
            int i7 = i2 + 2;
            if (bArr[i7] != 1) {
                if (bArr[i7] == 2) {
                    byte b7 = bArr[i2 + 3];
                    if (f4474z == 1) {
                        if (b7 < 0) {
                            for (int i8 = 0; i8 < 0 - b7; i8++) {
                                l0.b0.l0(8, 0);
                                l0.b0.l0(8, 1);
                            }
                            return;
                        }
                        if (b7 > 0) {
                            for (int i9 = 0; i9 < b7; i9++) {
                                l0.b0.l0(7, 0);
                                l0.b0.l0(7, 1);
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 4];
            this.f4482i = b8 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f4483j;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f4482i;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f4481h = i10;
                    break;
                }
                i10++;
            }
            int i12 = this.f4476c;
            if (i12 == 1) {
                if (f4474z == 1 && (b9 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    return;
                }
                return;
            }
            if (i12 == 2) {
                if (f4474z == 1 && (b9 & 255) == 1) {
                    l0.b0.l0(8, 0);
                    l0.b0.l0(8, 1);
                    return;
                }
                return;
            }
            if (i12 == 10) {
                if (f4474z == 1 && (b9 & 255) == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                    return;
                }
                return;
            }
            if ((b9 & 255) != 0) {
                if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                    return;
                }
                return;
            } else {
                int i13 = this.f4481h;
                if (i13 < iArr.length && i13 != 255) {
                    l0.b0.l0(iArr[i13][1], 1);
                }
                this.f4481h = 255;
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 57) {
            switch (bArr[i2 + 2]) {
                case 1:
                    if (bArr[i2 + 3] == 1) {
                        qt.y0(101, bArr[i2 + 4] & 255);
                    }
                    break;
                case 2:
                    int i14 = i2 + 3;
                    if (bArr[i14] == 1) {
                        qt.y0(102, bArr[i2 + 4] & 255);
                    } else if (bArr[i14] == 2) {
                        qt.y0(103, bArr[i2 + 4] & 255);
                    } else if (bArr[i14] == 3) {
                        qt.y0(104, bArr[i2 + 4] & 255);
                    } else if (bArr[i14] == 4) {
                        qt.y0(115, bArr[i2 + 4] & 255);
                    } else if (bArr[i14] == 5) {
                        qt.y0(116, bArr[i2 + 4] & 255);
                    }
                    break;
                case 3:
                    int i15 = i2 + 3;
                    if (bArr[i15] == 1) {
                        qt.y0(105, bArr[i2 + 4] & 255);
                    } else if (bArr[i15] == 2) {
                        qt.y0(106, bArr[i2 + 4] & 255);
                    }
                    break;
                case 4:
                    int i16 = i2 + 3;
                    if (bArr[i16] == 1) {
                        qt.y0(117, bArr[i2 + 4] & 255);
                    } else if (bArr[i16] == 2) {
                        qt.y0(118, bArr[i2 + 4] & 255);
                    } else if (bArr[i16] == 3) {
                        qt.y0(119, bArr[i2 + 4] & 255);
                    } else if (bArr[i16] == 4) {
                        qt.y0(120, bArr[i2 + 4] & 255);
                    } else if (bArr[i16] == 5) {
                        qt.y0(121, bArr[i2 + 4] & 255);
                    } else if (bArr[i16] == 6) {
                        qt.y0(149, bArr[i2 + 4] & 255);
                    } else if (bArr[i16] == 7) {
                        qt.y0(150, bArr[i2 + 4] & 255);
                    } else if (bArr[i16] == 8) {
                        qt.y0(151, bArr[i2 + 4] & 255);
                    }
                    break;
                case 5:
                    int i17 = i2 + 3;
                    if (bArr[i17] == 1) {
                        qt.y0(122, bArr[i2 + 4] & 255);
                    } else if (bArr[i17] == 2) {
                        qt.y0(123, bArr[i2 + 4] & 255);
                    } else if (bArr[i17] == 3) {
                        qt.y0(124, bArr[i2 + 4] & 255);
                    }
                    break;
                case 6:
                    int i18 = i2 + 3;
                    if (bArr[i18] == 1) {
                        qt.y0(125, bArr[i2 + 4] & 255);
                    } else if (bArr[i18] == 2) {
                        qt.y0(126, bArr[i2 + 4] & 255);
                    }
                    break;
                case 7:
                    if (bArr[i2 + 3] == 1) {
                        qt.y0(127, bArr[i2 + 4] & 255);
                    }
                    break;
                case 8:
                    if (bArr[i2 + 3] == 1) {
                        qt.y0(128, bArr[i2 + 4] & 255);
                    }
                    break;
                case 9:
                    int i19 = i2 + 3;
                    if (bArr[i19] == 1) {
                        qt.y0(129, bArr[i2 + 4] & 255);
                    } else if (bArr[i19] == 2) {
                        qt.y0(130, bArr[i2 + 4] & 255);
                    } else if (bArr[i19] == 3) {
                        qt.y0(131, bArr[i2 + 4] & 255);
                    } else if (bArr[i19] == 4) {
                        qt.y0(152, bArr[i2 + 4] & 255);
                    } else if (bArr[i19] == 5) {
                        qt.y0(153, bArr[i2 + 4] & 255);
                    } else if (bArr[i19] == 6) {
                        qt.y0(154, bArr[i2 + 4] & 255);
                    } else if (bArr[i19] == 7) {
                        qt.y0(155, bArr[i2 + 4] & 255);
                    }
                    break;
                case 10:
                    int i20 = i2 + 3;
                    if (bArr[i20] == 1) {
                        qt.y0(132, bArr[i2 + 4] & 255);
                    } else if (bArr[i20] == 2) {
                        qt.y0(133, bArr[i2 + 4] & 255);
                    } else if (bArr[i20] == 3) {
                        qt.y0(134, bArr[i2 + 4] & 255);
                    } else if (bArr[i20] == 4) {
                        qt.y0(135, bArr[i2 + 4] & 255);
                    }
                    break;
                case 11:
                    int i21 = i2 + 3;
                    if (bArr[i21] == 1) {
                        qt.y0(156, bArr[i2 + 4] & 255);
                    } else if (bArr[i21] == 2) {
                        qt.y0(157, bArr[i2 + 4] & 255);
                    } else if (bArr[i21] == 3) {
                        qt.y0(158, bArr[i2 + 4] & 255);
                    } else if (bArr[i21] == 4) {
                        qt.y0(159, bArr[i2 + 4] & 255);
                    }
                    break;
                case 12:
                    if (bArr[i2 + 3] == 1) {
                        qt.y0(161, bArr[i2 + 4] & 255);
                    }
                    break;
            }
        }
        if (b2 == 125) {
            int i22 = bArr[i2 + 2] & 255;
            if (i22 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i23 = i2 + 3;
                    l0.c0.b((bArr[i23] >> 3) & 1, (bArr[i23] >> 4) & 1, 0);
                    return;
                } else {
                    int i24 = i2 + 3;
                    l0.c0.a((bArr[i24] >> 3) & 1, (bArr[i24] >> 4) & 1, 0);
                    return;
                }
            }
            if (i22 == 3) {
                int i25 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i25);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i25}, null, null);
                return;
            }
            if (i22 != 5) {
                if (i22 == 8) {
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.f4492s = true;
                    return;
                } else {
                    if (i22 != 10) {
                        return;
                    }
                    qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                    return;
                }
            }
            int i26 = bArr[i2 + 3] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i26 >> 6) & 1);
                qt.y0(1, (i26 >> 7) & 1);
            } else {
                qt.y0(2, (i26 >> 7) & 1);
                qt.y0(1, (i26 >> 6) & 1);
            }
            qt.y0(4, (i26 >> 5) & 1);
            qt.y0(3, (i26 >> 4) & 1);
            qt.y0(5, (i26 >> 3) & 1);
            qt.y0(0, (i26 >> 2) & 1);
            return;
        }
        if (b2 == 64) {
            byte b10 = bArr[i2 + 2];
            if (this.f4484k != b10) {
                this.f4484k = b10;
                int i27 = nt.f8633a;
                if (i27 == 6291911 || i27 == 6488519) {
                    if (b10 == 0) {
                        if (o1.u.a0()) {
                            return;
                        }
                        this.f4485l = true;
                        o1.u.z();
                        return;
                    }
                    if (b10 == 1 && this.f4485l && o1.u.a0()) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    }
                    return;
                }
                if (b10 == 0) {
                    if (o1.u.V()) {
                        return;
                    }
                    this.f4485l = true;
                    o1.u.j();
                    return;
                }
                if (b10 == 1 && this.f4485l && o1.u.V()) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    return;
                }
                return;
            }
            return;
        }
        if (b2 == 65) {
            int i28 = i2 + 2;
            byte b11 = bArr[i28];
            int i29 = i2 + 3;
            byte b12 = bArr[i29];
            if (b11 == 1) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b12 >> 0) & 1);
                    qt.y0(1, (b12 >> 1) & 1);
                } else {
                    qt.y0(2, (b12 >> 1) & 1);
                    qt.y0(1, (b12 >> 0) & 1);
                }
                qt.y0(5, (b12 >> 4) & 1);
                qt.y0(4, (b12 >> 3) & 1);
                qt.y0(3, (b12 >> 2) & 1);
                return;
            }
            if (b11 == 2) {
                int i30 = ((bArr[i29] << 8) & 65280) | (bArr[i2 + 4] & 255);
                u0.d.A3((bArr[i29] & 128) != 0 ? 1000 - (65536 - i30) : i30 + 1000);
                qt.y0(136, (bArr[i2 + 7] & 255) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280));
                return;
            }
            if (b11 == 3) {
                qt.y0(110, ((bArr[i29] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(111, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(112, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(113, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                qt.y0(114, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
                qt.y0(147, bArr[i2 + 13] & 255);
                qt.y0(148, bArr[i2 + 14] & 255);
                return;
            }
            if ((bArr[i28] & 255) == 128) {
                qt.y0(107, bArr[i2 + 4] & 255);
                qt.y0(108, bArr[i2 + 5] & 255);
                qt.y0(109, bArr[i2 + 6] & 255);
                qt.y0(138, bArr[i2 + 7] & 255);
                qt.y0(139, bArr[i2 + 8] & 255);
                return;
            }
            if ((bArr[i28] & 255) == 133) {
                qt.y0(137, bArr[i29] & 255);
                return;
            }
            if ((bArr[i28] & 255) == 168) {
                qt.y0(140, (bArr[i29] >> 4) & 1);
                qt.y0(141, (bArr[i29] >> 3) & 1);
                qt.y0(142, (bArr[i29] >> 2) & 1);
                qt.y0(143, (bArr[i29] >> 1) & 1);
                qt.y0(144, (bArr[i29] >> 0) & 1);
                qt.y0(145, bArr[i2 + 4] & 255);
                qt.y0(146, bArr[i2 + 5] & 255);
                return;
            }
            return;
        }
        switch (b2) {
            case 32:
                byte b13 = bArr[i2 + 2];
                byte b14 = bArr[i2 + 3];
                this.f4476c = b13 & 255;
                int i31 = 0;
                while (true) {
                    iArr2 = this.f4477d;
                    if (i31 < iArr2.length) {
                        int i32 = this.f4476c;
                        if (i32 != iArr2[i31][0]) {
                            i31++;
                        } else if (i32 != 0) {
                            this.f4475b = i31;
                        }
                    }
                }
                int i33 = this.f4476c;
                if (i33 != 1) {
                    if (i33 != 2) {
                        if (i33 != 10) {
                            if ((b14 & 255) == 0) {
                                int i34 = this.f4475b;
                                if (i34 < iArr2.length && i34 != 255) {
                                    l0.b0.l0(iArr2[i34][1], 1);
                                }
                                this.f4475b = 255;
                            } else if (i31 < iArr2.length) {
                                l0.b0.l0(iArr2[i31][1], 0);
                            }
                            break;
                        } else if (f4474z == 1 && (b14 & 255) == 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                            break;
                        }
                    } else if (f4474z == 1 && (b14 & 255) == 1) {
                        l0.b0.l0(8, 0);
                        l0.b0.l0(8, 1);
                        break;
                    }
                } else if (f4474z == 1 && (b14 & 255) == 1) {
                    l0.b0.l0(7, 0);
                    l0.b0.l0(7, 1);
                    break;
                }
                break;
            case 33:
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 3];
                int i35 = i2 + 4;
                byte b17 = bArr[i35];
                int i36 = i2 + 5;
                byte b18 = bArr[i36];
                byte b19 = bArr[i2 + 6];
                qt.y0(10, (b15 >> 7) & 1);
                qt.y0(11, (b15 >> 6) & 1);
                qt.y0(12, (b15 >> 5) & 1);
                qt.y0(13, (b15 >> 4) & 1);
                qt.y0(53, (b15 >> 3) & 1);
                qt.y0(14, (b15 >> 2) & 1);
                qt.y0(15, (b15 >> 1) & 1);
                qt.y0(38, (b15 >> 0) & 1);
                int i37 = b16 >> 5;
                qt.y0(77, i37 & 7);
                qt.y0(18, (b16 >> 7) & 1);
                qt.y0(19, (b16 >> 6) & 1);
                qt.y0(20, i37 & 1);
                int i38 = i2 + 7;
                qt.y0(49, (bArr[i38] >> 5) & 1);
                qt.y0(21, (b16 >> 0) & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b17 = bArr[i36];
                    b18 = bArr[i35];
                }
                byte b20 = b18;
                int i39 = (bArr[i38] >> 3) & 1;
                int i40 = b17 & 255;
                if (i40 == 0) {
                    qt.y0(27, -2);
                } else if (i40 == 254) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, b17 + i39);
                }
                int i41 = b20 & 255;
                if (i41 == 0) {
                    qt.y0(28, -2);
                } else if (i41 == 254) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, b20 + i39);
                }
                qt.y0(29, b19 & 3);
                qt.y0(30, (b19 >> 2) & 3);
                qt.y0(26, (bArr[i38] >> 7) & 1);
                qt.y0(37, (bArr[i38] >> 6) & 1);
                qt.y0(33, (bArr[i38] >> 4) & 1);
                qt.y0(56, (bArr[i38] >> 3) & 1);
                qt.y0(52, (bArr[i38] >> 2) & 1);
                qt.y0(64, (bArr[i38] >> 0) & 3);
                int i42 = i2 + 8;
                qt.y0(22, (bArr[i42] >> 7) & 1);
                qt.y0(23, (bArr[i42] >> 6) & 1);
                qt.y0(24, (bArr[i42] >> 5) & 1);
                qt.y0(50, (bArr[i42] >> 4) & 1);
                qt.y0(25, (bArr[i42] >> 0) & 15);
                break;
            case 34:
                byte b21 = bArr[i2 + 2];
                byte b22 = bArr[i2 + 3];
                byte b23 = bArr[i2 + 4];
                byte b24 = bArr[i2 + 5];
                u0.d.R2(c3(b21 & 255));
                u0.d.S2(c3(b22 & 255));
                u0.d.T2(c3(b23 & 255));
                u0.d.U2(c3(b24 & 255));
                break;
            case 35:
                byte b25 = bArr[i2 + 2];
                byte b26 = bArr[i2 + 3];
                byte b27 = bArr[i2 + 4];
                byte b28 = bArr[i2 + 5];
                if (b25 == 0 && b26 == 0 && b27 == 0 && b28 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != b25 || l0.c0.f13014h != b26 || l0.c0.f13015i != b27 || l0.c0.f13016j != b28) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = b25;
                l0.c0.f13014h = b26;
                l0.c0.f13015i = b27;
                l0.c0.f13016j = b28;
                u0.d.D2(c3(b25 & 255));
                u0.d.E2(c3(b26 & 255));
                u0.d.F2(c3(b27 & 255));
                u0.d.G2(c3(b28 & 255));
                break;
            default:
                switch (b2) {
                    case 37:
                        byte b29 = bArr[i2 + 2];
                        qt.y0(99, (b29 >> 1) & 1);
                        qt.y0(100, (b29 >> 0) & 1);
                        break;
                    case 38:
                        if (!this.f4492s) {
                            qt.l(bArr[i2 + 2], bArr[i2 + 3], false, 540);
                        }
                        break;
                    case 39:
                        byte b30 = bArr[i2 + 2];
                        byte b31 = bArr[i2 + 3];
                        int i43 = b30 & 255;
                        this.f4479f = i43;
                        int i44 = 0;
                        while (true) {
                            iArr3 = this.f4480g;
                            if (i44 < iArr3.length) {
                                int i45 = this.f4479f;
                                if (i45 != iArr3[i44][0]) {
                                    i44++;
                                } else if (i45 != 0) {
                                    this.f4478e = i44;
                                }
                            }
                        }
                        if (i43 == 32) {
                            for (int i46 = 0; i46 < (b31 & 255); i46++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (i43 == 33) {
                            for (int i47 = 0; i47 < (b31 & 255); i47++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        } else if ((b31 & 255) == 0) {
                            int i48 = this.f4478e;
                            if (i48 < iArr3.length && i48 != 255) {
                                l0.b0.l0(iArr3[i48][1], 1);
                            }
                            this.f4478e = 255;
                        } else if (i44 < iArr3.length) {
                            l0.b0.l0(iArr3[i44][1], 0);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4496w.j();
        u0.c.f17386m.d(this.f4494u);
        l0.b0.p0(this.f4495v);
        u0.c.f17388o.d(this.f4486m);
        w0.e.f17815a.d(this.f4486m);
        w0.e.f17819e.d(this.f4486m);
        qt.q0(this.f4486m);
        qt.q0(this.f4491r);
        qt.q0(this.f4490q);
        qt.q0(this.f4489p);
        u0.c.f17374a.d(this.f4491r);
        u0.c.f17379f.d(this.f4498y);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 163) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 1) {
                z.k.s(227, 199, 3, 12, 1, 0);
                return;
            } else {
                z.k.s(227, 199, 3, 12, 1, 9);
            }
        }
        switch (i2) {
            case 0:
                z.k.s(227, 199, 3, iArr[0], iArr[1], iArr[2]);
                break;
            case 1:
                z.k.s(227, 131, 2, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 144, 2, iArr[0], iArr[1]);
                break;
            case 3:
                z.k.s(227, 168, 2, iArr[0], iArr[1]);
                break;
            case 4:
                z.k.s(227, 239, 3, 125, 75, iArr[0]);
                break;
            case 5:
                z.k.s(227, 200, 2, iArr[0], iArr[1]);
                break;
            case 6:
                z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
                break;
            case 7:
                l3(iArr[0]);
                break;
        }
    }

    public void a3() {
        int[] iArr = new int[37];
        boolean z2 = false;
        iArr[0] = 227;
        iArr[1] = 196;
        iArr[2] = 34;
        int i2 = u0.b.D;
        if (i2 != 1) {
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    k3(u0.b.i3);
                    z2 = true;
                    break;
                default:
                    iArr[3] = 12;
                    break;
            }
        } else {
            int i3 = w0.d.f17796h;
            if (i3 == 65536) {
                iArr[3] = 1;
            } else if (i3 == 65537) {
                iArr[3] = 2;
            } else if (i3 == 65538) {
                iArr[3] = 3;
            } else if (i3 == 0) {
                iArr[3] = 4;
            } else if (i3 == 1) {
                iArr[3] = 5;
            }
            if (i3 < 65536 || i3 > 65538) {
                int i4 = w0.d.f17797i;
                iArr[4] = ((i4 / 1000) % 10) + 48;
                iArr[5] = ((i4 / 100) % 10) + 48;
                iArr[6] = ((i4 / 10) % 10) + 48;
                iArr[7] = (i4 % 10) + 48;
                iArr[8] = 75;
                iArr[9] = 104;
                iArr[10] = 122;
            } else {
                int i5 = w0.d.f17797i;
                if (i5 / 10000 == 0) {
                    iArr[4] = ((i5 / 1000) % 10) + 48;
                    iArr[5] = ((i5 / 100) % 10) + 48;
                    iArr[6] = 46;
                    iArr[7] = ((i5 / 10) % 10) + 48;
                    iArr[8] = (i5 % 10) + 48;
                    iArr[9] = 77;
                    iArr[10] = 104;
                    iArr[11] = 122;
                } else {
                    iArr[4] = (i5 / 10000) + 48;
                    iArr[5] = ((i5 / 1000) % 10) + 48;
                    iArr[6] = ((i5 / 100) % 10) + 48;
                    iArr[7] = 46;
                    iArr[8] = ((i5 / 10) % 10) + 48;
                    iArr[9] = (i5 % 10) + 48;
                    iArr[10] = 77;
                    iArr[11] = 104;
                    iArr[12] = 122;
                }
            }
        }
        if (z2) {
            return;
        }
        z.k.s(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    public final void b3() {
        int[] iArr = new int[4];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 2;
        int i3 = u0.b.D;
        if (i3 == 10) {
            iArr[2] = 8;
            iArr[3] = 16;
        } else if (i3 != 13) {
            switch (i3) {
                case 1:
                    iArr[2] = 1;
                    iArr[3] = 1;
                    break;
                case 2:
                    iArr[2] = 5;
                    iArr[3] = 64;
                    break;
                case 3:
                    iArr[2] = 11;
                    iArr[3] = 16;
                    break;
                case 4:
                    int i4 = o0.e.H;
                    if (i4 == 1) {
                        iArr[2] = 2;
                        iArr[3] = 33;
                    } else if (i4 == 2) {
                        iArr[2] = 9;
                        iArr[3] = 33;
                    } else if (i4 == 3) {
                        iArr[2] = 8;
                        iArr[3] = 33;
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
                    iArr[2] = 8;
                    iArr[3] = 16;
                    break;
                default:
                    iArr[2] = 12;
                    iArr[3] = 48;
                    break;
            }
        } else {
            iArr[2] = 7;
            iArr[3] = 48;
        }
        int[] iArr2 = new int[5];
        iArr2[0] = 227;
        while (i2 < 4) {
            int i5 = i2 + 1;
            iArr2[i5] = iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public int c3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            case 6:
                return 7;
            case 7:
                return 8;
            default:
                return 10;
        }
    }

    public void k3(String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[37];
        byte[] bytes = str.getBytes();
        iArr[0] = 227;
        iArr[1] = 196;
        iArr[2] = 34;
        iArr[3] = 9;
        int length = bytes.length <= 33 ? bytes.length : 33;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2 + 4] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void l3(int i2) {
        qt.y0(162, i2);
        f4474z = i2;
        int iB = this.f4496w.b(15, 1);
        int i3 = f4474z;
        if (iB != i3) {
            this.f4496w.g(15, i3);
        }
    }
}
