package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class dh extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4463c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4462b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4464d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f4465e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 76}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{13, 29}, new int[]{25, 13}, new int[]{16, 6}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 30}, new int[]{20, 31}, new int[]{21, 24}, new int[]{22, 1}, new int[]{23, 54}, new int[]{24, 25}, new int[]{27, 5}, new int[]{31, 16}, new int[]{32, 58}, new int[]{33, 38}, new int[]{34, 11}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4466f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4467g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f4468h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4469i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4470j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            if (dh.this.f4467g == millis && dh.this.f4468h == b2) {
                return;
            }
            dh.this.f4467g = millis;
            dh.this.f4468h = b2;
            byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b4 = (byte) (time.month + 1);
            byte b5 = (byte) time.monthDay;
            byte b6 = (byte) time.hour;
            byte b7 = (byte) time.minute;
            if (b2 == 1) {
                z.k.s(227, 198, 6, 0, 0, 0, 0, 0, 0);
            } else if (b2 == 0) {
                z.k.s(227, 198, 6, 0, 1, 0, 0, 0, 0);
            }
            z.k.s(227, 198, 6, 1, b3, b4, b5, b6, b7);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dh.this.a3(u0.b.K3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.F();
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f4466f);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 1;
        int i2 = nt.f8637c;
        if (i2 != 30) {
            if (i2 == 193) {
                mtVar.f8306a = null;
            }
        } else {
            u0.c.f17397x.a(this.f4469i, 1);
            w0.e.f17815a.a(this.f4470j, 1);
            u0.c.f17374a.a(this.f4470j, 1);
            u0.c.f17392s.a(this.f4470j, 1);
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4464d = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4465e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4464d;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4463c = i4;
                    break;
                }
                i4++;
            }
            switch (this.f4464d) {
                case 17:
                    for (int i6 = 0; i6 < (b4 & 255); i6++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                    break;
                case 18:
                    for (int i7 = 0; i7 < (b4 & 255); i7++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                    break;
                case 19:
                    for (int i8 = 0; i8 < (b4 & 255); i8++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    break;
                case 20:
                    for (int i9 = 0; i9 < (b4 & 255); i9++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    break;
                default:
                    if ((b4 & 255) == 1 && i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        l0.b0.l0(this.f4465e[i4][1], 1);
                        break;
                    }
                    break;
            }
            return;
        }
        if (b2 == 10) {
            int i10 = i2 + 3;
            int i11 = i2 + 4;
            int i12 = i2 + 2;
            qt.y0(29, (((bArr[i10] & 255) | ((bArr[i11] << 8) & 65280)) & 65535) | ((bArr[i12] & 1) << 16));
            qt.j(bArr[i10], bArr[i11], (bArr[i12] & 1) != 1 ? 1 : 0, 480);
            return;
        }
        if (b2 == 53) {
            qt.y0(7, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            int i13 = i2 + 6;
            int i14 = i2 + 7;
            qt.y0(8, ((bArr[i13] << 8) & 65280) | (bArr[i14] & 255));
            qt.y0(1032, ((bArr[i13] << 8) & 65280) | (bArr[i14] & 255));
            u0.d.A3(this.f4462b == 1 ? (((bArr[i2 + 8] & 255) * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768 : ((bArr[i2 + 8] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            qt.y0(9, ((bArr[i2 + 12] << 0) & 255) | ((bArr[i2 + 9] << 24) & (-16777216)) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 11] << 8) & 65280));
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 4) {
            if (nt.f8637c == 193) {
                u0.d.R2(l0.c0.z1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.z1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.z1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.z1(bArr[i2 + 5] & 255));
                return;
            }
            u0.d.R2(l0.c0.y1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.y1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.y1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.y1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 5) {
            int i15 = i2 + 2;
            int i16 = bArr[i15] & 255;
            int i17 = i2 + 3;
            int i18 = bArr[i17] & 255;
            int i19 = i2 + 4;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 5;
            int i22 = bArr[i21] & 255;
            if (i16 == 0 && i18 == 0 && i20 == 0 && i22 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i16;
            l0.c0.f13014h = i18;
            l0.c0.f13015i = i20;
            l0.c0.f13016j = i22;
            if (nt.f8637c == 193) {
                u0.d.D2(l0.c0.z1(bArr[i15] & 255));
                u0.d.E2(l0.c0.z1(bArr[i17] & 255));
                u0.d.F2(l0.c0.z1(bArr[i19] & 255));
                u0.d.G2(l0.c0.z1(bArr[i21] & 255));
                return;
            }
            u0.d.D2(l0.c0.y1(bArr[i15] & 255));
            u0.d.E2(l0.c0.y1(bArr[i17] & 255));
            u0.d.F2(l0.c0.y1(bArr[i19] & 255));
            u0.d.G2(l0.c0.y1(bArr[i21] & 255));
            return;
        }
        if (b2 == 6) {
            int i23 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i23 >> 6) & 1);
                qt.y0(1, (i23 >> 7) & 1);
            } else {
                qt.y0(2, (i23 >> 7) & 1);
                qt.y0(1, (i23 >> 6) & 1);
            }
            qt.y0(4, (i23 >> 5) & 1);
            qt.y0(3, (i23 >> 4) & 1);
            qt.y0(5, (i23 >> 3) & 1);
            qt.y0(0, (i23 >> 2) & 1);
            return;
        }
        if (b2 == 55) {
            qt.y0(10, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(11, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(12, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
            return;
        }
        if (b2 != 56) {
            return;
        }
        int i24 = bArr[i2 + 2] & 255;
        int i25 = bArr[i2 + 3] & 255;
        int i26 = bArr[i2 + 4] & 255;
        byte b5 = bArr[i2 + 5];
        int i27 = bArr[i2 + 6] & 255;
        int i28 = bArr[i2 + 7] & 255;
        int i29 = bArr[i2 + 8] & 255;
        int i30 = bArr[i2 + 9] & 255;
        int i31 = bArr[i2 + 10] & 255;
        int i32 = bArr[i2 + 11] & 255;
        qt.y0(14, i24);
        qt.y0(15, (i25 >> 7) & 1);
        int i33 = (i25 >> 6) & 1;
        qt.y0(16, i33);
        this.f4462b = i33;
        qt.y0(17, (i25 >> 4) & 3);
        qt.y0(18, (i25 >> 3) & 1);
        qt.y0(19, (i25 >> 2) & 1);
        qt.y0(20, (i25 >> 0) & 3);
        qt.y0(21, i26);
        qt.y0(22, (i27 >> 4) & 15);
        qt.y0(23, 15 & (i27 >> 0));
        qt.y0(28, i28 & 255);
        qt.y0(24, i29);
        qt.y0(25, i30);
        qt.y0(26, i31);
        qt.y0(27, i32);
        int i34 = i2 + 12;
        qt.y0(30, (bArr[i34] >> 7) & 1);
        qt.y0(31, (bArr[i34] >> 5) & 3);
        qt.y0(32, (bArr[i34] >> 4) & 1);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f4466f);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        u0.c.f17397x.d(this.f4469i);
        w0.e.f17815a.d(this.f4470j);
        u0.c.f17374a.d(this.f4470j);
        u0.c.f17392s.d(this.f4470j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 33) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 198, 2, iArr[0], iArr[1]);
    }

    public final void a3(int i2) {
        int i3 = 10;
        if (i2 == 0) {
            i3 = 1;
        } else if (i2 != 18) {
            switch (i2) {
                case 3:
                    i3 = 16;
                    break;
                case 4:
                    i3 = 2;
                    break;
                case 5:
                    i3 = 5;
                    break;
                case 6:
                    i3 = 4;
                    break;
                case 7:
                    i3 = 3;
                    break;
                case 8:
                    break;
                default:
                    switch (i2) {
                        case 12:
                            i3 = 7;
                            break;
                        case 13:
                            i3 = 11;
                            break;
                        case 14:
                            i3 = 9;
                            break;
                        case 15:
                            break;
                        case 16:
                            i3 = 8;
                            break;
                        default:
                            i3 = 255;
                            break;
                    }
                    break;
            }
        } else {
            i3 = 6;
        }
        if (i3 != 255) {
            z.k.s(227, 198, 2, 12, i3);
        }
    }
}
