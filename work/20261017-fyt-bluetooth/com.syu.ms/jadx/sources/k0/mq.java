package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class mq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8277c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8278d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 6}, new int[]{10, 9}, new int[]{11, 29}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8279e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 152, 7, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) time.hour, (byte) time.minute, (byte) time.second, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay);
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
        mtVar.f8315j = 0;
        mtVar.f8319n = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f8279e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            qt.i(bArr[i2 + 3], bArr[i2 + 4], false, 540);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 53) {
            int i4 = i2 + 2;
            qt.y0(98, (bArr[i4] >> 7) & 1);
            qt.y0(99, (bArr[i4] >> 6) & 1);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8277c = b3 & 255;
                int i5 = 0;
                while (true) {
                    iArr = this.f8278d;
                    if (i5 < iArr.length) {
                        int i6 = this.f8277c;
                        if (i6 != iArr[i5][0]) {
                            i5++;
                        } else if (i6 != 0) {
                            this.f8276b = i5;
                        }
                    }
                }
                int i7 = b4 & 255;
                if (i7 != 1) {
                    if (i7 == 0) {
                        int i8 = this.f8276b;
                        if (i8 < iArr.length && i8 != 255) {
                            l0.b0.l0(iArr[i8][1], 1);
                        }
                        this.f8276b = 255;
                    }
                } else if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
                break;
            case 33:
                int i9 = i2 + 2;
                qt.y0(10, (bArr[i9] >> 7) & 1);
                qt.y0(11, (bArr[i9] >> 6) & 1);
                qt.y0(12, (bArr[i9] >> 5) & 1);
                qt.y0(13, (bArr[i9] >> 4) & 1);
                qt.y0(16, (bArr[i9] >> 3) & 1);
                qt.y0(15, (bArr[i9] >> 1) & 1);
                int i10 = i2 + 3;
                qt.y0(18, (bArr[i10] >> 7) & 1);
                qt.y0(19, (bArr[i10] >> 6) & 1);
                qt.y0(20, (bArr[i10] >> 5) & 1);
                qt.y0(21, (bArr[i10] >> 0) & 15);
                int i11 = i2 + 4;
                int i12 = bArr[i11] & 255;
                if (i12 == 0) {
                    qt.y0(27, -2);
                } else if (i12 != 31) {
                    qt.y0(27, bArr[i11] & 255);
                } else {
                    qt.y0(27, -3);
                }
                int i13 = i2 + 5;
                if ((bArr[i13] & 255) == 0 || (bArr[i13] & 255) == 255) {
                    u0.d.A3(0);
                } else {
                    int i14 = ((bArr[i13] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                    if ((bArr[i2 + 6] & 255) == 15) {
                        i14 = (268435456 | i14) & (-1);
                    }
                    u0.d.B3(i14);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.y1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.y1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.y1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.y1(bArr[i2 + 5] & 255));
                break;
            case 35:
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
                u0.d.D2(l0.c0.y1(bArr[i15] & 255));
                u0.d.E2(l0.c0.y1(bArr[i17] & 255));
                u0.d.F2(l0.c0.y1(bArr[i19] & 255));
                u0.d.G2(l0.c0.y1(bArr[i21] & 255));
                break;
            case 36:
                int i23 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i23 >> 0) & 1);
                    qt.y0(1, (i23 >> 1) & 1);
                } else {
                    qt.y0(2, (i23 >> 1) & 1);
                    qt.y0(1, (i23 >> 0) & 1);
                }
                qt.y0(4, (i23 >> 3) & 1);
                qt.y0(3, (i23 >> 2) & 1);
                qt.y0(5, (i23 >> 4) & 1);
                qt.y0(0, (i23 >> 5) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f8279e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }
}
