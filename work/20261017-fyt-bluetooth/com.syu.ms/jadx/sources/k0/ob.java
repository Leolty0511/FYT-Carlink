package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ob extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8777d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f8778e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{6, 26}, new int[]{5, 18}, new int[]{4, 12}};

    public static int a3(int i2) {
        if (i2 != 1) {
            return i2 != 2 ? 15 : 8;
        }
        return 3;
    }

    public static int b3(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 8;
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
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        qt.z(l0.h0.f13058d);
        w0.e.f17815a.a(l0.h0.f13058d, 1);
        w0.e.f17819e.a(l0.h0.f13058d, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 65) {
            if (nt.a()) {
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(b3(bArr[i2 + 3] & 255));
                u0.d.T2(b3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                int i5 = i2 + 6;
                u0.d.D2(a3(bArr[i5] & 255));
                u0.d.E2(a3(bArr[i5] & 255));
                int i6 = i2 + 9;
                u0.d.F2(a3(bArr[i6] & 255));
                u0.d.G2(a3(bArr[i6] & 255));
                return;
            }
            return;
        }
        if (b2 != 17) {
            if (b2 != 18) {
                return;
            }
            byte b3 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            return;
        }
        if (nt.a()) {
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            this.f8776c = b4 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f8778e;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f8776c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f8775b = i7;
                    break;
                }
                i7++;
            }
            if ((b5 & 255) == 0) {
                int i9 = this.f8775b;
                if (i9 < iArr.length && i9 != 255) {
                    l0.b0.l0(iArr[i9][1], 1);
                }
                this.f8775b = 255;
            } else if (i7 < iArr.length) {
                if (iArr[i7][0] == 5 && h0.c.E != 4) {
                    l0.b0.l0(13, 0);
                } else if (iArr[i7][0] != 6 || ((i4 = h0.c.E) >= 3 && i4 <= 5)) {
                    l0.b0.l0(iArr[i7][1], 0);
                } else {
                    l0.b0.l0(12, 0);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(l0.h0.f13058d);
        w0.e.f17815a.d(l0.h0.f13058d);
        w0.e.f17819e.d(l0.h0.f13058d);
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
    }
}
