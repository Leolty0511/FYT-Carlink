package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class mk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8211c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8212d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{8, 3}, new int[]{9, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f8213e = 0;

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2 || iArr[0] != 68) {
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, 4, 111, 20, 0, 0, 16);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, 4, 111, 20, 0, 0, 32);
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, 4, 111, 20, 32, 0, 0);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, 4, 111, 20, 16, 0, 0);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, 4, 111, 20, 2, 0, 0);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, 4, 111, 20, 1, 0, 0);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, 4, 111, 20, 0, 32, 0);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, 4, 111, 20, 0, 16, 0);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, 4, 111, 20, 0, 2, 0);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, 4, 111, 20, 0, 1, 0);
        } else if (iArr[1] == 11) {
            z.k.s(227, 4, 111, 20, 34, 34, 34);
        } else if (iArr[1] == 12) {
            z.k.s(227, 4, 111, 20, 17, 17, 17);
        }
    }

    @Override // k0.lt
    public void S2() {
        super.S2();
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == 17) {
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            this.f8211c = b4 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8212d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8211c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8210b = i4;
                    break;
                }
                i4++;
            }
            if ((b5 & 255) != 0) {
                if (i4 >= iArr.length || (b2 = this.f8213e) != 0) {
                    return;
                }
                this.f8213e = (byte) (b2 + 1);
                l0.b0.l0(iArr[i4][1], 0);
                return;
            }
            int i6 = this.f8210b;
            if (i6 < iArr.length && i6 != 255) {
                l0.b0.l0(iArr[i6][1], 1);
                this.f8213e = (byte) 0;
            }
            this.f8210b = 255;
            return;
        }
        if (b3 == 26) {
            byte b6 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 6) & 1);
                qt.y0(2, (b6 >> 7) & 1);
            } else {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
            }
            qt.y0(3, (b6 >> 5) & 1);
            qt.y0(4, (b6 >> 4) & 1);
            qt.y0(5, (b6 >> 3) & 1);
            qt.y0(0, (b6 >> 2) & 1);
            qt.i(bArr[i2 + 6], bArr[i2 + 5], true, 540);
            return;
        }
        if (b3 != 49) {
            if (b3 != 65) {
                return;
            }
            u0.d.R2(l0.h0.s(bArr[i2 + 2] & 255));
            u0.d.S2(l0.h0.s(bArr[i2 + 3] & 255));
            u0.d.T2(l0.h0.s(bArr[i2 + 4] & 255));
            u0.d.U2(l0.h0.s(bArr[i2 + 5] & 255));
            u0.d.D2(l0.h0.s(bArr[i2 + 6] & 255));
            u0.d.G2(l0.h0.s(bArr[i2 + 9] & 255));
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        byte b9 = bArr[i2 + 4];
        byte b10 = bArr[i2 + 5];
        byte b11 = bArr[i2 + 6];
        byte b12 = bArr[i2 + 7];
        byte b13 = bArr[i2 + 8];
        qt.y0(53, (b7 >> 0) & 1);
        qt.y0(10, (b7 >> 6) & 1);
        qt.y0(12, (b8 >> 4) & 1);
        qt.y0(16, (b9 >> 5) & 1);
        qt.y0(65, (b9 >> 4) & 1);
        qt.y0(77, b11 & 255);
        qt.y0(21, b12);
        qt.y0(27, b13 & 255);
    }

    @Override // k0.lt
    public void W2() {
        super.W2();
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 1) {
            return;
        }
        z.k.s(227, 2, 61, iArr[0], iArr[1]);
    }
}
