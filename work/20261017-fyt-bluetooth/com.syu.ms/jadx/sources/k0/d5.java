package k0;

/* JADX INFO: loaded from: classes2.dex */
public class d5 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4344c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4343b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4345d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f4346e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 18}, new int[]{7, 12}, new int[]{129, 0}, new int[]{134, 6}, new int[]{148, 13}, new int[]{135, 24}, new int[]{155, 18}, new int[]{208, 5}, new int[]{151, 7}, new int[]{152, 8}, new int[]{153, 4}, new int[]{154, 3}, new int[]{136, 29}, new int[]{130, 3}, new int[]{131, 4}, new int[]{225, 54}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4347f = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d5 d5Var = d5.this;
            int i2 = d5Var.f4343b;
            if (i2 > 0) {
                d5Var.f4343b = i2 - 1;
            }
            if (d5Var.f4343b == 0) {
                d5Var.a3();
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            qt.z(this.f4347f);
            w0.e.f17815a.a(this.f4347f, 1);
            w0.e.f17819e.a(this.f4347f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                if (nt.f8633a == 169) {
                    return;
                }
                this.f4345d = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f4346e;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f4345d;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f4344c = i4;
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
                    int i6 = this.f4344c;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f4344c = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 7800);
            return;
        }
        if (b2 == 116) {
            if (nt.a()) {
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                if (nt.f8633a == 169) {
                    return;
                }
                this.f4345d = (b5 & 255) | 128;
                int i7 = 0;
                while (true) {
                    iArr2 = this.f4346e;
                    if (i7 >= iArr2.length) {
                        break;
                    }
                    int i8 = this.f4345d;
                    if (i8 == iArr2[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f4344c = i7;
                        break;
                    }
                    i7++;
                }
                if ((b6 & 255) != 0) {
                    if (i7 < iArr2.length) {
                        l0.b0.l0(iArr2[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i9 = this.f4344c;
                    if (i9 < iArr2.length && i9 != 255) {
                        l0.b0.l0(iArr2[i9][1], 1);
                    }
                    this.f4344c = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 3) {
            if (nt.a()) {
                byte b7 = bArr[i2 + 7];
                if (nt.f8633a == 169) {
                    return;
                }
                u0.d.A3((b7 & 128) != 0 ? 1000 - (((~(b7 & 255)) + 1) * 10) : ((b7 & 255) * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 4) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 128) != 0) {
                    qt.b(1);
                    return;
                } else {
                    qt.b(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 34) {
            if (!nt.a() || nt.f8633a == 169) {
                return;
            }
            byte b8 = bArr[i2 + 2];
            byte b9 = bArr[i2 + 3];
            byte b10 = bArr[i2 + 4];
            byte b11 = bArr[i2 + 5];
            u0.d.R2(b3(b8 & 255));
            u0.d.S2(b3(b9 & 255));
            u0.d.T2(b3(b10 & 255));
            u0.d.U2(b3(b11 & 255));
            return;
        }
        if (b2 == 35 && nt.a() && nt.f8633a != 169) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            byte b14 = bArr[i2 + 4];
            byte b15 = bArr[i2 + 5];
            u0.d.D2(b3(b12 & 255));
            u0.d.E2(b3(b13 & 255));
            u0.d.F2(b3(b14 & 255));
            u0.d.G2(b3(b15 & 255));
        }
    }

    @Override // k0.lt
    public void W2() {
        if (nt.a()) {
            qt.q0(this.f4347f);
            w0.e.f17815a.d(this.f4347f);
            w0.e.f17819e.d(this.f4347f);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void a3() {
        int[] iArr = new int[3];
        int i2 = 0;
        iArr[0] = 139;
        iArr[1] = 1;
        if (o0.e.f16784k != 0) {
            iArr[2] = 1;
        } else {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final int b3(int i2) {
        switch (i2) {
            case 0:
            default:
                return 10;
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 3;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 9;
        }
    }
}
