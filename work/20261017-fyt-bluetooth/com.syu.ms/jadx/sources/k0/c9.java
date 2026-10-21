package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class c9 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3927c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3928d = {new int[]{1, 0}, new int[]{2, 2}, new int[]{3, 1}, new int[]{4, 1}, new int[]{5, 24}, new int[]{6, 7}, new int[]{7, 8}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3929e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f3930f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f3931g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(c9.this.f3931g);
            c9.this.f3929e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c9 c9Var = c9.this;
            int i2 = c9Var.f3929e - 1;
            c9Var.f3929e = i2;
            if (i2 <= 0) {
                l0.b0.p0(c9Var.f3931g);
                c9.this.f3929e = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                if (i3 == 0) {
                    z.k.s(227, 114, 4, 4, 2, 1, 1);
                } else if (i3 == 1) {
                    z.k.s(227, 114, 4, 4, 2, 2, 1);
                }
                z.k.s(227, 144, 1, 1);
                z.k.s(227, 144, 1, 48);
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8310e = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 1;
        u0.c.f17386m.a(this.f3930f, 1);
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 3];
            byte b4 = bArr[i2 + 4];
            byte b5 = bArr[i2 + 5];
            qt.y0(21, b3 & 7);
            int i7 = (b3 >> 3) & 7;
            if (i7 != 1) {
                if (i7 == 2) {
                    i4 = 0;
                    i6 = 1;
                } else if (i7 == 3) {
                    i4 = 0;
                    i6 = 0;
                    i5 = 1;
                } else if (i7 == 4) {
                    i6 = 0;
                    i4 = 1;
                    i5 = 1;
                } else if (i7 != 5) {
                    i4 = 0;
                    i6 = 0;
                } else {
                    i6 = 0;
                    i5 = 0;
                    i4 = 1;
                }
                i5 = i6;
            } else {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            }
            qt.y0(77, i7);
            qt.y0(18, i4);
            qt.y0(19, i6);
            qt.y0(20, i5);
            qt.y0(49, (b5 >> 6) & 1);
            qt.y0(13, (b3 >> 6) & 1);
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                int i8 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i8 == 1) {
                    qt.y0(28, -2);
                } else if (i8 != 15) {
                    qt.y0(28, i8 + 17);
                } else {
                    qt.y0(28, -3);
                }
                int i9 = (b4 >> 4) & 15;
                if (i9 == 1) {
                    qt.y0(27, -2);
                } else if (i9 != 15) {
                    qt.y0(27, i9 + 17);
                } else {
                    qt.y0(27, -3);
                }
            } else {
                int i10 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i10 == 1) {
                    qt.y0(27, -2);
                } else if (i10 != 15) {
                    qt.y0(27, i10 + 17);
                } else {
                    qt.y0(27, -3);
                }
                int i11 = (b4 >> 4) & 15;
                if (i11 == 1) {
                    qt.y0(28, -2);
                } else if (i11 != 15) {
                    qt.y0(28, i11 + 17);
                } else {
                    qt.y0(28, -3);
                }
            }
            qt.y0(11, b5 & 3);
            qt.y0(12, (b5 >> 2) & 1);
            qt.y0(14, (b5 >> 3) & 1);
            qt.y0(65, (b5 >> 4) & 1);
            qt.y0(16, (b5 >> 5) & 1);
            qt.y0(33, (b5 >> 7) & 1);
            int i12 = bArr[i2 + 2] & 255;
            int i13 = SystemProperties.getInt("persist.fyt.temperature", 0);
            if (i12 == 128) {
                u0.d.A3(0);
                return;
            }
            u0.d.B3(i13 == 1 ? (((i12 & 128) != 0 ? 1320 - ((256 - i12) * 18) : ((i12 & 127) * 18) + 1320) | 268435456) & (-1) : (i12 & 128) != 0 ? 1000 - ((256 - i12) * 10) : ((i12 & 127) * 10) + 1000);
            return;
        }
        if (b2 == 2) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            byte b13 = bArr[i2 + 9];
            qt.y0(100, b6 & 3);
            qt.y0(101, (b6 >> 2) & 3);
            qt.y0(102, (b6 >> 4) & 3);
            qt.y0(103, (b6 >> 6) & 3);
            qt.y0(104, b7 & 3);
            qt.y0(105, (b7 >> 2) & 3);
            qt.y0(106, (b7 >> 4) & 3);
            qt.y0(107, (b7 >> 6) & 3);
            qt.y0(108, b8);
            qt.y0(109, b9);
            qt.y0(110, b10);
            if (((b11 >> 7) & 1) == 1) {
                qt.y0(111, b11 & (-1));
            } else {
                qt.y0(111, b11 & 127);
            }
            if (((b12 >> 7) & 1) == 1) {
                qt.y0(112, (b12 & 255) - 256);
            } else {
                qt.y0(112, b12 & 127);
            }
            qt.y0(113, b13 & 255);
            return;
        }
        if (b2 != 28) {
            if (b2 == 36) {
                byte b14 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b14 >> 7) & 1);
                    qt.y0(2, (b14 >> 6) & 1);
                } else {
                    qt.y0(1, (b14 >> 6) & 1);
                    qt.y0(2, (b14 >> 7) & 1);
                }
                qt.y0(4, (b14 >> 5) & 1);
                qt.y0(3, (b14 >> 4) & 1);
                qt.y0(5, (b14 >> 3) & 1);
                qt.y0(0, (b14 >> 2) & 1);
                return;
            }
            if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            if (b2 != 101) {
                return;
            }
            int i14 = i2 + 2;
            int i15 = i2 + 3;
            qt.y0(99, ((bArr[i14] << 8) & 65280) | (bArr[i15] & 255));
            qt.y0(1032, ((bArr[i14] << 8) & 65280) | (bArr[i15] & 255));
            int i16 = i2 + 4;
            int i17 = i2 + 5;
            qt.y0(98, ((bArr[i16] << 8) & 65280) | (bArr[i17] & 255));
            qt.y0(1031, ((bArr[i16] << 8) & 65280) | (bArr[i17] & 255));
            o1.x.C(nt.f8643f, 1049, new int[]{1, (bArr[i17] & 255) | ((bArr[i16] << 8) & 65280)}, null, null);
            return;
        }
        byte b15 = bArr[i2 + 2];
        byte b16 = bArr[i2 + 3];
        this.f3927c = b15 & 255;
        int i18 = 0;
        while (true) {
            iArr = this.f3928d;
            if (i18 >= iArr.length) {
                break;
            }
            int i19 = this.f3927c;
            if (i19 == iArr[i18][0]) {
                if (i19 == 0) {
                    break;
                }
                this.f3926b = i18;
                break;
            }
            i18++;
        }
        int i20 = this.f3927c;
        if (i20 == 6) {
            for (int i21 = 0; i21 < (b16 & 255); i21++) {
                l0.b0.l0(7, 0);
            }
            l0.b0.l0(7, 1);
            return;
        }
        if (i20 == 7) {
            for (int i22 = 0; i22 < (b16 & 255); i22++) {
                l0.b0.l0(8, 0);
            }
            l0.b0.l0(8, 1);
            return;
        }
        int i23 = b16 & 255;
        if (i23 == 1) {
            if (i18 < iArr.length) {
                l0.b0.l0(iArr[i18][1], 0);
            }
        } else if (i23 == 0) {
            int i24 = this.f3926b;
            if (i24 < iArr.length && i24 != 255) {
                l0.b0.l0(iArr[i24][1], 1);
            }
            this.f3926b = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3930f);
        l0.b0.p0(this.f3931g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 114) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && qt.l0(iArr, 2)) {
            z.k.s(227, 113, 2, iArr[0], iArr[1]);
        }
    }
}
