package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class os extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8997c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8998d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 0}, new int[]{13, 5}, new int[]{14, 1}, new int[]{15, 1}, new int[]{16, 5}, new int[]{17, 54}, new int[]{18, 24}, new int[]{19, -1}, new int[]{20, 53}, new int[]{21, 58}, new int[]{22, 58}, new int[]{23, -1}, new int[]{24, 38}, new int[]{25, -1}, new int[]{26, 63}, new int[]{27, 25}, new int[]{28, 57}, new int[]{29, -1}, new int[]{30, -1}, new int[]{31, 62}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{49, 34}, new int[]{50, 35}, new int[]{51, 32}, new int[]{52, 33}, new int[]{53, 34}, new int[]{54, 33}, new int[]{55, 32}, new int[]{56, 35}, new int[]{57, 29}, new int[]{58, 6}, new int[]{64, 7}, new int[]{65, 8}, new int[]{66, 31}, new int[]{67, 30}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8999e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9000f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f9001g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9002h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f9003i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f9004j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f9005k = new c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f9006l = new d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f9007m = new e();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f9008n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f9009o = new f();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f9010p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9011q = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -59, 6, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0), (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(os.this.f9005k);
            os.this.f9003i = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            os osVar = os.this;
            byte b2 = (byte) (osVar.f9003i - 1);
            osVar.f9003i = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(osVar.f9005k);
                os.this.f9003i = (byte) 5;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 13) {
                z.k.s(227, 198, 2, 1, 0);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.B0();
            os.this.f9008n = 4;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            os osVar = os.this;
            int i2 = osVar.f9008n;
            if (i2 > 0) {
                osVar.f9008n = i2 - 1;
            }
            if (osVar.f9008n == 0) {
                l0.c0.E();
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (os.this.f9010p) {
                z.k.s(227, 144, 2, 65, 3);
            }
        }
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
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8322q = 0;
        qt.z(this.f9009o);
        y0.g.f18094d.a(this.f9007m, 1);
        y0.g.f18095e.a(this.f9007m, 1);
        w0.e.f17815a.a(this.f9009o, 1);
        l0.b0.b(this.f9011q);
        u0.c.f17386m.a(this.f9004j, 1);
        qt.z(this.f9002h);
        u0.c.f17374a.a(this.f9006l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8997c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f8998d;
                    if (i4 < iArr.length) {
                        int i5 = this.f8997c;
                        if (i5 != iArr[i4][0]) {
                            i4++;
                        } else if (i5 != 0) {
                            this.f8996b = i4;
                        }
                    }
                }
                int i6 = this.f8997c;
                if (i6 != 31) {
                    switch (i6) {
                        case 64:
                            for (int i7 = 0; i7 < (b4 & 255); i7++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 65:
                            for (int i8 = 0; i8 < (b4 & 255); i8++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 66:
                            for (int i9 = 0; i9 < (b4 & 255); i9++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        case 67:
                            for (int i10 = 0; i10 < (b4 & 255); i10++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        default:
                            int i11 = b4 & 255;
                            if (i11 == 1) {
                                if (i4 < iArr.length) {
                                    l0.b0.l0(iArr[i4][1], 0);
                                }
                            } else if (i11 == 0) {
                                int i12 = this.f8996b;
                                if (i12 < iArr.length && i12 != 255) {
                                    l0.b0.l0(iArr[i12][1], 1);
                                }
                                this.f8996b = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i13 = i2 + 2;
                qt.y0(10, (bArr[i13] >> 7) & 1);
                qt.y0(11, (bArr[i13] >> 6) & 1);
                qt.y0(12, (bArr[i13] >> 5) & 1);
                qt.y0(13, (bArr[i13] >> 4) & 1);
                qt.y0(26, (bArr[i13] >> 3) & 1);
                qt.y0(14, (bArr[i13] >> 2) & 1);
                qt.y0(15, (bArr[i13] >> 1) & 1);
                qt.y0(38, (bArr[i13] >> 0) & 1);
                int i14 = i2 + 3;
                qt.y0(18, (bArr[i14] >> 7) & 1);
                qt.y0(19, (bArr[i14] >> 6) & 1);
                qt.y0(20, (bArr[i14] >> 5) & 1);
                qt.y0(21, 15 & bArr[i14]);
                int i15 = i2 + 4;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 5;
                int i18 = bArr[i17] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i16 = bArr[i17] & 255;
                    i18 = bArr[i15] & 255;
                }
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 != 254) {
                    qt.y0(27, i16);
                } else {
                    qt.y0(27, -3);
                }
                if (i18 == 0) {
                    qt.y0(28, -2);
                } else if (i18 != 254) {
                    qt.y0(28, i18);
                } else {
                    qt.y0(28, -3);
                }
                int i19 = i2 + 6;
                qt.y0(54, (bArr[i19] >> 7) & 1);
                qt.y0(29, (bArr[i19] >> 4) & 3);
                qt.y0(30, (bArr[i19] >> 0) & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i20 = i2 + 2;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 3;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 4;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 5;
                int i27 = bArr[i26] & 255;
                if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i21;
                l0.c0.f13014h = i23;
                l0.c0.f13015i = i25;
                l0.c0.f13016j = i27;
                u0.d.D2(l0.c0.u1(bArr[i20] & 255));
                u0.d.E2(l0.c0.u1(bArr[i22] & 255));
                u0.d.F2(l0.c0.u1(bArr[i24] & 255));
                u0.d.G2(l0.c0.u1(bArr[i26] & 255));
                break;
            case 36:
                int i28 = i2 + 2;
                l0.c0.a((bArr[i28] >> 7) & 1, (bArr[i28] >> 6) & 1, 0);
                break;
            case 37:
                if (nt.f8637c == 46) {
                    int i29 = i2 + 2;
                    if (this.f9000f != ((bArr[i29] >> 1) & 1)) {
                        int i30 = (bArr[i29] >> 1) & 1;
                        this.f9000f = i30;
                        if (i30 == 0) {
                            u0.d.R2(10);
                            u0.d.S2(10);
                            u0.d.T2(10);
                            u0.d.U2(10);
                            u0.d.D2(10);
                            u0.d.E2(10);
                            u0.d.F2(10);
                            u0.d.G2(10);
                        }
                        if (nt.f8637c == 57 && this.f7886a.f8317l == 1) {
                            if (this.f9000f == 1) {
                                if (!o1.u.a0()) {
                                    this.f9001g = true;
                                    o1.u.z();
                                }
                            } else if (o1.u.a0() && this.f9001g) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                                this.f9001g = false;
                            }
                        }
                    }
                }
                int i31 = i2 + 2;
                qt.y0(107, (bArr[i31] >> 1) & 1);
                qt.y0(108, (bArr[i31] >> 0) & 1);
                break;
            case 38:
                qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 540);
                break;
            default:
                switch (b2) {
                    case 64:
                        int i32 = i2 + 2;
                        if (this.f8999e != bArr[i32]) {
                            byte b5 = bArr[i32];
                            this.f8999e = b5;
                            if (b5 == 1) {
                                if (!o1.u.S(a.b.Q)) {
                                    o1.u.z();
                                }
                            } else if (o1.u.S(a.b.Q)) {
                                l0.b0.l0(6, 0);
                                l0.b0.l0(6, 1);
                            }
                        }
                        break;
                    case 65:
                        byte b6 = bArr[i2 + 2];
                        if (b6 == 1) {
                            byte b7 = bArr[i2 + 3];
                            qt.y0(101, (b7 >> 7) & 1);
                            qt.y0(102, (b7 >> 6) & 1);
                            qt.y0(103, (b7 >> 5) & 1);
                            qt.y0(5, (b7 >> 4) & 1);
                            qt.y0(4, (b7 >> 3) & 1);
                            qt.y0(3, (b7 >> 2) & 1);
                            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                qt.y0(1, (b7 >> 1) & 1);
                                qt.y0(2, (b7 >> 0) & 1);
                            } else {
                                qt.y0(1, (b7 >> 0) & 1);
                                qt.y0(2, (b7 >> 1) & 1);
                            }
                            break;
                        } else if (b6 == 2) {
                            int i33 = i2 + 3;
                            int i34 = i2 + 4;
                            qt.y0(110, ((bArr[i33] << 8) & 65280) | ((bArr[i34] << 0) & 255));
                            qt.y0(1032, ((bArr[i33] << 8) & 65280) | ((bArr[i34] << 0) & 255));
                            int i35 = i2 + 5;
                            int i36 = i2 + 6;
                            qt.y0(109, ((bArr[i35] << 8) & 65280) | ((bArr[i36] << 0) & 255));
                            int i37 = (((bArr[i35] << 8) & 65280) | (bArr[i36] & 255)) / 100;
                            qt.y0(1031, i37);
                            o1.x.C(nt.f8643f, 1049, new int[]{1, i37}, null, null);
                            qt.y0(105, ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 8] << 0) & 255));
                            int i38 = i2 + 9;
                            int i39 = i2 + 10;
                            qt.y0(139, ((bArr[i38] << 8) & 65280) | ((bArr[i39] << 0) & 255));
                            qt.y0(106, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 0) & 255));
                            qt.y0(104, bArr[i2 + 14] & 255);
                            if (nt.a()) {
                                int i40 = (bArr[i39] & 255) | ((bArr[i38] << 8) & 65280);
                                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((32768 & i40) != 0 ? 1320 - (((65536 - i40) * 9) / 5) : ((i40 * 9) / 5) + 1320) / 10) * 10) | 268435456) & (-1) : (32768 & i40) != 0 ? 1000 - (65536 - i40) : i40 + 1000);
                            }
                            break;
                        } else if (b6 == 3) {
                            byte b8 = bArr[i2 + 3];
                            qt.y0(99, (b8 >> 7) & 1);
                            qt.y0(100, (b8 >> 6) & 1);
                            break;
                        }
                        break;
                    case 66:
                        qt.y0(140, bArr[i2 + 6] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9009o);
        y0.g.f18094d.d(this.f9007m);
        y0.g.f18095e.d(this.f9007m);
        w0.e.f17815a.d(this.f9009o);
        u0.c.f17386m.d(this.f9004j);
        l0.b0.p0(this.f9005k);
        l0.b0.p0(this.f9011q);
        qt.q0(this.f9002h);
        u0.c.f17374a.d(this.f9006l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 141) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 152, 9, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
        } else if (i2 == 6 && nt.U == 1) {
            o1.x.x(nt.f8643f, 1001, iArr[0]);
        }
    }
}
