package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class yd extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12452c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12453d = {new int[]{17, 2}, new int[]{18, 67}, new int[]{19, 68}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}, new int[]{129, 25}, new int[]{130, 11}, new int[]{131, 5}, new int[]{132, 2}, new int[]{133, 21}, new int[]{134, 3}, new int[]{135, 4}, new int[]{136, 55}, new int[]{137, 12}, new int[]{138, 1}, new int[]{139, 38}, new int[]{161, 40}, new int[]{162, 41}, new int[]{163, 42}, new int[]{164, 43}, new int[]{165, 44}, new int[]{166, 45}, new int[]{167, 39}, new int[]{168, 64}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12454e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12455f = 0;

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
                    if (nt.f8645g[21] != 0) {
                        b3(10);
                    }
                } else if (nt.f8645g[21] == 0) {
                    b3(8);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        b3(8);
                    }
                } else if (nt.f8645g[11] == 0) {
                    b3(8);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        b3(1);
                    }
                } else if (nt.f8645g[13] == 0) {
                    b3(1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        b3(5);
                    }
                } else if (nt.f8645g[16] == 0) {
                    b3(5);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        b3(3);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    b3(3);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    b3(7);
                } else {
                    b3(6);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    b3(13);
                } else {
                    b3(12);
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
        mtVar.f8320o = 0;
        if (nt.f8637c != 1) {
            mtVar.f8306a = null;
        } else {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
        }
        mtVar.f8318m = new int[]{33, 34, 35, 37, 38, 39, 41};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2];
        int i5 = 0;
        if (b2 == 16) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            int i6 = i2 + 5;
            byte b6 = bArr[i6];
            int i7 = i2 + 6;
            byte b7 = bArr[i7];
            qt.y0(25, b3);
            qt.y0(12, (b4 >> 7) & 1);
            qt.y0(65, (b4 >> 6) & 1);
            qt.y0(16, (b4 >> 5) & 1);
            qt.y0(20, (b4 >> 4) & 1);
            qt.y0(18, (b4 >> 3) & 1);
            qt.y0(13, (b4 >> 2) & 1);
            qt.y0(11, (b4 >> 0) & 1);
            qt.y0(53, (b5 >> 7) & 1);
            qt.y0(14, (b5 >> 6) & 1);
            qt.y0(21, (b5 >> 0) & 15);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b6 = bArr[i7];
                b7 = bArr[i6];
            }
            if (b6 == 1) {
                qt.y0(27, -2);
            } else if (b6 == 57) {
                qt.y0(27, -3);
            } else if (b6 >= 3 && b6 < 55) {
                qt.y0(27, (int) (((((double) (b6 - 1)) * 2.5d) + 180.0d) * 10.0d));
            }
            if (b7 == 1) {
                qt.y0(28, -2);
                return;
            }
            if (b7 == 57) {
                qt.y0(28, -3);
                return;
            } else {
                if (b7 < 3 || b7 >= 55) {
                    return;
                }
                qt.y0(28, (int) (((((double) (b7 - 1)) * 2.5d) + 180.0d) * 10.0d));
                return;
            }
        }
        if (b2 == 18) {
            if (nt.a()) {
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                int i8 = b8 & 255;
                this.f12452c = i8;
                int i9 = 0;
                while (true) {
                    iArr = this.f12453d;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f12452c;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f12451b = i9;
                        break;
                    }
                    i9++;
                }
                int i11 = nt.f8633a;
                if (i11 != 259 && i11 != 65816 && i11 != 196888 && i11 != 262424 && i11 != 407 && i11 != 65943) {
                    if (i8 != 0) {
                        if (i9 < iArr.length) {
                            l0.b0.l0(iArr[i9][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i9 <= iArr.length) {
                            l0.b0.l0(iArr[this.f12451b][1], 1);
                            return;
                        }
                        return;
                    }
                }
                int i12 = b9 & 255;
                if (i12 == 1) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i12 != 0 || i9 > iArr.length) {
                        return;
                    }
                    l0.b0.l0(iArr[this.f12451b][1], 1);
                    return;
                }
            }
            return;
        }
        if (b2 == 36) {
            byte b10 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            } else {
                qt.y0(1, (b10 >> 6) & 1);
                qt.y0(2, (b10 >> 7) & 1);
            }
            qt.y0(3, (b10 >> 4) & 1);
            qt.y0(4, (b10 >> 5) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            qt.y0(0, (b10 >> 2) & 1);
            return;
        }
        if (b2 == 80) {
            if (nt.a()) {
                byte b11 = bArr[i2 + 2];
                byte b12 = bArr[i2 + 3];
                int i13 = b11 & 255;
                this.f12452c = i13 | 128;
                int i14 = 0;
                while (true) {
                    iArr2 = this.f12453d;
                    if (i14 >= iArr2.length) {
                        break;
                    }
                    int i15 = this.f12452c;
                    if (i15 == iArr2[i14][0]) {
                        if (i15 == 0) {
                            break;
                        }
                        this.f12451b = i14;
                        break;
                    }
                    i14++;
                }
                if (i13 >= 16 && i13 <= 19) {
                    if (i13 == 16 || i13 == 18) {
                        l0.b0.s0(b12 & 255);
                        return;
                    } else {
                        l0.b0.r0(b12 & 255);
                        return;
                    }
                }
                int i16 = nt.f8633a;
                if (i16 == 259 || i16 == 65816 || i16 == 196888 || i16 == 262424 || i16 == 407 || i16 == 65943) {
                    if ((b12 & 255) != 0) {
                        if (i14 < iArr2.length) {
                            l0.b0.l0(iArr2[i14][1], 0);
                            return;
                        }
                        return;
                    } else {
                        if (i14 <= iArr2.length) {
                            l0.b0.l0(iArr2[this.f12451b][1], 1);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (b2 == 82) {
            qt.y0(98, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
            return;
        }
        if (b2 == 85) {
            if (!nt.a() || (i4 = bArr[i2 + 9] & 255) == 255) {
                return;
            }
            if (i4 < 40) {
                i5 = 1000 - ((40 - i4) * 10);
            } else if (i4 >= 40 && i4 <= 200) {
                i5 = ((i4 - 40) * 10) + 1000;
            }
            u0.d.A3(i5);
            return;
        }
        switch (b2) {
            case 48:
                break;
            case 49:
                qt.m(bArr[i2 + 3], bArr[i2 + 2], 7680, true, 4860);
                return;
            case 50:
                if (nt.a()) {
                    byte b13 = bArr[i2 + 2];
                    byte b14 = bArr[i2 + 3];
                    this.f12454e = b13 & 255;
                    this.f12455f = b14 & 255;
                    u0.d.R2(a3(bArr[i2 + 4] & 255));
                    u0.d.S2(a3(bArr[i2 + 5] & 255));
                    u0.d.T2(a3(bArr[i2 + 6] & 255));
                    u0.d.U2(a3(bArr[i2 + 7] & 255));
                    return;
                }
                return;
            case 51:
                if (nt.a()) {
                    byte b15 = bArr[i2 + 2];
                    byte b16 = bArr[i2 + 3];
                    this.f12454e = b15 & 255;
                    this.f12455f = b16 & 255;
                    u0.d.D2(a3(bArr[i2 + 4] & 255));
                    u0.d.E2(a3(bArr[i2 + 5] & 255));
                    u0.d.F2(a3(bArr[i2 + 6] & 255));
                    u0.d.G2(a3(bArr[i2 + 7] & 255));
                    return;
                }
                return;
            default:
                return;
        }
        while (i5 < i3 - 3) {
            if (bArr[i5 + 2] == 47 && bArr[i5 + 3] == 48) {
                return;
            } else {
                i5++;
            }
        }
        qt.L(new String(bArr, i2 + 2, i5));
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (d3(iArr, 1)) {
                c3((iArr[0] >> 8) & 255, iArr[0] & 255);
            }
        } else if (i2 == 1 && d3(iArr, 1)) {
            z.k.s(227, 113, 2, (byte) iArr[0], iArr[1]);
        }
    }

    public final int a3(int i2) {
        int i3 = this.f12454e;
        if (i3 != 1) {
            if (i3 != 0) {
                return 0;
            }
            int i4 = this.f12455f;
            return i4 <= 10 ? (10 / i4) * i2 : i2 / (i4 / 10);
        }
        int i5 = nt.f8633a;
        if (i5 == 259 || i5 == 65816 || i5 == 196888 || i5 == 262424 || i5 == 407 || i5 == 65943) {
            if (i2 == 127 || i2 == 255) {
                return 10;
            }
            return (i2 / 10) - 2;
        }
        if (i2 == 0 || i2 == 10) {
            return 10;
        }
        return i2 - 1;
    }

    public final void b3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 113, 2, b2, 1);
        z.k.s(227, 113, 2, b2, 0);
    }

    public final void c3(int i2, int i3) {
        z.k.s(227, -125, 2, (byte) i2, (byte) i3);
    }

    public final boolean d3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
