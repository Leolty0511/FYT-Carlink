package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class kr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7400c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7401d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 18}, new int[]{7, 2}, new int[]{8, 26}};

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
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(16, 0);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(16, 0);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(8, 0);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(8, 0);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(1, 1);
                    break;
                } else if (i2 == -1) {
                    a3(2, 1);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(1, 3);
                } else {
                    a3(2, 3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(1, 4);
                } else {
                    a3(2, 4);
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
        if (nt.f8637c == 173) {
            mtVar.f8314i = 1;
        } else {
            mtVar.f8314i = 0;
        }
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
            this.f7400c = b2 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f7401d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f7400c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f7399b = i5;
                    break;
                }
                i5++;
            }
            int i7 = b3 & 255;
            if (i7 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                    return;
                }
                return;
            } else {
                if (i7 == 0) {
                    int i8 = this.f7399b;
                    if (i8 < iArr.length && i8 != 255) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f7399b = 255;
                    return;
                }
                return;
            }
        }
        if (i4 != 33) {
            if (i4 == 36) {
                int i9 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i9 >> 6) & 1);
                    qt.y0(1, (i9 >> 7) & 1);
                } else {
                    qt.y0(2, (i9 >> 7) & 1);
                    qt.y0(1, (i9 >> 6) & 1);
                }
                qt.y0(4, (i9 >> 5) & 1);
                qt.y0(3, (i9 >> 4) & 1);
                return;
            }
            if (i4 == 41) {
                qt.m(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, 15616, true, 9248);
                return;
            }
            if (i4 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (i4 == 125 && (bArr[i2 + 2] & 255) == 1) {
                    int i10 = i2 + 3;
                    l0.c0.a((bArr[i10] >> 3) & 1, (bArr[i10] >> 4) & 1, 0);
                    o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i10] & 255}, null, null);
                    return;
                }
                return;
            }
        }
        int i11 = bArr[i2 + 2] & 255;
        int i12 = bArr[i2 + 3] & 255;
        int i13 = bArr[i2 + 4] & 255;
        int i14 = bArr[i2 + 5] & 255;
        qt.y0(10, (i11 >> 7) & 1);
        qt.y0(11, (i11 >> 6) & 1);
        qt.y0(12, (i11 >> 5) & 1);
        qt.y0(68, (i11 >> 4) & 1);
        qt.y0(13, (i11 >> 3) & 1);
        qt.y0(65, (i11 >> 1) & 1);
        qt.y0(53, (i11 >> 0) & 1);
        qt.y0(18, (i12 >> 7) & 1);
        qt.y0(19, (i12 >> 6) & 1);
        qt.y0(20, (i12 >> 5) & 1);
        qt.y0(21, i12 & 15);
        if (i13 == 0) {
            qt.y0(27, -2);
        } else if (i13 == 16) {
            qt.y0(27, -3);
        } else if (i13 < 1 || i13 > 15) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i13);
        }
        if (i14 == 0) {
            qt.y0(28, -2);
            return;
        }
        if (i14 == 16) {
            qt.y0(28, -3);
        } else if (i14 < 1 || i14 > 15) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i14);
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
        if (i2 == 0 && iArr != null && iArr.length >= 2) {
            z.k.s(227, 199, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
        }
    }

    public final void a3(int i2, int i3) {
        if (i3 == 0) {
            z.k.s(227, -57, 6, i2, 0, 0, 0, 0, 0);
        } else if (i3 == 1) {
            z.k.s(227, -57, 6, 0, i2, 0, 0, 0, 0);
        } else if (i3 == 2) {
            z.k.s(227, -57, 6, 0, 0, i2, 0, 0, 0);
        } else if (i3 == 3) {
            z.k.s(227, -57, 6, 0, 0, 0, i2, 0, 0);
        } else if (i3 == 4) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, i2, 0);
        } else if (i3 == 5) {
            z.k.s(227, -57, 6, 0, 0, 0, 0, 0, i2);
        }
        a.i.a0(50L);
        z.k.s(227, -57, 6, 0, 0, 0, 0, 0, 0);
    }
}
