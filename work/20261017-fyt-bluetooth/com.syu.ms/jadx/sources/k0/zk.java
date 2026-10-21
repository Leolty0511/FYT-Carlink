package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class zk extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12835c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12836d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{8, 4}, new int[]{9, 3}, new int[]{11, 2}};

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
        mtVar.f8322q = 0;
        mtVar.f8314i = 0;
        mtVar.f8313h = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
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
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        byte b4 = bArr[i2 + 4];
        byte b5 = bArr[i2 + 5];
        this.f12835c = b4 & 255;
        int i4 = 0;
        while (true) {
            iArr = this.f12836d;
            if (i4 >= iArr.length) {
                break;
            }
            int i5 = this.f12835c;
            if (i5 == iArr[i4][0]) {
                if (i5 == 0) {
                    break;
                }
                this.f12834b = i4;
                break;
            }
            i4++;
        }
        if (this.f12835c != 5) {
            int i6 = b5 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else if (i6 == 0) {
                int i7 = this.f12834b;
                if (i7 < iArr.length && i7 != 255) {
                    l0.b0.l0(iArr[i7][1], 1);
                }
                this.f12834b = 255;
            }
        } else if ((b5 & 255) == 1) {
            int i8 = h0.c.E;
            if (i8 == 3 || (i8 != 4 && i8 == 5)) {
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
            } else {
                l0.b0.l0(18, 0);
                l0.b0.l0(18, 1);
            }
        }
        qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
