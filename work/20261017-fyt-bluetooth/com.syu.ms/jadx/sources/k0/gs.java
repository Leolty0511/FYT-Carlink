package k0;

import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class gs extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5655c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5656d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 34}, new int[]{12, 35}, new int[]{13, 5}, new int[]{14, 29}, new int[]{15, 13}, new int[]{16, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f5657e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5658f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5659g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5660h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(138, 1);
            } else {
                qt.y0(138, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gs.this.f5660h);
            gs.this.f5658f = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gs gsVar = gs.this;
            int i2 = gsVar.f5658f - 1;
            gsVar.f5658f = i2;
            if (i2 <= 0) {
                l0.b0.p0(gsVar.f5660h);
                gs.this.f5658f = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 127, 0);
                }
            }
        }
    }

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
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 38) {
            if (iArr[1] != 0) {
                if (nt.f8645g[12] == 0) {
                    a3(1, 2);
                    return;
                }
                return;
            } else {
                if (nt.f8645g[12] == 1) {
                    a3(1, 2);
                    return;
                }
                return;
            }
        }
        if (i2 == 39) {
            int i3 = iArr[1];
            if (i3 == -2) {
                a3(8, 1);
                return;
            } else {
                if (i3 != -1) {
                    return;
                }
                a3(16, 1);
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(2, 3);
                return;
            } else {
                a3(1, 3);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(2, 4);
                return;
            } else {
                a3(1, 4);
                return;
            }
        }
        if (i2 != 68) {
            switch (i2) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[10] == 1) {
                            a3(128, 0);
                        }
                    } else if (nt.f8645g[10] == 0) {
                        a3(128, 0);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            a3(2, 0);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        a3(2, 0);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            a3(32, 0);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        a3(32, 0);
                    }
                    break;
            }
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -128, 2, 81, 0);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -128, 2, 81, 1);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -128, 2, 82, 0);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -128, 2, 82, 1);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -128, 2, 83, 0);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -128, 2, 83, 1);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -128, 2, 84, 0);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -128, 2, 84, 1);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -128, 2, 80, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -128, 2, 80, 1);
        } else if (iArr[1] == 11) {
            z.k.s(227, -128, 2, 85, 0);
        } else if (iArr[1] == 12) {
            z.k.s(227, -128, 2, 85, 1);
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f5659g, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
        if (nt.f8633a == 16515527) {
            u0.c.f17379f.a(this.f5657e, 1);
            this.f7886a.f8313h = 2;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 39, 41, 42, 55, 56, 67};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            if (u0.b.f17306a0 == 0) {
                return;
            }
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5655c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f5656d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f5655c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f5654b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f5654b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f5654b = 255;
                }
                return;
            }
        }
        if (b2 == 48) {
            qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5445);
            return;
        }
        if (b2 == 80) {
            int i11 = i2 + 2;
            qt.y0(99, (bArr[i11] >> 7) & 1);
            qt.y0(100, (bArr[i11] >> 5) & 3);
            qt.y0(101, (bArr[i11] >> 4) & 1);
            qt.y0(102, (bArr[i11] >> 3) & 1);
            qt.y0(103, (bArr[i11] >> 2) & 1);
            qt.y0(104, (bArr[i11] >> 1) & 1);
            qt.y0(105, (bArr[i11] >> 0) & 1);
            qt.y0(106, bArr[i2 + 3] & 255);
            int i12 = i2 + 4;
            qt.y0(107, (bArr[i12] >> 3) & 1);
            qt.y0(108, (bArr[i12] >> 2) & 1);
            qt.y0(109, (bArr[i12] >> 1) & 1);
            qt.y0(110, (bArr[i12] >> 0) & 1);
            int i13 = i2 + 5;
            qt.y0(111, (bArr[i13] >> 6) & 3);
            qt.y0(112, (bArr[i13] >> 3) & 7);
            qt.y0(113, (bArr[i13] >> 0) & 7);
            int i14 = i2 + 6;
            qt.y0(114, (bArr[i14] >> 5) & 7);
            qt.y0(115, (bArr[i14] >> 4) & 1);
            int i15 = i2 + 7;
            qt.y0(116, (bArr[i15] >> 6) & 3);
            qt.y0(117, (bArr[i15] >> 4) & 3);
            qt.y0(118, (bArr[i15] >> 2) & 3);
            qt.y0(119, (bArr[i15] >> 1) & 1);
            qt.y0(120, (bArr[i15] >> 0) & 1);
            qt.y0(121, (bArr[i2 + 8] >> 7) & 1);
            int i16 = i2 + 9;
            qt.y0(122, (bArr[i16] >> 6) & 3);
            qt.y0(123, (bArr[i16] >> 5) & 1);
            qt.y0(124, (bArr[i16] >> 4) & 1);
            int i17 = i2 + 10;
            qt.y0(125, (bArr[i17] >> 6) & 3);
            qt.y0(126, (bArr[i17] >> 5) & 1);
            qt.y0(127, (bArr[i17] >> 3) & 3);
            qt.y0(128, (bArr[i17] >> 2) & 1);
            qt.y0(129, (bArr[i17] >> 1) & 1);
            qt.y0(130, (bArr[i17] >> 0) & 1);
            int i18 = i2 + 11;
            qt.y0(131, 3 & (bArr[i18] >> 6));
            qt.y0(132, (bArr[i18] >> 5) & 1);
            int i19 = i2 + 12;
            qt.y0(133, (bArr[i19] >> 7) & 1);
            qt.y0(134, (bArr[i19] >> 6) & 1);
            int i20 = i2 + 13;
            qt.y0(135, (bArr[i20] >> 7) & 1);
            qt.y0(136, (bArr[i20] >> 6) & 1);
            qt.y0(137, (bArr[i20] >> 5) & 1);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 35:
                int i21 = i2 + 2;
                qt.y0(10, (bArr[i21] >> 7) & 1);
                qt.y0(11, (bArr[i21] >> 6) & 1);
                qt.y0(12, (bArr[i21] >> 5) & 1);
                qt.y0(13, (bArr[i21] >> 3) & 1);
                qt.y0(15, (bArr[i21] >> 0) & 1);
                qt.y0(16, (bArr[i21] >> 1) & 1);
                int i22 = i2 + 3;
                int i23 = bArr[i22] & 255;
                if (i23 != 1) {
                    if (i23 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i23 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i23 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i23 != 5) {
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
                qt.y0(77, bArr[i22] & 255);
                qt.y0(21, bArr[i2 + 4] & 255);
                int i24 = i2 + 6;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 7;
                int i27 = bArr[i26] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i25 = bArr[i26] & 255;
                    i27 = bArr[i24] & 255;
                }
                if (i25 == 0) {
                    qt.y0(27, -2);
                } else if (i25 == 127) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, (i25 * 5) + 160);
                }
                if (i27 == 0) {
                    qt.y0(28, -2);
                } else if (i27 == 127) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, (i27 * 5) + 160);
                }
                int i28 = i2 + 8;
                qt.y0(29, (bArr[i28] >> 2) & 3);
                qt.y0(30, (bArr[i28] >> 0) & 3);
                break;
            case 36:
                int i29 = i2 + 2;
                byte b5 = bArr[i29];
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
                l0.c0.a((bArr[i29] >> 1) & 1, (bArr[i29] >> 0) & 1, 0);
                break;
            case 37:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 38:
                int i30 = i2 + 2;
                int i31 = bArr[i30] & 255;
                int i32 = i2 + 3;
                int i33 = bArr[i32] & 255;
                int i34 = i2 + 4;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 5;
                int i37 = bArr[i36] & 255;
                if (i31 == 0 && i33 == 0 && i35 == 0 && i37 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i31 || l0.c0.f13014h != i33 || l0.c0.f13015i != i35 || l0.c0.f13016j != i37) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i31;
                l0.c0.f13014h = i33;
                l0.c0.f13015i = i35;
                l0.c0.f13016j = i37;
                u0.d.D2(l0.c0.E0(bArr[i30] & 255));
                u0.d.E2(l0.c0.E0(bArr[i32] & 255));
                u0.d.F2(l0.c0.E0(bArr[i34] & 255));
                u0.d.G2(l0.c0.E0(bArr[i36] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5659g);
        l0.b0.p0(this.f5660h);
        u0.c.f17379f.d(this.f5657e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 139) {
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
            z.k.s(227, -118, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -128, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -96, 1, iArr[0]);
            return;
        }
        if (i2 == 1003 && iArr != null && iArr.length > 0) {
            if (u0.b.f17347o == 1) {
                z.k.s(227, -96, 1, 0);
            } else {
                z.k.s(227, -96, 1, 1);
            }
        }
    }

    public final void a3(int i2, int i3) {
        if (i3 == 0) {
            z.k.s(227, -118, 6, i2, 0, 0, 0, 0, 0);
        } else if (i3 == 1) {
            z.k.s(227, -118, 6, 0, i2, 0, 0, 0, 0);
        } else if (i3 == 2) {
            z.k.s(227, -118, 6, 0, 0, i2, 0, 0, 0);
        } else if (i3 == 3) {
            z.k.s(227, -118, 6, 0, 0, 0, i2, 0, 0);
        } else if (i3 == 4) {
            z.k.s(227, -118, 6, 0, 0, 0, 0, i2, 0);
        } else if (i3 == 5) {
            z.k.s(227, -118, 6, 0, 0, 0, 0, 0, i2);
        }
        a.i.a0(100L);
        z.k.s(227, -118, 6, 0, 0, 0, 0, 0, 0);
    }
}
