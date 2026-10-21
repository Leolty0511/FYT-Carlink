package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class nf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8468c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8469d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{10, -1}, new int[]{18, 25}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 6}, new int[]{35, 9}, new int[]{37, 54}, new int[]{38, 5}, new int[]{39, 1}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        switch (nt.f8637c) {
            case 166:
                mt mtVar = this.f7886a;
                mtVar.f8306a = null;
                mtVar.f8310e = 0;
                mtVar.f8311f = 1;
                mtVar.f8317l = 0;
                mtVar.f8312g = 0;
                mtVar.f8320o = 0;
                break;
            case 167:
            case 168:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = new String[]{"com.syu.canbus"};
                mtVar2.f8310e = 0;
                mtVar2.f8311f = 0;
                mtVar2.f8317l = 0;
                mtVar2.f8312g = 0;
                mtVar2.f8320o = 0;
                break;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = bArr[i2] & 255;
        if (i9 == 32) {
            byte b2 = bArr[i2 + 2];
            byte b3 = bArr[i2 + 3];
            this.f8468c = b2 & 255;
            int i10 = 0;
            while (true) {
                iArr = this.f8469d;
                if (i10 >= iArr.length) {
                    break;
                }
                int i11 = this.f8468c;
                if (i11 == iArr[i10][0]) {
                    if (i11 == 0) {
                        break;
                    }
                    this.f8467b = i10;
                    break;
                }
                i10++;
            }
            int i12 = this.f8468c;
            if (i12 == 10) {
                if ((b3 & 255) == 1) {
                    int i13 = u0.b.f17347o;
                    if (i13 == 0) {
                        qt.a(1);
                        return;
                    } else {
                        if (i13 == 1) {
                            qt.a(0);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (i12 == 32) {
                for (int i14 = 0; i14 < (b3 & 255); i14++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i12 == 33) {
                for (int i15 = 0; i15 < (b3 & 255); i15++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if ((b3 & 255) != 0) {
                if (i10 < iArr.length) {
                    l0.b0.l0(iArr[i10][1], 0);
                    return;
                }
                return;
            }
            int i16 = this.f8467b;
            if (i16 < iArr.length) {
                i4 = 255;
                if (i16 != 255) {
                    l0.b0.l0(iArr[i16][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f8467b = i4;
            return;
        }
        if (i9 != 33) {
            if (i9 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (i9 != 97) {
                return;
            }
            byte b4 = bArr[i2 + 2];
            qt.y0(98, (b4 >> 7) & 1);
            qt.y0(99, (b4 >> 6) & 1);
            qt.y0(100, (b4 >> 5) & 1);
            qt.y0(101, (b4 >> 3) & 1);
            qt.y0(102, (b4 >> 2) & 1);
            qt.y0(103, (b4 >> 1) & 1);
            qt.y0(104, (b4 >> 0) & 1);
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        byte b7 = bArr[i2 + 4];
        int i17 = i2 + 5;
        byte b8 = bArr[i17];
        int i18 = i2 + 6;
        byte b9 = bArr[i18];
        qt.y0(53, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        qt.y0(12, (b5 >> 4) & 1);
        qt.y0(14, (b5 >> 2) & 1);
        qt.y0(16, (b5 >> 1) & 1);
        int i19 = b6 & 255;
        if (i19 == 1) {
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 1;
        } else if (i19 == 2) {
            i6 = 0;
            i7 = 0;
            i8 = 1;
            i5 = 1;
        } else if (i19 == 3) {
            i8 = 0;
            i6 = 0;
            i7 = 0;
            i5 = 1;
        } else if (i19 == 4) {
            i8 = 0;
            i7 = 0;
            i5 = 1;
            i6 = 1;
        } else if (i19 != 5) {
            i8 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        } else {
            i8 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 1;
        }
        qt.y0(77, i19);
        qt.y0(19, i8);
        qt.y0(20, i5);
        qt.y0(18, i6);
        qt.y0(65, i7);
        qt.y0(21, b7 & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b8 = bArr[i18];
            b9 = bArr[i17];
        }
        int i20 = b8 & 255;
        if (i20 <= 0 || i20 >= 16) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i20);
        }
        int i21 = 255 & b9;
        if (i21 <= 0 || i21 >= 16) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i21);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 105) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1003) {
                return;
            }
            z.k.s(227, -126, 1, 1);
        } else {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, -125, 2, (byte) iArr[0], (byte) iArr[1]);
        }
    }
}
