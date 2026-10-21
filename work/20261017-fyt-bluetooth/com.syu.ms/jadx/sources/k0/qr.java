package k0;

import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class qr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9691c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9692d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9693e = false;

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
                    a3(32, 0);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(64, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(64, 0);
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
                    a3(1, 4);
                    break;
                } else if (i2 == -1) {
                    a3(2, 4);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(1, 2);
                } else {
                    a3(2, 2);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(1, 3);
                } else {
                    a3(2, 3);
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
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f9691c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f9692d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f9691c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f9690b = i8;
                    break;
                }
                i8++;
            }
            if (this.f9691c != 9) {
                if ((b4 & 255) != 0) {
                    if (i8 < iArr.length) {
                        l0.b0.l0(iArr[i8][1], 0);
                        return;
                    }
                    return;
                }
                int i10 = this.f9690b;
                if (i10 < iArr.length) {
                    i4 = 255;
                    if (i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                } else {
                    i4 = 255;
                }
                this.f9690b = i4;
                return;
            }
            if ((b4 & 255) == 1) {
                int i11 = h0.c.E;
                if (i11 != 3) {
                    if (i11 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (i11 != 5) {
                        l0.b0.l0(29, 0);
                        l0.b0.l0(29, 1);
                        return;
                    }
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
                return;
            }
            return;
        }
        if (b2 == 40) {
            int i12 = i2 + 2;
            int i13 = bArr[i12] & 255;
            int i14 = i13 & 127;
            u0.d.B3((i13 & 128) != 0 ? 1000 - (i14 * 10) : (i14 * 10) + 1000);
            qt.y0(98, bArr[i12] & 255);
            return;
        }
        if (b2 == 96) {
            qt.y0(99, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(100, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(101, (bArr[i2 + 9] & 255) | ((bArr[i2 + 6] << 24) & (-16777216)) | ((bArr[i2 + 7] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 8] << 8) & 65280));
            return;
        }
        if (b2 == 125) {
            int i15 = bArr[i2 + 2] & 255;
            if (i15 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i16 = i2 + 3;
                    l0.c0.b((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                } else {
                    int i17 = i2 + 3;
                    l0.c0.a((bArr[i17] >> 3) & 1, (bArr[i17] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i15 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                int i18 = i2 + 3;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i18] >> 6) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i18] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i15 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f9693e = true;
                return;
            } else if (i15 != 3) {
                if (i15 != 4) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                return;
            } else {
                int i19 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i19);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i19}, null, null);
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b5 >> 7) & 1);
                qt.y0(1, (b5 >> 6) & 1);
                return;
            } else {
                qt.y0(2, (b5 >> 6) & 1);
                qt.y0(1, (b5 >> 7) & 1);
                return;
            }
        }
        if (b2 != 37) {
            return;
        }
        int i20 = bArr[i2 + 2] & 255;
        int i21 = bArr[i2 + 3] & 255;
        int i22 = bArr[i2 + 4] & 255;
        int i23 = bArr[i2 + 5] & 255;
        qt.y0(10, (i20 >> 7) & 1);
        qt.y0(11, (i20 >> 6) & 1);
        qt.y0(12, (i20 >> 5) & 1);
        qt.y0(13, (i20 >> 3) & 1);
        qt.y0(53, (i20 >> 2) & 1);
        int i24 = i21 & 15;
        if (i24 == 1) {
            i5 = 0;
            i6 = 0;
            i7 = 1;
        } else if (i24 == 2) {
            i6 = 0;
            i7 = 1;
            i5 = 1;
        } else if (i24 != 3) {
            if (i24 == 4) {
                i7 = 0;
                i5 = 1;
            } else if (i24 != 5) {
                i7 = 0;
                i5 = 0;
            } else {
                i7 = 0;
                i5 = 0;
                i6 = 1;
            }
            i6 = i5;
        } else {
            i7 = 0;
            i6 = 0;
            i5 = 1;
        }
        qt.y0(19, i7);
        qt.y0(20, i5);
        qt.y0(18, i6);
        qt.y0(21, i22 & 255);
        if (i23 == 0) {
            qt.y0(27, -2);
        } else if (i23 != 255) {
            qt.y0(27, i23);
        } else {
            qt.y0(27, -3);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 102) {
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
            z.k.s(227, 138, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 1 && iArr != null && iArr.length > 0) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2, int i3) {
        if (i3 == 0) {
            z.k.s(227, -118, 5, i2, 0, 0, 0, 0);
        } else if (i3 == 1) {
            z.k.s(227, -118, 5, 0, i2, 0, 0, 0);
        } else if (i3 == 2) {
            z.k.s(227, -118, 5, 0, 0, i2, 0, 0);
        } else if (i3 == 3) {
            z.k.s(227, -118, 5, 0, 0, 0, i2, 0);
        } else if (i3 == 4) {
            z.k.s(227, -118, 5, 0, 0, 0, 0, i2);
        }
        a.i.a0(50L);
        z.k.s(227, -118, 5, 0, 0, 0, 0, 0);
    }
}
