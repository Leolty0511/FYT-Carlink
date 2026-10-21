package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class vj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11399c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11400d = new int[0][];

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8633a == 131515) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = null;
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
            mtVar.f8320o = 0;
            return;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8306a = new String[]{"com.syu.canbus"};
        mtVar2.f8310e = 0;
        mtVar2.f8311f = 0;
        mtVar2.f8312g = 0;
        mtVar2.f8320o = 0;
        z.k.s(227, 2, 36, 3, 26);
        z.k.s(227, 3, 106, 5, 1, 0);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 49) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 6];
            byte b7 = bArr[i2 + 7];
            byte b8 = bArr[i2 + 8];
            qt.y0(10, (b3 >> 6) & 1);
            qt.y0(11, (b4 >> 6) & 1);
            qt.y0(12, (b4 >> 4) & 1);
            qt.y0(55, b4 & 1);
            qt.y0(68, (b5 >> 7) & 1);
            qt.y0(21, b7 & 255);
            int i7 = b6 & 255;
            if (i7 == 2) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i7 != 3) {
                if (i7 == 5) {
                    i6 = 0;
                    i4 = 1;
                } else if (i7 == 6) {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                } else if (i7 != 12) {
                    i6 = 0;
                    i4 = 0;
                } else {
                    i4 = 0;
                    i6 = 1;
                    i5 = 1;
                }
                i5 = i4;
            } else {
                i6 = 0;
                i4 = 0;
                i5 = 1;
            }
            qt.y0(18, i6);
            qt.y0(19, i4);
            qt.y0(20, i5);
            int i8 = b8 & 255;
            if (b8 == -2) {
                qt.y0(27, -2);
                return;
            } else if (b8 == -1) {
                qt.y0(27, -3);
                return;
            } else {
                qt.y0(27, i8);
                return;
            }
        }
        if (b2 == 54) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            qt.y0(98, (b9 >> 7) & 1);
            qt.y0(99, (b9 >> 6) & 1);
            qt.y0(100, (b9 >> 5) & 1);
            qt.y0(101, (b9 >> 4) & 1);
            qt.y0(103, (b10 >> 7) & 1);
            qt.y0(104, (b10 >> 6) & 1);
            return;
        }
        if (b2 != 17) {
            if (b2 != 18) {
                return;
            }
            byte b11 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b11 >> 6) & 1);
                qt.y0(2, (b11 >> 7) & 1);
            } else {
                qt.y0(1, (b11 >> 7) & 1);
                qt.y0(2, (b11 >> 6) & 1);
            }
            qt.y0(3, (b11 >> 5) & 1);
            qt.y0(4, (b11 >> 4) & 1);
            qt.y0(5, (b11 >> 3) & 1);
            qt.y0(0, (b11 >> 2) & 1);
            return;
        }
        this.f11399c = bArr[i2 + 4] & 255;
        int i9 = 0;
        while (true) {
            iArr = this.f11400d;
            if (i9 >= iArr.length) {
                break;
            }
            int i10 = this.f11399c;
            if (i10 == iArr[i9][0]) {
                if (i10 == 0) {
                    break;
                }
                this.f11398b = i9;
                break;
            }
            i9++;
        }
        if (this.f11399c != 0 && (bArr[i2 + 5] & 255) != 0) {
            if (i9 < iArr.length) {
                l0.b0.l0(iArr[i9][1], 0);
            }
        } else {
            int i11 = this.f11398b;
            if (i11 != 255 && (bArr[i2 + 5] & 255) == 0) {
                l0.b0.l0(iArr[i11][1], 1);
            }
            this.f11398b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 114) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
