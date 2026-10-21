package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class w7 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11677c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11678d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{4, 13}, new int[]{5, 18}, new int[]{8, 4}, new int[]{9, 3}, new int[]{11, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{22, 32}, new int[]{23, 33}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        z.k.s(227, 2, 36, 20, 3);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f11677c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f11678d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f11677c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f11676b = i8;
                    break;
                }
                i8++;
            }
            if ((b4 & 255) != 0) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                int i10 = this.f11676b;
                if (i10 < iArr.length && i10 != 255) {
                    l0.b0.l0(iArr[i10][1], 1);
                }
                this.f11676b = 255;
                return;
            }
        }
        if (b2 != 49) {
            return;
        }
        byte b5 = bArr[i2 + 2];
        qt.y0(10, (b5 >> 6) & 1);
        qt.y0(37, (b5 >> 2) & 1);
        byte b6 = bArr[i2 + 3];
        qt.y0(53, (b6 >> 6) & 1);
        qt.y0(12, (b6 >> 4) & 1);
        qt.y0(13, (b6 >> 3) & 1);
        qt.y0(14, (b6 >> 2) & 1);
        qt.y0(17, (b6 >> 1) & 1);
        qt.y0(11, (b6 >> 0) & 1);
        byte b7 = bArr[i2 + 4];
        qt.y0(16, (b7 >> 5) & 1);
        qt.y0(65, (b7 >> 4) & 1);
        qt.y0(30, (b7 >> 2) & 3);
        qt.y0(29, b7 & 3);
        byte b8 = bArr[i2 + 5];
        qt.y0(32, (b8 >> 2) & 3);
        qt.y0(31, b8 & 3);
        int i11 = (bArr[i2 + 6] & 255) + 1;
        qt.y0(77, i11);
        if (i11 != 1) {
            if (i11 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i11 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i11 != 4) {
                i4 = 0;
                i6 = 0;
            } else {
                i6 = 0;
                i4 = 1;
                i5 = 1;
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
        int i12 = bArr[i2 + 7] & 255;
        if (i12 < 0) {
            i12 = 0;
        } else if (i12 > 7) {
            i12 = 7;
        }
        qt.y0(21, i12);
        int i13 = i2 + 8;
        byte b9 = bArr[i13];
        int i14 = i2 + 9;
        byte b10 = bArr[i14];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b9 = bArr[i14];
            b10 = bArr[i13];
        }
        int i15 = b5 & 4;
        if (i15 != 0) {
            if (b9 == -85) {
                qt.y0(27, -3);
            } else if (b9 == 0) {
                qt.y0(27, -1);
            } else if (b9 != 119) {
                qt.y0(27, b9 & 255);
            } else {
                qt.y0(27, -2);
            }
        } else if (b9 == 0) {
            qt.y0(27, -1);
        } else if (b9 == 30) {
            qt.y0(27, -2);
        } else if (b9 != 60) {
            qt.y0(27, b9 & 255);
        } else {
            qt.y0(27, -3);
        }
        if (i15 != 0) {
            if (b10 == -85) {
                qt.y0(28, -3);
            } else if (b10 == 0) {
                qt.y0(28, -1);
            } else if (b10 != 119) {
                qt.y0(28, b10 & 255);
            } else {
                qt.y0(28, -2);
            }
        } else if (b10 == 0) {
            qt.y0(28, -1);
        } else if (b10 == 30) {
            qt.y0(28, -2);
        } else if (b10 != 60) {
            qt.y0(28, b10 & 255);
        } else {
            qt.y0(28, -3);
        }
        qt.y0(87, bArr[i2 + 10] & 255);
        int i16 = bArr[i2 + 11] & 255;
        if (i16 < 0) {
            i7 = 0;
        } else {
            i7 = 7;
            if (i16 <= 7) {
                i7 = i16;
            }
        }
        qt.y0(25, i7);
        byte b11 = bArr[i2 + 12];
        if (i15 != 0) {
            if (b11 == -85) {
                qt.y0(40, -3);
            } else if (b11 == 0) {
                qt.y0(40, -1);
            } else if (b11 != 119) {
                qt.y0(40, b11 & 255);
            } else {
                qt.y0(40, -2);
            }
        } else if (b11 == 0) {
            qt.y0(40, -1);
        } else if (b11 == 30) {
            qt.y0(40, -2);
        } else if (b11 != 60) {
            qt.y0(40, b11 & 255);
        } else {
            qt.y0(40, -3);
        }
        if (nt.a()) {
            int i17 = bArr[i2 + 13] & 255;
            int i18 = i17 >= 80 ? ((i17 * 5) + 1000) - 400 : 1000 - (400 - (i17 * 5));
            if (i18 > 600) {
                u0.d.A3(i18);
            }
        }
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
        switch (i2) {
            case 0:
                a3(0);
                break;
            case 1:
                a3(1);
                break;
            case 2:
                a3(2);
                break;
            case 3:
                a3(3);
                break;
            case 4:
                a3(4);
                break;
            case 5:
                a3(5);
                break;
            case 6:
                a3(6);
                break;
            case 7:
                a3(7);
                break;
            case 8:
                a3(8);
                break;
            case 9:
                a3(9);
                break;
            case 10:
                a3(10);
                break;
            case 12:
                a3(12);
                break;
            case 13:
                a3(13);
                break;
            case 14:
                a3(14);
                break;
            case 15:
                a3(15);
                break;
            case 16:
                a3(16);
                break;
            case 17:
                a3(17);
                break;
            case 18:
                a3(18);
                break;
            case 19:
                a3(19);
                break;
            case 20:
                a3(20);
                break;
            case 21:
                a3(21);
                break;
            case 22:
                a3(22);
                break;
            case 23:
                a3(23);
                break;
            case 24:
                a3(24);
                break;
            case 25:
                a3(25);
                break;
            case 32:
                a3(32);
                break;
            case 33:
                a3(33);
                break;
            case 34:
                a3(34);
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 2, 60, (byte) i2, 0);
        z.k.s(227, 2, 60, 0, 0);
    }
}
