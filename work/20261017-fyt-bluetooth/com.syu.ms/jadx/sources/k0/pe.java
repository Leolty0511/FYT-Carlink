package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class pe extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9179c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9180d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 16}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 67}, new int[]{9, 68}, new int[]{10, 29}, new int[]{11, 1}};

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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -96) {
            if (nt.a()) {
                int i4 = bArr[i2 + 3] & 255;
                byte b3 = bArr[i2 + 2];
                int i5 = i4 & 127;
                if (b3 == 0) {
                    u0.d.A3((i5 * 10) + 1000);
                    return;
                } else {
                    u0.d.A3(1000 - (i5 * 10));
                    return;
                }
            }
            return;
        }
        if (b2 == -48) {
            int i6 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i6 >> 1) & 1);
                qt.y0(2, (i6 >> 0) & 1);
            } else {
                qt.y0(1, (i6 >> 0) & 1);
                qt.y0(2, (i6 >> 1) & 1);
            }
            qt.y0(4, (i6 >> 3) & 1);
            qt.y0(3, (i6 >> 2) & 1);
            qt.y0(5, (i6 >> 4) & 1);
            return;
        }
        if (b2 == 32 && nt.a()) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f9179c = b4 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f9180d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f9179c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f9178b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f9179c;
            if (i9 == 5) {
                if ((b5 & 255) == 1) {
                    int i10 = u0.b.D;
                    if (i10 == 8 || i10 == 10) {
                        l0.b0.l0(16, 0);
                        l0.b0.l0(16, 1);
                        return;
                    } else {
                        l0.b0.l0(13, 0);
                        l0.b0.l0(13, 1);
                        return;
                    }
                }
                return;
            }
            if (i9 != 6) {
                int i11 = b5 & 255;
                if (i11 != 0) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i11 == 0) {
                        int i12 = this.f9178b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f9178b = 255;
                        return;
                    }
                    return;
                }
            }
            if ((b5 & 255) == 1) {
                int i13 = h0.c.E;
                if (i13 != 3) {
                    if (i13 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (i13 != 5) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                        return;
                    }
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 9) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
