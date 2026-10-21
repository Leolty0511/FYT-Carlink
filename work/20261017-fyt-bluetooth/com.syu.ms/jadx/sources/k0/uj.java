package k0;

/* JADX INFO: loaded from: classes2.dex */
public class uj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11076c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11077d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}};

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
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 114) {
            this.f11076c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f11077d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f11076c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f11075b = i4;
                    break;
                }
                i4++;
            }
            if (this.f11076c == 0) {
                l0.b0.l0(iArr[this.f11075b][1], 1);
                this.f11075b = 255;
                return;
            } else {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            }
        }
        if (b2 != 115) {
            return;
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        byte b5 = bArr[i2 + 4];
        byte b6 = bArr[i2 + 6];
        qt.y0(10, (b3 >> 6) & 1);
        qt.y0(12, (b3 >> 4) & 3);
        qt.y0(13, (b3 >> 3) & 1);
        qt.y0(11, (b4 >> 6) & 1);
        qt.y0(16, (b4 >> 5) & 1);
        qt.y0(65, (b4 >> 4) & 1);
        int i6 = b5 & 255;
        if (b5 == 0) {
            qt.y0(27, -1);
        } else if (b5 == 1) {
            qt.y0(27, -2);
        } else if (b5 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i6);
        }
        qt.y0(18, (b6 >> 4) & 1);
        qt.y0(19, (b6 >> 5) & 1);
        qt.y0(20, (b6 >> 6) & 1);
        qt.y0(21, (b6 >> 0) & 15);
    }

    @Override // k0.lt
    public void W2() {
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
