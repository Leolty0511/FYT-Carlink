package k0;

import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class nd extends lt {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f8438u = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8439b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8442e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8440c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8441d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 7}, new int[]{9, 8}, new int[]{10, 25}, new int[]{16, 3}, new int[]{17, 4}, new int[]{22, 12}, new int[]{23, 9}, new int[]{24, 6}, new int[]{25, 1}, new int[]{32, 25}, new int[]{33, 54}, new int[]{34, 13}, new int[]{35, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8443f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f8444g = {new int[]{1, 1}, new int[]{6, 6}, new int[]{9, 34}, new int[]{10, 35}, new int[]{11, 32}, new int[]{12, 33}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 32}, new int[]{16, 33}, new int[]{17, 30}, new int[]{18, 31}, new int[]{19, 29}, new int[]{20, 18}, new int[]{21, 54}, new int[]{22, 21}, new int[]{23, 5}, new int[]{24, 58}, new int[]{25, 0}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f8445h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f8446i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f8447j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f8448k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f8449l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8450m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f8451n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f8452o = new e();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public byte f8453p = 5;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f8454q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f8455r = new g();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f8456s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f8457t = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.D();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = nt.f8637c;
            if (i2 == 2) {
                z.k.s(227, 194, 1, 0);
            }
            if (i2 == 3) {
                z.k.s(227, 194, 1, 1);
                return;
            }
            if (i2 == 4) {
                z.k.s(227, 194, 1, 2);
                return;
            }
            if (i2 == 5) {
                z.k.s(227, 194, 1, 3);
                return;
            }
            switch (i2) {
                case 15:
                    z.k.s(227, 238, 2, 160, 2);
                    break;
                case 16:
                    z.k.s(227, 238, 2, 160, 3);
                    break;
                case 17:
                    z.k.s(227, 238, 2, 160, 4);
                    break;
                case 18:
                    z.k.s(227, 238, 2, 160, 5);
                    break;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nd.this.e3((byte) 112, u0.b.i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            z.k.s(227, 133, 7, (byte) (time.year - 2020), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(nd.this.f8455r);
            nd.this.f8453p = (byte) 5;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nd ndVar = nd.this;
            byte b2 = (byte) (ndVar.f8453p - 1);
            ndVar.f8453p = b2;
            if (b2 <= 0) {
                l0.b0.p0(ndVar.f8455r);
                nd.this.f8453p = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i2 = nt.f8637c;
                if (i2 != 10) {
                    if (i2 == 12 || i2 == 13) {
                        z.k.s(227, 130, 2, 3, 1);
                        z.k.s(227, 130, 2, 4, 1);
                        return;
                    } else if (i2 != 16 && i2 != 17) {
                        return;
                    }
                }
                nd ndVar2 = nd.this;
                ndVar2.g3(ndVar2.f8445h.b(1, 1));
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        super.O2(iArr);
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] != nt.f8645g[10]) {
                    f3(0);
                }
                break;
            case 34:
                if (iArr[1] != nt.f8645g[11]) {
                    f3(1);
                }
                break;
            case 36:
                if (iArr[1] != nt.f8645g[65]) {
                    f3(6);
                }
                break;
            case 37:
                if (iArr[1] != nt.f8645g[16]) {
                    f3(18);
                }
                break;
            case 38:
                if (iArr[1] != nt.f8645g[12]) {
                    f3(4);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    f3(12);
                } else {
                    f3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    f3(14);
                } else {
                    f3(13);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f8445h.a();
        u0.c.f17386m.a(this.f8454q, 1);
        qt.z(this.f8448k);
        qt.z(this.f8447j);
        w0.e.f17815a.a(this.f8447j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8319n = 0;
        int i2 = nt.f8637c;
        if (i2 != 1) {
            switch (i2) {
                case 10:
                    mtVar.f8313h = 2;
                    break;
                case 11:
                case 14:
                    mtVar.f8312g = 1;
                    break;
                case 12:
                case 13:
                    mtVar.f8319n = 1;
                    break;
                case 15:
                case 17:
                case 18:
                    u0.c.f17388o.a(this.f8450m, 1);
                    qt.z(this.f8451n);
                    break;
                case 16:
                    mtVar.f8312g = 1;
                    mtVar.f8314i = 1;
                    qt.z(this.f8451n);
                    u0.c.f17388o.a(this.f8450m, 1);
                    break;
            }
        } else {
            mtVar.f8314i = 1;
        }
        this.f7886a.f8318m = new int[]{33, 34, 36, 37, 38, 39, 41};
        qt.y(this.f8452o);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:105:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:108:0x02e8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:110:0x02ed A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:111:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:112:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:114:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:116:0x0300 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x0302  */
    /* JADX WARN: Code duplicated, block: B:119:0x0306  */
    /* JADX WARN: Code duplicated, block: B:120:0x0308  */
    /* JADX WARN: Code duplicated, block: B:123:0x0315  */
    /* JADX WARN: Code duplicated, block: B:124:0x031f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0329  */
    /* JADX WARN: Code duplicated, block: B:127:0x0335  */
    /* JADX WARN: Code duplicated, block: B:129:0x0338  */
    /* JADX WARN: Code duplicated, block: B:130:0x033a  */
    /* JADX WARN: Code duplicated, block: B:132:0x033e  */
    /* JADX WARN: Code duplicated, block: B:136:0x0350 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x0352  */
    /* JADX WARN: Code duplicated, block: B:138:0x0355 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:139:0x0357  */
    /* JADX WARN: Code duplicated, block: B:140:0x0359  */
    /* JADX WARN: Code duplicated, block: B:143:0x035e  */
    /* JADX WARN: Code duplicated, block: B:145:0x0369 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:146:0x036b  */
    /* JADX WARN: Code duplicated, block: B:148:0x036f  */
    /* JADX WARN: Code duplicated, block: B:149:0x0371  */
    /* JADX WARN: Code duplicated, block: B:152:0x037e  */
    /* JADX WARN: Code duplicated, block: B:153:0x0388  */
    /* JADX WARN: Code duplicated, block: B:154:0x0392  */
    /* JADX WARN: Code duplicated, block: B:155:0x039c  */
    /* JADX WARN: Code duplicated, block: B:157:0x039f  */
    /* JADX WARN: Code duplicated, block: B:158:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:160:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:164:0x0436  */
    /* JADX WARN: Code duplicated, block: B:166:0x0441  */
    /* JADX WARN: Code duplicated, block: B:167:0x0446  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            if (this.f8449l) {
                return;
            }
            switch (nt.f8637c) {
                case 11:
                case 12:
                case 13:
                case 14:
                    qt.m(bArr[i2 + 2], bArr[i2 + 3], 7936, true, 5400);
                    break;
                default:
                    qt.m(bArr[i2 + 2], bArr[i2 + 3], 7808, true, 5400);
                    break;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            this.f8453p = (byte) 0;
            return;
        }
        if (b2 == 57) {
            switch (bArr[i2 + 2] & 255) {
                case 1:
                    qt.y0(101, bArr[i2 + 3] & 255);
                    break;
                case 2:
                    qt.y0(102, bArr[i2 + 3] & 255);
                    break;
                case 3:
                    qt.y0(103, bArr[i2 + 3] & 255);
                    break;
                case 4:
                    qt.y0(104, bArr[i2 + 3] & 255);
                    break;
                case 5:
                    qt.y0(105, bArr[i2 + 3] & 255);
                    break;
                case 6:
                    qt.y0(106, bArr[i2 + 3] & 255);
                    break;
                case 7:
                    qt.y0(107, bArr[i2 + 3] & 255);
                    break;
                case 8:
                    qt.y0(108, bArr[i2 + 3] & 255);
                    break;
                case 9:
                    qt.y0(109, bArr[i2 + 3] & 255);
                    break;
                case 10:
                    qt.y0(110, bArr[i2 + 3] & 255);
                    break;
                case 11:
                    qt.y0(111, bArr[i2 + 3] & 255);
                    break;
                case 12:
                    qt.y0(112, bArr[i2 + 3] & 255);
                    break;
                case 13:
                    qt.y0(113, bArr[i2 + 3] & 255);
                    break;
                case 14:
                    qt.y0(114, bArr[i2 + 3] & 255);
                    break;
                case 15:
                    qt.y0(115, bArr[i2 + 3] & 255);
                    break;
                case 16:
                    qt.y0(116, bArr[i2 + 3] & 255);
                    qt.y0(117, bArr[i2 + 4] & 255);
                    qt.y0(118, bArr[i2 + 5] & 255);
                    break;
                case 17:
                    qt.y0(119, bArr[i2 + 3] & 255);
                    break;
                case 18:
                    qt.y0(120, bArr[i2 + 3] & 255);
                    break;
            }
        }
        int i16 = 8;
        if (b2 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i18 = i2 + 3;
                    l0.c0.b((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                    return;
                } else {
                    int i19 = i2 + 3;
                    l0.c0.a((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                    return;
                }
            }
            if (i17 == 3) {
                int i20 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i20);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i20}, null, null);
                return;
            } else {
                if (i17 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8449l = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f8440c = b3 & 255;
                    int i21 = 0;
                    while (true) {
                        iArr = this.f8441d;
                        if (i21 < iArr.length) {
                            int i22 = this.f8440c;
                            if (i22 != iArr[i21][0]) {
                                i21++;
                            } else if (i22 != 0) {
                                this.f8439b = i21;
                            }
                        }
                    }
                    int i23 = this.f8440c;
                    if (i23 != 5) {
                        if (i23 != 6) {
                            if (i23 == 8) {
                                int i24 = 0;
                                int i25 = 0;
                                while (i25 < (b4 & 255)) {
                                    l0.b0.l0(7, i24);
                                    i25++;
                                    i24 = 0;
                                }
                                l0.b0.l0(7, 1);
                            } else if (i23 == 9) {
                                for (int i26 = 0; i26 < (b4 & 255); i26++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            } else if (i23 != 16) {
                                if (i23 != 17) {
                                    int i27 = b4 & 255;
                                    if (i27 == 1) {
                                        if (i21 < iArr.length) {
                                            l0.b0.l0(iArr[i21][1], 0);
                                        }
                                    } else if (i27 == 0) {
                                        int i28 = this.f8439b;
                                        if (i28 < iArr.length) {
                                            i8 = 255;
                                            if (i28 != 255) {
                                                l0.b0.l0(iArr[i28][1], 1);
                                            }
                                        } else {
                                            i8 = 255;
                                        }
                                        this.f8439b = i8;
                                    }
                                } else if ((b4 & 255) == 1) {
                                    if (nt.f8637c != 12) {
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    } else {
                                        if (h0.c.E == 4) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        }
                                        l0.b0.l0(3, 0);
                                        l0.b0.l0(3, 1);
                                    }
                                }
                            } else if ((b4 & 255) == 1) {
                                if (nt.f8637c != 12) {
                                    l0.b0.l0(4, 0);
                                    l0.b0.l0(4, 1);
                                } else {
                                    int i29 = h0.c.E;
                                    if (i29 == 3 || i29 == 4 || i29 == 5) {
                                        i6 = 0;
                                        l0.b0.l0(26, 0);
                                        i7 = 1;
                                        l0.b0.l0(26, 1);
                                    } else {
                                        i6 = 0;
                                        i7 = 1;
                                    }
                                    l0.b0.l0(4, i6);
                                    l0.b0.l0(4, i7);
                                }
                            }
                        } else if ((b4 & 255) == 1) {
                            int i30 = nt.f8637c;
                            if (i30 != 0) {
                                if (i30 == 1) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else if (i30 != 7 && i30 != 8 && i30 != 10) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                }
                            }
                            int i31 = h0.c.E;
                            if (i31 == 3 || i31 == 4 || i31 == 5) {
                                i4 = 0;
                                l0.b0.l0(26, 0);
                                i5 = 1;
                                l0.b0.l0(26, 1);
                            } else {
                                i4 = 0;
                                i5 = 1;
                            }
                            l0.b0.l0(12, i4);
                            l0.b0.l0(12, i5);
                        }
                    } else if ((b4 & 255) == 1) {
                        int i32 = nt.f8637c;
                        if (i32 == 0 || i32 == 1 || i32 == 10) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            int i33 = h0.c.E;
                            if (i33 == 3 || i33 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    }
                }
                break;
            case 33:
                int i34 = bArr[i2 + 2] & 255;
                int i35 = bArr[i2 + 3] & 255;
                int i36 = i2 + 4;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 5;
                int i39 = bArr[i38] & 255;
                int i40 = bArr[i2 + 6] & 255;
                int i41 = bArr[i2 + 7] & 255;
                int i42 = bArr[i2 + 8] & 255;
                int i43 = i35 & 15;
                int i44 = nt.f8637c;
                if (i44 != 2 && i44 != 3 && i44 != 4 && i44 != 5) {
                    if (i43 <= 8) {
                    }
                    qt.y0(21, i16);
                    qt.y0(10, (i34 >> 7) & 1);
                    qt.y0(11, (i34 >> 6) & 1);
                    qt.y0(12, (i34 >> 5) & 1);
                    qt.y0(13, (i34 >> 3) & 1);
                    qt.y0(14, (i34 >> 2) & 1);
                    qt.y0(15, (i34 >> 1) & 1);
                    qt.y0(67, i34 & 1);
                    qt.y0(18, (i35 >> 7) & 1);
                    qt.y0(19, (i35 >> 6) & 1);
                    qt.y0(20, (i35 >> 5) & 1);
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i37 = bArr[i38] & 255;
                        i39 = bArr[i36] & 255;
                    }
                    i9 = i37 & 255;
                    i10 = nt.f8637c;
                    if (i10 != 1) {
                        if (i9 < 1) {
                            i9 = 0;
                        } else if (i9 > 9) {
                            i9 = 9;
                        }
                        qt.y0(27, i9);
                    } else if (i10 != 11) {
                        switch (i10) {
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                                if (i9 != 0) {
                                    qt.y0(27, -2);
                                } else if (i9 != 255) {
                                    qt.y0(27, -3);
                                } else if (i9 >= 1 || i9 > 33) {
                                    qt.y0(27, -1);
                                } else {
                                    qt.y0(27, i9);
                                }
                                break;
                            default:
                                if (i9 < 1) {
                                    i9 = 0;
                                } else if (i9 > 15) {
                                    i9 = 15;
                                }
                                qt.y0(27, i9);
                                break;
                        }
                    } else if (i9 != 0) {
                        qt.y0(27, -2);
                    } else if (i9 != 255) {
                        qt.y0(27, -3);
                    } else if (i9 >= 1) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, -1);
                    }
                    i11 = i39 & 255;
                    i12 = nt.f8637c;
                    if (i12 != 1) {
                        i13 = 0;
                        if (i11 < 1) {
                            i11 = 0;
                        } else if (i11 > 9) {
                            i11 = 9;
                        }
                        qt.y0(28, i11);
                    } else if (i12 != 11) {
                        switch (i12) {
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                                if (i11 != 0) {
                                    i13 = 0;
                                    qt.y0(28, -2);
                                } else if (i11 != 255) {
                                    i13 = 0;
                                    qt.y0(28, -3);
                                } else if (i11 >= 1 || i11 > 31) {
                                    i13 = 0;
                                    qt.y0(28, -1);
                                } else {
                                    i13 = 0;
                                    qt.y0(28, i11);
                                }
                                break;
                            default:
                                if (i11 < 1) {
                                    i15 = 0;
                                } else {
                                    i15 = 15;
                                    if (i11 <= 15) {
                                        i15 = i11;
                                    }
                                }
                                qt.y0(28, i15);
                                i13 = 0;
                                break;
                        }
                    } else if (i11 != 0) {
                        i13 = 0;
                        qt.y0(28, -2);
                    } else if (i11 != 255) {
                        i13 = 0;
                        qt.y0(28, -3);
                    } else if (i11 >= 1) {
                        i13 = 0;
                        qt.y0(28, -1);
                    } else {
                        i13 = 0;
                        qt.y0(28, -1);
                    }
                    int[] iArr3 = new int[1];
                    iArr3[i13] = (i40 >> 7) & 1;
                    qt.y0(65, iArr3);
                    int[] iArr4 = new int[1];
                    iArr4[i13] = (i40 >> 6) & 1;
                    qt.y0(16, iArr4);
                    int[] iArr5 = new int[1];
                    iArr5[i13] = (i40 >> 5) & 1;
                    qt.y0(54, iArr5);
                    int[] iArr6 = new int[1];
                    iArr6[i13] = (i40 >> 4) & 1;
                    qt.y0(52, iArr6);
                    int[] iArr7 = new int[1];
                    iArr7[i13] = (i40 >> 3) & 1;
                    qt.y0(53, iArr7);
                    int[] iArr8 = new int[1];
                    iArr8[i13] = (i40 >> 2) & 1;
                    qt.y0(58, iArr8);
                    int[] iArr9 = new int[1];
                    iArr9[i13] = (i40 >> i13) & 1;
                    qt.y0(37, iArr9);
                    int[] iArr10 = new int[1];
                    iArr10[i13] = (i41 >> 4) & 3;
                    qt.y0(29, iArr10);
                    int[] iArr11 = new int[1];
                    iArr11[i13] = i41 & 3;
                    qt.y0(30, iArr11);
                    int[] iArr12 = new int[1];
                    iArr12[i13] = (i42 >> 2) & 1;
                    qt.y0(55, iArr12);
                    int[] iArr13 = new int[1];
                    iArr13[i13] = 3 & i42;
                    qt.y0(73, iArr13);
                    if (nt.a()) {
                        i14 = bArr[i2 + 9] & 255;
                        if (i14 == 255) {
                            u0.d.A3(i13);
                        } else {
                            u0.d.A3(((i14 & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        }
                    }
                    break;
                } else if (i43 > 8) {
                }
                i16 = i43;
                qt.y0(21, i16);
                qt.y0(10, (i34 >> 7) & 1);
                qt.y0(11, (i34 >> 6) & 1);
                qt.y0(12, (i34 >> 5) & 1);
                qt.y0(13, (i34 >> 3) & 1);
                qt.y0(14, (i34 >> 2) & 1);
                qt.y0(15, (i34 >> 1) & 1);
                qt.y0(67, i34 & 1);
                qt.y0(18, (i35 >> 7) & 1);
                qt.y0(19, (i35 >> 6) & 1);
                qt.y0(20, (i35 >> 5) & 1);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i37 = bArr[i38] & 255;
                    i39 = bArr[i36] & 255;
                }
                i9 = i37 & 255;
                i10 = nt.f8637c;
                if (i10 != 1) {
                    if (i9 < 1) {
                        i9 = 0;
                    } else if (i9 > 9) {
                        i9 = 9;
                    }
                    qt.y0(27, i9);
                } else if (i10 != 11) {
                    switch (i10) {
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                            if (i9 != 0) {
                                qt.y0(27, -2);
                            } else if (i9 != 255) {
                                qt.y0(27, -3);
                            } else if (i9 >= 1) {
                                qt.y0(27, -1);
                            } else {
                                qt.y0(27, -1);
                            }
                            break;
                        default:
                            if (i9 < 1) {
                                i9 = 0;
                            } else if (i9 > 15) {
                                i9 = 15;
                            }
                            qt.y0(27, i9);
                            break;
                    }
                } else if (i9 != 0) {
                    qt.y0(27, -2);
                } else if (i9 != 255) {
                    qt.y0(27, -3);
                } else if (i9 >= 1) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, -1);
                }
                i11 = i39 & 255;
                i12 = nt.f8637c;
                if (i12 != 1) {
                    i13 = 0;
                    if (i11 < 1) {
                        i11 = 0;
                    } else if (i11 > 9) {
                        i11 = 9;
                    }
                    qt.y0(28, i11);
                } else if (i12 != 11) {
                    switch (i12) {
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                            if (i11 != 0) {
                                i13 = 0;
                                qt.y0(28, -2);
                            } else if (i11 != 255) {
                                i13 = 0;
                                qt.y0(28, -3);
                            } else if (i11 >= 1) {
                                i13 = 0;
                                qt.y0(28, -1);
                            } else {
                                i13 = 0;
                                qt.y0(28, -1);
                            }
                            break;
                        default:
                            if (i11 < 1) {
                                i15 = 0;
                            } else {
                                i15 = 15;
                                if (i11 <= 15) {
                                    i15 = i11;
                                }
                            }
                            qt.y0(28, i15);
                            i13 = 0;
                            break;
                    }
                } else if (i11 != 0) {
                    i13 = 0;
                    qt.y0(28, -2);
                } else if (i11 != 255) {
                    i13 = 0;
                    qt.y0(28, -3);
                } else if (i11 >= 1) {
                    i13 = 0;
                    qt.y0(28, -1);
                } else {
                    i13 = 0;
                    qt.y0(28, -1);
                }
                int[] iArr14 = new int[1];
                iArr14[i13] = (i40 >> 7) & 1;
                qt.y0(65, iArr14);
                int[] iArr15 = new int[1];
                iArr15[i13] = (i40 >> 6) & 1;
                qt.y0(16, iArr15);
                int[] iArr16 = new int[1];
                iArr16[i13] = (i40 >> 5) & 1;
                qt.y0(54, iArr16);
                int[] iArr17 = new int[1];
                iArr17[i13] = (i40 >> 4) & 1;
                qt.y0(52, iArr17);
                int[] iArr18 = new int[1];
                iArr18[i13] = (i40 >> 3) & 1;
                qt.y0(53, iArr18);
                int[] iArr19 = new int[1];
                iArr19[i13] = (i40 >> 2) & 1;
                qt.y0(58, iArr19);
                int[] iArr20 = new int[1];
                iArr20[i13] = (i40 >> i13) & 1;
                qt.y0(37, iArr20);
                int[] iArr110 = new int[1];
                iArr110[i13] = (i41 >> 4) & 3;
                qt.y0(29, iArr110);
                int[] iArr111 = new int[1];
                iArr111[i13] = i41 & 3;
                qt.y0(30, iArr111);
                int[] iArr112 = new int[1];
                iArr112[i13] = (i42 >> 2) & 1;
                qt.y0(55, iArr112);
                int[] iArr113 = new int[1];
                iArr113[i13] = 3 & i42;
                qt.y0(73, iArr113);
                if (nt.a()) {
                    i14 = bArr[i2 + 9] & 255;
                    if (i14 == 255) {
                        u0.d.A3(i13);
                    } else {
                        u0.d.A3(((i14 & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    }
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i45 = i2 + 2;
                    int i46 = bArr[i45] & 255;
                    int i47 = i2 + 3;
                    int i48 = bArr[i47] & 255;
                    int i49 = i2 + 4;
                    int i50 = bArr[i49] & 255;
                    int i51 = i2 + 5;
                    int i52 = bArr[i51] & 255;
                    if (i46 == 0 && i48 == 0 && i50 == 0 && i52 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i46 || l0.c0.f13014h != i48 || l0.c0.f13015i != i50 || l0.c0.f13016j != i52) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i46;
                    l0.c0.f13014h = i48;
                    l0.c0.f13015i = i50;
                    l0.c0.f13016j = i52;
                    u0.d.D2(l0.c0.K0(bArr[i45] & 255));
                    u0.d.E2(l0.c0.K0(bArr[i47] & 255));
                    u0.d.F2(l0.c0.K0(bArr[i49] & 255));
                    u0.d.G2(l0.c0.K0(bArr[i51] & 255));
                }
                break;
            case 36:
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    int i53 = i2 + 2;
                    qt.y0(1, (bArr[i53] >> 7) & 1);
                    qt.y0(2, (bArr[i53] >> 6) & 1);
                } else {
                    int i54 = i2 + 2;
                    qt.y0(2, (bArr[i54] >> 7) & 1);
                    qt.y0(1, (bArr[i54] >> 6) & 1);
                }
                int i55 = i2 + 2;
                qt.y0(4, (bArr[i55] >> 5) & 1);
                qt.y0(3, (bArr[i55] >> 4) & 1);
                qt.y0(5, (bArr[i55] >> 3) & 1);
                qt.y0(0, (bArr[i55] >> 2) & 1);
                break;
            case 37:
                if (nt.a()) {
                    byte b5 = bArr[i2 + 2];
                    byte b6 = bArr[i2 + 3];
                    this.f8443f = b5 & 255;
                    int i56 = 0;
                    while (true) {
                        iArr2 = this.f8444g;
                        if (i56 < iArr2.length) {
                            int i57 = this.f8443f;
                            if (i57 != iArr2[i56][0]) {
                                i56++;
                            } else if (i57 != 0) {
                                this.f8442e = i56;
                            }
                        }
                    }
                    int i58 = this.f8443f;
                    if (i58 == 17) {
                        for (int i59 = 0; i59 < (b6 & 255); i59++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    } else if (i58 != 18) {
                        int i60 = b6 & 255;
                        if (i60 == 1) {
                            if (i56 < iArr2.length) {
                                l0.b0.l0(iArr2[i56][1], 0);
                            }
                        } else if (i60 == 0) {
                            int i61 = this.f8442e;
                            if (i61 < iArr2.length && i61 != 255) {
                                l0.b0.l0(iArr2[i61][1], 1);
                            }
                            this.f8442e = 255;
                        }
                    } else {
                        for (int i62 = 0; i62 < (b6 & 255); i62++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    }
                }
                break;
            case 38:
                int i63 = nt.f8637c;
                if (i63 == 13 || i63 == 14) {
                    int i64 = i2 + 2;
                    if (bArr[i64] != 0) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                    this.f8457t = bArr[i64];
                    int i65 = i2 + 3;
                    if (bArr[i65] == 0) {
                        qt.y0(Process.MEDIA_UID, 1);
                    } else if (bArr[i65] == 1) {
                        qt.y0(Process.MEDIA_UID, 0);
                    }
                    this.f8456s = bArr[i65];
                }
                break;
            case 39:
                int i66 = i2 + 2;
                qt.y0(99, (bArr[i66] >> 7) & 1);
                qt.y0(100, (bArr[i66] >> 6) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8445h.j();
        u0.c.f17386m.d(this.f8454q);
        l0.b0.p0(this.f8455r);
        qt.q0(this.f8447j);
        qt.q0(this.f8448k);
        w0.e.f17815a.d(this.f8447j);
        qt.p0(this.f8452o);
        qt.q0(this.f8451n);
        u0.c.f17388o.d(this.f8450m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 121) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                z.k.s(227, 168, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                g3(iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (T2(iArr, 2)) {
                z.k.s(227, -126, 4, iArr[0], iArr[1], iArr[2], iArr[3]);
                return;
            }
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = nt.f8637c;
            if (i3 != 14 && i3 != 13) {
                z.k.s(227, -126, 2, 1, 1);
                a.i.a0(100L);
                z.k.s(227, -126, 2, 1, 0);
                return;
            } else if (iArr[0] == 0) {
                qt.a(1);
                z.k.s(227, -124, 2, 2, 0);
                return;
            } else {
                if (iArr[0] == 1) {
                    qt.a(0);
                    z.k.s(227, -124, 2, 0, 0);
                    return;
                }
                return;
            }
        }
        if (i2 != 1005) {
            return;
        }
        a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE ints[0] ==== " + iArr[0]);
        int i4 = nt.f8637c;
        if (i4 == 14 || i4 == 13) {
            if (iArr[0] == 0) {
                z.k.s(227, -124, 2, 2, 3);
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, -124, 2, 2, 4);
                return;
            }
            if (iArr[0] == 2) {
                z.k.s(227, -124, 2, 2, 5);
                return;
            }
            if (iArr[0] == 3) {
                z.k.s(227, -124, 2, 2, 6);
                return;
            }
            if (iArr[0] == 32) {
                z.k.s(227, -124, 2, 2, 7);
                return;
            } else if (iArr[0] == 33) {
                z.k.s(227, -124, 2, 2, 8);
                return;
            } else {
                z.k.s(227, -124, 2, 2, 3);
                return;
            }
        }
        if (i4 == 16 || i4 == 17 || i4 == 10) {
            if (iArr[0] == 3) {
                g3(1);
                return;
            } else if (iArr[0] == 1) {
                g3(2);
                return;
            } else {
                if (iArr[0] == 2) {
                    g3(3);
                    return;
                }
                return;
            }
        }
        if (T2(iArr, 1)) {
            int i5 = iArr[0] & 255;
            if (i5 == 254) {
                z.k.s(227, -125, 1, 2);
                return;
            }
            if (i5 == 255) {
                z.k.s(227, -125, 1, 0);
                return;
            }
            if (iArr[0] == 0) {
                z.k.s(227, -124, 2, 2, 2);
                return;
            }
            if (iArr[0] == 4) {
                z.k.s(227, -124, 2, 2, 3);
                return;
            }
            if (iArr[0] == 5) {
                z.k.s(227, -124, 2, 2, 4);
                return;
            }
            if (iArr[0] == 6) {
                z.k.s(227, -124, 2, 2, 5);
            } else if (iArr[0] == 7) {
                z.k.s(227, -124, 2, 2, 6);
            } else {
                z.k.s(227, -124, 2, 2, 1);
            }
        }
    }

    public final void e3(byte b2, String str) {
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

    public final void f3(int i2) {
        z.k.s(227, 168, 2, i2, 1);
    }

    public final void g3(int i2) {
        if (i2 < 1) {
            i2 = 1;
        } else if (i2 > 3) {
            i2 = 3;
        }
        f8438u = i2;
        z.k.s(227, -126, 2, 2, i2);
        qt.y0(98, f8438u);
        int i3 = f8438u;
        if (i3 == 1) {
            qt.y0(Process.MEDIA_UID, 3);
        } else if (i3 == 2) {
            qt.y0(Process.MEDIA_UID, 1);
        } else if (i3 == 3) {
            qt.y0(Process.MEDIA_UID, 2);
        }
        int iB = this.f8445h.b(1, 0);
        int i4 = f8438u;
        if (iB != i4) {
            this.f8445h.g(1, i4);
        }
    }
}
