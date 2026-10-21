package k0;

import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ph extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9197b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9200e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9198c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9199d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 5}, new int[]{12, 13}, new int[]{13, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9201f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9202g = {new int[]{1, 3}, new int[]{2, 4}, new int[]{6, 8}, new int[]{7, 7}, new int[]{8, 25}, new int[]{16, 16}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9203h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            z.k.s(227, 201, 3, (byte) time.minute, (byte) time.hour, b2);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        switch (nt.f8633a) {
            case 4522439:
            case 10551750:
            case 16449975:
                mtVar.f8314i = 1;
                qt.z(this.f9203h);
                break;
            case 6816200:
            case 6881736:
            case 13173191:
            case 13238727:
                mtVar.f8314i = 1;
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5570);
            return;
        }
        if (b2 == 64) {
            qt.y0(98, bArr[i2 + 2] & 255);
            qt.y0(99, bArr[i2 + 3] & 255);
            qt.y0(100, bArr[i2 + 4] & 255);
            qt.y0(101, bArr[i2 + 5] & 255);
            int i7 = i2 + 6;
            qt.y0(104, (bArr[i7] >> 7) & 1);
            qt.y0(105, (bArr[i7] >> 5) & 3);
            qt.y0(106, (bArr[i7] >> 4) & 1);
            qt.y0(107, (bArr[i7] >> 3) & 1);
            qt.y0(108, (bArr[i7] >> 2) & 1);
            int i8 = i2 + 7;
            qt.y0(109, (bArr[i8] >> 4) & 15);
            qt.y0(110, (bArr[i8] >> 0) & 15);
            return;
        }
        if (b2 == 65) {
            qt.y0(102, bArr[i2 + 2] & 255);
            qt.y0(103, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 125) {
            int i9 = bArr[i2 + 2] & 255;
            if (i9 != 1) {
                if (i9 != 3) {
                    return;
                }
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i11 = i2 + 3;
                l0.c0.b((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
            } else {
                int i12 = i2 + 3;
                l0.c0.a((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
            }
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f9198c = b4 & 255;
                int i13 = 0;
                while (true) {
                    iArr = this.f9199d;
                    if (i13 < iArr.length) {
                        int i14 = this.f9198c;
                        if (i14 != iArr[i13][0]) {
                            i13++;
                        } else if (i14 != 0) {
                            this.f9197b = i13;
                        }
                    }
                }
                if (this.f9198c == 6) {
                    if ((b5 & 255) == 1) {
                        int i15 = h0.c.E;
                        if (i15 != 3) {
                            if (i15 == 4) {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            } else if (i15 != 5) {
                                l0.b0.l0(12, 0);
                                l0.b0.l0(12, 1);
                            }
                        }
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                    break;
                } else {
                    int i16 = b5 & 255;
                    if (i16 != 1) {
                        if (i16 == 0) {
                            int i17 = this.f9197b;
                            if (i17 < iArr.length && i17 != 255) {
                                l0.b0.l0(iArr[i17][1], 1);
                            }
                            this.f9197b = 255;
                        }
                    } else if (i13 < iArr.length) {
                        l0.b0.l0(iArr[i13][1], 0);
                    }
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                this.f9201f = b6 & 255;
                int i18 = 0;
                while (true) {
                    iArr2 = this.f9202g;
                    if (i18 < iArr2.length) {
                        int i19 = this.f9201f;
                        if (i19 != iArr2[i18][0]) {
                            i18++;
                        } else if (i19 != 0) {
                            this.f9200e = i18;
                        }
                    }
                }
                int i20 = b7 & 255;
                if (i20 != 1) {
                    if (i20 == 0) {
                        int i21 = this.f9200e;
                        if (i21 < iArr2.length && i21 != 255) {
                            l0.b0.l0(iArr2[i21][1], 1);
                        }
                        this.f9200e = 255;
                    }
                } else if (i18 < iArr2.length) {
                    l0.b0.l0(iArr2[i18][1], 0);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.F0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.F0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.F0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.F0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i22 = i2 + 2;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 3;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 4;
                int i27 = bArr[i26] & 255;
                int i28 = i2 + 5;
                int i29 = bArr[i28] & 255;
                if (i23 == 0 && i25 == 0 && i27 == 0 && i29 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i23 || l0.c0.f13014h != i25 || l0.c0.f13015i != i27 || l0.c0.f13016j != i29) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i23;
                l0.c0.f13014h = i25;
                l0.c0.f13015i = i27;
                l0.c0.f13016j = i29;
                u0.d.D2(l0.c0.F0(bArr[i22] & 255));
                u0.d.E2(l0.c0.F0(bArr[i24] & 255));
                u0.d.F2(l0.c0.F0(bArr[i26] & 255));
                u0.d.G2(l0.c0.F0(bArr[i28] & 255));
                break;
            case 36:
                byte b8 = bArr[i2 + 2];
                qt.y0(10, (b8 >> 7) & 1);
                qt.y0(11, (b8 >> 6) & 1);
                qt.y0(12, (b8 >> 5) & 1);
                qt.y0(63, (b8 >> 4) & 1);
                qt.y0(13, (b8 >> 3) & 1);
                qt.y0(15, (b8 >> 0) & 1);
                byte b9 = bArr[i2 + 3];
                if (b9 != 1) {
                    if (b9 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (b9 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (b9 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (b9 != 5) {
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
                qt.y0(77, b9 & 255);
                qt.y0(21, bArr[i2 + 4] & 255);
                int i30 = i2 + 5;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 6;
                int i33 = bArr[i32] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i31 = bArr[i32] & 255;
                    i33 = bArr[i30] & 255;
                }
                if (nt.f8633a == 7471559) {
                    if (i31 == 1) {
                        qt.y0(27, -2);
                    } else if (i31 == 17) {
                        qt.y0(27, -3);
                    } else if (i31 < 2 || i31 > 16) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i31);
                    }
                    if (i33 == 1) {
                        qt.y0(28, -2);
                    } else if (i33 == 17) {
                        qt.y0(28, -3);
                    } else if (i33 >= 2 && i33 <= 16) {
                        qt.y0(28, i33);
                    } else {
                        qt.y0(28, -1);
                    }
                } else {
                    if (i31 == 0) {
                        qt.y0(27, -2);
                    } else if (i31 == 30) {
                        qt.y0(27, -3);
                    } else if (i31 < 1 || i31 > 29) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i31);
                    }
                    if (i33 == 0) {
                        qt.y0(28, -2);
                    } else if (i33 == 30) {
                        qt.y0(28, -3);
                    } else if (i33 >= 1 && i33 <= 29) {
                        qt.y0(28, i33);
                    } else {
                        qt.y0(28, -1);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f9203h);
        l0.b0.p0(l0.c0.f13021o);
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
            z.k.s(227, 200, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 138, 2, iArr[0], iArr[1]);
        } else if (i2 == 2) {
            z.k.s(227, 144, 1, iArr[0]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 202, 2, iArr[0], iArr[1]);
        }
    }
}
