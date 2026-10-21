package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class dj extends lt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f4506h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4507b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4510e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4508c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4509d = {new int[]{6, 4}, new int[]{7, 3}, new int[]{30, 1}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4511f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4512g = 0;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 0) {
            int i8 = bArr[i2 + 2] & 255;
            byte b3 = bArr[i2 + 3];
            int i9 = bArr[i2 + 4] & 255;
            int i10 = (i8 >> 2) & 1;
            if (this.f4511f != i10) {
                this.f4511f = i10;
                if (i10 == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
            }
            int i11 = (i8 >> 3) & 1;
            if (this.f4512g != i11) {
                this.f4512g = i11;
                if (i11 == 1) {
                    qt.b(1);
                } else {
                    qt.b(0);
                }
            }
            int i12 = (i8 >> 7) & 1;
            if (f4506h != i12) {
                f4506h = i12;
                if (i12 != 0) {
                    if (o1.u.S(a.b.Q)) {
                        this.f4510e = true;
                    } else {
                        this.f4510e = false;
                        o1.u.f(a.b.R);
                    }
                } else if (!this.f4510e && u0.b.C != 13 && o1.u.S(a.b.Q)) {
                    o1.u.k();
                }
            }
            if (i9 > 26) {
                i4 = nt.f8649j == 1 ? (i9 - 27) + 35 : (((i9 - 27) * 20) / 27) + 20;
            } else {
                i4 = nt.f8649j == 1 ? 35 - (27 - i9) : 20 - (((27 - i9) * 20) / 27);
            }
            qt.j0(i4);
            u0.d.R2(l0.c0.Q0(bArr[i2 + 5] & 255));
            int i13 = i2 + 6;
            u0.d.S2(l0.c0.Q0(bArr[i13] & 255));
            u0.d.T2(l0.c0.Q0(bArr[i13] & 255));
            u0.d.U2(l0.c0.Q0(bArr[i2 + 7] & 255));
            return;
        }
        if (b2 != 19) {
            if (b2 != 33) {
                if (b2 != 48) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            int i14 = bArr[i2 + 2] & 255;
            this.f4508c = i14;
            int i15 = 0;
            while (true) {
                iArr = this.f4509d;
                if (i15 >= iArr.length) {
                    break;
                }
                int i16 = this.f4508c;
                if (i16 == iArr[i15][0]) {
                    if (i16 == 0) {
                        break;
                    }
                    this.f4507b = i15;
                    break;
                }
                i15++;
            }
            if (i14 != 0) {
                if (i15 < iArr.length) {
                    l0.b0.l0(iArr[i15][1], 0);
                }
                l0.b0.l0(this.f4509d[i15][1], 1);
                return;
            }
            return;
        }
        int i17 = bArr[i2 + 2] & 255;
        int i18 = bArr[i2 + 3] & 255;
        int i19 = bArr[i2 + 4] & 255;
        int i20 = i2 + 5;
        int i21 = bArr[i20] & 255;
        int i22 = i2 + 6;
        int i23 = bArr[i22] & 255;
        int i24 = bArr[i2 + 7] & 255;
        qt.y0(12, (i17 >> 0) & 3);
        qt.y0(16, (i18 >> 5) & 1);
        qt.y0(11, (i18 >> 1) & 1);
        int i25 = (i19 >> 4) & 15;
        switch (i25) {
            case 1:
                i5 = 0;
                i6 = 0;
                i7 = 1;
                break;
            case 2:
                i5 = 0;
                i7 = 0;
                i6 = 1;
                break;
            case 3:
                i5 = 0;
                i6 = 1;
                i7 = i6;
                break;
            case 4:
                i6 = 0;
                i7 = 0;
                i5 = 1;
                break;
            case 5:
                i6 = 0;
                i5 = 1;
                i7 = 1;
                break;
            case 6:
                i7 = 0;
                i5 = 1;
                i6 = 1;
                break;
            case 7:
                i5 = 1;
                i6 = i5;
                i7 = i6;
                break;
            default:
                i5 = 0;
                i6 = i5;
                i7 = i6;
                break;
        }
        qt.y0(18, i5);
        qt.y0(19, i6);
        qt.y0(20, i7);
        qt.y0(77, i25);
        qt.y0(21, (i19 >> 0) & 15);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i21 = bArr[i22] & 255;
            i23 = bArr[i20] & 255;
        }
        if (i21 == 0) {
            qt.y0(27, -2);
        } else if (i21 != 36) {
            qt.y0(27, i21);
        } else {
            qt.y0(27, -3);
        }
        if (i23 == 0) {
            qt.y0(28, -2);
        } else if (i23 != 36) {
            qt.y0(28, i23);
        } else {
            qt.y0(28, -3);
        }
        int i26 = i24 & 63;
        u0.d.A3((i24 & 128) == 128 ? 1000 - (i26 * 10) : (i26 * 10) + 1000);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 95, 1, iArr[0]);
        }
    }
}
