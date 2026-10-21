package k0;

/* JADX INFO: loaded from: classes2.dex */
public class gj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5574b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5577e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5575c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5576d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{4, 13}, new int[]{5, 18}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5578f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5579g = {new int[]{1, 54}, new int[]{2, 5}, new int[]{3, 18}, new int[]{4, 6}, new int[]{5, 55}, new int[]{6, 30}, new int[]{7, 31}, new int[]{8, 29}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5580h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5581i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gj.this.f5580h = 0;
        }
    }

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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f5581i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2 = bArr[i2 + 1];
        if (b2 != -127) {
            if (b2 != -125) {
                if (b2 != -16) {
                    return;
                }
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            this.f5578f = bArr[i2 + 2] & 255;
            int i6 = bArr[i2 + 3] & 255;
            int i7 = 0;
            while (true) {
                iArr2 = this.f5579g;
                if (i7 >= iArr2.length) {
                    break;
                }
                int i8 = this.f5578f;
                if (i8 == iArr2[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f5577e = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f5580h;
            if (i6 == i9) {
                if (this.f5578f == 0 || (i5 = this.f5577e) >= iArr2.length) {
                    return;
                }
                l0.b0.l0(iArr2[i5][1], 0);
                l0.b0.l0(this.f5579g[this.f5577e][1], 1);
                return;
            }
            if (i6 > i9) {
                for (int i10 = 0; i10 < i6 - this.f5580h; i10++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
            } else if (i6 < i9) {
                for (int i11 = 0; i11 < this.f5580h - i6; i11++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
            }
            this.f5580h = i6;
            return;
        }
        this.f5575c = bArr[i2 + 4] & 255;
        int i12 = 0;
        while (true) {
            iArr = this.f5576d;
            if (i12 >= iArr.length) {
                break;
            }
            int i13 = this.f5575c;
            if (i13 == iArr[i12][0]) {
                if (i13 == 0) {
                    break;
                }
                this.f5574b = i12;
                break;
            }
            i12++;
        }
        if (this.f5575c != 0 && (i4 = this.f5574b) < iArr.length) {
            l0.b0.l0(iArr[i4][1], 0);
            l0.b0.l0(this.f5576d[this.f5574b][1], 1);
        }
        qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 260);
        u0.d.R2(l0.c0.X0(bArr[i2 + 8] & 255));
        u0.d.S2(l0.c0.X0(bArr[i2 + 9] & 255));
        u0.d.T2(l0.c0.X0(bArr[i2 + 10] & 255));
        u0.d.U2(l0.c0.X0(bArr[i2 + 11] & 255));
        int i14 = i2 + 12;
        int i15 = bArr[i14] & 255;
        int i16 = i2 + 13;
        int i17 = bArr[i16] & 255;
        int i18 = i2 + 14;
        int i19 = bArr[i18] & 255;
        int i20 = i2 + 15;
        int i21 = bArr[i20] & 255;
        if (i15 == 255 && i17 == 255 && i19 == 255 && i21 == 255) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i15 || l0.c0.f13014h != i17 || l0.c0.f13015i != i19 || l0.c0.f13016j != i21) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i15;
        l0.c0.f13014h = i17;
        l0.c0.f13015i = i19;
        l0.c0.f13016j = i21;
        u0.d.D2(l0.c0.X0(bArr[i14] & 255));
        u0.d.E2(l0.c0.X0(bArr[i16] & 255));
        u0.d.F2(l0.c0.X0(bArr[i18] & 255));
        u0.d.G2(l0.c0.X0(bArr[i20] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5581i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
