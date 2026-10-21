package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class e5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4686c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4687d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{9, 18}, new int[]{10, 26}, new int[]{8, 13}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4686c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f4687d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f4686c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f4685b = i4;
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
                    int i6 = this.f4685b;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f4685b = 255;
                }
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 36:
                byte b5 = bArr[i2 + 2];
                if ((b5 & 1) == 1) {
                    if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b5 >> 7) & 1);
                        qt.y0(2, (b5 >> 6) & 1);
                    } else {
                        qt.y0(1, (b5 >> 6) & 1);
                        qt.y0(2, (b5 >> 7) & 1);
                    }
                    qt.y0(3, (b5 >> 4) & 1);
                    qt.y0(4, (b5 >> 5) & 1);
                    qt.y0(5, (b5 >> 3) & 1);
                    qt.y0(0, (b5 >> 2) & 1);
                }
                break;
            case 37:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                qt.y0(101, b6 & 255);
                qt.y0(103, b7 & 255);
                break;
            case 38:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                int i7 = (((bArr[i2 + 4] & 65535) * 60 * 60) + ((bArr[i2 + 5] & 65535) * 60) + bArr[i2 + 6]) & 65535 & 65535;
                int i8 = (((bArr[i2 + 7] & 65535) * 60 * 60) + ((bArr[i2 + 8] & 65535) * 60) + bArr[i2 + 9]) & 65535 & 65535;
                qt.y0(102, 65535 & (((b8 & 255) << 8) + (b9 & 255)) & 65535);
                qt.y0(100, (i8 << 16) | i7);
                break;
            case 39:
                qt.z0(99, new int[]{bArr[i2 + 2]}, new String(bArr, i2 + 4, i3 - 4));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 104) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 1)) {
                z.k.s(227, 199, 2, iArr[0], 0);
            }
        } else if (i2 == 1 && T2(iArr, 1)) {
            z.k.s(227, 144, 2, iArr[0], 0);
        }
    }
}
