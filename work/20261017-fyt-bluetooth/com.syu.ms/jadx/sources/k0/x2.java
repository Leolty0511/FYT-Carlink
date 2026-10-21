package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class x2 extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11945d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f11943b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f11944c = new int[30][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11946e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f11947f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 27}, new int[]{9, 28}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

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

    /* JADX WARN: Code duplicated, block: B:50:0x01b6  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
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
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 6];
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b3 >> 6) & 1);
                qt.y0(1, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            if (nt.a()) {
                byte b4 = bArr[i2 + 4];
                byte b5 = bArr[i2 + 5];
                this.f11946e = b4 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f11947f;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f11946e;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f11945d = i7;
                        break;
                    }
                    i7++;
                }
                if ((b5 & 255) == 0) {
                    int i9 = this.f11945d;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                    }
                    this.f11945d = 255;
                } else if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                }
                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                return;
            }
            return;
        }
        if (b2 == 19) {
            int i10 = (bArr[i2 + 12] & 255) << 24;
            int i11 = (bArr[i2 + 13] & 255) << 24;
            qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i10);
            qt.y0(99, i11 | ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
            qt.y0(117, i10 | ((bArr[i2 + 6] & 255) << 8) | (bArr[i2 + 7] & 255));
            qt.y0(100, ((bArr[i2 + 8] & 255) << 8) | (bArr[i2 + 9] & 255));
            qt.y0(99, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] & 255) << 8));
            return;
        }
        if (b2 == 49) {
            qt.y0(11, bArr[i2 + 2] & 3);
            qt.y0(13, bArr[i2 + 3] & 8);
            int i12 = i2 + 4;
            qt.y0(65, bArr[i12] & 16);
            qt.y0(16, bArr[i12] & 32);
            byte b6 = bArr[i2 + 6];
            if (b6 == 0) {
                i4 = 0;
                i5 = 0;
                i6 = i5;
            } else if (b6 == 1) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (b6 == 2) {
                i4 = 0;
                i5 = 1;
                i6 = i5;
            } else if (b6 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (b6 != 4) {
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
                qt.y0(27, bArr[i2 + 9] & 255);
                qt.y0(28, bArr[i2 + 8] & 255);
                return;
            } else {
                qt.y0(27, bArr[i2 + 8] & 255);
                qt.y0(28, bArr[i2 + 9] & 255);
                return;
            }
        }
        if (b2 == 65) {
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
        if (b2 == 101) {
            int i15 = i2 + 3;
            qt.y0(123, (bArr[i15] >> 3) & 1);
            int[] iArr2 = new int[1];
            iArr2[0] = ((bArr[i15] >> 2) & 1) != 0 ? 1 : 0;
            qt.y0(124, iArr2);
            qt.y0(105, (bArr[i15] >> 1) & 1);
            qt.y0(106, (bArr[i15] >> 0) & 1);
            return;
        }
        if (b2 == 103) {
            int i16 = i2 + 3;
            qt.y0(108, bArr[i16] & 7 & 255);
            qt.y0(101, (bArr[i16] & 24) >> 3);
            return;
        }
        if (b2 == 22) {
            int i17 = (bArr[i2 + 14] & 255) << 24;
            qt.y0(114, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255) | i17);
            for (int i18 = 0; i18 < 5; i18++) {
                int i19 = (i18 * 2) + i2;
                int[] iArr3 = {i18, (bArr[i19 + 5] & 255) | ((bArr[i19 + 4] & 255) << 8) | i17};
                if (qt.C0(115, iArr3, this.f11943b[i18])) {
                    this.f11943b[i18] = iArr3;
                }
            }
            return;
        }
        if (b2 != 23) {
            return;
        }
        int i20 = (bArr[i2 + 62] & 255) << 24;
        for (int i21 = 0; i21 < 30; i21++) {
            int i22 = (i21 * 2) + i2;
            int[] iArr4 = {i21, (bArr[i22 + 3] & 255) | ((bArr[i22 + 2] & 255) << 8) | i20};
            if (qt.C0(116, iArr4, this.f11944c[i21])) {
                this.f11944c[i21] = iArr4;
            }
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
                o1.x.v(bVar, i2, this.f11943b[i4]);
                i4++;
            }
        } else {
            if (i2 != 116) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 30) {
                o1.x.v(bVar, i2, this.f11944c[i4]);
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
                    b3((byte) 106, (byte) 4, (byte) iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3((byte) 106, (byte) 5, (byte) iArr[0]);
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
                    b3((byte) 108, (byte) 4, (byte) iArr[0]);
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
                    b3((byte) 108, (byte) 5, (byte) iArr[0]);
                    break;
                }
                break;
            case 13:
                z.k.s(227, 4, 27, 3, 1, 2, 255);
                break;
            case 14:
                z.k.s(227, 4, 27, 3, 1, 1, 255);
                break;
            case 15:
                z.k.s(227, 4, 27, 2, 2, 2, 255);
                break;
            case 16:
                z.k.s(227, 4, 27, 2, 2, 1, 255);
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3((byte) 106, (byte) 2, (byte) iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    b3((byte) 106, (byte) 3, (byte) iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void b3(byte b2, byte b3, byte b4) {
        z.k.s(227, 2, b2, b3, b4);
    }
}
