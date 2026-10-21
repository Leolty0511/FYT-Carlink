package k0;

/* JADX INFO: loaded from: classes2.dex */
public class aq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3440c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3441d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
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
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3440c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3441d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3440c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3439b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f3439b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f3439b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 540);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i8 = i2 + 3;
            l0.c0.a((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i8] & 255}, null, null);
            return;
        }
        if (b2 == 34) {
            u0.d.R2(l0.c0.K1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.K1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.K1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.K1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 != 35) {
            return;
        }
        int i9 = i2 + 2;
        int i10 = bArr[i9] & 255;
        int i11 = i2 + 3;
        int i12 = bArr[i11] & 255;
        int i13 = i2 + 4;
        int i14 = bArr[i13] & 255;
        int i15 = i2 + 5;
        int i16 = bArr[i15] & 255;
        if (i10 == 0 && i12 == 0 && i14 == 0 && i16 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i10 || l0.c0.f13014h != i12 || l0.c0.f13015i != i14 || l0.c0.f13016j != i16) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i10;
        l0.c0.f13014h = i12;
        l0.c0.f13015i = i14;
        l0.c0.f13016j = i16;
        u0.d.D2(l0.c0.K1(bArr[i9] & 255));
        u0.d.E2(l0.c0.K1(bArr[i11] & 255));
        u0.d.F2(l0.c0.K1(bArr[i13] & 255));
        u0.d.G2(l0.c0.K1(bArr[i15] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
