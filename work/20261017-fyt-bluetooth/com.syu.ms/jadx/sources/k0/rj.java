package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class rj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9933c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9934d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{12, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9935e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9936f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9937g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(rj.this.f9937g);
            rj.this.f9935e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            rj rjVar = rj.this;
            int i2 = rjVar.f9935e - 1;
            rjVar.f9935e = i2;
            if (i2 > 0) {
                int i3 = u0.b.f17306a0;
            } else {
                l0.b0.p0(rjVar.f9937g);
                rj.this.f9935e = 5;
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
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 1;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(this.f9936f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            this.f9933c = bArr[i2 + 4] & 255;
            int i4 = bArr[i2 + 5] & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f9934d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f9933c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f9932b = i5;
                    break;
                }
                i5++;
            }
            int i7 = i4 & 255;
            if (i7 == 1) {
                if (i5 < iArr.length) {
                    l0.b0.l0(iArr[i5][1], 0);
                }
            } else if (i7 == 0) {
                int i8 = this.f9932b;
                if (i8 < iArr.length && i8 != 255) {
                    l0.b0.l0(iArr[i8][1], 1);
                }
                this.f9932b = 255;
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
            qt.y0(0, (b3 >> 2) & 1);
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b2 == 24) {
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i9 = i2 + 3;
                l0.c0.b((bArr[i9] >> 7) & 1, (bArr[i9] >> 6) & 1, (bArr[i9] >> 3) & 1);
                return;
            } else {
                int i10 = i2 + 3;
                l0.c0.a((bArr[i10] >> 7) & 1, (bArr[i10] >> 6) & 1, (bArr[i10] >> 3) & 1);
                return;
            }
        }
        if (b2 != 65) {
            return;
        }
        u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
        u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
        u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
        u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
        int i11 = i2 + 6;
        int i12 = bArr[i11] & 255;
        int i13 = i2 + 7;
        int i14 = bArr[i13] & 255;
        int i15 = bArr[i13] & 255;
        int i16 = bArr[i2 + 8] & 255;
        if (i12 == 255 && i14 == 255 && i15 == 255 && i16 == 255) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i12 || l0.c0.f13014h != i14 || l0.c0.f13015i != i15 || l0.c0.f13016j != i16) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i12;
        l0.c0.f13014h = i14;
        l0.c0.f13015i = i15;
        l0.c0.f13016j = i16;
        u0.d.D2(l0.c0.b1(bArr[i11] & 255));
        u0.d.E2(l0.c0.E0(bArr[i13] & 255));
        u0.d.F2(l0.c0.E0(bArr[i13] & 255));
        u0.d.G2(l0.c0.b1(bArr[i2 + 9] & 255));
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9936f);
        l0.b0.p0(this.f9937g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 2, 27, iArr[0], iArr[1]);
        } else {
            if (i2 != 1003) {
                return;
            }
            z.k.s(227, 2, -3, 1, 1);
        }
    }
}
