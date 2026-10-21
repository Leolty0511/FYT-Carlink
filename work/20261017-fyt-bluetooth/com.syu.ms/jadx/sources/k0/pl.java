package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class pl extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f9268b = {34, 204};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9269c = 0;

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
        mtVar.f8314i = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        String str;
        String str2;
        byte b2 = bArr[i2];
        if (b2 == 3) {
            int i7 = i2 + 2;
            int i8 = bArr[i7] & 255;
            int i9 = i2 + 3;
            int i10 = bArr[i9] & 255;
            int i11 = i2 + 4;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 5;
            int i14 = bArr[i13] & 255;
            if (i8 == 0 && i10 == 0 && i12 == 0 && i14 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i8 || l0.c0.f13014h != i10 || l0.c0.f13015i != i12 || l0.c0.f13016j != i14) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i8;
            l0.c0.f13014h = i10;
            l0.c0.f13015i = i12;
            l0.c0.f13016j = i14;
            u0.d.D2(l0.c0.T0(bArr[i7] & 255));
            u0.d.E2(l0.c0.T0(bArr[i9] & 255));
            u0.d.F2(l0.c0.T0(bArr[i11] & 255));
            u0.d.G2(l0.c0.T0(bArr[i13] & 255));
            u0.d.R2(l0.c0.T0(bArr[i2 + 6] & 255));
            u0.d.S2(l0.c0.T0(bArr[i2 + 7] & 255));
            u0.d.T2(l0.c0.T0(bArr[i2 + 8] & 255));
            u0.d.U2(l0.c0.T0(bArr[i2 + 9] & 255));
            return;
        }
        if (b2 != 36) {
            if (b2 != 41) {
                if (b2 != 85) {
                    if (b2 != 87) {
                        return;
                    }
                    int i15 = i2 + 2;
                    if (bArr[i15] == 2) {
                        str = ProxyProperties.LOCAL_EXCL_LIST + "Toyota_";
                    } else {
                        str = ProxyProperties.LOCAL_EXCL_LIST + "Null" + ((int) bArr[i15]) + "_";
                    }
                    if (bArr[i2 + 3] == 6) {
                        str2 = str + "Tundra_";
                    } else {
                        str2 = str + "Null" + ((int) bArr[i15]) + "_";
                    }
                    qt.L((((str2 + (bArr[i2 + 4] + 2000) + "_") + ((int) bArr[i2 + 5]) + "_") + ((int) bArr[i2 + 6]) + "_") + "V" + ((int) bArr[i2 + 7]));
                    return;
                }
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    int i16 = i2 + 2;
                    if ((bArr[i16] & 255) == 36) {
                        qt.y0(28, -2);
                    } else if ((bArr[i16] & 255) == 64) {
                        qt.y0(28, -3);
                    } else if ((bArr[i16] & 255) < 10) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, bArr[i16] & 255);
                    }
                    int i17 = i2 + 3;
                    if ((bArr[i17] & 255) == 36) {
                        qt.y0(27, -2);
                    } else if ((bArr[i17] & 255) == 64) {
                        qt.y0(27, -3);
                    } else if ((bArr[i17] & 255) < 10) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, bArr[i17] & 255);
                    }
                } else {
                    int i18 = i2 + 2;
                    if ((bArr[i18] & 255) == 36) {
                        qt.y0(27, -2);
                    } else if ((bArr[i18] & 255) == 64) {
                        qt.y0(27, -3);
                    } else if ((bArr[i18] & 255) < 10) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, bArr[i18] & 255);
                    }
                    int i19 = i2 + 3;
                    if ((bArr[i19] & 255) == 36) {
                        qt.y0(28, -2);
                    } else if ((bArr[i19] & 255) == 64) {
                        qt.y0(28, -3);
                    } else if ((bArr[i19] & 255) < 10) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, bArr[i19] & 255);
                    }
                }
                int i20 = i2 + 4;
                qt.y0(21, (bArr[i20] >> 0) & 15);
                int i21 = (bArr[i20] >> 4) & 15;
                if (i21 != 1) {
                    if (i21 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i21 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i21 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i21 != 6) {
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
                int i22 = i2 + 5;
                qt.y0(29, (bArr[i22] >> 0) & 3);
                qt.y0(30, (bArr[i22] >> 4) & 3);
                qt.y0(31, (bArr[i22] >> 2) & 3);
                qt.y0(32, (bArr[i22] >> 6) & 3);
                int i23 = i2 + 6;
                qt.y0(13, (bArr[i23] >> 0) & 1);
                qt.y0(11, (bArr[i23] >> 1) & 1);
                qt.y0(14, (bArr[i23] >> 2) & 1);
                qt.y0(65, (bArr[i23] >> 5) & 1);
                qt.y0(16, (bArr[i23] >> 6) & 1);
                qt.y0(12, 3 & (bArr[i2 + 7] >> 0));
                int i24 = bArr[i2 + 9] & 255;
                if (i24 == 255) {
                    u0.d.A3(0);
                    return;
                } else {
                    u0.d.A3((i24 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                    return;
                }
            }
            qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 380);
        }
        byte b3 = bArr[i2 + 2];
        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
            qt.y0(1, (b3 >> 1) & 1);
            qt.y0(2, (b3 >> 0) & 1);
        } else {
            qt.y0(1, (b3 >> 0) & 1);
            qt.y0(2, (b3 >> 1) & 1);
        }
        qt.y0(4, (b3 >> 3) & 1);
        qt.y0(3, (b3 >> 2) & 1);
        qt.y0(5, (b3 >> 4) & 1);
        qt.y0(0, (b3 >> 5) & 1);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            int i3 = nt.f8637c;
            if (i3 == 213) {
                z.k.s(227, 51, 5, iArr[0], this.f9268b[this.f9269c % 2], 37, 1, 170);
                z.k.s(227, 51, 5, iArr[0], this.f9268b[this.f9269c % 2], 37, 1, 170);
                z.k.s(227, 51, 5, iArr[0], this.f9268b[this.f9269c % 2], 37, 1, 170);
            } else if (i3 == 214) {
                z.k.s(227, 51, 5, iArr[0], this.f9268b[this.f9269c % 2], 37, 2, 170);
                z.k.s(227, 51, 5, iArr[0], this.f9268b[this.f9269c % 2], 37, 2, 170);
                z.k.s(227, 51, 5, iArr[0], this.f9268b[this.f9269c % 2], 37, 2, 170);
            }
            int i4 = this.f9269c + 1;
            this.f9269c = i4;
            this.f9269c = i4 % 2;
        }
    }
}
