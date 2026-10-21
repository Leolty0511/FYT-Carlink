package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class u4 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10915c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10916d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 1}, new int[]{4, 2}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10917e = false;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 38) {
                if (this.f10917e) {
                    return;
                }
                qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 540);
                return;
            }
            if (b2 != 125) {
                return;
            }
            int i4 = bArr[i2 + 2] & 255;
            if (i4 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i5 = i2 + 3;
                    l0.c0.b((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
                    return;
                } else {
                    int i6 = i2 + 3;
                    l0.c0.a((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                    return;
                }
            }
            if (i4 == 3) {
                int i7 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i7);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i7}, null, null);
                return;
            } else {
                if (i4 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f10917e = true;
                return;
            }
        }
        if (nt.a()) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10915c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f10916d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f10915c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f10914b = i8;
                    break;
                }
                i8++;
            }
            if ((b4 & 255) != 0) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                }
            } else {
                int i10 = this.f10914b;
                if (i10 < iArr.length && i10 != 255) {
                    l0.b0.l0(iArr[i10][1], 1);
                }
                this.f10914b = 255;
            }
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
