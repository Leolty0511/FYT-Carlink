package k0;

import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class cs extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4240c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4241d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 26}, new int[]{8, 13}, new int[]{9, 12}, new int[]{10, 62}, new int[]{11, 7}, new int[]{12, 8}};

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
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(1);
                return;
            }
            a3(2);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(3);
                return;
            } else {
                a3(4);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 9) {
                z.k.s(227, -58, 2, 5, 0);
                return;
            } else {
                if (iArr[1] == 10) {
                    z.k.s(227, -58, 2, 5, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(7);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(7);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(9);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(9);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(11);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(11);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(12);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(12);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(13);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(13);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(10);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(10);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(6);
                    break;
                } else if (i3 == -1) {
                    a3(5);
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4240c = b3 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f4241d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f4240c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f4239b = i6;
                    break;
                }
                i6++;
            }
            int i8 = this.f4240c;
            if (i8 == 11) {
                for (int i9 = 0; i9 < (b4 & 255); i9++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i8 == 12) {
                for (int i10 = 0; i10 < (b4 & 255); i10++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i11 = b4 & 255;
            if (i11 == 1) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                    return;
                }
                return;
            } else {
                if (i11 == 0) {
                    int i12 = this.f4239b;
                    if (i12 < iArr.length) {
                        i4 = 255;
                        if (i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f4239b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 34) {
            int i13 = i2 + 2;
            u0.d.R2(l0.c0.L0(bArr[i13] & 255));
            int i14 = i2 + 3;
            u0.d.S2(l0.c0.L0(bArr[i14] & 255));
            int i15 = i2 + 4;
            u0.d.T2(l0.c0.L0(bArr[i15] & 255));
            int i16 = i2 + 5;
            u0.d.U2(l0.c0.L0(bArr[i16] & 255));
            int i17 = bArr[i2 + 6] & 255;
            int i18 = bArr[i2 + 7] & 255;
            int i19 = bArr[i2 + 8] & 255;
            int i20 = bArr[i2 + 9] & 255;
            if (i17 == 0 && i18 == 0 && i19 == 0 && i20 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i17 || l0.c0.f13014h != i18 || l0.c0.f13015i != i19 || l0.c0.f13016j != i20) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i17;
            l0.c0.f13014h = i18;
            l0.c0.f13015i = i19;
            l0.c0.f13016j = i20;
            u0.d.D2(l0.c0.L0(bArr[i13] & 255));
            u0.d.E2(l0.c0.L0(bArr[i14] & 255));
            u0.d.F2(l0.c0.L0(bArr[i15] & 255));
            u0.d.G2(l0.c0.L0(bArr[i16] & 255));
            return;
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
            } else {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
            }
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 != 39) {
            if (b2 == 41) {
                qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 555);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 != 53) {
                if (b2 != 56) {
                    return;
                }
                int i21 = i2 + 2;
                qt.y0(103, (bArr[i21] >> 7) & 1);
                qt.y0(104, (bArr[i21] >> 5) & 3);
                qt.y0(105, (bArr[i21] >> 3) & 3);
                qt.y0(106, (bArr[i21] >> 1) & 3);
                return;
            }
            int i22 = i2 + 2;
            l0.c0.a((bArr[i22] >> 5) & 1, (bArr[i22] >> 4) & 1, 0);
            int i23 = bArr[i2 + 8] & 255;
            if (i23 == 255 || i23 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.B3((nt.f8645g[37] == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) ? (((i23 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i23 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
            qt.y0(98, bArr[i2 + 12] & 255);
            qt.y0(99, bArr[i2 + 13] & 255);
            qt.y0(100, bArr[i2 + 14] & 255);
            int i24 = i2 + 15;
            qt.y0(101, (bArr[i24] >> 7) & 1);
            qt.y0(102, (bArr[i24] >> 6) & 1);
            return;
        }
        int i25 = bArr[i2 + 2] & 255;
        int i26 = bArr[i2 + 3] & 255;
        int i27 = i2 + 4;
        int i28 = bArr[i27] & 255;
        int i29 = i2 + 5;
        int i30 = bArr[i29] & 255;
        int i31 = bArr[i2 + 6] & 255;
        qt.y0(10, (i25 >> 7) & 1);
        qt.y0(11, (i25 >> 6) & 1);
        qt.y0(12, (i25 >> 5) & 1);
        qt.y0(13, (i25 >> 4) & 1);
        qt.y0(65, (i25 >> 1) & 1);
        qt.y0(16, (i25 >> 0) & 1);
        qt.y0(18, (i26 >> 7) & 1);
        qt.y0(19, (i26 >> 6) & 1);
        qt.y0(20, (i26 >> 5) & 1);
        qt.y0(21, i26 & 15);
        qt.y0(37, (i31 >> 3) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i5 = 255;
            i28 = bArr[i29] & 255;
            i30 = bArr[i27] & 255;
        } else {
            i5 = 255;
        }
        if (i28 == 0) {
            qt.y0(27, -2);
        } else if (i28 == 127) {
            qt.y0(27, -1);
        } else if (i28 != i5) {
            qt.y0(27, i28 * 5);
        } else {
            qt.y0(27, -3);
        }
        if (i30 == 0) {
            qt.y0(28, -2);
            return;
        }
        if (i30 == 127) {
            qt.y0(28, -1);
        } else if (i30 != 255) {
            qt.y0(28, i30 * 5);
        } else {
            qt.y0(28, -3);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 198, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -58, 2, 0, i2);
        a.i.a0(200L);
        z.k.s(227, -58, 2, 0, 0);
    }
}
