package k0;

/* JADX INFO: loaded from: classes2.dex */
public class jb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6827d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f6828e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        z.k.s(227, 2, 36, 21, 3);
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
            if (b2 == 65 && nt.a()) {
                u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                int i4 = i2 + 6;
                u0.d.D2(l0.h0.o(bArr[i4] & 255));
                u0.d.E2(l0.h0.o(bArr[i4] & 255));
                int i5 = i2 + 9;
                u0.d.F2(l0.h0.o(bArr[i5] & 255));
                u0.d.G2(l0.h0.o(bArr[i5] & 255));
                return;
            }
            return;
        }
        if (nt.a()) {
            byte b3 = bArr[i2 + 4];
            byte b4 = bArr[i2 + 5];
            this.f6826c = b3 & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f6828e;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f6826c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f6825b = i6;
                    break;
                }
                i6++;
            }
            if ((b4 & 255) == 0) {
                int i8 = this.f6825b;
                if (i8 < iArr.length && i8 != 255) {
                    l0.b0.l0(iArr[i8][1], 1);
                }
                this.f6825b = 255;
            } else if (i6 < iArr.length) {
                l0.b0.l0(iArr[i6][1], 0);
            }
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
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
