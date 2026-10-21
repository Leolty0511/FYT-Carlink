package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class bm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3758c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3759d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3760e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -58, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, !DateFormat.is24HourFormat(App.c()) ? 1 : 0);
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
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f3760e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3758c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3759d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3758c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3757b = i4;
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
                    int i7 = this.f3757b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f3757b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 33) {
            if (b2 == 36) {
                int i8 = bArr[i2 + 3] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i8 >> 1) & 1);
                    qt.y0(2, (i8 >> 0) & 1);
                } else {
                    qt.y0(1, (i8 >> 0) & 1);
                    qt.y0(2, (i8 >> 1) & 1);
                }
                qt.y0(4, (i8 >> 3) & 1);
                qt.y0(3, (i8 >> 2) & 1);
                return;
            }
            if (b2 == 38) {
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 540);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (b2 != 56) {
                    return;
                }
                int i9 = i2 + 2;
                qt.y0(98, (bArr[i9] >> 0) & 1);
                qt.y0(99, (bArr[i9] >> 1) & 1);
                return;
            }
        }
        int i10 = bArr[i2 + 2] & 255;
        int i11 = bArr[i2 + 3] & 255;
        int i12 = bArr[i2 + 4] & 255;
        int i13 = bArr[i2 + 5] & 255;
        int i14 = bArr[i2 + 6] & 255;
        qt.y0(10, (i10 >> 7) & 1);
        qt.y0(11, (i10 >> 6) & 1);
        qt.y0(12, (i10 >> 5) & 1);
        qt.y0(13, (i10 >> 4) & 1);
        qt.y0(16, (i10 >> 3) & 1);
        qt.y0(65, (i10 >> 1) & 1);
        qt.y0(18, (i11 >> 7) & 1);
        qt.y0(19, (i11 >> 6) & 1);
        qt.y0(20, (i11 >> 5) & 1);
        qt.y0(21, i11 & 15);
        qt.y0(27, i12 & 255);
        if (i14 == 240) {
            u0.d.A3((i13 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        } else if (i14 == 15) {
            u0.d.B3((268435456 | ((i13 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR)) & (-1));
        } else {
            u0.d.B3(0);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f3760e);
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
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 198, 2, iArr[0], iArr[1]);
    }
}
