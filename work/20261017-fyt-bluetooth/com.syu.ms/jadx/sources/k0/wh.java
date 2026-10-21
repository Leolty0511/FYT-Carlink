package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class wh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11747c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11748d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 0}, new int[]{9, 12}, new int[]{10, 5}, new int[]{11, 1}, new int[]{12, 24}, new int[]{13, 54}, new int[]{14, 3}, new int[]{15, 4}, new int[]{16, 6}, new int[]{17, 62}, new int[]{20, 13}, new int[]{21, 13}, new int[]{22, 13}, new int[]{23, 58}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        if (i2 == 33) {
            if (iArr[1] != 0) {
                if (nt.f8645g[10] == 0) {
                    z.k.s(227, 168, 2, 0, 1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[10] == 1) {
                    z.k.s(227, 168, 2, 0, 1);
                    return;
                }
                return;
            }
        }
        if (i2 == 34) {
            if (iArr[1] != 0) {
                if (nt.f8645g[11] == 0) {
                    z.k.s(227, 168, 2, 1, 1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[11] == 1) {
                    z.k.s(227, 168, 2, 1, 1);
                    return;
                }
                return;
            }
        }
        if (i2 == 38) {
            if (iArr[1] != 0) {
                if (nt.f8645g[12] == 0) {
                    z.k.s(227, 168, 2, 4, 1);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[12] == 1) {
                    z.k.s(227, 168, 2, 4, 1);
                    return;
                }
                return;
            }
        }
        if (i2 != 39) {
            if (i2 != 41) {
                return;
            }
            if (iArr[1] != 0) {
                z.k.s(227, 168, 2, 13, 1);
                return;
            } else {
                z.k.s(227, 168, 2, 14, 1);
                return;
            }
        }
        int i3 = iArr[1];
        if (i3 == -2) {
            z.k.s(227, 168, 2, 12, 1);
        } else {
            if (i3 != -1) {
                return;
            }
            z.k.s(227, 168, 2, 11, 1);
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
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = bArr[i2] & 255;
        if (i8 == 64) {
            int i9 = bArr[i2 + 2] & 255;
            int i10 = bArr[i2 + 3] & 255;
            int i11 = bArr[i2 + 4] & 255;
            int i12 = bArr[i2 + 5] & 255;
            int i13 = bArr[i2 + 6] & 255;
            qt.y0(98, ((i9 & 255) << 16) | ((i10 & 255) << 8) | (i11 & 255));
            qt.y0(99, (i12 >> 4) & 15);
            qt.y0(100, i12 & 15);
            qt.y0(101, i13 & 255);
        }
        if (i8 == 65) {
            for (int i14 = 0; i14 < 50; i14++) {
                int i15 = i2 + (i14 * 2);
                o1.x.C(nt.f8643f, 102, new int[]{i14, (bArr[i15 + 3] & 255) | ((bArr[i15 + 2] << 8) & 65280)}, null, null);
            }
            return;
        }
        if (i8 == 67) {
            int i16 = bArr[i2 + 2] & 255;
            qt.y0(103, (i16 >> 1) & 1);
            qt.y0(104, (i16 >> 0) & 1);
            return;
        }
        if (i8 == 125) {
            int i17 = bArr[i2 + 2] & 255;
            if (i17 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i18 = i2 + 3;
                    l0.c0.b((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
                    return;
                } else {
                    int i19 = i2 + 3;
                    l0.c0.a((bArr[i19] >> 3) & 1, (bArr[i19] >> 4) & 1, 0);
                    return;
                }
            }
            if (i17 != 3) {
                if (i17 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            } else {
                int i20 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i20);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i20}, null, null);
                return;
            }
        }
        if (i8 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (i8) {
            case 33:
                byte b2 = bArr[i2 + 2];
                byte b3 = bArr[i2 + 3];
                this.f11747c = b2 & 255;
                int i21 = 0;
                while (true) {
                    iArr = this.f11748d;
                    if (i21 < iArr.length) {
                        int i22 = this.f11747c;
                        if (i22 != iArr[i21][0]) {
                            i21++;
                        } else if (i22 != 0) {
                            this.f11746b = i21;
                        }
                    }
                }
                if (this.f11747c != 6) {
                    int i23 = b3 & 255;
                    if (i23 == 1) {
                        if (i21 < iArr.length) {
                            l0.b0.l0(iArr[i21][1], 0);
                        }
                    } else if (i23 == 0) {
                        int i24 = this.f11746b;
                        if (i24 < iArr.length) {
                            i4 = 255;
                            if (i24 != 255) {
                                l0.b0.l0(iArr[i24][1], 1);
                            }
                        } else {
                            i4 = 255;
                        }
                        this.f11746b = i4;
                    }
                } else if ((b3 & 255) == 1) {
                    int i25 = h0.c.E;
                    if (i25 == 3 || i25 == 4 || i25 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                break;
            case 34:
                u0.d.R2(l0.c0.l1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.l1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.l1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.l1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i26 = bArr[i2 + 2] & 255;
                int i27 = bArr[i2 + 3] & 255;
                int i28 = bArr[i2 + 4] & 255;
                int i29 = bArr[i2 + 5] & 255;
                int i30 = bArr[i2 + 6] & 255;
                int i31 = bArr[i2 + 7] & 255;
                qt.y0(10, (i26 >> 7) & 1);
                qt.y0(11, (i26 >> 6) & 1);
                qt.y0(12, (i26 >> 5) & 1);
                qt.y0(38, (i26 >> 1) & 1);
                qt.y0(63, (i26 >> 0) & 1);
                if (i27 != 1) {
                    if (i27 == 2) {
                        i5 = 0;
                        i7 = 1;
                    } else if (i27 == 3) {
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                    } else if (i27 == 4) {
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                    } else if (i27 != 5) {
                        i5 = 0;
                        i7 = 0;
                    } else {
                        i7 = 0;
                        i6 = 0;
                        i5 = 1;
                    }
                    i6 = i7;
                } else {
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                }
                qt.y0(18, i5);
                qt.y0(19, i7);
                qt.y0(20, i6);
                qt.y0(77, i27);
                qt.y0(21, i28);
                qt.y0(27, i29);
                qt.y0(105, (i31 & 255) | ((i30 << 8) & 65280));
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
                qt.y0(0, (i32 >> 2) & 1);
                qt.y0(5, (i32 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, 169, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 168, 2, iArr[0], iArr[1]);
        }
    }
}
