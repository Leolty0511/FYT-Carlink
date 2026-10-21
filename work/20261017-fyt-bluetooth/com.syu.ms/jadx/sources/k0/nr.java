package k0;

import android.drm.DrmManagerClient;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class nr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8620c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8621d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{82, 3}, new int[]{83, 4}, new int[]{48, 6}, new int[]{49, 2}, new int[]{50, 54}, new int[]{51, 3}, new int[]{52, 4}, new int[]{53, 5}, new int[]{54, 18}, new int[]{55, 12}, new int[]{65, 7}, new int[]{66, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8622e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8623f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8624g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8625h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8626i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 166, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, DateFormat.is24HourFormat(App.c()) ? 1 : 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(nr.this.f8626i);
            nr.this.f8624g = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nr nrVar = nr.this;
            int i2 = nrVar.f8624g - 1;
            nrVar.f8624g = i2;
            if (i2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(nrVar.f8626i);
                nr.this.f8624g = 6;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f8625h, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        qt.z(this.f8623f);
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
            this.f8620c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f8621d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f8620c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f8619b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f8620c;
            if (i9 == 6) {
                if ((b4 & 255) == 1) {
                    int i10 = h0.c.E;
                    if (i10 != 3 && i10 != 4 && i10 != 5) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
                return;
            }
            if (i9 == 8) {
                if ((b4 & 255) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            if (i9 == 65) {
                for (int i11 = 0; i11 < (b4 & 255); i11++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i9 == 66) {
                for (int i12 = 0; i12 < (b4 & 255); i12++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i9 == 82) {
                if ((b4 & 255) == 1) {
                    if (h0.c.E != 4) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    } else {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                return;
            }
            if (i9 == 83) {
                if ((b4 & 255) == 1) {
                    int i13 = h0.c.E;
                    if (i13 == 3 || i13 == 4 || i13 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    }
                }
                return;
            }
            int i14 = b4 & 255;
            if (i14 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i14 == 0) {
                    int i15 = this.f8619b;
                    if (i15 < iArr.length && i15 != 255) {
                        l0.b0.l0(iArr[i15][1], 1);
                    }
                    this.f8619b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 63) {
            int i16 = bArr[i2 + 2] & 255;
            if (i16 == 16) {
                qt.y0(106, bArr[i2 + 3] & 255);
                return;
            }
            if (i16 == 17) {
                qt.y0(107, bArr[i2 + 3] & 255);
                return;
            }
            switch (i16) {
                case 32:
                    qt.y0(108, bArr[i2 + 3] & 255);
                    break;
                case 33:
                    qt.y0(109, bArr[i2 + 3] & 255);
                    break;
                case 34:
                    qt.y0(110, bArr[i2 + 3] & 255);
                    break;
                default:
                    switch (i16) {
                        case 48:
                            qt.y0(111, bArr[i2 + 3] & 255);
                            break;
                        case 49:
                            qt.y0(112, bArr[i2 + 3] & 255);
                            break;
                        case 50:
                            qt.y0(113, bArr[i2 + 3] & 255);
                            break;
                    }
                    break;
            }
        }
        if (b2 == 82) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            qt.y0(102, bArr[i2 + 6] & 255);
            qt.y0(103, bArr[i2 + 7] & 255);
            qt.y0(104, bArr[i2 + 8] & 255);
            qt.y0(105, bArr[i2 + 9] & 255);
            return;
        }
        if (b2 == 96) {
            qt.y0(114, bArr[i2 + 2] & 255);
            qt.y0(115, bArr[i2 + 3] & 255);
            qt.y0(116, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(117, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(119, bArr[i2 + 10] & 255);
            qt.y0(120, ((bArr[i2 + 13] << 8) & 65280) | (bArr[i2 + 14] & 255));
            qt.y0(121, ((bArr[i2 + 15] << 8) & 65280) | (bArr[i2 + 16] & 255));
            qt.y0(122, (bArr[i2 + 18] & 255) | ((bArr[i2 + 17] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i18 = i2 + 3;
                    l0.c0.b((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                } else {
                    int i19 = i2 + 3;
                    l0.c0.a((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i17 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                int i20 = i2 + 3;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i20] >> 6) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i20] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i17 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8622e = true;
                return;
            } else if (i17 != 3) {
                if (i17 != 4) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                return;
            } else {
                int i21 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i21);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i21}, null, null);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
            int i22 = bArr[i2 + 2] & 255;
            int i23 = i22 & 127;
            u0.d.A3((i22 & 128) != 0 ? 1000 - (i23 * 10) : (i23 * 10) + 1000);
            return;
        }
        if (b2 == 41) {
            if (this.f8622e) {
                return;
            }
            qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, true, 540);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i24 = i2 + 2;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 3;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 4;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 5;
                int i31 = bArr[i30] & 255;
                if (i25 == 0 && i27 == 0 && i29 == 0 && i31 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i25 || l0.c0.f13014h != i27 || l0.c0.f13015i != i29 || l0.c0.f13016j != i31) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i25;
                l0.c0.f13014h = i27;
                l0.c0.f13015i = i29;
                l0.c0.f13016j = i31;
                u0.d.D2(l0.c0.u1(bArr[i24] & 255));
                u0.d.E2(l0.c0.u1(bArr[i26] & 255));
                u0.d.F2(l0.c0.u1(bArr[i28] & 255));
                u0.d.G2(l0.c0.u1(bArr[i30] & 255));
                break;
            case 36:
                int i32 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i32 >> 6) & 1);
                    qt.y0(1, (i32 >> 7) & 1);
                } else {
                    qt.y0(2, (i32 >> 7) & 1);
                    qt.y0(1, (i32 >> 6) & 1);
                }
                qt.y0(4, (i32 >> 5) & 1);
                qt.y0(3, (i32 >> 4) & 1);
                qt.y0(5, (i32 >> 3) & 1);
                break;
            case 37:
                int i33 = bArr[i2 + 2] & 255;
                int i34 = bArr[i2 + 3] & 255;
                int i35 = bArr[i2 + 5] & 255;
                qt.y0(10, (i33 >> 7) & 1);
                qt.y0(11, (i33 >> 6) & 1);
                qt.y0(12, (i33 >> 5) & 1);
                qt.y0(13, (i33 >> 3) & 1);
                qt.y0(52, (i33 >> 2) & 1);
                qt.y0(16, (i33 >> 1) & 1);
                qt.y0(65, (i33 >> 0) & 1);
                int i36 = i34 & 255;
                if (i36 != 1) {
                    if (i36 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i36 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i36 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i36 != 5) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
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
                qt.y0(21, bArr[i2 + 4] & 255);
                if (i35 == 0) {
                    qt.y0(27, -2);
                } else if (i35 == 255) {
                    qt.y0(27, -3);
                } else if (i35 < 1 || i35 > 30) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, (i35 * 5) + 170);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8625h);
        l0.b0.p0(this.f8626i);
        qt.q0(this.f8623f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 123) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 128, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }
}
