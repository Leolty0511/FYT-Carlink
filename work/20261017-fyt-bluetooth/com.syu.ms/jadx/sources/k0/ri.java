package k0;

import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ri extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9929c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9930d = {new int[]{1, 3}, new int[]{2, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9931e = -1;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        if (App.c().getResources().getConfiguration().orientation != 1) {
            this.f7886a.f8314i = 1;
        } else {
            this.f7886a.f8314i = 0;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8307b = 0;
        mtVar2.f8308c = 0;
        mtVar2.f8309d = 0;
        mtVar2.f8320o = 0;
        mtVar2.f8313h = 0;
        mtVar2.f8321p = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 16) {
            qt.y0(145, bArr[i2 + 2] & 3);
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9929c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f9930d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f9929c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f9928b = i7;
                    break;
                }
                i7++;
            }
            if ((b4 & 255) != 0) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                int i9 = this.f9928b;
                if (i9 < iArr.length && i9 != 255) {
                    l0.b0.l0(iArr[i9][1], 1);
                }
                this.f9928b = 255;
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 2:
                int i10 = bArr[i2 + 2] & 255;
                int i11 = bArr[i2 + 3] & 255;
                int i12 = bArr[i2 + 4] & 255;
                int i13 = bArr[i2 + 5] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    if (i11 == 0) {
                        qt.y0(27, -1);
                    } else if (i11 == 1) {
                        qt.y0(27, -2);
                    } else if (i11 != 29) {
                        qt.y0(27, i11);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i10 == 0) {
                        qt.y0(28, -1);
                    } else if (i10 == 1) {
                        qt.y0(28, -2);
                    } else if (i10 != 29) {
                        qt.y0(28, i10);
                    } else {
                        qt.y0(28, -3);
                    }
                } else {
                    if (i10 == 0) {
                        qt.y0(27, -1);
                    } else if (i10 == 1) {
                        qt.y0(27, -2);
                    } else if (i10 != 29) {
                        qt.y0(27, i10);
                    } else {
                        qt.y0(27, -3);
                    }
                    if (i11 == 0) {
                        qt.y0(28, -1);
                    } else if (i11 == 1) {
                        qt.y0(28, -2);
                    } else if (i11 != 29) {
                        qt.y0(28, i11);
                    } else {
                        qt.y0(28, -3);
                    }
                }
                qt.y0(21, (i12 >> 3) & 7);
                int i14 = i12 & 7;
                if (i14 != 1) {
                    if (i14 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i14 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i14 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i14 != 5) {
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
                qt.y0(77, (i12 >> 0) & 7);
                qt.y0(16, (i13 >> 6) & 1);
                qt.y0(65, (i13 >> 5) & 1);
                qt.y0(14, (i13 >> 4) & 1);
                if (((i13 >> 3) & 1) == 1) {
                    qt.y0(12, 1);
                } else if (((i13 >> 2) & 1) == 1) {
                    qt.y0(12, 0);
                }
                qt.y0(13, (i13 >> 1) & 1);
                qt.y0(11, (i13 >> 0) & 1);
                break;
            case 3:
                int i15 = i2 + 2;
                qt.y0(100, (bArr[i15] >> 7) & 1);
                qt.y0(101, (bArr[i15] >> 6) & 1);
                qt.y0(102, (bArr[i15] >> 5) & 1);
                qt.y0(103, (bArr[i15] >> 4) & 1);
                qt.y0(104, (bArr[i15] >> 3) & 1);
                break;
            case 4:
                qt.y0(105, bArr[i2 + 2] & 255);
                int i16 = i2 + 3;
                qt.y0(106, bArr[i16] & 255);
                switch (bArr[i16]) {
                    case 0:
                        qt.y0(107, ((bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8))) & 65535);
                        break;
                    case 1:
                        qt.y0(108, ((bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8))) & 65535);
                        break;
                    case 2:
                        qt.y0(109, ((bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8))) & 65535);
                        break;
                    case 3:
                        qt.y0(110, ((bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8))) & 65535);
                        break;
                    case 4:
                        qt.y0(111, ((bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8))) & 65535);
                        break;
                    case 5:
                        qt.y0(112, ((bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8))) & 65535);
                        break;
                    case 6:
                        qt.y0(113, ((bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8))) & 65535);
                        break;
                }
                break;
            case 5:
                qt.x0(114, new String(bArr, i2 + 2, 16));
                break;
            case 6:
                int i17 = i2 + 2;
                qt.y0(118, (bArr[i17] >> 7) & 1);
                qt.y0(119, (bArr[i17] >> 6) & 1);
                qt.y0(120, (bArr[i17] >> 5) & 1);
                qt.y0(121, (bArr[i17] >> 4) & 1);
                qt.y0(122, (bArr[i17] >> 3) & 1);
                qt.y0(134, (bArr[i17] >> 0) & 7);
                int i18 = i2 + 3;
                qt.y0(124, (bArr[i18] >> 6) & 3);
                qt.y0(125, (bArr[i18] >> 4) & 3);
                qt.y0(126, (bArr[i18] >> 2) & 3);
                qt.y0(127, (bArr[i18] >> 0) & 3);
                int i19 = i2 + 4;
                qt.y0(128, (bArr[i19] >> 6) & 3);
                qt.y0(129, (bArr[i19] >> 4) & 3);
                break;
            case 7:
                qt.y0(130, bArr[i2 + 2] & 255);
                qt.y0(131, bArr[i2 + 3] & 255);
                qt.y0(132, bArr[i2 + 4] & 255);
                qt.y0(133, bArr[i2 + 5] & 255);
                qt.y0(123, bArr[i2 + 6] & 255);
                break;
            case 8:
                qt.x0(135, new String(bArr, i2 + 2, 16));
                break;
            case 9:
                int i20 = i2 + 2;
                int i21 = (bArr[i20] >> 5) & 7;
                if (i21 == 1) {
                    qt.y0(138, bArr[i20] & 31);
                    break;
                } else if (i21 == 2) {
                    qt.y0(139, bArr[i20] & 31);
                    break;
                } else if (i21 == 3) {
                    qt.y0(140, bArr[i20] & 31);
                    break;
                } else if (i21 == 4) {
                    qt.y0(141, bArr[i20] & 31);
                    break;
                } else if (i21 == 5) {
                    qt.y0(142, bArr[i20] & 1);
                    break;
                }
                break;
            case 10:
                int i22 = i2 + 2;
                if (((bArr[i22] >> 7) & 1) == 1) {
                    qt.y0(143, bArr[i22] & 127);
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 146) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            if (nt.W != 1) {
                a3(iArr[0]);
                return;
            }
            if (iArr[0] == 9) {
                a3(11);
                return;
            }
            if (iArr[0] == 10) {
                a3(12);
                return;
            }
            if (iArr[0] == 11) {
                a3(9);
            } else if (iArr[0] == 12) {
                a3(10);
            } else {
                a3(iArr[0]);
            }
        }
    }

    public final void a3(int i2) {
        int i3 = (this.f9931e + 1) % 2;
        this.f9931e = i3;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }
}
