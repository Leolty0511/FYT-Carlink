package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class sj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10288b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10291e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10289c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10290d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 3}, new int[]{9, 4}, new int[]{11, 2}, new int[]{12, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10292f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10293g = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{6, 6}, new int[]{9, 12}, new int[]{32, 1}, new int[]{36, 54}, new int[]{37, 1}, new int[]{40, 18}, new int[]{47, 9}, new int[]{51, 21}, new int[]{55, 55}, new int[]{57, 25}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10294h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10295i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10296j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10297k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10298l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10299m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f10300n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f10301o = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sj sjVar = sj.this;
            sjVar.f10294h = 0;
            sjVar.f10295i = 0;
            l0.b0.b(sjVar.f10298l);
            sj.this.f10296j = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sj sjVar = sj.this;
            int i2 = sjVar.f10296j - 1;
            sjVar.f10296j = i2;
            if (i2 <= 0) {
                l0.b0.p0(sjVar.f10298l);
                sj.this.f10296j = 5;
            }
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 1114555:
                        z.k.s(227, 2, 36, 4, 31);
                        break;
                    case 4391356:
                    case 4456892:
                        z.k.s(227, 2, 36, 6, 31);
                        break;
                    case 4522428:
                    case 4587964:
                        z.k.s(227, 2, 36, 7, 31);
                        break;
                    case 5636539:
                    case 5702075:
                        z.k.s(227, 2, 36, 5, 31);
                        break;
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (sj.this.f10300n == millis && sj.this.f10301o == zIs24HourFormat) {
                return;
            }
            sj.this.f10300n = millis;
            sj.this.f10301o = zIs24HourFormat ? 1 : 0;
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, zIs24HourFormat ? 1 : 0, 0, 0, 0, 0);
        }
    }

    public static int a3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 7;
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
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        qt.z(this.f10299m);
        u0.c.f17386m.a(this.f10297k, 1);
        switch (nt.f8633a) {
            case 4391356:
            case 4456892:
            case 4522428:
            case 4587964:
                this.f7886a.f8314i = 1;
                break;
        }
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
            int i9 = i2 + 2;
            qt.y0(133, (bArr[i9] >> 5) & 7);
            qt.y0(134, (bArr[i9] >> 2) & 7);
            qt.y0(135, (bArr[i9] >> 0) & 3);
            int i10 = i2 + 3;
            qt.y0(136, (bArr[i10] >> 7) & 1);
            qt.y0(137, (bArr[i10] >> 5) & 3);
            qt.y0(138, (bArr[i10] >> 4) & 1);
            qt.y0(139, (bArr[i10] >> 3) & 1);
            qt.y0(140, (bArr[i10] >> 2) & 1);
            qt.y0(141, (bArr[i10] >> 1) & 1);
            qt.y0(142, (bArr[i10] >> 0) & 1);
            int i11 = i2 + 4;
            qt.y0(143, (bArr[i11] >> 4) & 15);
            qt.y0(144, (bArr[i11] >> 3) & 1);
            qt.y0(145, (bArr[i11] >> 2) & 1);
            qt.y0(146, (bArr[i11] >> 1) & 1);
            qt.y0(147, (bArr[i11] >> 0) & 1);
            int i12 = i2 + 5;
            qt.y0(148, (bArr[i12] >> 7) & 1);
            qt.y0(149, (bArr[i12] >> 6) & 1);
            qt.y0(150, (bArr[i12] >> 5) & 1);
            qt.y0(151, (bArr[i12] >> 4) & 1);
            int i13 = i2 + 7;
            qt.y0(126, (bArr[i13] >> 4) & 15);
            qt.y0(127, (bArr[i13] >> 0) & 15);
            qt.y0(128, bArr[i2 + 8] & 255);
            qt.y0(129, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == -24) {
            int i14 = i2 + 2;
            qt.y0(130, (bArr[i14] >> 4) & 15);
            qt.y0(131, (bArr[i14] >> 2) & 3);
            qt.y0(132, (bArr[i2 + 3] >> 0) & 255);
            if (bArr[i2 + 4] == 0 && bArr[i2 + 5] == 0 && bArr[i2 + 6] == 0 && bArr[i2 + 7] == 0 && bArr[i2 + 8] == 0) {
                qt.a(0);
                return;
            } else {
                qt.a(1);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            int i15 = i2 + 2;
            if (((bArr[i15] >> 1) & 1) == 1) {
                int i16 = i2 + 4;
                o1.x.C(nt.f8643f, 1049, new int[]{11, ((((bArr[i16] >> 0) & 1) << 3) & 8) | ((((bArr[i16] >> 1) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64)}, null, null);
                l0.c0.N1((bArr[i16] >> 0) & 1, (bArr[i16] >> 1) & 1, 0);
            }
            if (((bArr[i15] >> 5) & 1) == 1) {
                qt.a((bArr[i2 + 3] >> 1) & 1);
                return;
            }
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            int i17 = i2 + 8;
            byte b8 = bArr[i17];
            int i18 = i2 + 9;
            byte b9 = bArr[i18];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(62, (b3 >> 2) & 1);
            qt.y0(11, (b3 >> 0) & 3);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(13, (b4 >> 3) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            qt.y0(30, (b5 >> 2) & 3);
            qt.y0(29, (b5 >> 0) & 3);
            if (b6 == 1) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
            } else if (b6 == 3) {
                i7 = 0;
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (b6 == 5) {
                i7 = 0;
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (b6 != 6) {
                switch (b6) {
                    case 11:
                        i7 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    case 12:
                        i7 = 0;
                        i4 = 0;
                        i5 = 1;
                        i6 = i5;
                        break;
                    case 13:
                        i7 = 0;
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 14:
                        i7 = 0;
                        i4 = 1;
                        i5 = i4;
                        i6 = i5;
                        break;
                    default:
                        i7 = 0;
                        i4 = 0;
                        i5 = i4;
                        i6 = i5;
                        break;
                }
            } else {
                i7 = 0;
                i5 = 0;
                i6 = 0;
                i4 = 1;
            }
            qt.y0(49, i7);
            qt.y0(19, i4);
            qt.y0(20, i5);
            qt.y0(18, i6);
            qt.y0(21, b7 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b8 = bArr[i18];
                b9 = bArr[i17];
            }
            byte b10 = b9;
            int i19 = b8 & 255;
            if (i19 == 254) {
                qt.y0(27, -2);
            } else if (i19 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i19);
            }
            int i20 = b10 & 255;
            if (i20 == 254) {
                qt.y0(28, -2);
            } else if (i20 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i20);
            }
            u0.d.A3(((bArr[i2 + 13] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            return;
        }
        if (b2 == 65) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(bArr[i2 + 3] & 255);
            u0.d.T2(bArr[i2 + 4] & 255);
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            int i21 = i2 + 6;
            int i22 = bArr[i21] & 255;
            int i23 = i2 + 7;
            int i24 = bArr[i23] & 255;
            int i25 = i2 + 8;
            int i26 = bArr[i25] & 255;
            int i27 = i2 + 9;
            int i28 = bArr[i27] & 255;
            if (l0.c0.f13013g != i22 || l0.c0.f13014h != i24 || l0.c0.f13015i != i26 || l0.c0.f13016j != i28) {
                l0.c0.f13013g = i22;
                l0.c0.f13014h = i24;
                l0.c0.f13015i = i26;
                l0.c0.f13016j = i28;
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
            }
            u0.d.D2(a3(bArr[i21] & 255));
            u0.d.E2(bArr[i23] & 255);
            u0.d.F2(bArr[i25] & 255);
            u0.d.G2(a3(bArr[i27] & 255));
            return;
        }
        if (b2 == 17) {
            byte b11 = bArr[i2 + 4];
            byte b12 = bArr[i2 + 5];
            this.f10289c = b11 & 255;
            int i29 = 0;
            while (true) {
                iArr = this.f10290d;
                if (i29 >= iArr.length) {
                    break;
                }
                int i30 = this.f10289c;
                if (i30 == iArr[i29][0]) {
                    if (i30 == 0) {
                        break;
                    }
                    this.f10288b = i29;
                    break;
                }
                i29++;
            }
            int i31 = b12 & 255;
            if (i31 == 1) {
                if (i29 < iArr.length) {
                    l0.b0.l0(iArr[i29][1], 0);
                }
            } else if (i31 == 0) {
                int i32 = this.f10288b;
                if (i32 < iArr.length && i32 != 255) {
                    l0.b0.l0(iArr[i32][1], 1);
                }
                this.f10288b = 255;
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b2 == 18) {
            byte b13 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b13 >> 6) & 1);
                qt.y0(2, (b13 >> 7) & 1);
            } else {
                qt.y0(1, (b13 >> 7) & 1);
                qt.y0(2, (b13 >> 6) & 1);
            }
            qt.y0(3, (b13 >> 5) & 1);
            qt.y0(4, (b13 >> 4) & 1);
            qt.y0(5, (b13 >> 3) & 1);
            qt.y0(113, bArr[i2 + 2] & 255);
            qt.y0(114, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 33) {
            byte b14 = bArr[i2 + 3];
            this.f10291e = bArr[i2 + 2] & 255;
            int i33 = 0;
            while (true) {
                iArr2 = this.f10293g;
                if (i33 >= iArr2.length) {
                    break;
                }
                int i34 = this.f10291e;
                if (i34 == iArr2[i33][0]) {
                    if (i34 == 0) {
                        break;
                    }
                    this.f10292f = i33;
                    break;
                }
                i33++;
            }
            int i35 = b14 & 255;
            if (i35 == 1) {
                if (i33 < iArr2.length) {
                    l0.b0.l0(iArr2[i33][1], 0);
                    return;
                }
                return;
            } else {
                if (i35 == 0) {
                    int i36 = this.f10292f;
                    if (i36 < iArr2.length && i36 != 255) {
                        l0.b0.l0(iArr2[i36][1], 1);
                    }
                    this.f10292f = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 34) {
            if (b2 == 62) {
                qt.y0(117, (((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 16777215);
                qt.y0(118, ((65280 & (bArr[i2 + 5] << 8)) | (bArr[i2 + 6] & 255)) & 65535);
                qt.y0(119, bArr[i2 + 7] & 255);
                qt.y0(120, bArr[i2 + 8] & 255);
                qt.y0(121, bArr[i2 + 9] & 255);
                qt.y0(122, bArr[i2 + 10] & 255);
                qt.y0(123, bArr[i2 + 11] & 255);
                qt.y0(124, bArr[i2 + 12] & 255);
                qt.y0(125, bArr[i2 + 13] & 255);
                return;
            }
            if (b2 == 63) {
                qt.y0(115, bArr[i2 + 2] & 255);
                qt.y0(116, ((bArr[i2 + 4] & 255) | (65280 & (bArr[i2 + 3] << 8))) & 65535);
                return;
            }
            if (b2 == 72) {
                qt.y0(99, bArr[i2 + 2] & 255);
                qt.y0(100, bArr[i2 + 3] & 255);
                qt.y0(101, bArr[i2 + 4] & 255);
                qt.y0(102, bArr[i2 + 5] & 255);
                qt.y0(103, bArr[i2 + 6] & 255);
                qt.y0(104, bArr[i2 + 7] & 255);
                qt.y0(105, bArr[i2 + 8] & 255);
                qt.y0(106, bArr[i2 + 9] & 255);
                return;
            }
            if (b2 != 73) {
                return;
            }
            byte b15 = bArr[i2 + 2];
            byte b16 = bArr[i2 + 3];
            byte b17 = bArr[i2 + 5];
            byte b18 = bArr[i2 + 7];
            byte b19 = bArr[i2 + 9];
            qt.y0(111, b15 & 255);
            qt.y0(107, b16 & 255);
            qt.y0(108, b17 & 255);
            qt.y0(109, b18 & 255);
            qt.y0(110, b19 & 255);
            return;
        }
        byte b20 = bArr[i2 + 2];
        byte b21 = bArr[i2 + 3];
        if (b20 == 1) {
            int i37 = this.f10294h;
            if (b21 != i37) {
                if (b21 > i37) {
                    for (int i38 = 0; i38 < b21 - this.f10294h; i38++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b21 < i37) {
                    for (int i39 = 0; i39 < this.f10294h - b21; i39++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f10294h = b21;
                return;
            }
            return;
        }
        if ((b20 == 2 || b20 == 3) && b21 != (i8 = this.f10295i)) {
            if (b21 > i8) {
                for (int i40 = 0; i40 < b21 - this.f10295i; i40++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
            } else if (b21 < i8) {
                for (int i41 = 0; i41 < this.f10295i - b21; i41++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
            }
            this.f10295i = b21;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10299m);
        u0.c.f17386m.d(this.f10297k);
        l0.b0.p0(this.f10298l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 152) {
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
                z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 2, -116, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 1005) {
            if (i2 == 1029 && T2(iArr, 2)) {
                int iW = (iArr[1] * 800) / a.f.w();
                int i3 = (iArr[2] * 480) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 6, 44, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 6, 44, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (iArr == null || iArr.length < 1) {
            return;
        }
        int i4 = iArr[0] & 255;
        if (i4 == 0) {
            z.k.s(227, 2, -3, 3, 4);
            return;
        }
        if (i4 == 1) {
            z.k.s(227, 2, -3, 3, 5);
        } else if (i4 == 2) {
            z.k.s(227, 2, -3, 3, 6);
        } else {
            if (i4 != 3) {
                return;
            }
            z.k.s(227, 2, -3, 3, 7);
        }
    }
}
