package k0;

import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class vm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11430c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11431d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 54}, new int[]{21, 5}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11432e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11433f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11434g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f11435h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 201, 3, time.minute, time.hour, DateFormat.is24HourFormat(App.c()) ? 1 : 0);
            int i2 = nt.f8633a;
            if (i2 == 8389061) {
                z.k.s(227, 238, 2, 1, 1);
            } else {
                if (i2 != 10617287) {
                    return;
                }
                z.k.s(227, 238, 2, 1, 2);
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
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        switch (nt.f8633a) {
            case 1769925:
            case 8454596:
            case 9241028:
                mtVar.f8314i = 0;
                break;
            case 1835461:
            case 8389061:
            case 10617287:
            case 14483910:
                mtVar.f8314i = 1;
                break;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        qt.z(this.f11435h);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            int i7 = b3 & 255;
            this.f11430c = i7;
            int i8 = 0;
            while (true) {
                iArr = this.f11431d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f11430c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f11429b = i8;
                    this.f11434g = i9;
                    break;
                }
                i8++;
            }
            if (i7 == 0) {
                if (this.f11434g != 7) {
                    if ((b4 & 255) == 0) {
                        int i10 = this.f11429b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f11429b = 255;
                    }
                } else if (!this.f11433f) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                }
                this.f11433f = false;
                this.f11432e = 0;
                this.f11434g = 0;
            }
            if (i7 != 7) {
                int i11 = b4 & 255;
                if (i11 == 1) {
                    if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i11 == 0) {
                        int i12 = this.f11429b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f11429b = 255;
                        return;
                    }
                    return;
                }
            }
            if (this.f11432e != b4) {
                this.f11432e = b4;
                if (b4 == 1) {
                    this.f11433f = false;
                    return;
                }
                if (b4 == 2) {
                    this.f11433f = true;
                    switch (nt.f8633a) {
                        case 8389061:
                        case 10617287:
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            break;
                        case 8454596:
                        case 9241028:
                            l0.b0.l0(2, 0);
                            l0.b0.l0(2, 1);
                            break;
                        default:
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                            break;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i13 = i2 + 3;
            l0.c0.a((bArr[i13] >> 3) & 1, (bArr[i13] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i13] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
            int i14 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i14 >> 7) & 1);
                qt.y0(2, (i14 >> 6) & 1);
            } else {
                qt.y0(2, (i14 >> 7) & 1);
                qt.y0(1, (i14 >> 6) & 1);
            }
            qt.y0(4, (i14 >> 5) & 1);
            qt.y0(3, (i14 >> 4) & 1);
            qt.y0(5, (i14 >> 3) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5420);
            return;
        }
        if (b2 == 56) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            byte b9 = bArr[i2 + 6];
            byte b10 = bArr[i2 + 7];
            byte b11 = bArr[i2 + 8];
            byte b12 = bArr[i2 + 9];
            qt.y0(102, b5 & 255);
            qt.y0(103, b6 & 255);
            qt.y0(104, b7 & 255);
            qt.y0(105, b8 & 255);
            qt.y0(98, b9 & 255);
            qt.y0(99, b10 & 255);
            qt.y0(100, b11 & 255);
            qt.y0(101, b12 & 255);
            return;
        }
        if (b2 == 57) {
            int i15 = i2 + 2;
            qt.y0(113, (bArr[i15] >> 0) & 15);
            qt.y0(114, (bArr[i15] >> 4) & 15);
            int i16 = i2 + 3;
            qt.y0(115, (bArr[i16] >> 0) & 15);
            qt.y0(116, (bArr[i16] >> 4) & 15);
            return;
        }
        if (b2 == 65) {
            qt.y0(106, bArr[i2 + 2] & 255);
            qt.y0(107, bArr[i2 + 3] & 255);
            qt.y0(108, bArr[i2 + 4] & 255);
            qt.y0(109, bArr[i2 + 5] & 255);
            qt.y0(110, bArr[i2 + 6] & 255);
            qt.y0(111, bArr[i2 + 7] & 255);
            qt.y0(112, bArr[i2 + 8] & 255);
            qt.y0(117, bArr[i2 + 9] & 255);
            qt.y0(118, bArr[i2 + 10] & 255);
            qt.y0(119, bArr[i2 + 11] & 255);
            qt.y0(120, bArr[i2 + 12] & 255);
            qt.y0(121, bArr[i2 + 13] & 255);
            int i17 = i2 + 14;
            qt.y0(131, (bArr[i17] >> 7) & 1);
            qt.y0(132, (bArr[i17] >> 6) & 1);
            qt.y0(133, (bArr[i17] >> 5) & 1);
            qt.y0(134, (bArr[i17] >> 4) & 1);
            qt.y0(135, (bArr[i17] >> 0) & 15);
            qt.y0(136, bArr[i2 + 15] & 255);
            return;
        }
        if (b2 == 66) {
            qt.y0(122, bArr[i2 + 2] & 255);
            qt.y0(123, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(124, bArr[i2 + 5] & 255);
            qt.y0(125, ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(126, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(127, bArr[i2 + 11] & 255);
            qt.y0(128, bArr[i2 + 12] & 255);
            qt.y0(129, bArr[i2 + 13] & 255);
            qt.y0(130, (bArr[i2 + 14] + 1) & 255);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.M0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.M0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.M0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.M0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i18 = i2 + 2;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 3;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i19 == 0 && i21 == 0 && i23 == 0 && i25 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i19;
                l0.c0.f13014h = i21;
                l0.c0.f13015i = i23;
                l0.c0.f13016j = i25;
                u0.d.D2(l0.c0.M0(bArr[i18] & 255));
                u0.d.E2(l0.c0.M0(bArr[i20] & 255));
                u0.d.F2(l0.c0.M0(bArr[i22] & 255));
                u0.d.G2(l0.c0.M0(bArr[i24] & 255));
                break;
            case 36:
                int i26 = bArr[i2 + 2] & 255;
                int i27 = bArr[i2 + 3] & 255;
                int i28 = bArr[i2 + 4] & 255;
                qt.y0(10, (i26 >> 7) & 1);
                qt.y0(11, (i26 >> 6) & 1);
                qt.y0(12, (i26 >> 5) & 1);
                qt.y0(13, (i26 >> 3) & 1);
                qt.y0(62, (i26 >> 2) & 1);
                qt.y0(16, (i26 >> 1) & 1);
                qt.y0(65, i26 & 1);
                int i29 = i27 & 255;
                if (i29 != 1) {
                    if (i29 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i29 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i29 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, i28 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 6] & 255);
                    qt.y0(28, bArr[i2 + 5] & 255);
                } else {
                    qt.y0(27, bArr[i2 + 5] & 255);
                    qt.y0(28, bArr[i2 + 6] & 255);
                }
                int i30 = i2 + 8;
                qt.y0(15, (bArr[i30] >> 0) & 1);
                qt.y0(53, (bArr[i30] >> 1) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
        qt.q0(this.f11435h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 137) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 144, 1, iArr[0]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            z.k.s(227, 138, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 202, 2, iArr[0], iArr[1]);
        }
    }
}
