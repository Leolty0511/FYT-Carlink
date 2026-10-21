package k0;

/* JADX INFO: loaded from: classes2.dex */
public class yp extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12612c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12613d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 3}, new int[]{12, 4}, new int[]{18, 13}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -64) {
            qt.x0(98, new String(bArr, i2 + 2, 12));
            return;
        }
        if (b2 != 33) {
            if (b2 == 48) {
                qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, false, 5456);
                return;
            }
            if (b2 != 125) {
                if (b2 != 127) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if ((bArr[i2 + 2] & 255) != 1) {
                    return;
                }
                int i4 = i2 + 3;
                l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
                return;
            }
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        this.f12612c = b3 & 255;
        int i5 = 0;
        while (true) {
            iArr = this.f12613d;
            if (i5 >= iArr.length) {
                break;
            }
            int i6 = this.f12612c;
            if (i6 == iArr[i5][0]) {
                if (i6 == 0) {
                    break;
                }
                this.f12611b = i5;
                break;
            }
            i5++;
        }
        int i7 = b4 & 255;
        if (i7 == 1) {
            if (i5 < iArr.length) {
                l0.b0.l0(iArr[i5][1], 0);
            }
        } else if (i7 == 0) {
            int i8 = this.f12611b;
            if (i8 < iArr.length && i8 != 255) {
                l0.b0.l0(iArr[i8][1], 1);
            }
            this.f12611b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
