package k0;

import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class km extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7362c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7363d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 5}, new int[]{10, 6}, new int[]{11, 25}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f7364e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f7365f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7366g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 1) {
                z.k.s(227, 192, 8, 0, 0, 0, 0, 0, 0, 0, 0);
            } else {
                l0.b0.b(km.this.f7366g);
                km.this.f7364e = (byte) 5;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            km kmVar = km.this;
            byte b2 = (byte) (kmVar.f7364e - 1);
            kmVar.f7364e = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
            } else {
                l0.b0.p0(kmVar.f7366g);
                km.this.f7364e = (byte) 5;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f7886a.f8322q = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        u0.c.f17386m.a(this.f7365f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 41) {
            int i7 = i2 + 3;
            int i8 = i2 + 2;
            if ((((bArr[i7] << 8) & 65280) | (bArr[i8] & 255)) == 32768) {
                qt.i(0, 0, true, 6580);
                return;
            } else {
                qt.i(bArr[i8], bArr[i7], false, 6580);
                return;
            }
        }
        if (b2 == 58) {
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 4) & 1);
                qt.y0(2, (b3 >> 5) & 1);
            } else {
                qt.y0(1, (b3 >> 5) & 1);
                qt.y0(2, (b3 >> 4) & 1);
            }
            qt.y0(3, (b3 >> 3) & 1);
            qt.y0(4, (b3 >> 2) & 1);
            qt.y0(5, (b3 >> 1) & 1);
            qt.y0(0, (b3 >> 0) & 1);
            return;
        }
        if (b2 == 80) {
            qt.y0(1032, ((bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280)) & 65535);
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f7362c = b4 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f7363d;
                    if (i9 < iArr.length) {
                        int i10 = this.f7362c;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f7361b = i9;
                        }
                    }
                }
                int i11 = b5 & 255;
                if (i11 != 1) {
                    if (i11 == 0) {
                        int i12 = this.f7361b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f7361b = 255;
                    }
                } else if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
                }
                break;
            case 33:
                int i13 = bArr[i2 + 2] & 255;
                int i14 = bArr[i2 + 3] & 255;
                int i15 = bArr[i2 + 4] & 255;
                int i16 = bArr[i2 + 5] & 255;
                qt.y0(52, (i13 >> 6) & 1);
                qt.y0(54, (i13 >> 5) & 1);
                qt.y0(13, (i13 >> 4) & 1);
                qt.y0(11, (i13 >> 3) & 1);
                qt.y0(12, (i13 >> 2) & 1);
                qt.y0(65, (i13 >> 1) & 1);
                qt.y0(16, (i13 >> 0) & 1);
                qt.y0(21, i14 & 255);
                if (i15 != 0) {
                    if (i15 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i15 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i15 == 3) {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    } else if (i15 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                if (i16 == 0) {
                    qt.y0(27, -2);
                } else if (i16 != 255) {
                    qt.y0(27, i16);
                } else {
                    qt.y0(27, -3);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i17 = i2 + 2;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 3;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 4;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 5;
                int i24 = bArr[i23] & 255;
                if (i18 == 0 && i20 == 0 && i22 == 0 && i24 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i18 || l0.c0.f13014h != i20 || l0.c0.f13015i != i22 || l0.c0.f13016j != i24) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i18;
                l0.c0.f13014h = i20;
                l0.c0.f13015i = i22;
                l0.c0.f13016j = i24;
                u0.d.D2(l0.c0.K0(bArr[i17] & 255));
                u0.d.E2(l0.c0.K0(bArr[i19] & 255));
                u0.d.F2(l0.c0.K0(bArr[i21] & 255));
                u0.d.G2(l0.c0.K0(bArr[i23] & 255));
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7365f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            return;
        }
        z.k.s(227, 224, 2, iArr[0], iArr[1]);
    }
}
