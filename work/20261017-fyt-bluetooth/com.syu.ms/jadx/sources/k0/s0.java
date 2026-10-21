package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class s0 extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10096e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f10093b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f10094c = new int[30][];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10095d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10097f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f10098g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f10099h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f10100i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s0 s0Var = s0.this;
            byte b2 = (byte) (s0Var.f10099h + 1);
            s0Var.f10099h = b2;
            if (b2 > 5) {
                l0.b0.o0(s0Var.f10100i);
                s0.this.f10099h = (byte) 0;
            }
        }
    }

    public static int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0202  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int i4;
        int i5;
        int i6;
        byte b3 = bArr[i2 + 1];
        if (b3 == -24) {
            if (nt.a()) {
                if ((bArr[i2 + 5] & 255) != 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 17) {
            byte b4 = bArr[i2 + 6];
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(3, (b4 >> 4) & 1);
            qt.y0(4, (b4 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b4 >> 6) & 1);
                qt.y0(1, (b4 >> 7) & 1);
            } else {
                qt.y0(1, (b4 >> 6) & 1);
                qt.y0(2, (b4 >> 7) & 1);
            }
            if (nt.a()) {
                byte b5 = bArr[i2 + 4];
                byte b6 = bArr[i2 + 5];
                this.f10097f = b5 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f10098g;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f10097f;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f10096e = i7;
                        break;
                    }
                    i7++;
                }
                int i9 = b6 & 255;
                if (i9 == 1) {
                    if (i7 < iArr.length && (b2 = this.f10099h) == 0) {
                        this.f10099h = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i7][1], 0);
                        l0.b0.a(this.f10100i);
                    }
                } else if (i9 == 0) {
                    int i10 = this.f10096e;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                        l0.b0.o0(this.f10100i);
                        this.f10099h = (byte) 0;
                    }
                    this.f10096e = 255;
                }
                qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
                return;
            }
            return;
        }
        if (b3 == 19) {
            int i11 = (bArr[i2 + 12] & 255) << 24;
            int i12 = (bArr[i2 + 13] & 255) << 24;
            qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i11);
            qt.y0(99, i12 | ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(117, i11 | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(100, ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(99, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] & 255) << 8));
            return;
        }
        if (b3 != 49) {
            if (b3 == 65) {
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    int i13 = i2 + 3;
                    u0.d.S2(a3(bArr[i13] & 255));
                    u0.d.T2(a3(bArr[i13] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                    u0.d.D2(a3(bArr[i2 + 6] & 255));
                    int i14 = i2 + 7;
                    u0.d.E2(a3(bArr[i14] & 255));
                    u0.d.F2(a3(bArr[i14] & 255));
                    u0.d.G2(a3(bArr[i2 + 9] & 255));
                    return;
                }
                return;
            }
            if (b3 == 22) {
                int i15 = (bArr[i2 + 14] & 255) << 24;
                int i16 = i2 + 2;
                int i17 = i2 + 3;
                qt.y0(98, ((bArr[i16] & 255) << 8) | (bArr[i17] & 255) | i15);
                qt.y0(114, ((bArr[i16] & 255) << 8) | (bArr[i17] & 255) | i15);
                for (int i18 = 0; i18 < 5; i18++) {
                    int i19 = (i18 * 2) + i2;
                    int[] iArr2 = {i18, (bArr[i19 + 5] & 255) | ((bArr[i19 + 4] & 255) << 8) | i15};
                    if (qt.C0(115, iArr2, this.f10093b[i18])) {
                        this.f10093b[i18] = iArr2;
                    }
                }
                return;
            }
            if (b3 == 23) {
                int i20 = (bArr[i2 + 62] & 255) << 24;
                for (int i21 = 0; i21 < 30; i21++) {
                    int i22 = (i21 * 2) + i2;
                    int[] iArr3 = {i21, (bArr[i22 + 3] & 255) | ((bArr[i22 + 2] & 255) << 8) | i20};
                    if (qt.C0(116, iArr3, this.f10094c[i21])) {
                        this.f10094c[i21] = iArr3;
                    }
                }
                return;
            }
            switch (b3) {
                case 101:
                    int i23 = i2 + 3;
                    qt.y0(123, (bArr[i23] >> 3) & 1);
                    int[] iArr4 = new int[1];
                    iArr4[0] = ((bArr[i23] >> 2) & 1) != 0 ? 1 : 0;
                    qt.y0(124, iArr4);
                    qt.y0(105, (bArr[i23] >> 1) & 1);
                    qt.y0(106, (bArr[i23] >> 0) & 1);
                    break;
                case 102:
                    int i24 = i2 + 4;
                    qt.y0(111, (bArr[i24] >> 7) & 1);
                    qt.y0(107, (bArr[i24] >> 6) & 1);
                    qt.y0(113, (bArr[i24] >> 0) & 1);
                    qt.y0(109, (bArr[i2 + 5] >> 4) & 1);
                    break;
                case 103:
                    int i25 = i2 + 3;
                    qt.y0(108, bArr[i25] & 7 & 255);
                    qt.y0(101, (bArr[i25] & 24) >> 3);
                    break;
            }
            return;
        }
        qt.y0(11, bArr[i2 + 2] & 3);
        qt.y0(13, bArr[i2 + 3] & 8);
        int i26 = i2 + 4;
        qt.y0(65, bArr[i26] & 16);
        qt.y0(16, bArr[i26] & 32);
        byte b7 = bArr[i2 + 6];
        if (b7 == 0) {
            i4 = 0;
            i5 = 0;
            i6 = i5;
        } else if (b7 == 1) {
            i4 = 0;
            i6 = 0;
            i5 = 1;
        } else if (b7 == 2) {
            i4 = 0;
            i5 = 1;
            i6 = i5;
        } else if (b7 == 3) {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        } else if (b7 != 4) {
            i4 = 0;
            i5 = 0;
            i6 = i5;
        } else {
            i5 = 0;
            i4 = 1;
            i6 = 1;
        }
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(21, bArr[i2 + 7] & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i27 = bArr[i2 + 9] & 255;
            if (i27 == 0) {
                qt.y0(27, -2);
            } else if (i27 == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, (i27 * 5) + 175);
            }
            int i28 = bArr[i2 + 8] & 255;
            if (i28 == 0) {
                qt.y0(28, -2);
                return;
            } else if (i28 == 255) {
                qt.y0(28, -3);
                return;
            } else {
                qt.y0(28, (i28 * 5) + 175);
                return;
            }
        }
        int i29 = bArr[i2 + 8] & 255;
        if (i29 == 0) {
            qt.y0(27, -2);
        } else if (i29 == 255) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, (i29 * 5) + 175);
        }
        int i30 = bArr[i2 + 9] & 255;
        if (i30 == 0) {
            qt.y0(28, -2);
        } else if (i30 == 255) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, (i30 * 5) + 175);
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 125) {
            return;
        }
        int i4 = 0;
        if (i2 == 115) {
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f10093b[i4]);
                i4++;
            }
        } else {
            if (i2 != 116) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 30) {
                o1.x.v(bVar, i2, this.f10094c[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 5, (byte) iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 4) {
                        iArr[0] = 4;
                    }
                    c3((byte) 108, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] < 0) {
                        iArr[0] = 0;
                    } else if (iArr[0] > 3) {
                        iArr[0] = 3;
                    }
                    c3((byte) 108, (byte) 5, (byte) iArr[0]);
                    break;
                }
                break;
            case 13:
                z.k.s(227, 4, 27, 3, 1, 2, -1);
                break;
            case 14:
                z.k.s(227, 4, 27, 3, 1, 1, -1);
                break;
            case 15:
                z.k.s(227, 4, 27, 2, 2, 2, -1);
                break;
            case 16:
                z.k.s(227, 4, 27, 2, 2, 1, -1);
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    c3((byte) 106, (byte) 3, (byte) iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void c3(byte b2, byte b3, byte b4) {
        z.k.s(227, 2, b2, b3, b4);
    }
}
