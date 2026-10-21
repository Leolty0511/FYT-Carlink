package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class dr extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4588c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4589d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 13}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4590e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4591f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f4592g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f4593h = 5;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4594i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4595j = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dr drVar = dr.this;
            int i2 = drVar.f4590e;
            if (i2 > 0) {
                drVar.f4590e = i2 - 1;
            }
            if (drVar.f4590e == 0) {
                l0.c0.E();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.B0();
            dr.this.f4590e = 4;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(dr.this.f4595j);
            dr.this.f4593h = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            dr drVar = dr.this;
            byte b2 = (byte) (drVar.f4593h - 1);
            drVar.f4593h = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(drVar.f4595j);
                dr.this.f4593h = (byte) 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f4591f);
        y0.g.f18094d.a(this.f4592g, 1);
        y0.g.f18095e.a(this.f4592g, 1);
        w0.e.f17815a.a(this.f4591f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 != 32) {
            if (b2 == 38) {
                qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, false, 11016);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 != 65) {
                if (b2 == 125 && (bArr[i2 + 2] & 255) == 1) {
                    int i4 = i2 + 3;
                    l0.c0.a((bArr[i4] >> 3) & 1, (bArr[i4] >> 4) & 1, 0);
                    o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i4] & 255}, null, null);
                    return;
                }
                return;
            }
            if (bArr[i2 + 2] != 1) {
                return;
            }
            byte b3 = bArr[i2 + 3];
            qt.y0(5, (b3 >> 4) & 1);
            qt.y0(4, (b3 >> 3) & 1);
            qt.y0(3, (b3 >> 2) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 1) & 1);
                qt.y0(2, (b3 >> 0) & 1);
                return;
            } else {
                qt.y0(1, (b3 >> 0) & 1);
                qt.y0(2, (b3 >> 1) & 1);
                return;
            }
        }
        if (nt.a()) {
            byte b4 = bArr[i2 + 2];
            byte b5 = bArr[i2 + 3];
            this.f4588c = b4 & 255;
            int i5 = 0;
            while (true) {
                iArr = this.f4589d;
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = this.f4588c;
                if (i6 == iArr[i5][0]) {
                    if (i6 == 0) {
                        break;
                    }
                    this.f4587b = i5;
                    break;
                }
                i5++;
            }
            if (this.f4588c != 5) {
                int i7 = b5 & 255;
                if (i7 == 1) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i7 == 0) {
                        int i8 = this.f4587b;
                        if (i8 < iArr.length && i8 != 255) {
                            l0.b0.l0(iArr[i8][1], 1);
                        }
                        this.f4587b = 255;
                        return;
                    }
                    return;
                }
            }
            if ((b5 & 255) == 1) {
                int i9 = h0.c.E;
                if (i9 != 3) {
                    if (i9 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (i9 != 5) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    }
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f4591f);
        y0.g.f18094d.d(this.f4592g);
        y0.g.f18095e.d(this.f4592g);
        w0.e.f17815a.d(this.f4591f);
        u0.c.f17386m.d(this.f4594i);
        l0.b0.p0(this.f4595j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
