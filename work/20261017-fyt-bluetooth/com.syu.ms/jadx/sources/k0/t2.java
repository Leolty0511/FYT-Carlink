package k0;

/* JADX INFO: loaded from: classes2.dex */
public class t2 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f10523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f10524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f10525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f10526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f10527f;

    public static void a3(int i2) {
        if (i2 == 1) {
            e.g.g(0);
            return;
        }
        if (i2 == 2) {
            l0.b0.y(0);
            return;
        }
        if (i2 == 4) {
            e.g.t(0);
            return;
        }
        if (i2 == 8) {
            l0.b0.z(0);
            return;
        }
        if (i2 == 16) {
            e.g.k(0);
        } else if (i2 == 32) {
            l0.b0.A(0);
        } else {
            if (i2 != 64) {
                return;
            }
            l0.b0.q(0);
        }
    }

    public static void b3(int i2) {
        if (i2 == 1) {
            l0.b0.B(0);
        }
        if (i2 == 2) {
            l0.b0.W(0);
            return;
        }
        if (i2 == 4) {
            l0.b0.C(0);
            return;
        }
        if (i2 == 16) {
            l0.b0.D(0);
            return;
        }
        if (i2 == 32) {
            e.g.l(0);
            return;
        }
        if (i2 == 64) {
            e.g.h(0);
            return;
        }
        switch (i2) {
            case 8:
                l0.b0.L(0);
                break;
            case 9:
                l0.b0.r(0);
                break;
            case 10:
                e.g.d(0);
                break;
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4 = 8;
        if (!nt.a()) {
            if (bArr[i2 + 1] != 116) {
                return;
            }
            int i5 = bArr[i2 + 8] & 255;
            qt.y0(11, (i5 >> 6) & 1);
            qt.y0(12, (i5 >> 4) & 1);
            qt.y0(16, (i5 >> 2) & 1);
            qt.y0(15, (i5 >> 1) & 1);
            int i6 = bArr[i2 + 9] & 255;
            int i7 = (i6 & 127) >> 3;
            if (i7 < 0) {
                i4 = 0;
            } else if (i7 <= 8) {
                i4 = i7;
            }
            qt.y0(21, i4);
            int i8 = i6 & 7;
            if (i8 == 0) {
                qt.y0(19, 1);
                qt.y0(20, 0);
                qt.y0(65, 0);
                qt.y0(13, 0);
            } else if (i8 == 1) {
                qt.y0(19, 1);
                qt.y0(20, 1);
                qt.y0(65, 0);
                qt.y0(13, 0);
            } else if (i8 == 2) {
                qt.y0(19, 0);
                qt.y0(20, 1);
                qt.y0(65, 0);
                qt.y0(13, 0);
            } else if (i8 == 3) {
                qt.y0(19, 0);
                qt.y0(20, 1);
                qt.y0(65, 1);
                qt.y0(13, 0);
            } else if (i8 == 4) {
                qt.y0(19, 0);
                qt.y0(20, 0);
                qt.y0(65, 0);
                qt.y0(13, 1);
            }
            qt.y0(27, bArr[i2 + 10] & 255 & 31);
            return;
        }
        if ((bArr[i2] & 255) != 0) {
            f10523b = 0;
            a3(bArr[i2] & 255);
        } else {
            int i9 = i2 + 1;
            if ((bArr[i9] & 255) != 0) {
                f10523b = 1;
                b3(bArr[i9] & 255);
            } else {
                int i10 = i2 + 2;
                if ((bArr[i10] & 255 & 1) != 0) {
                    f10523b = 2;
                    b3(10);
                } else if ((bArr[i10] & 255 & 16) != 0) {
                    f10523b = 3;
                    b3(9);
                } else if (f10525d != ((bArr[i10] >> 1) & 1)) {
                    f10525d = (bArr[i10] >> 1) & 1;
                    l0.b0.s0(0);
                    l0.b0.s0(1);
                } else if (f10524c != ((bArr[i10] >> 2) & 1)) {
                    f10524c = (bArr[i10] >> 2) & 1;
                    l0.b0.r0(0);
                    l0.b0.r0(1);
                } else {
                    int i11 = i2 + 3;
                    if (f10526e != ((bArr[i11] >> 5) & 1)) {
                        f10526e = (bArr[i11] >> 5) & 1;
                        l0.b0.U(0);
                        l0.b0.U(1);
                    } else if (f10527f != ((bArr[i11] >> 6) & 1)) {
                        f10527f = (bArr[i11] >> 6) & 1;
                        l0.b0.S(0);
                        l0.b0.S(1);
                    }
                }
            }
        }
        int i12 = bArr[i2 + 6] & 255;
        qt.y0(11, (i12 >> 6) & 1);
        qt.y0(12, (i12 >> 4) & 1);
        qt.y0(16, (i12 >> 2) & 1);
        qt.y0(15, (i12 >> 1) & 1);
        int i13 = bArr[i2 + 7] & 255;
        int i14 = (i13 & 127) >> 3;
        if (i14 < 0) {
            i14 = 0;
        } else if (i14 > 8) {
            i14 = 8;
        }
        qt.y0(21, i14);
        int i15 = i13 & 7;
        if (i15 == 0) {
            qt.y0(19, 1);
            qt.y0(20, 0);
            qt.y0(65, 0);
            qt.y0(13, 0);
        } else if (i15 == 1) {
            qt.y0(19, 1);
            qt.y0(20, 1);
            qt.y0(65, 0);
            qt.y0(13, 0);
        } else if (i15 == 2) {
            qt.y0(19, 0);
            qt.y0(20, 1);
            qt.y0(65, 0);
            qt.y0(13, 0);
        } else if (i15 == 3) {
            qt.y0(19, 0);
            qt.y0(20, 1);
            qt.y0(65, 1);
            qt.y0(13, 0);
        } else if (i15 == 4) {
            qt.y0(19, 0);
            qt.y0(20, 0);
            qt.y0(65, 0);
            qt.y0(13, 1);
        }
        qt.y0(27, bArr[i2 + 8] & 255 & 31);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
