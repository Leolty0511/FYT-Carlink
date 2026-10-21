package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class bi extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f3695l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3697c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3698d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3699e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3700f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1.g0 f3701g = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3702h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3703i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3704j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f3705k = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bi biVar = bi.this;
            int i2 = biVar.f3704j;
            if (i2 > 0) {
                biVar.f3704j = i2 - 1;
            }
            if (biVar.f3704j <= 0) {
                l0.b0.p0(biVar.f3705k);
                qt.a(0);
                a.i.a0(500L);
                u0.d.I3(23, 1);
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
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        if (nt.f8637c == 74) {
            this.f3701g.a();
            b3(this.f3701g.b(1, 0));
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 32) {
            if (nt.f8637c != 74) {
                return;
            }
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3697c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f3698d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f3697c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f3696b = i4;
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
                int i6 = this.f3696b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f3696b = 255;
                return;
            }
        }
        if (b2 == 82) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            if (b5 != 1 && b5 == 2) {
                int[] iArr2 = new int[1];
                iArr2[0] = b6 != 1 ? 0 : 1;
                qt.y0(8, iArr2);
                return;
            }
            return;
        }
        if (b2 != 125) {
            return;
        }
        int i7 = bArr[i2 + 2] & 255;
        if (i7 == 1) {
            if (nt.f8637c == 74 && f3695l == 1) {
                int i8 = i2 + 3;
                int i9 = (bArr[i8] >> 3) & 1;
                this.f3699e = i9;
                int i10 = (bArr[i8] >> 4) & 1;
                this.f3700f = i10;
                if (i9 == 1 || i10 == 1) {
                    u0.d.I3(23, 0);
                    qt.a(1);
                    this.f3704j = 3;
                    l0.b0.p0(this.f3705k);
                } else {
                    l0.b0.b(this.f3705k);
                }
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i11 = i2 + 3;
                l0.c0.b((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
                return;
            } else {
                int i12 = i2 + 3;
                l0.c0.a((bArr[i12] >> 3) & 1, (bArr[i12] >> 4) & 1, 0);
                return;
            }
        }
        if (i7 == 3) {
            int i13 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
            qt.y0(1031, i13);
            o1.x.C(nt.f8643f, 1049, new int[]{1, i13}, null, null);
            return;
        }
        if (i7 != 5) {
            if (i7 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                return;
            } else {
                if (i7 != 10) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | (65280 & (bArr[i2 + 4] << 8)));
                return;
            }
        }
        int i14 = bArr[i2 + 3] & 255;
        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
            qt.y0(2, (i14 >> 6) & 1);
            qt.y0(1, (i14 >> 7) & 1);
        } else {
            qt.y0(2, (i14 >> 7) & 1);
            qt.y0(1, (i14 >> 6) & 1);
        }
        qt.y0(4, (i14 >> 5) & 1);
        qt.y0(3, (i14 >> 4) & 1);
        qt.y0(5, (i14 >> 3) & 1);
        qt.y0(0, (i14 >> 2) & 1);
    }

    @Override // k0.lt
    public void W2() {
        this.f3701g.j();
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
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
        if (i2 == 0 && iArr != null) {
            if (iArr[0] == 1) {
                b3(iArr[1]);
            }
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        }
    }

    public final void b3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f3695l = i2;
        qt.y0(7, i2);
        int iB = this.f3701g.b(1, 0);
        int i3 = f3695l;
        if (iB != i3) {
            this.f3701g.g(1, i3);
        }
    }
}
