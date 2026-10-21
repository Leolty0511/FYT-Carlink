package k0;

import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class oh extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8830c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8831d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{20, 13}, new int[]{21, 18}, new int[]{52, 21}, new int[]{53, 53}, new int[]{55, 5}, new int[]{63, 25}, new int[]{72, 29}, new int[]{82, 3}, new int[]{83, 4}, new int[]{84, 11}, new int[]{90, 12}, new int[]{91, 64}, new int[]{92, 1}, new int[]{93, 6}, new int[]{95, 54}, new int[]{96, 67}, new int[]{97, 68}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f8832e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8833f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8834g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(oh.this.f8834g);
            oh.this.f8832e = (byte) 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oh ohVar = oh.this;
            byte b2 = (byte) (ohVar.f8832e - 1);
            ohVar.f8832e = b2;
            if (b2 <= 0) {
                l0.b0.p0(ohVar.f8834g);
                oh.this.f8832e = (byte) 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8637c) {
                    case 199:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 1);
                        break;
                    case 200:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 3);
                        break;
                    case 201:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 2);
                        break;
                    case 202:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 4);
                        break;
                    case 203:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 5);
                        break;
                    case 204:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 6);
                        break;
                    case 205:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 5);
                        break;
                    case 206:
                        z.k.s(227, i.a.Theme_actionModeFindDrawable, 1, 6);
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
        u0.c.f17386m.a(this.f8833f, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8830c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8831d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8830c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8829b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f8830c;
            if (i6 == 240) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i6 == 241) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f8829b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f8829b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 2) {
            int i11 = i2 + 2;
            qt.y0(10, (bArr[i11] >> 7) & 1);
            qt.y0(11, (bArr[i11] >> 6) & 1);
            qt.y0(12, (bArr[i11] >> 5) & 1);
            qt.y0(13, (bArr[i11] >> 3) & 1);
            qt.y0(65, (bArr[i11] >> 1) & 1);
            qt.y0(16, (bArr[i11] >> 0) & 1);
            int i12 = i2 + 3;
            qt.y0(18, (bArr[i12] >> 7) & 1);
            qt.y0(19, (bArr[i12] >> 6) & 1);
            qt.y0(20, (bArr[i12] >> 5) & 1);
            qt.y0(77, 7 & (bArr[i12] >> 5));
            qt.y0(21, (bArr[i12] >> 0) & 15);
            int i13 = i2 + 4;
            int i14 = bArr[i13] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i14 = bArr[i2 + 5] & 255;
            }
            if (i14 == 0) {
                qt.y0(27, -2);
            } else if (i14 == 254) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i14);
            }
            int i15 = i2 + 5;
            int i16 = bArr[i15] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i16 = bArr[i13] & 255;
            }
            if (i16 == 0) {
                qt.y0(28, -2);
            } else if (i16 == 254) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i16);
            }
            qt.y0(53, (bArr[i15] >> 0) & 3);
            return;
        }
        if (b2 == 3) {
            u0.d.D2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.E2(l0.c0.v1(bArr[i2 + 3] & 255));
            u0.d.F2(l0.c0.v1(bArr[i2 + 4] & 255));
            u0.d.G2(l0.c0.b1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 4) {
            u0.d.R2(l0.c0.b1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.v1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.v1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.b1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 11) {
            int i17 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i17 >> 6) & 1);
                qt.y0(1, (i17 >> 7) & 1);
            } else {
                qt.y0(2, (i17 >> 7) & 1);
                qt.y0(1, (i17 >> 6) & 1);
            }
            qt.y0(4, (i17 >> 5) & 1);
            qt.y0(3, (i17 >> 4) & 1);
            qt.y0(5, (i17 >> 3) & 1);
            qt.y0(0, (i17 >> 2) & 1);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i18 = i2 + 3;
            l0.c0.a((bArr[i18] >> 3) & 1, (bArr[i18] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i18] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 17) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 4600);
            return;
        }
        if (b2 == 18) {
            if ((bArr[i2 + 2] & 255 & 128) != 0) {
                u0.d.A3(0);
                return;
            } else {
                u0.d.A3(1000);
                return;
            }
        }
        if (b2 != 20) {
            if (b2 != 21) {
                return;
            }
            qt.y0(113, bArr[i2 + 2] & 255);
            qt.y0(114, bArr[i2 + 3] & 255);
            qt.y0(115, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(116, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(117, bArr[i2 + 8] & 255);
            qt.y0(118, (bArr[i2 + 10] & 255) | ((bArr[i2 + 9] << 8) & 65280));
            return;
        }
        int i19 = i2 + 2;
        qt.y0(99, (bArr[i19] >> 7) & 1);
        qt.y0(100, (bArr[i19] >> 6) & 1);
        qt.y0(101, (bArr[i19] >> 5) & 1);
        qt.y0(102, (bArr[i19] >> 4) & 1);
        qt.y0(103, (bArr[i19] >> 3) & 1);
        qt.y0(104, (bArr[i19] >> 2) & 1);
        int i20 = i2 + 3;
        qt.y0(105, (bArr[i20] >> 7) & 1);
        qt.y0(106, (bArr[i20] >> 6) & 1);
        qt.y0(107, (bArr[i20] >> 5) & 1);
        qt.y0(108, (bArr[i20] >> 4) & 1);
        qt.y0(109, (bArr[i20] >> 3) & 1);
        qt.y0(110, 7 & (bArr[i20] >> 0));
        int i21 = i2 + 4;
        qt.y0(111, (bArr[i21] >> 4) & 15);
        qt.y0(112, (bArr[i21] >> 0) & 15);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8833f);
        l0.b0.p0(this.f8834g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 119) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 130, 2, iArr[0], iArr[1]);
        }
    }
}
