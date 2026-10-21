package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ym extends lt {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f12558q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12560c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12561d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 13}, new int[]{12, 0}, new int[]{13, 27}, new int[]{14, 28}, new int[]{32, 0}, new int[]{33, 7}, new int[]{34, 8}, new int[]{35, 29}, new int[]{36, 31}, new int[]{37, 30}, new int[]{38, 24}, new int[]{39, -1}, new int[]{40, 54}, new int[]{41, 18}, new int[]{42, 25}, new int[]{43, 55}, new int[]{44, 5}, new int[]{45, 5}, new int[]{46, 3}, new int[]{47, 4}, new int[]{48, 1}, new int[]{49, 6}, new int[]{50, 64}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12562e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12563f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12564g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12565h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12566i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12567j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12568k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public o1.g0 f12569l = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f12570m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f12571n = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f12572o = new f();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12573p = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (u0.b.i3 == null) {
                    u0.b.i3 = "Unkown";
                }
                byte[] bytes = u0.b.i3.getBytes("GB2312");
                int length = 37;
                if (bytes.length <= 37) {
                    length = bytes.length;
                }
                int[] iArr = new int[length + 6];
                iArr[0] = 227;
                iArr[1] = 112;
                iArr[2] = length + 3;
                iArr[3] = 8;
                iArr[4] = 2;
                iArr[5] = 1;
                for (int i2 = 0; i2 < length; i2++) {
                    iArr[i2 + 6] = bytes[i2];
                }
                z.k.s(iArr);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int length;
            try {
                byte[] bytes = h0.c.f2437h.getBytes("GB2312");
                if (bytes != null) {
                    length = 37;
                    if (bytes.length <= 37) {
                        length = bytes.length;
                    }
                } else {
                    length = 0;
                }
                int[] iArr = new int[length + 6];
                iArr[0] = 227;
                iArr[1] = 113;
                iArr[2] = length + 3;
                iArr[3] = 5;
                int i2 = ym.this.f12564g;
                int i3 = h0.c.E;
                if (i2 != i3) {
                    if (i3 == 3) {
                        iArr[4] = 3;
                    } else if (i3 == 4) {
                        iArr[4] = 1;
                    } else if (i3 != 5) {
                        iArr[4] = 0;
                    } else if (ym.this.f12564g == 4) {
                        iArr[4] = 2;
                    } else {
                        iArr[4] = 4;
                    }
                    ym.this.f12564g = h0.c.E;
                }
                iArr[5] = 1;
                if (length > 0) {
                    for (int i4 = 0; i4 < length; i4++) {
                        iArr[i4 + 6] = bytes[i4];
                    }
                }
                z.k.s(iArr);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ym.this.f12568k);
            ym ymVar = ym.this;
            ymVar.f12566i = 5;
            ymVar.f12562e = false;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ym ymVar = ym.this;
            int i2 = ymVar.f12566i - 1;
            ymVar.f12566i = i2;
            if (i2 <= 0) {
                l0.b0.p0(ymVar.f12568k);
                ym.this.f12566i = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                ym ymVar2 = ym.this;
                ymVar2.f3(ymVar2.f12569l.b(1, 0));
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.I();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.A0();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (nt.f8633a == 65992) {
                z.k.s(227, 201, 3, time.minute, time.hour, zIs24HourFormat ? 1 : 0, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay);
            } else {
                z.k.s(227, 201, 3, time.minute, time.hour, zIs24HourFormat ? 1 : 0);
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
        if (i2 == 39) {
            if (iArr[1] != 0) {
                int i3 = nt.f8645g[21] + 1;
                if (i3 > 7) {
                    i3 = 7;
                }
                a3(1, (i3 << 4) & 240);
                return;
            }
            int i4 = nt.f8645g[21] - 1;
            if (i4 < 1) {
                i4 = 1;
            }
            a3(1, (i4 << 4) & 240);
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(0, 128);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(0, 128);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(0, 2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(0, 2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(0, 32);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(0, 32);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(2, 160);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(2, 160);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f12569l.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f12567j, 1);
        qt.z(this.f12573p);
        y0.g.f18094d.a(this.f12572o, 1);
        y0.g.f18095e.a(this.f12572o, 1);
        w0.e.f17815a.a(this.f12571n, 1);
        w0.e.f17819e.a(this.f12571n, 1);
        u0.c.f17393t.a(this.f12571n, 1);
        u0.c.f17392s.a(this.f12571n, 1);
        u0.c.f17374a.a(this.f12571n, 1);
        if (nt.f8633a == 65992) {
            u0.c.f17388o.a(this.f12563f, 1);
            h0.d.f2473l.a(this.f12565h, 1);
            h0.d.f2464c.a(this.f12565h, 1);
            h0.d.f2462a.a(this.f12565h, 1);
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -85) {
            this.f12562e = true;
            int i7 = i2 + 6;
            int i8 = (bArr[i7] >> 0) & 3;
            int i9 = (bArr[i7] >> 2) & 3;
            int i10 = (bArr[i7] >> 6) & 3;
            int i11 = (bArr[i7] >> 4) & 3;
            if (i8 == 0 && i9 == 0 && i10 == 0 && i11 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i8 || l0.c0.f13014h != i9 || l0.c0.f13015i != i10 || l0.c0.f13016j != i11) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i8;
            l0.c0.f13014h = i9;
            l0.c0.f13015i = i10;
            l0.c0.f13016j = i11;
            u0.d.D2(l0.c0.s1(i8));
            u0.d.E2(l0.c0.s1(i9));
            u0.d.F2(l0.c0.s1(i10));
            u0.d.G2(l0.c0.s1(i11));
            int i12 = i2 + 7;
            u0.d.R2(l0.c0.s1((bArr[i12] >> 0) & 3));
            u0.d.S2(l0.c0.s1((bArr[i12] >> 2) & 3));
            u0.d.T2(l0.c0.s1((bArr[i12] >> 6) & 3));
            u0.d.U2(l0.c0.s1((bArr[i12] >> 4) & 3));
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12560c = b3 & 255;
            int i13 = 0;
            while (true) {
                iArr = this.f12561d;
                if (i13 >= iArr.length) {
                    break;
                }
                int i14 = this.f12560c;
                if (i14 == iArr[i13][0]) {
                    if (i14 == 0) {
                        break;
                    }
                    this.f12559b = i13;
                    break;
                }
                i13++;
            }
            int i15 = this.f12560c;
            if (i15 == 6) {
                if ((b4 & 255) == 1) {
                    if (nt.f8633a != 65992) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    }
                    int i16 = h0.c.E;
                    if (i16 == 3 || i16 == 4 || i16 == 5) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (u0.i.l3().r3()) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    }
                }
                return;
            }
            if (i15 == 11) {
                if ((b4 & 255) == 1) {
                    if (nt.f8633a != 65992) {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                        return;
                    }
                    int i17 = h0.c.E;
                    if (i17 == 3 || i17 == 4 || i17 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else if (u0.i.l3().r3()) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                        return;
                    }
                }
                return;
            }
            if (i15 == 39) {
                if ((b4 & 255) != 1 || o1.u.S("com.syu.carlink")) {
                    return;
                }
                o1.u.g("com.syu.carlink");
                return;
            }
            if (i15 == 33) {
                for (int i18 = 0; i18 < (b4 & 255); i18++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i15 == 34) {
                for (int i19 = 0; i19 < (b4 & 255); i19++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i15 == 36) {
                for (int i20 = 0; i20 < (b4 & 255); i20++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i15 == 37) {
                for (int i21 = 0; i21 < (b4 & 255); i21++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            int i22 = b4 & 255;
            if (i22 == 1) {
                if (i13 < iArr.length) {
                    l0.b0.l0(iArr[i13][1], 0);
                    return;
                }
                return;
            } else {
                if (i22 == 0) {
                    int i23 = this.f12559b;
                    if (i23 < iArr.length && i23 != 255) {
                        l0.b0.l0(iArr[i23][1], 1);
                    }
                    this.f12559b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 54) {
            int i24 = i2 + 3;
            int i25 = ((bArr[i24] << 8) & 32512) | (bArr[i2 + 2] & 255);
            u0.d.B3((bArr[i24] & 128) != 0 ? 1000 - i25 : i25 + 1000);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i26 = i2 + 3;
            l0.c0.a((bArr[i26] >> 3) & 1, (bArr[i26] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i26] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
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
            int i27 = i2 + 3;
            l0.c0.N1((bArr[i27] >> 1) & 1, (bArr[i27] >> 0) & 1, 0);
            return;
        }
        if (b2 == 41) {
            int i28 = i2 + 2;
            int i29 = i2 + 3;
            if ((((bArr[i28] << 8) & 65280) | (bArr[i29] & 255)) >= 32768) {
                qt.m(bArr[i29], bArr[i28], 32768, false, 12818);
                return;
            } else {
                qt.j(bArr[i29], bArr[i28], 1, 11931);
                return;
            }
        }
        if (b2 == 56) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            byte b13 = bArr[i2 + 9];
            qt.y0(102, b6 & 255);
            qt.y0(103, b7 & 255);
            qt.y0(104, b8 & 255);
            qt.y0(105, b9 & 255);
            qt.y0(98, b10 & 255);
            qt.y0(99, b11 & 255);
            qt.y0(100, b12 & 255);
            qt.y0(101, b13 & 255);
            return;
        }
        if (b2 == 57) {
            byte b14 = bArr[i2 + 2];
            byte b15 = bArr[i2 + 3];
            qt.y0(106, (b14 >> 7) & 1);
            qt.y0(107, (b14 >> 6) & 1);
            qt.y0(108, (b14 >> 5) & 1);
            qt.y0(109, (b14 >> 4) & 1);
            qt.y0(110, (b14 >> 3) & 1);
            qt.y0(111, (b14 >> 2) & 1);
            qt.y0(112, (b15 >> 7) & 1);
            qt.y0(113, (b15 >> 6) & 1);
            qt.y0(114, (b15 >> 5) & 1);
            qt.y0(115, (b15 >> 4) & 1);
            qt.y0(116, (b15 >> 3) & 1);
            qt.y0(117, (b15 >> 2) & 1);
            return;
        }
        switch (b2) {
            case 34:
                if (!this.f12562e) {
                    u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                    break;
                }
                break;
            case 35:
                if (!this.f12562e) {
                    int i30 = i2 + 2;
                    int i31 = bArr[i30] & 255;
                    int i32 = i2 + 3;
                    int i33 = bArr[i32] & 255;
                    int i34 = i2 + 4;
                    int i35 = bArr[i34] & 255;
                    int i36 = i2 + 5;
                    int i37 = bArr[i36] & 255;
                    if (i31 == 0 && i33 == 0 && i35 == 0 && i37 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i31 || l0.c0.f13014h != i33 || l0.c0.f13015i != i35 || l0.c0.f13016j != i37) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i31;
                    l0.c0.f13014h = i33;
                    l0.c0.f13015i = i35;
                    l0.c0.f13016j = i37;
                    u0.d.D2(l0.c0.E0(bArr[i30] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i32] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i34] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i36] & 255));
                    break;
                }
                break;
            case 36:
                int i38 = bArr[i2 + 2] & 255;
                int i39 = bArr[i2 + 3] & 255;
                int i40 = bArr[i2 + 4] & 255;
                qt.y0(10, (i38 >> 7) & 1);
                qt.y0(11, (i38 >> 6) & 1);
                qt.y0(12, (i38 >> 5) & 1);
                qt.y0(52, (i38 >> 4) & 1);
                qt.y0(13, (i38 >> 3) & 1);
                qt.y0(62, (i38 >> 2) & 1);
                qt.y0(16, (i38 >> 1) & 1);
                qt.y0(63, i38 & 1);
                int i41 = i39 & 255;
                if (i41 != 1) {
                    if (i41 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i41 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i41 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i41 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, i40 & 255);
                int i42 = i2 + 5;
                int i43 = bArr[i42] & 255;
                int i44 = i2 + 6;
                int i45 = bArr[i44] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i43 = bArr[i44] & 255;
                    i45 = bArr[i42] & 255;
                }
                if (i43 == 0) {
                    qt.y0(27, -2);
                } else if (i43 == 255) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i43);
                }
                if (i45 == 0) {
                    qt.y0(28, -2);
                } else if (i45 == 255) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i45);
                }
                int i46 = i2 + 7;
                qt.y0(29, (bArr[i46] >> 4) & 15);
                qt.y0(30, (bArr[i46] >> 0) & 15);
                qt.y0(80, (bArr[i2 + 8] >> 0) & 1);
                break;
            default:
                switch (b2) {
                    case 65:
                        qt.y0(118, bArr[i2 + 2] & 255);
                        qt.y0(119, bArr[i2 + 3] & 255);
                        qt.y0(120, bArr[i2 + 4] & 255);
                        qt.y0(121, bArr[i2 + 5] & 255);
                        qt.y0(122, bArr[i2 + 6] & 255);
                        qt.y0(123, bArr[i2 + 7] & 255);
                        int i47 = i2 + 8;
                        qt.y0(124, (bArr[i47] >> 7) & 1);
                        qt.y0(126, (bArr[i47] >> 5) & 1);
                        qt.y0(127, (bArr[i47] >> 4) & 1);
                        int i48 = i2 + 9;
                        qt.y0(128, (bArr[i48] >> 7) & 1);
                        qt.y0(129, (bArr[i48] >> 6) & 1);
                        qt.y0(130, (bArr[i48] >> 5) & 1);
                        qt.y0(131, (bArr[i48] >> 4) & 1);
                        int i49 = i2 + 10;
                        qt.y0(132, (bArr[i49] >> 7) & 1);
                        qt.y0(133, (bArr[i49] >> 6) & 1);
                        break;
                    case 66:
                        qt.y0(134, bArr[i2 + 2] & 255);
                        qt.y0(135, bArr[i2 + 3] & 255);
                        qt.y0(136, bArr[i2 + 4] & 255);
                        int i50 = i2 + 5;
                        qt.y0(137, (bArr[i50] >> 7) & 1);
                        qt.y0(138, (bArr[i50] >> 6) & 1);
                        qt.y0(139, (bArr[i50] >> 5) & 1);
                        qt.y0(140, (bArr[i50] >> 4) & 1);
                        qt.y0(141, (bArr[i50] >> 3) & 1);
                        qt.y0(142, (bArr[i50] >> 1) & 3);
                        qt.y0(143, (bArr[i50] >> 0) & 1);
                        qt.y0(144, bArr[i2 + 6] & 255);
                        int i51 = i2 + 7;
                        qt.y0(145, (bArr[i51] >> 4) & 15);
                        qt.y0(146, (bArr[i51] >> 3) & 1);
                        qt.y0(147, (bArr[i51] >> 2) & 1);
                        int i52 = i2 + 8;
                        qt.y0(148, (bArr[i52] >> 7) & 1);
                        qt.y0(149, (bArr[i52] >> 6) & 1);
                        break;
                    case 67:
                        qt.y0(150, bArr[i2 + 2] & 255);
                        qt.y0(151, bArr[i2 + 3] & 255);
                        qt.y0(152, bArr[i2 + 4] & 255);
                        qt.y0(153, bArr[i2 + 5] & 255);
                        qt.y0(154, bArr[i2 + 6] & 255);
                        qt.y0(155, bArr[i2 + 7] & 255);
                        qt.y0(156, bArr[i2 + 8] & 255);
                        qt.y0(157, bArr[i2 + 9] & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f12569l.j();
        u0.c.f17386m.d(this.f12567j);
        l0.b0.p0(this.f12568k);
        qt.q0(this.f12573p);
        y0.g.f18094d.d(this.f12572o);
        y0.g.f18095e.d(this.f12572o);
        w0.e.f17815a.d(this.f12571n);
        w0.e.f17819e.d(this.f12571n);
        u0.c.f17393t.d(this.f12571n);
        u0.c.f17392s.d(this.f12571n);
        u0.c.f17374a.d(this.f12571n);
        u0.c.f17388o.d(this.f12563f);
        h0.d.f2464c.d(this.f12565h);
        h0.d.f2462a.d(this.f12565h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 158) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 5) {
                return;
            }
            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 1) {
            if (iArr[0] == 153) {
                f3(iArr[1]);
                return;
            } else {
                z.k.s(227, -56, 2, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 2) {
            z.k.s(227, -112, 1, iArr[0]);
        } else if (i2 == 3) {
            z.k.s(227, -53, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 4) {
                return;
            }
            z.k.s(227, -52, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2, int i3) {
        if (i2 == 0) {
            z.k.s(227, 199, 6, i3, 0, 0, 0, 0, 0);
        } else if (i2 == 1) {
            z.k.s(227, 199, 6, 0, i3, 0, 0, 0, 0);
        } else if (i2 == 2) {
            z.k.s(227, 199, 6, 0, 0, i3, 0, 0, 0);
        } else if (i2 == 3) {
            z.k.s(227, 199, 6, 0, 0, 0, i3, 0, 0);
        } else if (i2 == 4) {
            z.k.s(227, 199, 6, 0, 0, 0, 0, i3, 0);
        } else if (i2 == 5) {
            z.k.s(227, 199, 6, 0, 0, 0, 0, 0, i3);
        }
        a.i.a0(100L);
        z.k.s(227, 199, 6, 0, 0, 0, 0, 0, 0);
    }

    public final void f3(int i2) {
        qt.y0(125, i2);
        z.k.s(227, -56, 2, 153, i2);
        f12558q = i2;
        int iB = this.f12569l.b(1, 0);
        int i3 = f12558q;
        if (iB != i3) {
            this.f12569l.g(1, i3);
        }
    }
}
