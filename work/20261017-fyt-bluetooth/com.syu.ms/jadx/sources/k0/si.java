package k0;

import android.drm.DrmManagerClient;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateUtils;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class si extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10284c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10285d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, -1}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10286e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 135, 5, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.y0(1029, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        qt.z(this.f10286e);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10284c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10285d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10284c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10283b = i4;
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
                    int i7 = this.f10283b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f10283b = 255;
                }
                return;
            }
        }
        if (b2 == 8) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 16) {
            byte b6 = bArr[i2 + 2];
            qt.y0(99, (b6 >> 3) & 1);
            qt.y0(100, (b6 >> 2) & 1);
            qt.y0(101, (b6 >> 1) & 1);
            qt.y0(102, (b6 >> 0) & 1);
            qt.y0(115, bArr[i2 + 5] & 255);
            qt.y0(116, bArr[i2 + 4] & 255);
            qt.y0(117, bArr[i2 + 3] & 255);
            qt.y0(119, bArr[i2 + 6] & 255);
            return;
        }
        if (b2 == 18) {
            if (qt.k0()) {
                return;
            }
            int i8 = bArr[i2 + 2] & 255;
            if (u0.b.f17347o == 0) {
                if (i8 != 0) {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 3) {
            int i9 = bArr[i2 + 2] & 255;
            int i10 = bArr[i2 + 3] & 255;
            int i11 = i2 + 4;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 5;
            int i14 = bArr[i13] & 255;
            qt.y0(10, (i9 >> 7) & 1);
            qt.y0(11, (i9 >> 6) & 1);
            qt.y0(13, (i9 >> 5) & 1);
            qt.y0(14, (i9 >> 4) & 1);
            qt.y0(16, (i9 >> 3) & 1);
            qt.y0(20, (i9 >> 2) & 1);
            qt.y0(19, (i9 >> 1) & 1);
            qt.y0(18, (i9 >> 0) & 1);
            qt.y0(65, (i10 >> 5) & 1);
            qt.y0(12, (i10 >> 4) & 1);
            qt.y0(21, i10 & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i12 = bArr[i13] & 255;
                i14 = bArr[i11] & 255;
            }
            int i15 = i12 & 255;
            if (i15 == 17) {
                qt.y0(27, -2);
            } else if (i15 != 33) {
                qt.y0(27, i15 * 10);
            } else {
                qt.y0(27, -3);
            }
            int i16 = i14 & 255;
            if (i16 == 17) {
                qt.y0(28, -2);
            } else if (i16 != 33) {
                qt.y0(28, i16 * 10);
            } else {
                qt.y0(28, -3);
            }
            int i17 = bArr[i2 + 6] & 255;
            if (i17 != 255) {
                u0.d.A3(((i17 - 128) * 10) + 1000);
            } else {
                u0.d.A3(0);
            }
            int i18 = (bArr[i2 + 9] << 8) | (bArr[i2 + 10] & 255);
            qt.y0(105, i18);
            qt.y0(Process.NFC_UID, i18);
            int i19 = (bArr[i2 + 12] & 255) | (bArr[i2 + 11] << 8);
            qt.y0(106, i19);
            qt.y0(1028, i19);
            return;
        }
        if (b2 == 4) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 4];
            byte b10 = bArr[i2 + 5];
            byte b11 = bArr[i2 + 6];
            byte b12 = bArr[i2 + 7];
            byte b13 = bArr[i2 + 8];
            byte b14 = bArr[i2 + 9];
            u0.d.D2(l0.c0.E0(b7 & 255));
            u0.d.E2(l0.c0.E0(b8 & 255));
            u0.d.F2(l0.c0.E0(b9 & 255));
            u0.d.G2(l0.c0.E0(b10 & 255));
            u0.d.R2(l0.c0.E0(b11 & 255));
            u0.d.S2(l0.c0.E0(b12 & 255));
            u0.d.T2(l0.c0.E0(b13 & 255));
            u0.d.U2(l0.c0.E0(b14 & 255));
            return;
        }
        switch (b2) {
            case 10:
                qt.j(bArr[i2 + 4], bArr[i2 + 3], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, DateUtils.FORMAT_NO_NOON_MIDNIGHT);
                break;
            case 11:
                qt.y0(129, (bArr[i2 + 2] >> 3) & 1);
                int i20 = i2 + 3;
                qt.y0(130, (bArr[i20] >> 2) & 1);
                int i21 = i2 + 4;
                qt.y0(131, (bArr[i21] >> 1) & 1);
                int i22 = i2 + 5;
                qt.y0(132, (bArr[i22] >> 0) & 1);
                qt.y0(125, (((bArr[i20] << 8) & 65280) | (bArr[i21] & 255)) & 65535);
                qt.y0(126, (((bArr[i22] << 8) & 65280) | (bArr[i2 + 6] & 255)) & 65535);
                int i23 = i2 + 8;
                qt.y0(127, (((bArr[i2 + 7] << 8) & 65280) | (bArr[i23] & 255)) & 65535);
                qt.y0(128, ((bArr[i2 + 10] & 255) | ((bArr[i23] << 8) & 65280)) & 65535);
                break;
            case 12:
                int i24 = (bArr[i2 + 2] >> 7) & 1;
                qt.y0(Process.MEDIA_UID, i24 & 127);
                if (i24 == 0) {
                    qt.a(0);
                } else {
                    qt.a(1);
                }
                break;
            case 13:
                int i25 = i2 + 2;
                qt.y0(120, (bArr[i25] >> 1) & 1);
                qt.y0(121, (bArr[i25] >> 0) & 1);
                qt.y0(122, bArr[i2 + 3] & 255);
                qt.y0(123, bArr[i2 + 4] & 255);
                break;
            case 14:
                qt.y0(109, bArr[i2 + 2]);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f10286e);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 133) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 130, 2, iArr[0], 1);
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 1)) {
                z.k.s(227, 136, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 1)) {
                z.k.s(227, 131, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (T2(iArr, 1)) {
                z.k.s(227, 137, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 5) {
            if (T2(iArr, 1)) {
                z.k.s(227, 255, 1, iArr[0]);
            }
        } else if (i2 != 1003) {
            if (i2 != 1005) {
                return;
            }
            z.k.s(227, -124, 1, iArr[0] + 1);
        } else {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, -124, 1, 0);
            } else {
                z.k.s(227, -124, 1, 1);
            }
        }
    }
}
