package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ek extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f4858j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f4859k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f4860l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f4861m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4863c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4864d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o1.g0 f4865e = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4866f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4867g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4868h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4869i = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ek.this.f4869i);
            ek.this.f4867g = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ek ekVar = ek.this;
            int i2 = ekVar.f4867g - 1;
            ekVar.f4867g = i2;
            if (i2 <= 0) {
                l0.b0.p0(ekVar.f4869i);
                ek.this.f4867g = 5;
            }
            if (u0.b.f17306a0 == 1) {
                ekVar.c3(ekVar.f4865e.b(0, 0));
                switch (nt.f8633a) {
                    case 444:
                        z.k.s(227, 2, 106, 2, 50);
                        break;
                    case 65980:
                        z.k.s(227, 2, 106, 4, 50);
                        break;
                    case 131516:
                        z.k.s(227, 2, 106, 6, 50);
                        break;
                    case 2884028:
                    case 10224059:
                        z.k.s(227, 2, 36, 1, 50);
                        break;
                    case 3146174:
                        z.k.s(227, 2, 106, 7, 50);
                        break;
                    case 10289595:
                        z.k.s(227, 2, 106, 3, 50);
                        break;
                    case 10355131:
                        z.k.s(227, 2, 106, 5, 50);
                        break;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f4865e.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 0;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(this.f4868h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -24) {
            int i4 = i2 + 5;
            if (f4859k != bArr[i4]) {
                f4859k = bArr[i4];
                if (nt.f8633a == 2884028) {
                    if (f4859k == 1) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                if (!qt.k0()) {
                    if (f4859k == 1) {
                        qt.a(1);
                        return;
                    } else {
                        qt.a(0);
                        return;
                    }
                }
                if (f4859k != 1) {
                    if (f4860l) {
                        c.e.d().c(614);
                    }
                    f4860l = false;
                    return;
                } else {
                    if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false) || f4858j != 0) {
                        return;
                    }
                    f4860l = true;
                    c.e.d().c(591);
                    return;
                }
            }
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            int i5 = i2 + 2;
            f4858j = (bArr[i5] >> 2) & 1;
            this.f4863c = bArr[i2 + 4] & 255;
            int i6 = 0;
            while (true) {
                iArr = this.f4864d;
                if (i6 >= iArr.length) {
                    break;
                }
                int i7 = this.f4863c;
                if (i7 == iArr[i6][0]) {
                    if (i7 == 0) {
                        break;
                    }
                    this.f4862b = i6;
                    break;
                }
                i6++;
            }
            if (this.f4863c == 0 || (bArr[i2 + 5] & 255) == 0) {
                int i8 = this.f4862b;
                if (i8 != 255 && (bArr[i2 + 5] & 255) == 0) {
                    l0.b0.l0(iArr[i8][1], 1);
                }
                this.f4862b = 255;
            } else if (i6 < iArr.length) {
                l0.b0.l0(iArr[i6][1], 0);
            }
            byte b3 = bArr[i2 + 6];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            if (((bArr[i5] >> 7) & 1) == 1) {
                o1.x.C(nt.f8643f, 1049, new int[]{10, 0}, null, null);
            } else {
                o1.x.C(nt.f8643f, 1049, new int[]{10, 1}, null, null);
            }
            o1.x[] xVarArr = nt.f8643f;
            o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i5] >> 3) & 1}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{1, bArr[i2 + 3] & 255}, null, null);
            return;
        }
        if (b2 == 24) {
            int i9 = i2 + 3;
            int i10 = ((((bArr[i9] >> 7) & 1) << 3) & 8) | ((((bArr[i9] >> 6) & 1) << 4) & 16) | ((u0.b.f17366w << 6) & 64);
            o1.x[] xVarArr2 = nt.f8643f;
            o1.x.C(xVarArr2, 1049, new int[]{11, i10}, null, null);
            o1.x.C(xVarArr2, 1049, new int[]{12, (bArr[i2 + 2] >> 2) & 1}, null, null);
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                l0.c0.b((bArr[i9] >> 7) & 1, (bArr[i9] >> 6) & 1, (bArr[i9] >> 3) & 1);
                return;
            } else {
                l0.c0.a((bArr[i9] >> 7) & 1, (bArr[i9] >> 6) & 1, (bArr[i9] >> 3) & 1);
                return;
            }
        }
        if (b2 != 65) {
            return;
        }
        int i11 = i2 + 2;
        u0.d.R2(l0.c0.E0(bArr[i11] & 255));
        u0.d.S2(l0.c0.E0(bArr[i11] & 255));
        int i12 = i2 + 5;
        u0.d.T2(l0.c0.E0(bArr[i12] & 255));
        u0.d.U2(l0.c0.E0(bArr[i12] & 255));
        int i13 = i2 + 6;
        int i14 = bArr[i13] & 255;
        int i15 = bArr[i13] & 255;
        int i16 = i2 + 9;
        int i17 = bArr[i16] & 255;
        int i18 = bArr[i16] & 255;
        if (i14 == 255 && i15 == 255 && i17 == 255 && i18 == 255) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i14 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i18) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i14;
        l0.c0.f13014h = i15;
        l0.c0.f13015i = i17;
        l0.c0.f13016j = i18;
        u0.d.D2(l0.c0.E0(bArr[i13] & 255));
        u0.d.E2(l0.c0.E0(bArr[i13] & 255));
        u0.d.F2(l0.c0.E0(bArr[i16] & 255));
        u0.d.G2(l0.c0.E0(bArr[i16] & 255));
    }

    @Override // k0.lt
    public void W2() {
        this.f4865e.j();
        u0.c.f17386m.d(this.f4868h);
        l0.b0.p0(this.f4869i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 8) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        c3(iArr[0]);
    }

    public final void c3(int i2) {
        qt.y0(7, i2);
        z.k.s(227, 3, 106, 1, 1, i2);
        f4861m = i2;
        int iB = this.f4865e.b(0, 0);
        int i3 = f4861m;
        if (iB != i3) {
            this.f4865e.g(0, i3);
        }
    }
}
