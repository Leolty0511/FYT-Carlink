package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class fm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5251c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5252d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{13, 29}, new int[]{16, 6}, new int[]{24, 0}, new int[]{25, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5253e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f5254f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f5255g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5256h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.H();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            byte b7 = (byte) time.minute;
            if (fm.this.f5255g != b2) {
                z.k.s(227, -58, 6, 0, b2, 0, 0, 0, 0);
                fm.this.f5255g = b2;
            }
            if (fm.this.f5254f != millis) {
                z.k.s(227, -58, 6, 1, b3, b4, b5, b6, b7);
                fm.this.f5254f = millis;
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
        mtVar.f8314i = 1;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        w0.e.f17815a.a(this.f5253e, 1);
        w0.e.f17819e.a(this.f5253e, 1);
        u0.c.f17392s.a(this.f5253e, 1);
        u0.c.f17374a.a(this.f5253e, 1);
        qt.z(this.f5256h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5251c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f5252d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f5251c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f5250b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f5250b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f5250b = 255;
                }
                return;
            }
        }
        if (b2 == 3) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = bArr[i2 + 3] & 255;
            qt.y0(10, (i8 >> 7) & 1);
            qt.y0(11, (i8 >> 6) & 1);
            qt.y0(12, (i8 >> 5) & 1);
            qt.y0(13, (i8 >> 4) & 1);
            qt.y0(14, (i8 >> 2) & 1);
            qt.y0(15, (i8 >> 1) & 1);
            qt.y0(16, i8 & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                qt.y0(22, (i9 >> 7) & 1);
                qt.y0(23, (i9 >> 6) & 1);
                qt.y0(24, (i9 >> 5) & 1);
                qt.y0(50, (i9 >> 4) & 1);
                int i10 = i2 + 8;
                qt.y0(18, (bArr[i10] >> 7) & 1);
                qt.y0(19, (bArr[i10] >> 6) & 1);
                qt.y0(20, (bArr[i10] >> 5) & 1);
                qt.y0(49, (bArr[i10] >> 4) & 1);
            } else {
                qt.y0(18, (i9 >> 7) & 1);
                qt.y0(19, (i9 >> 6) & 1);
                qt.y0(20, (i9 >> 5) & 1);
                qt.y0(49, (i9 >> 4) & 1);
                int i11 = i2 + 8;
                qt.y0(22, (bArr[i11] >> 7) & 1);
                qt.y0(23, (bArr[i11] >> 6) & 1);
                qt.y0(24, (bArr[i11] >> 5) & 1);
                qt.y0(50, (bArr[i11] >> 4) & 1);
            }
            qt.y0(21, i9 & 15);
            int i12 = i2 + 4;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 5;
            int i15 = bArr[i14] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i13 = bArr[i14] & 255;
                i15 = bArr[i12] & 255;
            }
            if (i13 == 0) {
                qt.y0(27, -2);
            } else if (i13 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i13);
            }
            if (i15 == 0) {
                qt.y0(28, -2);
            } else if (i15 == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i15);
            }
            int i16 = i2 + 6;
            qt.y0(60, (bArr[i16] >> 7) & 1);
            qt.y0(61, (bArr[i16] >> 6) & 1);
            qt.y0(54, (bArr[i16] >> 5) & 1);
            qt.y0(59, (bArr[i16] >> 2) & 1);
            qt.y0(55, (bArr[i16] >> 1) & 1);
            qt.y0(37, (bArr[i16] >> 0) & 1);
            return;
        }
        if (b2 == 4) {
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.b1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.b1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 5) {
            int i17 = i2 + 2;
            int i18 = bArr[i17] & 255;
            int i19 = i2 + 3;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 4;
            int i22 = bArr[i21] & 255;
            int i23 = i2 + 5;
            int i24 = bArr[i23] & 255;
            if (i18 == 0 && i20 == 0 && i22 == 0 && i24 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i18 || l0.c0.f13014h != i20 || l0.c0.f13015i != i22 || l0.c0.f13016j != i24) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i18;
            l0.c0.f13014h = i20;
            l0.c0.f13015i = i22;
            l0.c0.f13016j = i24;
            u0.d.D2(l0.c0.b1(bArr[i17] & 255));
            u0.d.E2(l0.c0.b1(bArr[i19] & 255));
            u0.d.F2(l0.c0.b1(bArr[i21] & 255));
            u0.d.G2(l0.c0.b1(bArr[i23] & 255));
            return;
        }
        if (b2 == 6) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i25 = i2 + 2;
                qt.y0(1, (bArr[i25] >> 7) & 1);
                qt.y0(2, (bArr[i25] >> 6) & 1);
            } else {
                int i26 = i2 + 2;
                qt.y0(1, (bArr[i26] >> 6) & 1);
                qt.y0(2, (bArr[i26] >> 7) & 1);
            }
            int i27 = i2 + 2;
            qt.y0(3, (bArr[i27] >> 4) & 1);
            qt.y0(4, (bArr[i27] >> 5) & 1);
            qt.y0(5, (bArr[i27] >> 3) & 1);
            qt.y0(0, (bArr[i27] >> 2) & 1);
            return;
        }
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
            return;
        }
        if (b2 == 53) {
            qt.y0(99, bArr[i2 + 2] & 255);
            qt.y0(100, bArr[i2 + 3] & 255);
            qt.y0(101, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(102, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(103, ((bArr[i2 + 9] << 24) & (-16777216)) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            int i28 = bArr[i2 + 8] & 255;
            if (i28 == 0) {
                u0.d.A3(0);
                return;
            } else {
                SystemProperties.getInt("persist.fyt.temperature", 0);
                u0.d.B3(i28);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 55:
                qt.y0(104, bArr[i2 + 2] & 255);
                qt.y0(105, bArr[i2 + 3] & 255);
                qt.y0(106, bArr[i2 + 4] & 255);
                qt.y0(107, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
                qt.y0(108, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(109, bArr[i2 + 9] & 255);
                qt.y0(110, bArr[i2 + 10] & 255);
                qt.y0(111, bArr[i2 + 11] & 255);
                qt.y0(112, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                qt.y0(113, (bArr[i2 + 15] & 255) | ((bArr[i2 + 14] << 8) & 65280));
                break;
            case 56:
                qt.y0(114, bArr[i2 + 2] & 255);
                int i29 = i2 + 3;
                qt.y0(115, (bArr[i29] >> 7) & 1);
                qt.y0(116, (bArr[i29] >> 6) & 1);
                qt.y0(37, (bArr[i29] >> 6) & 1);
                qt.y0(117, (bArr[i29] >> 4) & 3);
                qt.y0(118, (bArr[i29] >> 0) & 15);
                int i30 = i2 + 4;
                qt.y0(119, (bArr[i30] >> 7) & 1);
                qt.y0(120, (bArr[i30] >> 6) & 1);
                qt.y0(121, (bArr[i30] >> 5) & 1);
                qt.y0(122, (bArr[i30] >> 4) & 1);
                qt.y0(123, (bArr[i30] >> 3) & 1);
                qt.y0(124, (bArr[i30] >> 2) & 1);
                qt.y0(125, (bArr[i30] >> 1) & 1);
                qt.y0(126, (bArr[i2 + 5] >> 0) & 15);
                qt.y0(127, bArr[i2 + 6] & 255);
                break;
            case 57:
                qt.y0(128, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                qt.y0(129, bArr[i2 + 4] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        w0.e.f17815a.d(this.f5253e);
        w0.e.f17819e.d(this.f5253e);
        u0.c.f17392s.d(this.f5253e);
        u0.c.f17374a.d(this.f5253e);
        qt.q0(this.f5256h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 130) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -1, 1, iArr[0]);
        }
        if (i2 != 1) {
            return;
        }
        if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            z.k.s(227, -58, 2, iArr[0], iArr[1]);
            return;
        }
        switch (iArr[1]) {
            case 14:
                z.k.s(227, -58, 2, iArr[0], 17);
                break;
            case 15:
                z.k.s(227, -58, 2, iArr[0], 18);
                break;
            case 16:
                z.k.s(227, -58, 2, iArr[0], 19);
                break;
            case 17:
                z.k.s(227, -58, 2, iArr[0], 14);
                break;
            case 18:
                z.k.s(227, -58, 2, iArr[0], 15);
                break;
            case 19:
                z.k.s(227, -58, 2, iArr[0], 16);
                break;
            default:
                z.k.s(227, -58, 2, iArr[0], iArr[1]);
                break;
        }
    }
}
