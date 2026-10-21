package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class g0 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5350c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5351d = {new int[]{1, 25}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{7, 21}, new int[]{8, 53}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 58}, new int[]{19, 56}, new int[]{22, 5}, new int[]{23, 7}, new int[]{24, 8}, new int[]{27, 34}, new int[]{28, 35}, new int[]{29, 53}, new int[]{32, 1}, new int[]{33, 2}, new int[]{34, 64}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c == 1) {
            this.f7886a.f8306a = null;
        } else {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 3];
                this.f5350c = bArr[i2 + 2] & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f5351d;
                    if (i9 >= iArr.length) {
                        break;
                    }
                    int i10 = this.f5350c;
                    if (i10 == iArr[i9][0]) {
                        if (i10 == 0) {
                            break;
                        }
                        this.f5349b = i9;
                        break;
                    }
                    i9++;
                }
                int i11 = b3 & 255;
                if (i11 == 1) {
                    if (i9 < iArr.length) {
                        l0.b0.l0(iArr[i9][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i11 == 0) {
                        int i12 = this.f5349b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f5349b = 255;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 != 3) {
            if (b2 == 7) {
                qt.y0(99, bArr[i2 + 2] & 255);
                return;
            }
            if (b2 == 13) {
                qt.y0(98, bArr[i2 + 2] & 255);
                return;
            }
            if (b2 != 34) {
                if (b2 != 48) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (nt.a()) {
                int i13 = nt.f8633a;
                if (i13 == 35) {
                    int i14 = i2 + 2;
                    u0.d.R2(l0.c0.s1(bArr[i14] & 255));
                    u0.d.S2(l0.c0.s1(bArr[i14] & 255));
                    int i15 = i2 + 3;
                    u0.d.T2(l0.c0.s1(bArr[i15] & 255));
                    u0.d.U2(l0.c0.s1(bArr[i15] & 255));
                    return;
                }
                if (i13 == 65571) {
                    u0.d.R2(l0.c0.t1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.t1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.t1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.t1(bArr[i2 + 5] & 255));
                    return;
                }
                return;
            }
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        byte b6 = bArr[i2 + 6];
        qt.y0(10, (b4 >> 7) & 1);
        qt.y0(11, (b4 >> 6) & 1);
        int[] iArr2 = new int[1];
        iArr2[0] = ((b4 >> 5) & 1) == 0 ? 0 : 1;
        qt.y0(12, iArr2);
        qt.y0(16, (b4 >> 4) & 1);
        qt.y0(54, (b4 >> 3) & 1);
        qt.y0(21, (b4 & 7) | ((b5 & 128) >> 4));
        switch (b5 & 63 & 255) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i8 = 1;
                break;
            case 2:
                i8 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
                i4 = 1;
                break;
            case 3:
                i8 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 1;
                break;
            case 4:
                i8 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 1;
                i7 = i6;
                break;
            case 5:
                i8 = 0;
                i4 = 0;
                i5 = 0;
                i7 = 0;
                i6 = 1;
                break;
            case 6:
                i8 = 0;
                i4 = 0;
                i7 = 0;
                i5 = 1;
                i6 = 1;
                break;
            case 7:
                i8 = 0;
                i4 = 0;
                i6 = 0;
                i7 = 0;
                i5 = 1;
                break;
            case 8:
                i8 = 0;
                i4 = 0;
                i6 = 0;
                i5 = 1;
                i7 = 1;
                break;
            case 9:
                i8 = 0;
                i4 = 0;
                i5 = 1;
                i6 = i5;
                i7 = i6;
                break;
            default:
                i8 = 0;
                i4 = 0;
                i5 = 0;
                i6 = i5;
                i7 = i6;
                break;
        }
        qt.y0(49, i8);
        qt.y0(15, i4);
        qt.y0(18, i5);
        qt.y0(19, i6);
        qt.y0(20, i7);
        int i16 = i2 + 4;
        byte b7 = bArr[i16];
        int i17 = i2 + 5;
        byte b8 = bArr[i17];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b7 = bArr[i17];
            b8 = bArr[i16];
        }
        qt.y0(27, b7 & 255);
        qt.y0(28, b8 & 255);
        qt.y0(29, (b6 >> 4) & 15);
        qt.y0(30, 15 & b6);
        if (nt.a()) {
            l0.f0.j(bArr[i2 + 7]);
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (b3(iArr, 1)) {
                a3(136, iArr[0]);
            }
        } else if (i2 == 1 && b3(iArr, 1)) {
            a3(132, iArr[0]);
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, (byte) i2, 1, (byte) i3);
    }

    public final boolean b3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
