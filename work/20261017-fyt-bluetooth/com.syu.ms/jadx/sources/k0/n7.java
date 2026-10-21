package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class n7 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8402c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8403d = {new int[]{1, 34}, new int[]{2, 35}, new int[]{3, 32}, new int[]{4, 33}, new int[]{5, 29}, new int[]{6, 3}, new int[]{7, 4}, new int[]{8, 54}, new int[]{9, 12}, new int[]{10, 7}, new int[]{11, 8}, new int[]{12, 13}, new int[]{13, 18}, new int[]{14, 26}, new int[]{15, 5}, new int[]{16, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8404e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8405f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8406g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8407h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(n7.this.f8406g);
            n7.this.f8404e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n7 n7Var = n7.this;
            int i2 = n7Var.f8404e - 1;
            n7Var.f8404e = i2;
            if (i2 <= 0) {
                l0.b0.p0(n7Var.f8406g);
                n7.this.f8404e = 5;
            } else if (u0.b.f17306a0 == 1) {
                if (nt.f8637c == 0) {
                    z.k.s(227, -124, 1, 1);
                } else {
                    z.k.s(227, -124, 1, 2);
                }
                z.k.s(227, -122, 1, 1);
                z.k.s(227, 129, 1, 48);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 129, 1, 22);
            z.k.s(227, 129, 1, 101);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f8405f, 1);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            qt.y(this.f8407h);
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 5];
            byte b5 = bArr[i2 + 6];
            int i4 = (b3 >> 3) & 1;
            if (i4 == 1) {
                qt.y0(21, -1);
            } else if (i4 == 0) {
                qt.y0(21, b3 & DhcpPacket.DHCP_DOMAIN_NAME);
            }
            int i5 = b3 >> 4;
            qt.y0(65, i5 & 1);
            qt.y0(18, (b3 >> 5) & 1);
            qt.y0(20, (b3 >> 6) & 1);
            qt.y0(49, (b3 >> 7) & 1);
            qt.y0(77, i5 & 15);
            int i6 = i2 + 3;
            byte b6 = bArr[i6];
            int i7 = i2 + 4;
            byte b7 = bArr[i7];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b6 = bArr[i7];
                b7 = bArr[i6];
            }
            int i8 = (b6 >> 1) & 63;
            if (i8 == 1) {
                qt.y0(27, -2);
            } else if (i8 == 0) {
                qt.y0(27, -1);
            } else if (i8 == 63) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, (i8 * 2) + (b6 & 1));
            }
            int i9 = (b7 >> 1) & 63;
            if (i9 == 1) {
                qt.y0(28, -2);
            } else if (i9 == 0) {
                qt.y0(28, -1);
            } else if (i9 == 63) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, (i9 * 2) + (b7 & 1));
            }
            int i10 = b4 & 3;
            if (i10 == 1) {
                qt.y0(11, 0);
            } else if (i10 == 2) {
                qt.y0(11, 1);
            } else if (i10 != 3) {
                qt.y0(11, 0);
            } else {
                qt.y0(11, 2);
            }
            int i11 = (b4 >> 2) & 3;
            if (i11 == 0) {
                qt.y0(12, 0);
            } else if (i11 == 1) {
                qt.y0(12, 1);
            } else if (i11 != 3) {
                qt.y0(12, 0);
            } else {
                qt.y0(12, 2);
            }
            qt.y0(15, (b4 >> 4) & 1);
            qt.y0(14, (b4 >> 5) & 1);
            qt.y0(13, (b4 >> 6) & 1);
            qt.y0(16, (b4 >> 7) & 1);
            qt.y0(10, b5 & 1);
            qt.y0(53, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 3) {
            if (nt.a()) {
                u0.d.D2(l0.c0.I0(bArr[i2 + 2] & 255));
                u0.d.E2(l0.c0.I0(bArr[i2 + 3] & 255));
                u0.d.F2(l0.c0.I0(bArr[i2 + 4] & 255));
                u0.d.G2(l0.c0.I0(bArr[i2 + 5] & 255));
                u0.d.R2(l0.c0.I0(bArr[i2 + 6] & 255));
                u0.d.S2(l0.c0.I0(bArr[i2 + 7] & 255));
                u0.d.T2(l0.c0.I0(bArr[i2 + 8] & 255));
                u0.d.U2(l0.c0.I0(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 4) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 255) == 2) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b2 == 6) {
            if (nt.a()) {
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 3];
                this.f8402c = b8 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f8403d;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    int i13 = this.f8402c;
                    if (i13 == iArr[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f8401b = i12;
                        break;
                    }
                    i12++;
                }
                if ((b9 & 255) != 0) {
                    if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i12 <= iArr.length) {
                        l0.b0.l0(iArr[this.f8401b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 8) {
            if (nt.a()) {
                int i14 = bArr[i2 + 3] & 255;
                u0.d.A3((i14 & 128) != 0 ? 1000 - ((((~i14) + 1) & 255) * 10) : (i14 * 10) + 1000);
                return;
            }
            return;
        }
        if (b2 == 10) {
            if (bArr[i2 + 2] == 1) {
                qt.y0(55, 0);
                return;
            } else {
                qt.y0(55, 1);
                return;
            }
        }
        if (b2 == 22) {
            int i15 = i2 + 3;
            int i16 = i2 + 2;
            qt.y0(98, (((bArr[i15] << 8) & 65280) | (bArr[i16] & 255)) / 100);
            qt.y0(1031, ((bArr[i16] & 255) | ((bArr[i15] << 8) & 65280)) / 100);
            return;
        }
        if (b2 == 36) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i17 = i2 + 2;
                qt.y0(1, (bArr[i17] >> 7) & 1);
                qt.y0(2, (bArr[i17] >> 6) & 1);
            } else {
                int i18 = i2 + 2;
                qt.y0(1, (bArr[i18] >> 6) & 1);
                qt.y0(2, (bArr[i18] >> 7) & 1);
            }
            int i19 = i2 + 2;
            qt.y0(4, (bArr[i19] >> 5) & 1);
            qt.y0(3, (bArr[i19] >> 4) & 1);
            qt.y0(5, (bArr[i19] >> 3) & 1);
            qt.y0(0, (bArr[i19] >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            qt.y0(17, (bArr[i2 + 6] >> 7) & 1);
            int i20 = i2 + 9;
            qt.y0(29, (bArr[i20] >> 0) & 3);
            qt.y0(30, (bArr[i20] >> 2) & 3);
            qt.y0(31, (bArr[i20] >> 4) & 3);
            qt.y0(32, (bArr[i20] >> 6) & 3);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 101) {
            if (b2 != 102) {
                return;
            }
            qt.m(bArr[i2 + 2], bArr[i2 + 3], 48767, false, 4800);
        } else {
            int i21 = i2 + 3;
            int i22 = i2 + 2;
            qt.y0(99, ((bArr[i21] << 8) & 65280) | (bArr[i22] & 255));
            qt.y0(1032, (bArr[i22] & 255) | ((bArr[i21] << 8) & 65280));
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.p0(this.f8407h);
        u0.c.f17386m.d(this.f8405f);
        l0.b0.p0(this.f8406g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length < 1) {
                return;
            }
            z.k.s(227, -124, 1, iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length < 2) {
                return;
            }
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length < 1) {
                return;
            }
            z.k.s(227, -123, 1, iArr[0]);
            return;
        }
        if (i2 == 3 && iArr != null && iArr.length >= 1) {
            z.k.s(227, -122, 1, iArr[0]);
        }
    }
}
