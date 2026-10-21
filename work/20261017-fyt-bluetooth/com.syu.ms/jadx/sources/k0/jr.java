package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class jr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7085c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7086d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 13}, new int[]{7, 2}, new int[]{8, 26}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(21);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(23);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(23);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(19);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(19);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(25);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(25);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(9);
                    break;
                } else if (i2 == -1) {
                    a3(10);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(4);
                } else {
                    a3(5);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8317l = 1;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4 = bArr[i2] & 255;
        if (i4 == 32) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f7085c = b2 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f7086d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f7085c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f7084b = i5;
                    break;
                }
                i5++;
            }
            int i7 = this.f7085c;
            if (i7 == 5) {
                if ((b3 & 255) == 1) {
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
            if (i7 == 8) {
                if ((b3 & 255) == 1) {
                    int i8 = h0.c.E;
                    if (i8 == 3 || i8 == 4 || i8 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                        return;
                    } else {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                        return;
                    }
                }
                return;
            }
            int i9 = b3 & 255;
            if (i9 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f7084b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f7084b = 255;
                    return;
                }
                return;
            }
        }
        if (i4 == 36) {
            int i11 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i11 >> 6) & 1);
                qt.y0(1, (i11 >> 7) & 1);
            } else {
                qt.y0(2, (i11 >> 7) & 1);
                qt.y0(1, (i11 >> 6) & 1);
            }
            qt.y0(4, (i11 >> 5) & 1);
            qt.y0(3, (i11 >> 4) & 1);
            qt.y0(5, (i11 >> 3) & 1);
            return;
        }
        if (i4 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (i4 == 125) {
            int i12 = bArr[i2 + 2] & 255;
            if (i12 != 1) {
                if (i12 != 3) {
                    return;
                }
                int i13 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i13);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i13}, null, null);
                return;
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i14 = i2 + 3;
                l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
            } else {
                int i15 = i2 + 3;
                l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
            }
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
            return;
        }
        if (i4 != 40) {
            if (i4 != 41) {
                return;
            }
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 7799);
            return;
        }
        int i16 = bArr[i2 + 2] & 255;
        int i17 = bArr[i2 + 3] & 255;
        int i18 = bArr[i2 + 4] & 255;
        int i19 = bArr[i2 + 5] & 255;
        qt.y0(10, (i16 >> 7) & 1);
        qt.y0(11, (i16 >> 6) & 1);
        qt.y0(12, (i16 >> 5) & 1);
        qt.y0(53, (i16 >> 4) & 1);
        qt.y0(13, (i16 >> 3) & 1);
        qt.y0(14, (i16 >> 2) & 1);
        qt.y0(65, (i16 >> 1) & 1);
        qt.y0(16, (i16 >> 0) & 1);
        qt.y0(18, (i17 >> 7) & 1);
        qt.y0(19, (i17 >> 6) & 1);
        qt.y0(20, (i17 >> 5) & 1);
        qt.y0(21, i17 & 15);
        if (i18 == 0) {
            qt.y0(27, -2);
        } else if (i18 == 31) {
            qt.y0(27, -3);
        } else if (i18 < 1 || i18 > 29) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i18);
        }
        if (i19 == 0) {
            qt.y0(28, -2);
            return;
        }
        if (i19 == 31) {
            qt.y0(28, -3);
        } else if (i19 < 1 || i19 > 29) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i19);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 119, 4, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        } else {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(50L);
        z.k.s(227, -32, 2, i2, 0);
    }
}
