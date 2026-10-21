package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class t6 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10555c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10556d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{32, 64}, new int[]{33, 21}, new int[]{34, 1}, new int[]{35, 3}, new int[]{36, 4}, new int[]{37, 40}, new int[]{38, 41}, new int[]{39, 42}, new int[]{40, 43}, new int[]{41, 44}, new int[]{42, 45}, new int[]{43, 7}, new int[]{44, 8}, new int[]{45, 25}, new int[]{46, 11}, new int[]{47, 38}, new int[]{48, 55}, new int[]{6, 12}, new int[]{49, 12}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8637c;
        if (i2 == 0) {
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
        } else if (i2 != 1) {
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
        } else {
            mtVar.f8310e = 0;
            mtVar.f8311f = 1;
            mtVar.f8312g = 1;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 33) {
            if (b2 != 35) {
                if (b2 == 48 || b2 == 127) {
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
                return;
            }
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            qt.y0(10, (b3 >> 7) & 1);
            qt.y0(11, (b3 >> 6) & 1);
            qt.y0(12, (b3 >> 5) & 1);
            qt.y0(16, (b3 >> 1) & 1);
            qt.y0(19, b4 & 255);
            qt.y0(21, b5 & 255);
            qt.y0(27, b6 & 255);
            return;
        }
        if (nt.f8637c == 1) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            byte b9 = bArr[i2 + 4];
            byte b10 = bArr[i2 + 5];
            byte b11 = bArr[i2 + 6];
            byte b12 = bArr[i2 + 7];
            qt.y0(10, (b7 >> 7) & 1);
            qt.y0(13, (b7 >> 6) & 1);
            qt.y0(11, (b7 >> 3) & 1);
            qt.y0(12, (b7 >> 2) & 1);
            qt.y0(65, (b7 >> 1) & 1);
            qt.y0(16, (b7 >> 0) & 1);
            qt.y0(21, b8 & 255);
            qt.y0(19, b9 & 255);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                qt.y0(27, b11 & 255);
                qt.y0(28, b10 & 255);
            } else {
                qt.y0(27, b10 & 255);
                qt.y0(28, b11 & 255);
            }
            u0.d.A3((b12 & 128) == 128 ? 1000 - ((b12 & 127) * 10) : ((b12 & 127) * 10) + 1000);
            return;
        }
        if (nt.a()) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 3];
            this.f10555c = b13 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10556d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10555c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10554b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b14 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
            } else if (i6 == 0) {
                int i7 = this.f10554b;
                if (i7 < iArr.length && i7 != 255) {
                    l0.b0.l0(iArr[i7][1], 1);
                }
                this.f10554b = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
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
    }
}
