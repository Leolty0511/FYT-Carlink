package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class lr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7857c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7858d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 38}, new int[]{6, 18}, new int[]{7, 26}, new int[]{8, 2}, new int[]{9, 34}, new int[]{10, 35}, new int[]{11, 6}, new int[]{12, 29}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 50}, new int[]{17, 1}, new int[]{18, 0}, new int[]{19, 30}, new int[]{20, 31}, new int[]{26, 31}, new int[]{27, 30}, new int[]{28, 54}, new int[]{29, 9}, new int[]{30, 18}, new int[]{31, 1}, new int[]{32, 15}, new int[]{33, 67}, new int[]{34, 68}, new int[]{35, 0}, new int[]{36, 11}, new int[]{48, 49}, new int[]{49, 40}, new int[]{50, 41}, new int[]{51, 42}, new int[]{52, 43}, new int[]{53, 44}, new int[]{54, 45}, new int[]{55, 46}, new int[]{56, 47}, new int[]{57, 48}, new int[]{58, 50}, new int[]{59, 51}, new int[]{60, 18}, new int[]{61, 26}, new int[]{62, 77}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7859e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f7860f = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f7861g = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f7862h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f7863i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f7864j = 0.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7865k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f7866l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7867m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f7868n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7869o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7870p = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            lr lrVar = lr.this;
            int i3 = lrVar.f7859e + 1;
            lrVar.f7859e = i3;
            if (i3 % 2 == 1 && ((i2 = u0.b.D) == 9 || i2 == 8)) {
                String str = u0.b.i3;
                if (str == null) {
                    lrVar.h3((byte) 112, "Unknow");
                } else if (!lrVar.f7860f.equals(str)) {
                    lr.this.h3((byte) 112, u0.b.i3);
                    lr.this.f7860f = u0.b.i3;
                }
                String str2 = u0.b.j3;
                if (str2 == null) {
                    lr.this.h3((byte) 113, "Unknow");
                } else if (!lr.this.f7861g.equals(str2)) {
                    lr.this.h3((byte) 113, u0.b.j3);
                    lr.this.f7861g = u0.b.j3;
                }
            }
            lr lrVar2 = lr.this;
            if (lrVar2.f7859e > 2) {
                lrVar2.f7859e = 0;
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
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            int i2 = time.hour;
            int i3 = i2 > 12 ? 1 : 0;
            if (b2 == 1 && i2 > 12) {
                i2 -= 12;
            }
            z.k.s(227, 127, 6, i2, time.minute, ((b2 << 6) & 64) | ((i3 << 7) & 128), time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lr.this.f7864j = u0.b.f17359s0;
            if ((lr.this.f7864j <= 22.5d && lr.this.f7864j >= 0.0f) || (lr.this.f7864j >= 337.5d && lr.this.f7864j <= 360.0f)) {
                lr.this.f7866l = 0;
            } else if (lr.this.f7864j > 22.5d && lr.this.f7864j < 67.5d) {
                lr.this.f7866l = 1;
            } else if (lr.this.f7864j >= 67.5d && lr.this.f7864j <= 112.5d) {
                lr.this.f7866l = 2;
            } else if (lr.this.f7864j > 112.5d && lr.this.f7864j < 157.5d) {
                lr.this.f7866l = 3;
            } else if (lr.this.f7864j >= 157.5d && lr.this.f7864j <= 202.5d) {
                lr.this.f7866l = 4;
            } else if (lr.this.f7864j > 202.5d && lr.this.f7864j < 247.5d) {
                lr.this.f7866l = 5;
            } else if (lr.this.f7864j >= 247.5d && lr.this.f7864j <= 292.5d) {
                lr.this.f7866l = 6;
            } else if (lr.this.f7864j <= 292.5d || lr.this.f7864j >= 337.5d) {
                lr.this.f7866l = 8;
            } else {
                lr.this.f7866l = 7;
            }
            if (lr.this.f7866l != lr.this.f7865k) {
                z.k.s(227, 126, 4, lr.this.f7866l, 0, 0, 0);
                lr lrVar = lr.this;
                lrVar.f7865k = lrVar.f7866l;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(lr.this.f7870p);
            lr.this.f7868n = 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            lr lrVar = lr.this;
            int i2 = lrVar.f7868n - 1;
            lrVar.f7868n = i2;
            if (i2 <= 0) {
                l0.b0.p0(lrVar.f7870p);
                lr.this.f7868n = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 13173190:
                        z.k.s(227, 156, 2, 0, 0);
                        z.k.s(227, 155, 2, 16, 0);
                        break;
                    case 13238726:
                        z.k.s(227, 156, 2, 0, 0);
                        z.k.s(227, 155, 2, 17, 0);
                        break;
                    case 13304262:
                        z.k.s(227, 156, 2, 1, 0);
                        z.k.s(227, 155, 2, 18, 0);
                        break;
                    case 13369798:
                        z.k.s(227, 156, 2, 1, 0);
                        z.k.s(227, 155, 2, 19, 0);
                        break;
                    case 13435334:
                        z.k.s(227, 156, 2, 2, 0);
                        break;
                    case 13500870:
                        z.k.s(227, 156, 2, 3, 0);
                        break;
                    case 13566406:
                        z.k.s(227, 156, 2, 4, 0);
                        break;
                }
            }
        }
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
        if (i2 != 68) {
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 1, 0);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 2, 0);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 3, 0);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 4, 0);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 5, 0);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 6, 0);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 7, 0);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 8, 0);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 9, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 10, 0);
        } else if (iArr[1] == 11) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 15, 0);
        } else if (iArr[1] == 12) {
            z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_NO_CERTIFICATES, 2, 16, 0);
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7869o, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        o1.h.f16865a.a(this.f7867m, 1);
        qt.z(this.f7863i);
        qt.z(this.f7862h);
        this.f7886a.f8318m = new int[]{68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7857c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f7858d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f7857c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f7856b = i7;
                    break;
                }
                i7++;
            }
            if (this.f7857c != 17) {
                int i9 = b4 & 255;
                if (i9 == 1) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i9 == 0) {
                        int i10 = this.f7856b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f7856b = 255;
                        return;
                    }
                    return;
                }
            }
            if ((b4 & 255) == 1) {
                int i11 = h0.c.E;
                if (i11 != 3) {
                    if (i11 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (i11 != 5) {
                        l0.b0.l0(1, 0);
                        l0.b0.l0(1, 1);
                        return;
                    }
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
            }
            return;
        }
        if (b2 == 3) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            } else {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            }
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 4) {
            qt.m(bArr[i2 + 2] & 255, 0, 128, true, 127);
            return;
        }
        if (b2 == 5) {
            int i12 = i2 + 2;
            qt.y0(98, bArr[i12] & 255);
            u0.d.R2(l0.c0.G1(bArr[i2 + 5] & 255));
            u0.d.S2(l0.c0.G1(bArr[i2 + 9] & 255));
            u0.d.T2(l0.c0.G1(bArr[i2 + 10] & 255));
            u0.d.U2(l0.c0.G1(bArr[i2 + 6] & 255));
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 7;
            int i15 = bArr[i14] & 255;
            int i16 = i2 + 8;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 3;
            int i19 = bArr[i18] & 255;
            if (i13 == 0 && i15 == 0 && i17 == 0 && i19 == 0) {
                u0.d.C2(0);
            } else if (l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) {
                u0.d.C2(1);
                l0.c0.f13017k = 5;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i13;
            l0.c0.f13014h = i15;
            l0.c0.f13015i = i17;
            l0.c0.f13016j = i19;
            u0.d.D2(l0.c0.G1(bArr[i12] & 255));
            u0.d.E2(l0.c0.G1(bArr[i14] & 255));
            u0.d.F2(l0.c0.G1(bArr[i16] & 255));
            u0.d.G2(l0.c0.G1(bArr[i18] & 255));
            return;
        }
        if (b2 == 6) {
            qt.y0(1031, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 13) {
            int i20 = i2 + 2;
            qt.y0(99, (bArr[i20] >> 2) & 3);
            qt.y0(100, (bArr[i20] >> 0) & 3);
            int i21 = i2 + 3;
            qt.y0(101, (bArr[i21] >> 3) & 1);
            qt.y0(102, (bArr[i21] >> 2) & 1);
            qt.y0(103, (bArr[i21] >> 0) & 3);
            return;
        }
        if (b2 == 15) {
            qt.y0(104, (bArr[i2 + 2] >> 0) & 15);
            int i22 = i2 + 3;
            qt.y0(105, (bArr[i22] >> 4) & 15);
            qt.y0(106, (bArr[i22] >> 0) & 15);
            int i23 = i2 + 4;
            qt.y0(107, (bArr[i23] >> 4) & 15);
            qt.y0(108, (bArr[i23] >> 0) & 15);
            qt.y0(109, (bArr[i2 + 5] >> 0) & 15);
            int i24 = i2 + 6;
            qt.y0(110, (bArr[i24] >> 4) & 15);
            qt.y0(111, (bArr[i24] >> 0) & 15);
            int i25 = i2 + 7;
            qt.y0(112, (bArr[i25] >> 4) & 15);
            qt.y0(113, (bArr[i25] >> 0) & 15);
            int i26 = i2 + 8;
            qt.y0(114, (bArr[i26] >> 4) & 15);
            qt.y0(115, (bArr[i26] >> 0) & 15);
            int i27 = i2 + 9;
            qt.y0(116, (bArr[i27] >> 4) & 15);
            qt.y0(117, (bArr[i27] >> 0) & 15);
            int i28 = i2 + 10;
            qt.y0(118, (bArr[i28] >> 4) & 15);
            qt.y0(119, (bArr[i28] >> 0) & 15);
            int i29 = i2 + 11;
            qt.y0(120, (bArr[i29] >> 4) & 15);
            qt.y0(121, (bArr[i29] >> 0) & 15);
            return;
        }
        if (b2 == 65) {
            if (bArr[i2 + 2] != 2) {
                return;
            }
            qt.y0(122, (bArr[i2 + 5] & 255) | ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 8:
                qt.y0(1032, (bArr[i2 + 2] & 255) * 64);
                break;
            case 9:
                int i30 = i2 + 2;
                qt.y0(13, (bArr[i30] >> 6) & 1);
                qt.y0(12, (bArr[i30] >> 5) & 1);
                qt.y0(16, (bArr[i30] >> 4) & 1);
                qt.y0(62, (bArr[i30] >> 3) & 1);
                qt.y0(11, (bArr[i30] >> 1) & 1);
                int i31 = i2 + 3;
                switch ((bArr[i31] >> 4) & 15) {
                    case 0:
                        i4 = 0;
                        i5 = 1;
                        i6 = 1;
                        break;
                    case 1:
                        i5 = 1;
                        i6 = i5;
                        i4 = i6;
                        break;
                    case 2:
                        i6 = 0;
                        i5 = 1;
                        i4 = 1;
                        break;
                    case 3:
                        i5 = 0;
                        i6 = 0;
                        i4 = 1;
                        break;
                    case 4:
                        i5 = 0;
                        i6 = 1;
                        i4 = i6;
                        break;
                    case 5:
                        i5 = 0;
                        i4 = 0;
                        i6 = 1;
                        break;
                    case 6:
                        i6 = 0;
                        i4 = 0;
                        i5 = 1;
                        break;
                    default:
                        i5 = 0;
                        i6 = i5;
                        i4 = i6;
                        break;
                }
                qt.y0(18, i5);
                qt.y0(19, i6);
                qt.y0(20, i4);
                qt.y0(21, (bArr[i31] >> 0) & 15);
                int i32 = i2 + 4;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 7;
                int i35 = bArr[i34] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i33 = bArr[i34] & 255;
                    i35 = bArr[i32] & 255;
                }
                if (i33 == 0) {
                    qt.y0(27, -2);
                } else if (i33 != 14) {
                    qt.y0(27, i33);
                } else {
                    qt.y0(27, -3);
                }
                if (i35 == 0) {
                    qt.y0(28, -2);
                } else if (i35 != 14) {
                    qt.y0(28, i35);
                } else {
                    qt.y0(28, -3);
                }
                int i36 = i2 + 6;
                qt.y0(15, (bArr[i36] >> 1) & 1);
                qt.y0(53, (bArr[i36] >> 0) & 1);
                int i37 = i2 + 8;
                qt.y0(57, (bArr[i37] >> 7) & 1);
                qt.y0(67, (bArr[i37] >> 6) & 1);
                qt.y0(17, (bArr[i37] >> 5) & 1);
                qt.y0(64, (bArr[i37] >> 0) & 3);
                int i38 = i2 + 9;
                qt.y0(29, (bArr[i38] >> 4) & 3);
                qt.y0(30, (bArr[i38] >> 6) & 3);
                qt.y0(31, (bArr[i38] >> 0) & 3);
                qt.y0(32, 3 & (bArr[i38] >> 2));
                int i39 = i2 + 5;
                int i40 = bArr[i39] & 255;
                if (i40 == 0) {
                    qt.y0(40, -2);
                } else if (i40 == 14) {
                    qt.y0(40, -3);
                } else {
                    qt.y0(40, bArr[i39] & 255);
                }
                break;
            case 10:
                int i41 = bArr[i2 + 2] & 255;
                if (i41 != 0) {
                    u0.d.A3((i41 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                } else {
                    u0.d.A3(0);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7869o);
        l0.b0.p0(this.f7870p);
        o1.h.f16865a.d(this.f7867m);
        qt.q0(this.f7863i);
        qt.q0(this.f7862h);
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
            z.k.s(227, 159, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 148, 2, iArr[0], iArr[1]);
        }
    }

    public final void h3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4 + 1] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 4];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }
}
