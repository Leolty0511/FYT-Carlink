package k0;

/* JADX INFO: loaded from: classes2.dex */
public class wk extends lt {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f11769f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11771c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11772d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f11773e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                qt.y0(4, 1);
            } else {
                qt.y0(4, 0);
            }
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
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8322q = 0;
        mtVar.f8314i = 0;
        mtVar.f8313h = 2;
        u0.c.f17379f.a(this.f11773e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            int i4 = i2 + 2;
            if (f11769f != ((bArr[i4] >> 7) & 1)) {
                f11769f = (bArr[i4] >> 7) & 1;
                if (qt.k0()) {
                    if (f11769f == 1) {
                        u0.i.l3().g4(131072, true);
                    } else {
                        u0.i.l3().g4(131072, false);
                    }
                } else if (f11769f == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
            }
            qt.y0(1, (bArr[i4] >> 1) & 1);
            qt.y0(2, (bArr[i4] >> 0) & 1);
            qt.y0(3, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            this.f11771c = bArr[i2 + 4] & 255;
            int i5 = bArr[i2 + 5] & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f11772d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f11771c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f11770b = i6;
                    break;
                }
                i6++;
            }
            int i8 = i5 & 255;
            if (i8 == 1) {
                if (i6 < iArr.length) {
                    l0.b0.l0(iArr[i6][1], 0);
                }
            } else if (i8 == 0) {
                int i9 = this.f11770b;
                if (i9 < iArr.length && i9 != 255) {
                    l0.b0.l0(iArr[i9][1], 1);
                }
                this.f11770b = 255;
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            o1.x.C(nt.f8643f, 1049, new int[]{3, (bArr[i2 + 2] >> 3) & 1}, null, null);
            return;
        }
        if (b2 != 65) {
            return;
        }
        u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
        u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
        u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
        u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
        int i10 = i2 + 6;
        int i11 = bArr[i10] & 255;
        int i12 = i2 + 7;
        int i13 = bArr[i12] & 255;
        int i14 = i2 + 8;
        int i15 = bArr[i14] & 255;
        int i16 = i2 + 9;
        int i17 = bArr[i16] & 255;
        if (i11 == 255 && i13 == 255 && i15 == 255 && i17 == 255) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i11 || l0.c0.f13014h != i13 || l0.c0.f13015i != i15 || l0.c0.f13016j != i17) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i11;
        l0.c0.f13014h = i13;
        l0.c0.f13015i = i15;
        l0.c0.f13016j = i17;
        u0.d.D2(l0.c0.E0(bArr[i10] & 255));
        u0.d.E2(l0.c0.E0(bArr[i12] & 255));
        u0.d.F2(l0.c0.E0(bArr[i14] & 255));
        u0.d.G2(l0.c0.E0(bArr[i16] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17379f.d(this.f11773e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 5) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, i.a.Theme_dialogTitleDecorLayout, iArr[0], iArr[1]);
        } else {
            if (i2 != 1003) {
                return;
            }
            if (u0.b.f17347o == 1) {
                z.k.s(227, 2, -3, 1, 0);
            } else {
                z.k.s(227, 2, -3, 1, 1);
            }
        }
    }
}
