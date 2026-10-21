package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ci extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4070c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4071d = {new int[]{3, 1}, new int[]{4, 2}, new int[]{5, 18}, new int[]{6, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4072e = false;

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
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f4070c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4071d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4070c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4069b = i4;
                    break;
                }
                i4++;
            }
            if ((b4 & 255) != 0) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                int i6 = this.f4069b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f4069b = 255;
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 38) {
            if (this.f4072e) {
                return;
            }
            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 540);
            return;
        }
        if (b2 != 125) {
            return;
        }
        int i7 = bArr[i2 + 2] & 255;
        if (i7 == 1) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i8 = i2 + 3;
                l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                return;
            } else {
                int i9 = i2 + 3;
                l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                return;
            }
        }
        if (i7 == 3) {
            int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
            qt.y0(1031, i10);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
        } else {
            if (i7 != 8) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
            this.f4072e = true;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 8) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
