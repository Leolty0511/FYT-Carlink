package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class dm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4539c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4540d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 13}, new int[]{4, 3}, new int[]{5, 4}, new int[]{6, 2}, new int[]{7, 12}, new int[]{16, 1}, new int[]{17, 18}, new int[]{18, 5}, new int[]{19, 21}, new int[]{20, 6}, new int[]{32, 3}, new int[]{33, 4}, new int[]{34, 7}, new int[]{35, 8}, new int[]{36, 0}, new int[]{37, 2}, new int[]{38, 53}, new int[]{39, 11}, new int[]{40, 12}, new int[]{41, 54}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4541e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4542f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4543g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4544h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4545i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, -57, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) (!DateFormat.is24HourFormat(App.c()) ? 1 : 0));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(dm.this.f4545i);
            dm.this.f4543g = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dm dmVar = dm.this;
            int i2 = dmVar.f4543g - 1;
            dmVar.f4543g = i2;
            if (i2 <= 0) {
                l0.b0.p0(dmVar.f4545i);
                dm.this.f4543g = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            int i3 = nt.f8637c;
            if (i3 == 75) {
                z.k.s(227, 132, 1, 18);
            } else if (i3 == 92) {
                z.k.s(227, 132, 1, 17);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f4544h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        qt.z(this.f4542f);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4539c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4540d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4539c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4538b = i4;
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
                    int i7 = this.f4538b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f4538b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 3) {
            int i8 = i2 + 2;
            qt.y0(10, (bArr[i8] >> 7) & 1);
            qt.y0(11, (bArr[i8] >> 6) & 1);
            qt.y0(12, (bArr[i8] >> 5) & 1);
            qt.y0(13, (bArr[i8] >> 3) & 1);
            qt.y0(14, (bArr[i8] >> 2) & 1);
            int i9 = i2 + 3;
            qt.y0(65, (bArr[i9] >> 4) & 1);
            qt.y0(19, (bArr[i9] >> 6) & 1);
            qt.y0(20, (bArr[i9] >> 5) & 1);
            int i10 = i2 + 6;
            qt.y0(18, (bArr[i10] >> 7) & 1);
            qt.y0(16, (bArr[i10] >> 6) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i11 = i2 + 4;
                if ((bArr[i11] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i11] & 255) == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i11] & 255);
                }
                int i12 = i2 + 5;
                if ((bArr[i12] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i12] & 255) == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i12] & 255);
                }
            } else {
                int i13 = i2 + 4;
                if ((bArr[i13] & 255) == 0) {
                    qt.y0(27, -2);
                } else if ((bArr[i13] & 255) == 31) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, bArr[i13] & 255);
                }
                int i14 = i2 + 5;
                if ((bArr[i14] & 255) == 0) {
                    qt.y0(28, -2);
                } else if ((bArr[i14] & 255) == 31) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, bArr[i14] & 255);
                }
            }
            qt.y0(17, (bArr[i10] >> 5) & 1);
            qt.y0(66, (bArr[i10] >> 4) & 1);
            qt.y0(37, (bArr[i10] >> 0) & 1);
            this.f4541e = (bArr[i10] >> 0) & 1;
            int i15 = i2 + 7;
            qt.y0(29, (bArr[i15] >> 2) & 3);
            qt.y0(30, (bArr[i15] >> 0) & 3);
            qt.y0(32, (bArr[i15] >> 4) & 3);
            qt.y0(31, (bArr[i15] >> 6) & 3);
            qt.y0(21, bArr[i2 + 8] & 255);
            return;
        }
        if (b2 == 4) {
            u0.d.R2(l0.c0.v1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.v1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.v1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.v1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 5) {
            int i16 = i2 + 2;
            int i17 = bArr[i16] & 255;
            int i18 = i2 + 3;
            int i19 = bArr[i18] & 255;
            int i20 = i2 + 4;
            int i21 = bArr[i20] & 255;
            int i22 = i2 + 5;
            int i23 = bArr[i22] & 255;
            if (i17 == 0 && i19 == 0 && i21 == 0 && i23 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i17 || l0.c0.f13014h != i19 || l0.c0.f13015i != i21 || l0.c0.f13016j != i23) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i17;
            l0.c0.f13014h = i19;
            l0.c0.f13015i = i21;
            l0.c0.f13016j = i23;
            u0.d.D2(l0.c0.v1(bArr[i16] & 255));
            u0.d.E2(l0.c0.v1(bArr[i18] & 255));
            u0.d.F2(l0.c0.v1(bArr[i20] & 255));
            u0.d.G2(l0.c0.v1(bArr[i22] & 255));
            return;
        }
        if (b2 == 6) {
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
        if (b2 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 255) != 1 ? 1 : 0, 4224);
            return;
        }
        if (b2 != 56) {
            if (b2 == 127) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 == 53) {
                qt.y0(99, bArr[i2 + 3] & 255);
                qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                qt.y0(101, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                qt.y0(102, (65280 & (bArr[i2 + 11] << 8)) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 24) & (-16777216)) | (bArr[i2 + 12] & 255));
                int i24 = bArr[i2 + 8] & 255;
                u0.d.B3(this.f4541e == 1 ? (((i24 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i24 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            }
            if (b2 != 54) {
                return;
            }
            qt.y0(113, (bArr[i2 + 2] >> 7) & 1);
            qt.y0(114, bArr[i2 + 3] & 255);
            qt.y0(115, ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(116, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(117, (65280 & (bArr[i2 + 9] << 8)) | (bArr[i2 + 10] & 255));
            qt.y0(118, bArr[i2 + 11] & 255);
            return;
        }
        qt.y0(103, bArr[i2 + 2] & 255);
        qt.y0(104, bArr[i2 + 3] & 255);
        qt.y0(105, bArr[i2 + 4] & 255);
        qt.y0(106, bArr[i2 + 5] & 255);
        qt.y0(107, bArr[i2 + 6] & 255);
        qt.y0(108, bArr[i2 + 7] & 255);
        qt.y0(109, bArr[i2 + 8] & 255);
        qt.y0(110, bArr[i2 + 9] & 255);
        qt.y0(111, bArr[i2 + 10] & 255);
        qt.y0(112, bArr[i2 + 11] & 255);
        qt.y0(119, bArr[i2 + 12] & 255);
        qt.y0(120, bArr[i2 + 13] & 255);
        qt.y0(121, bArr[i2 + 14] & 255);
        qt.y0(122, bArr[i2 + 15] & 255);
        qt.y0(123, bArr[i2 + 16] & 255);
        qt.y0(124, bArr[i2 + 17] & 255);
        qt.y0(125, bArr[i2 + 18] & 255);
        qt.y0(126, bArr[i2 + 19] & 255);
        qt.y0(127, bArr[i2 + 20] & 255);
        qt.y0(128, bArr[i2 + 21] & 255);
        qt.y0(129, bArr[i2 + 22] & 255);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f4544h);
        l0.b0.p0(this.f4545i);
        qt.q0(this.f4542f);
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
            z.k.s(227, 134, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 198, 3, iArr[0], iArr[1], iArr[2]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 135, 2, iArr[0], iArr[1]);
        }
    }
}
