package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class yo extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12607c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12608d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 13}, new int[]{8, 26}, new int[]{9, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f12609e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 198, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, !DateFormat.is24HourFormat(App.c()) ? 1 : 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f12609e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12607c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f12608d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f12607c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f12606b = i4;
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
                    int i7 = this.f12606b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f12606b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 != 39) {
            if (b2 == 41) {
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 10752);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 != 56) {
                if (b2 != 53) {
                    if (b2 != 54) {
                        return;
                    }
                    qt.x0(110, new String(bArr, i2 + 2, 17, Charset.forName("ascii")));
                    return;
                } else {
                    int i8 = i2 + 8;
                    u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((bArr[i8] * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : ((bArr[i8] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    qt.y0(109, (bArr[i2 + 11] & 255) | ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280));
                    return;
                }
            }
            int i9 = i2 + 2;
            qt.y0(98, (bArr[i9] >> 7) & 1);
            qt.y0(99, (bArr[i9] >> 6) & 1);
            qt.y0(100, (bArr[i9] >> 5) & 1);
            qt.y0(101, (bArr[i9] >> 4) & 1);
            qt.y0(102, (bArr[i9] >> 3) & 1);
            qt.y0(103, (bArr[i9] >> 2) & 1);
            qt.y0(104, (bArr[i9] >> 1) & 1);
            qt.y0(105, (bArr[i9] >> 0) & 1);
            int i10 = i2 + 3;
            qt.y0(106, (bArr[i10] >> 7) & 1);
            qt.y0(107, (bArr[i10] >> 5) & 3);
            qt.y0(108, (bArr[i10] >> 3) & 3);
            return;
        }
        int i11 = i2 + 2;
        qt.y0(10, (bArr[i11] >> 7) & 1);
        qt.y0(11, (bArr[i11] >> 6) & 1);
        qt.y0(12, (bArr[i11] >> 5) & 1);
        qt.y0(13, (bArr[i11] >> 4) & 1);
        qt.y0(65, (bArr[i11] >> 1) & 1);
        qt.y0(16, (bArr[i11] >> 0) & 1);
        int i12 = i2 + 3;
        qt.y0(18, (bArr[i12] >> 7) & 1);
        qt.y0(19, (bArr[i12] >> 6) & 1);
        qt.y0(20, (bArr[i12] >> 5) & 1);
        qt.y0(21, (bArr[i12] >> 0) & 31);
        qt.y0(49, (bArr[i2 + 6] >> 3) & 1);
        int i13 = i2 + 4;
        int i14 = bArr[i13] & 255;
        int i15 = i2 + 5;
        int i16 = bArr[i15] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i14 = bArr[i15] & 255;
            i16 = bArr[i13] & 255;
        }
        if (i14 == 0) {
            qt.y0(27, -2);
        } else if (i14 == 255) {
            qt.y0(27, -3);
        } else if (i14 < 30 || i14 > 64) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i14);
        }
        if (i16 == 0) {
            qt.y0(28, -2);
            return;
        }
        if (i16 == 255) {
            qt.y0(28, -3);
        } else if (i16 < 30 || i16 > 64) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i16);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f12609e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 111) {
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
