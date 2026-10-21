package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class da extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4399c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4400d = {new int[]{3, 2}, new int[]{4, 7}, new int[]{5, 8}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 34}, new int[]{11, 35}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        z.k.s(227, 1, 1, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 0];
        if (b2 == 35) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4399c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f4400d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f4399c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f4398b = i4;
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
                    int i6 = this.f4398b;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f4398b = 255;
                }
            }
            return;
        }
        switch (b2) {
            case -127:
                if (nt.a()) {
                    int i7 = bArr[i2 + 2] & 255;
                    u0.d.A3((i7 & 128) != 0 ? 1000 - (((255 - (i7 & 127)) + 1) * 10) : ((i7 & 127) * 10) + 1000);
                }
                break;
            case -126:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 2) & 1);
                    qt.y0(2, (b5 >> 3) & 1);
                } else {
                    qt.y0(1, (b5 >> 2) & 1);
                    qt.y0(2, (b5 >> 3) & 1);
                }
                qt.y0(4, (b5 >> 1) & 1);
                qt.y0(3, b5 & 1);
                break;
            case -125:
                qt.y0(10, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
                break;
            case -124:
                qt.y0(9, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
                break;
            case -123:
                qt.y0(12, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
                break;
            case -122:
                qt.y0(11, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
                break;
            case -121:
                qt.y0(8, bArr[i2 + 2] & 255);
                break;
            case -120:
                qt.y0(7, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 13) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
