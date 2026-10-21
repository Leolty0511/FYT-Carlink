package k0;

import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class qm extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9650c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9651d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{13, 13}, new int[]{14, 12}, new int[]{16, 21}, new int[]{17, 0}, new int[]{18, 7}, new int[]{19, 8}, new int[]{20, 18}, new int[]{21, 1}, new int[]{22, 38}, new int[]{23, 6}, new int[]{24, 5}, new int[]{25, 5}, new int[]{26, 32}, new int[]{27, 33}, new int[]{32, 62}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f9652e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 131, 3, 3, (byte) time.hour, (byte) time.minute);
            int i2 = nt.f8633a;
            if (i2 == 13369799) {
                z.k.s(227, 238, 1, 1);
            } else {
                if (i2 != 14156228) {
                    return;
                }
                z.k.s(227, 238, 1, 0);
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
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        qt.z(this.f9652e);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 48) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5500);
        }
        if (b2 == 49) {
            int i7 = i2 + 2;
            qt.y0(99, (bArr[i7] >> 4) & 15);
            qt.y0(100, (bArr[i7] >> 0) & 15);
            qt.y0(101, (bArr[i7] >> 4) & 15);
            return;
        }
        if (b2 == 66) {
            qt.y0(102, bArr[i2 + 2] & 255);
            qt.y0(103, bArr[i2 + 3] & 255);
            qt.y0(104, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(105, bArr[i2 + 6] & 255);
            qt.y0(106, bArr[i2 + 7] & 255);
            qt.y0(107, bArr[i2 + 8] & 255);
            qt.y0(108, bArr[i2 + 9] & 255);
            qt.y0(109, bArr[i2 + 10] & 255);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i8 = i2 + 3;
            l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 33:
            case 34:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f9650c = b3 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f9651d;
                    if (i9 < iArr.length) {
                        int i10 = this.f9650c;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f9649b = i9;
                        }
                    }
                }
                int i11 = this.f9650c;
                if (i11 == 18) {
                    for (int i12 = 0; i12 < (b4 & 255); i12++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (i11 != 19) {
                    int i13 = b4 & 255;
                    if (i13 == 1) {
                        if (i9 < iArr.length) {
                            l0.b0.l0(iArr[i9][1], 0);
                        }
                    } else if (i13 == 0) {
                        int i14 = this.f9649b;
                        if (i14 < iArr.length && i14 != 255) {
                            l0.b0.l0(iArr[i14][1], 1);
                        }
                        this.f9649b = 255;
                    }
                } else {
                    for (int i15 = 0; i15 < (b4 & 255); i15++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                break;
            case 35:
                int i16 = i2 + 2;
                qt.y0(10, (bArr[i16] >> 7) & 1);
                qt.y0(11, (bArr[i16] >> 6) & 1);
                qt.y0(12, (bArr[i16] >> 5) & 1);
                qt.y0(57, (bArr[i16] >> 4) & 1);
                qt.y0(13, (bArr[i16] >> 3) & 1);
                qt.y0(14, (bArr[i16] >> 2) & 1);
                qt.y0(16, (bArr[i16] >> 1) & 1);
                qt.y0(15, (bArr[i16] >> 0) & 1);
                switch (bArr[i2 + 3] & 255) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    case 2:
                        i4 = 0;
                        i6 = 1;
                        i5 = i6;
                        break;
                    case 3:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 4:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 5:
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                        break;
                    case 6:
                        i5 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 7:
                        i4 = 1;
                        i6 = i4;
                        i5 = i6;
                        break;
                    default:
                        i4 = 0;
                        i6 = i4;
                        i5 = i6;
                        break;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(21, bArr[i2 + 4] & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i17 = i2 + 5;
                    if ((bArr[i17] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i17] & 255) == 255) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i17] & 255);
                    }
                    int i18 = i2 + 6;
                    if ((bArr[i18] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i18] & 255) == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i18] & 255);
                    }
                } else {
                    int i19 = i2 + 5;
                    if ((bArr[i19] & 255) == 0) {
                        qt.y0(27, -2);
                    } else if ((bArr[i19] & 255) == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, bArr[i19] & 255);
                    }
                    int i20 = i2 + 6;
                    if ((bArr[i20] & 255) == 0) {
                        qt.y0(28, -2);
                    } else if ((bArr[i20] & 255) == 255) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, bArr[i20] & 255);
                    }
                }
                int i21 = i2 + 8;
                qt.y0(29, (bArr[i21] >> 4) & 15);
                qt.y0(30, (bArr[i21] >> 0) & 15);
                break;
            default:
                switch (b2) {
                    case 38:
                        u0.d.R2(l0.c0.P0(bArr[i2 + 2] & 255));
                        u0.d.S2(l0.c0.P0(bArr[i2 + 3] & 255));
                        u0.d.T2(l0.c0.P0(bArr[i2 + 4] & 255));
                        u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                        break;
                    case 39:
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
                        u0.d.D2(l0.c0.P0(bArr[i22] & 255));
                        u0.d.E2(l0.c0.P0(bArr[i24] & 255));
                        u0.d.F2(l0.c0.P0(bArr[i26] & 255));
                        u0.d.G2(l0.c0.P0(bArr[i28] & 255));
                        break;
                    case 40:
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
                        qt.y0(0, (b5 >> 2) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9652e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 131, 3, iArr[0], iArr[1], iArr[2]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        }
    }
}
