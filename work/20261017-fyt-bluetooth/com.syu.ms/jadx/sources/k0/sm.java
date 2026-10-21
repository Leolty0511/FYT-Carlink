package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class sm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10340c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10341d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f10342e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 118, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (time.hour & 255), (byte) time.minute, (byte) time.second, (byte) (time.weekDay | 192));
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f10342e);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i4 = i2 + 2;
            int i5 = bArr[i4] & 255;
            int i6 = i2 + 3;
            int i7 = bArr[i6] & 255;
            int i8 = i2 + 4;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 5;
            int i11 = bArr[i10] & 255;
            if (i5 == 0 && i7 == 0 && i9 == 0 && i11 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i5 || l0.c0.f13014h != i7 || l0.c0.f13015i != i9 || l0.c0.f13016j != i11) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i5;
            l0.c0.f13014h = i7;
            l0.c0.f13015i = i9;
            l0.c0.f13016j = i11;
            u0.d.D2(l0.c0.E0(bArr[i4] & 255));
            u0.d.E2(l0.c0.E0(bArr[i6] & 255));
            u0.d.F2(l0.c0.E0(bArr[i8] & 255));
            u0.d.G2(l0.c0.E0(bArr[i10] & 255));
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10340c = b3 & 255;
            int i12 = 0;
            while (true) {
                iArr = this.f10341d;
                if (i12 >= iArr.length) {
                    break;
                }
                int i13 = this.f10340c;
                if (i13 == iArr[i12][0]) {
                    if (i13 == 0) {
                        break;
                    }
                    this.f10339b = i12;
                    break;
                }
                i12++;
            }
            int i14 = b4 & 255;
            if (i14 == 1) {
                if (i12 < iArr.length) {
                    l0.b0.l0(iArr[i12][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f10339b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f10339b = 255;
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
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i16 = i2 + 3;
            l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i16] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 39:
                qt.y0(98, bArr[i2 + 2] & 255);
                qt.y0(114, bArr[i2 + 3] & 255);
                qt.y0(115, bArr[i2 + 4] & 255);
                qt.y0(116, bArr[i2 + 5] & 255);
                qt.y0(117, bArr[i2 + 6] & 255);
                qt.y0(118, bArr[i2 + 7] & 255);
                qt.y0(119, bArr[i2 + 8] & 255);
                qt.y0(120, bArr[i2 + 9] & 255);
                qt.y0(121, bArr[i2 + 10] & 255);
                qt.y0(122, bArr[i2 + 11] & 255);
                qt.y0(123, bArr[i2 + 12] & 255);
                qt.y0(124, bArr[i2 + 13] & 255);
                qt.y0(125, bArr[i2 + 14] & 255);
                break;
            case 40:
                int i17 = i2 + 2;
                qt.y0(10, (bArr[i17] >> 7) & 1);
                qt.y0(11, (bArr[i17] >> 6) & 1);
                qt.y0(12, (bArr[i17] >> 5) & 1);
                qt.y0(53, (bArr[i17] >> 4) & 1);
                qt.y0(13, (bArr[i17] >> 3) & 1);
                qt.y0(14, (bArr[i17] >> 2) & 1);
                qt.y0(15, (bArr[i17] >> 1) & 1);
                qt.y0(16, (bArr[i17] >> 0) & 1);
                int i18 = i2 + 3;
                qt.y0(18, (bArr[i18] >> 7) & 1);
                qt.y0(19, (bArr[i18] >> 6) & 1);
                qt.y0(20, (bArr[i18] >> 5) & 1);
                qt.y0(21, 15 & (bArr[i18] >> 0));
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i20 = bArr[i21] & 255;
                    i22 = bArr[i19] & 255;
                }
                if (i20 == 0) {
                    qt.y0(27, -2);
                } else if (i20 == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i20);
                }
                if (i22 == 0) {
                    qt.y0(28, -2);
                } else if (i22 == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i22);
                }
                int i23 = bArr[i2 + 7] & 255;
                if (i23 == 255 || i23 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.A3((i23 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                break;
            case 41:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7800);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f10342e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 126) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 117, 2, iArr[0], iArr[1]);
        }
    }
}
