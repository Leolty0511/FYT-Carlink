package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class am extends lt implements o1.q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3387f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f3383b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3384c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3385d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3386e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3388g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f3389h = {new int[]{1, 2}, new int[]{2, 34}, new int[]{3, 35}, new int[]{4, 54}, new int[]{5, 18}, new int[]{6, 29}, new int[]{7, 12}, new int[]{8, 13}, new int[]{9, 1}, new int[]{10, 7}, new int[]{11, 8}, new int[]{12, 50}, new int[]{33, 29}, new int[]{34, 54}, new int[]{35, 5}, new int[]{36, 18}, new int[]{37, 1}, new int[]{38, 58}, new int[]{39, 18}, new int[]{40, 55}, new int[]{42, 34}, new int[]{43, 32}, new int[]{44, 68}, new int[]{45, 35}, new int[]{46, 33}, new int[]{47, 6}, new int[]{48, 67}, new int[]{56, 24}, new int[]{88, 0}, new int[]{113, 34}, new int[]{114, 33}, new int[]{115, 33}, new int[]{116, 35}, new int[]{117, 35}, new int[]{118, 32}, new int[]{119, 32}, new int[]{120, 34}, new int[]{129, 31}, new int[]{130, 30}, new int[]{145, 7}, new int[]{146, 8}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f3390i = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f3391j = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3392k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3393l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f3394m = new b();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3395n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f3396o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f3397p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3398q = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            am.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            byte b7 = (byte) time.minute;
            am amVar = am.this;
            if (amVar.f3393l != b2) {
                amVar.f3393l = b2;
                z.k.s(227, 192, 6, 0, b2, 0, 0, 0, 0);
            }
            z.k.s(227, 192, 6, 1, b3, b4, b5, b6, b7);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(am.this.f3397p);
            am.this.f3395n = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            am amVar = am.this;
            int i2 = amVar.f3395n - 1;
            amVar.f3395n = i2;
            if (i2 <= 0) {
                l0.b0.p0(amVar.f3397p);
                am.this.f3395n = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 255, 1, 87);
            z.k.s(227, 255, 1, 127);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 226:
                    case 228:
                    case 230:
                    case 232:
                        z.k.s(227, 192, 2, 28, 1);
                        break;
                    case 227:
                    case 229:
                    case 231:
                    case 233:
                        z.k.s(227, 192, 2, 28, 0);
                        break;
                }
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[8];
        iArr[0] = 227;
        iArr[1] = 193;
        iArr[2] = 5;
        int i2 = u0.b.D;
        if (i2 == 1) {
            iArr[3] = 1;
            int i3 = w0.d.f17798j;
            int i4 = w0.d.f17796h;
            if (i4 == 65536) {
                iArr[4] = 0;
            } else if (i4 == 65537) {
                iArr[4] = 1;
            } else if (i4 == 65538) {
                iArr[4] = 2;
            } else if (i4 == 0 || i4 == 1) {
                iArr[4] = 16;
            }
            int i5 = w0.d.f17797i;
            iArr[5] = (i5 >> 8) & 255;
            iArr[6] = i5 & 255;
            int i6 = i3 % 6;
            if (i6 != 0 || i3 == 0) {
                iArr[7] = i6;
            } else {
                iArr[7] = 6;
            }
        } else if (i2 == 8 || i2 == 10) {
            iArr[3] = 8;
            iArr[4] = u0.b.r3 & 255;
        } else if (i2 == 4) {
            iArr[3] = 2;
            iArr[4] = o0.e.B & 255;
        } else if (i2 != 5) {
            iArr[3] = 12;
        } else {
            iArr[3] = 7;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[3] = 0;
        }
        z.k.s(iArr);
    }

    public static void c3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
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
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f3396o, 1);
        qt.z(this.f3394m);
        l0.b0.b(this.f3392k);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3388g = b3 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f3389h;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f3388g;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f3387f = i10;
                    break;
                }
                i10++;
            }
            int i12 = this.f3388g;
            if (i12 == 36) {
                if ((b4 & 255) == 1) {
                    if (nt.f8637c == 229) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else {
                        if (o1.u.S("com.syu.carlink")) {
                            return;
                        }
                        o1.u.g("com.syu.carlink");
                    }
                }
                return;
            }
            if (i12 == 39) {
                if ((b4 & 255) == 1) {
                    if (nt.f8637c != 229) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else {
                        if (o1.u.S("com.syu.carlink")) {
                            return;
                        }
                        o1.u.g("com.syu.carlink");
                        return;
                    }
                }
                return;
            }
            if (i12 == 40) {
                if ((b4 & 255) == 1) {
                    if (nt.f8637c == 229) {
                        l0.b0.l0(55, 0);
                        l0.b0.l0(55, 1);
                        return;
                    } else {
                        l0.b0.l0(9, 0);
                        l0.b0.l0(9, 1);
                        return;
                    }
                }
                return;
            }
            if (i12 == 129) {
                for (int i13 = 0; i13 < (b4 & 255); i13++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i12 == 130) {
                for (int i14 = 0; i14 < (b4 & 255); i14++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            if (i12 == 145) {
                for (int i15 = 0; i15 < (b4 & 255); i15++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i12 == 146) {
                for (int i16 = 0; i16 < (b4 & 255); i16++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i17 = b4 & 255;
            if (i17 == 1) {
                if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                    return;
                }
                return;
            } else {
                if (i17 == 0) {
                    int i18 = this.f3387f;
                    if (i18 < iArr.length && i18 != 255) {
                        l0.b0.l0(iArr[i18][1], 1);
                    }
                    this.f3387f = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 3) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                return;
            }
            qt.y0(10, (bArr[i2 + 2] >> 7) & 1);
            int i19 = i2 + 3;
            qt.y0(18, (bArr[i19] >> 7) & 1);
            qt.y0(19, (bArr[i19] >> 6) & 1);
            qt.y0(20, (bArr[i19] >> 5) & 1);
            qt.y0(77, (bArr[i19] >> 5) & 7);
            qt.y0(21, (bArr[i19] >> 0) & 15);
            int i20 = i2 + 4;
            int i21 = bArr[i20] & 255;
            int i22 = i2 + 5;
            int i23 = bArr[i22] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i21 = bArr[i22] & 255;
                i23 = bArr[i20] & 255;
            }
            if (i21 == 0) {
                qt.y0(27, -2);
            } else if (i21 == 31) {
                qt.y0(27, -3);
            } else if (i21 == 127 || i21 < 1 || i21 > 28) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i21);
            }
            if (i23 == 0) {
                qt.y0(28, -2);
            } else if (i23 == 31) {
                qt.y0(28, -3);
            } else if (i23 == 127 || i23 < 1 || i23 > 28) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i23);
            }
            qt.y0(37, (bArr[i2 + 6] >> 0) & 1);
            int i24 = i2 + 7;
            qt.y0(29, (bArr[i24] >> 4) & 7);
            qt.y0(30, (bArr[i24] >> 0) & 7);
            int i25 = i2 + 8;
            qt.y0(22, (bArr[i25] >> 7) & 1);
            qt.y0(23, (bArr[i25] >> 6) & 1);
            qt.y0(24, (bArr[i25] >> 5) & 1);
            qt.y0(87, (bArr[i25] >> 5) & 7);
            qt.y0(25, (bArr[i25] >> 0) & 15);
            return;
        }
        if (b2 == 4) {
            u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
            int i26 = i2 + 6;
            int i27 = bArr[i26] & 255;
            int i28 = i2 + 7;
            int i29 = bArr[i28] & 255;
            int i30 = i2 + 8;
            int i31 = bArr[i30] & 255;
            int i32 = i2 + 9;
            int i33 = bArr[i32] & 255;
            if ((i27 == 0 || i27 == 255) && ((i29 == 0 || i29 == 255) && ((i31 == 0 || i31 == 255) && (i33 == 0 || i33 == 255)))) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i27 || l0.c0.f13014h != i29 || l0.c0.f13015i != i31 || l0.c0.f13016j != i33) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i27;
            l0.c0.f13014h = i29;
            l0.c0.f13015i = i31;
            l0.c0.f13016j = i33;
            u0.d.D2(l0.c0.u1(bArr[i26] & 255));
            u0.d.E2(l0.c0.u1(bArr[i28] & 255));
            u0.d.F2(l0.c0.u1(bArr[i30] & 255));
            u0.d.G2(l0.c0.u1(bArr[i32] & 255));
            return;
        }
        if (b2 == 5) {
            if (((bArr[i2 + 2] >> 7) & 1) == 1) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 5360);
                return;
            }
            return;
        }
        if (b2 == 7) {
            qt.y0(153, (bArr[i2 + 2] >> 1) & 63);
            return;
        }
        if (b2 == 8) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 9) {
            int i34 = ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255);
            u0.d.B3((bArr[i2 + 2] & 1) == 1 ? (((32768 & i34) != 0 ? 1320 - (((65536 - i34) * 9) / 5) : ((i34 * 9) / 5) + 1320) | 268435456) & (-1) : (32768 & i34) != 0 ? 1000 - (65536 - i34) : i34 + 1000);
            return;
        }
        if (b2 == 85) {
            if (App.c().getResources().getConfiguration().orientation != 1) {
                return;
            }
            int i35 = i2 + 2;
            int i36 = bArr[i35] & 255;
            int i37 = i2 + 3;
            int i38 = bArr[i37] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i36 = bArr[i37] & 255;
                i38 = bArr[i35] & 255;
            }
            if (i36 == 16) {
                qt.y0(27, -2);
            } else if (i36 == 80) {
                qt.y0(27, -3);
            } else if (i36 <= 16 || i36 >= 80) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, i36);
            }
            if (i38 == 16) {
                qt.y0(28, -2);
            } else if (i38 == 80) {
                qt.y0(28, -3);
            } else if (i38 <= 16 || i38 >= 80) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, i38);
            }
            int i39 = i2 + 4;
            qt.y0(21, (bArr[i39] >> 0) & 15);
            switch ((bArr[i39] >> 4) & 15) {
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
            int i40 = i2 + 5;
            switch ((bArr[i40] >> 4) & 15) {
                case 1:
                    i7 = 0;
                    i8 = 0;
                    i9 = 1;
                    break;
                case 2:
                    i7 = 0;
                    i9 = 1;
                    i8 = i9;
                    break;
                case 3:
                    i7 = 0;
                    i9 = 0;
                    i8 = 1;
                    break;
                case 4:
                    i9 = 0;
                    i7 = 1;
                    i8 = 1;
                    break;
                case 5:
                    i8 = 0;
                    i7 = 1;
                    i9 = 1;
                    break;
                case 6:
                    i9 = 0;
                    i8 = 0;
                    i7 = 1;
                    break;
                case 7:
                    i7 = 1;
                    i9 = i7;
                    i8 = i9;
                    break;
                default:
                    i7 = 0;
                    i9 = i7;
                    i8 = i9;
                    break;
            }
            qt.y0(22, i7);
            qt.y0(23, i9);
            qt.y0(24, i8);
            qt.y0(29, (bArr[i40] >> 0) & 3);
            qt.y0(30, (bArr[i40] >> 4) & 3);
            qt.y0(31, (bArr[i40] >> 2) & 3);
            qt.y0(32, (bArr[i40] >> 6) & 3);
            int i41 = i2 + 6;
            qt.y0(13, (bArr[i41] >> 0) & 1);
            qt.y0(11, (bArr[i41] >> 1) & 1);
            qt.y0(62, (bArr[i41] >> 2) & 1);
            qt.y0(53, (bArr[i41] >> 4) & 1);
            qt.y0(15, (bArr[i41] >> 5) & 1);
            qt.y0(16, (bArr[i41] >> 6) & 1);
            int i42 = i2 + 7;
            qt.y0(12, (bArr[i42] >> 0) & 3);
            qt.y0(67, (bArr[i42] >> 3) & 3);
            return;
        }
        if (b2 == 87) {
            this.f3390i = "Audi_";
            int i43 = i2 + 3;
            if (bArr[i43] == 16) {
                this.f3390i += "A6L_";
            } else if (bArr[i43] == 17) {
                this.f3390i += "Q7_";
            }
            int i44 = i2 + 4;
            if (bArr[i44] >= 10) {
                this.f3390i += "20" + ((int) bArr[i44]) + "_";
            } else {
                this.f3390i += "200" + ((int) bArr[i44]) + "_";
            }
            this.f3390i += ((int) bArr[i2 + 5]) + "_";
            this.f3390i += ((int) bArr[i2 + 6]) + "_";
            this.f3390i += "V" + ((int) bArr[i2 + 7]);
            qt.L(this.f3391j + "__ Air : " + this.f3390i);
            return;
        }
        switch (b2) {
            case 13:
                int i45 = i2 + 2;
                qt.y0(101, (bArr[i45] >> 7) & 1);
                qt.y0(102, (bArr[i45] >> 4) & 7);
                qt.y0(103, (bArr[i45] >> 3) & 1);
                qt.y0(104, (bArr[i45] >> 2) & 1);
                qt.y0(105, (bArr[i45] >> 1) & 1);
                qt.y0(106, (bArr[i45] >> 0) & 1);
                int i46 = i2 + 3;
                qt.y0(107, (bArr[i46] >> 7) & 1);
                qt.y0(108, (bArr[i46] >> 6) & 1);
                qt.y0(109, (bArr[i46] >> 5) & 1);
                qt.y0(110, (bArr[i46] >> 4) & 1);
                qt.y0(111, (bArr[i46] >> 3) & 1);
                qt.y0(112, (bArr[i46] >> 2) & 1);
                qt.y0(113, (bArr[i46] >> 1) & 1);
                qt.y0(114, (bArr[i46] >> 0) & 1);
                qt.y0(115, (bArr[i2 + 4] >> 0) & 255);
                int i47 = i2 + 5;
                qt.y0(116, (bArr[i47] >> 4) & 15);
                qt.y0(117, (bArr[i47] >> 0) & 15);
                int i48 = i2 + 6;
                qt.y0(118, (bArr[i48] >> 4) & 15);
                qt.y0(119, (bArr[i48] >> 0) & 15);
                int i49 = i2 + 7;
                qt.y0(120, (bArr[i49] >> 7) & 1);
                qt.y0(121, (bArr[i49] >> 6) & 1);
                qt.y0(122, (bArr[i49] >> 5) & 1);
                qt.y0(123, (bArr[i49] >> 4) & 1);
                qt.y0(124, (bArr[i49] >> 2) & 3);
                qt.y0(125, (bArr[i49] >> 0) & 3);
                qt.y0(126, (bArr[i2 + 8] >> 0) & 255);
                int i50 = i2 + 9;
                qt.y0(133, (bArr[i50] >> 6) & 3);
                qt.y0(134, (bArr[i50] >> 5) & 1);
                qt.y0(135, (bArr[i50] >> 4) & 1);
                qt.y0(136, (bArr[i50] >> 3) & 1);
                qt.y0(137, (bArr[i50] >> 2) & 1);
                qt.y0(138, (bArr[i50] >> 1) & 1);
                qt.y0(139, (bArr[i50] >> 0) & 1);
                int i51 = i2 + 10;
                qt.y0(140, (bArr[i51] >> 7) & 1);
                qt.y0(141, (bArr[i51] >> 6) & 1);
                qt.y0(142, (bArr[i51] >> 5) & 1);
                qt.y0(143, (bArr[i51] >> 0) & 31);
                int i52 = i2 + 11;
                qt.y0(144, (bArr[i52] >> 7) & 1);
                qt.y0(145, (bArr[i52] >> 6) & 1);
                qt.y0(146, (bArr[i52] >> 5) & 1);
                qt.y0(147, (bArr[i52] >> 4) & 1);
                qt.y0(148, (bArr[i52] >> 3) & 1);
                qt.y0(149, (bArr[i52] >> 2) & 1);
                qt.y0(150, (bArr[i52] >> 1) & 1);
                qt.y0(151, (bArr[i52] >> 0) & 1);
                qt.y0(152, (bArr[i2 + 12] >> 5) & 7);
                break;
            case 14:
                qt.y0(127, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(128, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(129, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(130, (bArr[i2 + 9] & 255) | ((bArr[i2 + 8] << 8) & 65280));
                break;
            case 15:
                qt.x0(131, new String(bArr, i2 + 2, 17));
                break;
            case 16:
                int i53 = i2 + 2;
                qt.y0(154, (bArr[i53] >> 7) & 1);
                qt.y0(155, (bArr[i53] >> 6) & 1);
                qt.y0(156, (bArr[i53] >> 5) & 1);
                qt.y0(157, (bArr[i53] >> 4) & 1);
                qt.y0(158, (bArr[i53] >> 3) & 1);
                qt.y0(159, (bArr[i53] >> 2) & 1);
                int i54 = i2 + 3;
                qt.y0(160, (bArr[i54] >> 7) & 1);
                qt.y0(161, (bArr[i54] >> 6) & 1);
                qt.y0(162, (bArr[i54] >> 3) & 7);
                qt.y0(163, (bArr[i54] >> 0) & 7);
                int i55 = i2 + 4;
                qt.y0(164, (bArr[i55] >> 7) & 1);
                qt.y0(165, (bArr[i55] >> 6) & 1);
                qt.y0(166, (bArr[i55] >> 4) & 3);
                break;
            default:
                switch (b2) {
                    case 125:
                        qt.y0(98, bArr[i2 + 3] & 255);
                        break;
                    case 126:
                        qt.y0(99, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(100, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                        qt.y0(132, bArr[i2 + 12] & 255);
                        break;
                    case 127:
                        this.f3391j = new String(bArr, i2 + 2, i3 - 2);
                        qt.L(this.f3391j + "__ Air : " + this.f3390i);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3396o);
        l0.b0.p0(this.f3397p);
        qt.q0(this.f3394m);
        l0.b0.p0(this.f3392k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 167) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 192, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            b3(iArr[0]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 255, 1, iArr[0]);
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f3384c + bArr.length > 1024) {
            this.f3384c = 0;
            this.f3385d = 0;
            this.f3386e = 0;
        }
        System.arraycopy(bArr, 0, this.f3383b, this.f3384c, bArr.length);
        int length = this.f3384c + bArr.length;
        this.f3384c = length;
        int i5 = this.f3386e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f3383b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f3386e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f3383b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f3383b;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f3385d = this.f3386e + 1;
            } else {
                this.f3385d = 1;
            }
            this.f3386e = 0;
        }
        int i7 = this.f3384c - 2;
        while (true) {
            i2 = this.f3385d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f3383b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f3386e = i8;
                int i9 = i8 + i2 + 3;
                this.f3386e = i9;
                if (i9 >= this.f3384c) {
                    this.f3386e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f3386e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f3383b[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f3383b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f3385d;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f3385d = this.f3386e;
                } else {
                    this.f3385d++;
                }
                this.f3386e = 0;
            }
            this.f3385d++;
        }
        if (i2 != 0) {
            int i12 = this.f3384c - i2;
            this.f3384c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f3383b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f3385d = 0;
        }
    }

    public final void b3(int i2) {
        int i3 = (this.f3398q + 1) % 2;
        this.f3398q = i3;
        switch (nt.f8637c) {
            case 226:
            case 228:
            case 230:
            case 232:
                int[] iArr = new int[8];
                iArr[0] = 227;
                iArr[1] = 51;
                iArr[2] = 5;
                byte b2 = (byte) i2;
                iArr[3] = b2;
                iArr[4] = i3 == 0 ? 34 : 204;
                iArr[5] = 37;
                iArr[6] = 1;
                iArr[7] = 170;
                z.k.s(iArr);
                int[] iArr2 = new int[8];
                iArr2[0] = 227;
                iArr2[1] = 51;
                iArr2[2] = 5;
                iArr2[3] = b2;
                iArr2[4] = this.f3398q == 0 ? 34 : 204;
                iArr2[5] = 37;
                iArr2[6] = 1;
                iArr2[7] = 170;
                z.k.s(iArr2);
                int[] iArr3 = new int[8];
                iArr3[0] = 227;
                iArr3[1] = 51;
                iArr3[2] = 5;
                iArr3[3] = b2;
                iArr3[4] = this.f3398q == 0 ? 34 : 204;
                iArr3[5] = 37;
                iArr3[6] = 1;
                iArr3[7] = 170;
                z.k.s(iArr3);
                byte[] bArr = new byte[9];
                bArr[0] = 46;
                bArr[1] = DhcpPacket.DHCP_LEASE_TIME;
                bArr[2] = 5;
                bArr[3] = b2;
                bArr[4] = (byte) (this.f3398q == 0 ? 34 : 204);
                bArr[5] = 37;
                bArr[6] = 0;
                bArr[7] = -86;
                bArr[8] = 0;
                c3(bArr);
                byte[] bArr2 = new byte[9];
                bArr2[0] = 46;
                bArr2[1] = DhcpPacket.DHCP_LEASE_TIME;
                bArr2[2] = 5;
                bArr2[3] = b2;
                bArr2[4] = (byte) (this.f3398q == 0 ? 34 : 204);
                bArr2[5] = 37;
                bArr2[6] = 0;
                bArr2[7] = -86;
                bArr2[8] = 0;
                c3(bArr2);
                byte[] bArr3 = new byte[9];
                bArr3[0] = 46;
                bArr3[1] = DhcpPacket.DHCP_LEASE_TIME;
                bArr3[2] = 5;
                bArr3[3] = b2;
                bArr3[4] = (byte) (this.f3398q == 0 ? 34 : 204);
                bArr3[5] = 37;
                bArr3[6] = 0;
                bArr3[7] = -86;
                bArr3[8] = 0;
                c3(bArr3);
                break;
            case 227:
            case 229:
            case 231:
            case 233:
                int[] iArr4 = new int[8];
                iArr4[0] = 227;
                iArr4[1] = 51;
                iArr4[2] = 5;
                byte b3 = (byte) i2;
                iArr4[3] = b3;
                iArr4[4] = i3 == 0 ? 34 : 204;
                iArr4[5] = 37;
                iArr4[6] = 2;
                iArr4[7] = 170;
                z.k.s(iArr4);
                int[] iArr5 = new int[8];
                iArr5[0] = 227;
                iArr5[1] = 51;
                iArr5[2] = 5;
                iArr5[3] = b3;
                iArr5[4] = this.f3398q == 0 ? 34 : 204;
                iArr5[5] = 37;
                iArr5[6] = 2;
                iArr5[7] = 170;
                z.k.s(iArr5);
                int[] iArr6 = new int[8];
                iArr6[0] = 227;
                iArr6[1] = 51;
                iArr6[2] = 5;
                iArr6[3] = b3;
                iArr6[4] = this.f3398q == 0 ? 34 : 204;
                iArr6[5] = 37;
                iArr6[6] = 2;
                iArr6[7] = 170;
                z.k.s(iArr6);
                byte[] bArr4 = new byte[9];
                bArr4[0] = 46;
                bArr4[1] = DhcpPacket.DHCP_LEASE_TIME;
                bArr4[2] = 5;
                bArr4[3] = b3;
                bArr4[4] = (byte) (this.f3398q == 0 ? 34 : 204);
                bArr4[5] = 37;
                bArr4[6] = 0;
                bArr4[7] = -86;
                bArr4[8] = 0;
                c3(bArr4);
                byte[] bArr5 = new byte[9];
                bArr5[0] = 46;
                bArr5[1] = DhcpPacket.DHCP_LEASE_TIME;
                bArr5[2] = 5;
                bArr5[3] = b3;
                bArr5[4] = (byte) (this.f3398q == 0 ? 34 : 204);
                bArr5[5] = 37;
                bArr5[6] = 0;
                bArr5[7] = -86;
                bArr5[8] = 0;
                c3(bArr5);
                byte[] bArr6 = new byte[9];
                bArr6[0] = 46;
                bArr6[1] = DhcpPacket.DHCP_LEASE_TIME;
                bArr6[2] = 5;
                bArr6[3] = b3;
                bArr6[4] = (byte) (this.f3398q == 0 ? 34 : 204);
                bArr6[5] = 37;
                bArr6[6] = 0;
                bArr6[7] = -86;
                bArr6[8] = 0;
                c3(bArr6);
                break;
        }
    }
}
