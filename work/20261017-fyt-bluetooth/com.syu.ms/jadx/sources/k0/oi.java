package k0;

import android.content.Intent;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class oi extends lt {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8841f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8844i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8847l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f8837b = new int[7];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f8838c = new int[7];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f8839d = new int[7];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f8840e = new int[7];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8842g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f8843h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 35}, new int[]{4, 34}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 1}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 34}, new int[]{134, 35}, new int[]{135, 25}, new int[]{136, 2}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8845j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f8846k = {new int[]{135, 0}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{133, 31}, new int[]{134, 30}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f8848m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f8849n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8850o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f8851p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f8852q = new c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8853r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f8854s = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 29, 0);
                z.k.s(227, 144, 2, 30, 0);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(oi.this.f8852q);
            oi.this.f8850o = 7;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            oi oiVar = oi.this;
            int i2 = oiVar.f8850o - 1;
            oiVar.f8850o = i2;
            if (i2 <= 0) {
                l0.b0.p0(oiVar.f8852q);
                oi.this.f8850o = 7;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 132, 2, 8, 1);
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 != oi.this.f8853r) {
                if (i2 != 13 && i2 != 11) {
                    if (i2 == 1) {
                        z.k.s(227, 133, 2, 32, 6);
                    } else if (i2 == 8) {
                        z.k.s(227, 133, 2, 32, 5);
                    }
                }
                oi.this.f8853r = u0.b.D;
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f8848m);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        u0.c.f17386m.a(this.f8851p, 1);
        u0.c.f17374a.a(this.f8854s, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            u0.d.D2(a3(bArr[i2 + 2] & 255));
            u0.d.E2(a3(bArr[i2 + 3] & 255));
            u0.d.F2(a3(bArr[i2 + 4] & 255));
            u0.d.G2(a3(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(a3(bArr[i2 + 2] & 255));
            u0.d.S2(a3(bArr[i2 + 3] & 255));
            u0.d.T2(a3(bArr[i2 + 4] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8842g = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8843h;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8842g;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8841f = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f8841f;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f8841f = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            return;
        }
        if (b2 == 81) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            this.f8845j = b6 & 255;
            int i8 = 0;
            while (true) {
                iArr2 = this.f8846k;
                if (i8 >= iArr2.length) {
                    break;
                }
                int i9 = this.f8845j;
                if (i9 == iArr2[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f8844i = i8;
                    break;
                }
                i8++;
            }
            int i10 = this.f8845j;
            if (i10 == 129) {
                for (int i11 = 0; i11 < (b7 & 255); i11++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i10 == 130) {
                for (int i12 = 0; i12 < (b7 & 255); i12++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i10 == 133) {
                for (int i13 = 0; i13 < (b7 & 255); i13++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
                return;
            }
            if (i10 == 134) {
                for (int i14 = 0; i14 < (b7 & 255); i14++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            int i15 = b7 & 255;
            if (i15 == 1) {
                if (i8 < iArr2.length) {
                    l0.b0.l0(iArr2[i8][1], 0);
                    return;
                }
                return;
            } else {
                if (i15 == 0) {
                    int i16 = this.f8844i;
                    if (i16 < iArr2.length && i16 != 255) {
                        l0.b0.l0(iArr2[i16][1], 1);
                    }
                    this.f8844i = 255;
                    return;
                }
                return;
            }
        }
        if (b2 == 88) {
            byte b8 = bArr[i2 + 5];
            qt.y0(17, (b8 >> 4) & 1);
            qt.y0(76, (b8 >> 5) & 1);
            qt.y0(33, (b8 >> 7) & 1);
            qt.y0(35, (b8 >> 6) & 1);
            return;
        }
        if (b2 == 98) {
            int i17 = i2 + 2;
            byte b9 = bArr[i17];
            int i18 = i2 + 4;
            byte b10 = bArr[i18];
            int i19 = i2 + 5;
            byte b11 = bArr[i19];
            int i20 = i2 + 6;
            byte b12 = bArr[i20];
            byte b13 = bArr[i2 + 7];
            byte b14 = bArr[i2 + 8];
            byte b15 = bArr[i2 + 9];
            if (b9 != this.f8847l) {
                if (b9 == 1) {
                    if (nt.f8633a == 1245636) {
                        d3();
                    } else {
                        l0.b0.l0(24, 0);
                        l0.b0.l0(24, 1);
                    }
                } else if (b9 == 129) {
                    if (nt.f8633a != 1245636) {
                        d3();
                    }
                } else if (b9 == 2) {
                    c3();
                } else if (b9 == 3) {
                    l0.b0.l0(54, 0);
                    l0.b0.l0(54, 1);
                }
            }
            byte b16 = bArr[i17];
            this.f8847l = b16;
            qt.y0(98, b16);
            int i21 = this.f8847l;
            if (i21 != 1) {
                if (i21 == 2) {
                    qt.y0(105, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
                    qt.y0(108, (b11 >> 4) & 15);
                    qt.y0(109, (b12 >> 0) & 15);
                    qt.y0(106, o1.p0.c(b15, b14));
                    qt.y0(107, o1.p0.c(b13, b12));
                    qt.y0(112, o1.p0.c(bArr[i2 + 14], bArr[i2 + 15]));
                    return;
                }
                return;
            }
            int i22 = i2 + 3;
            if (bArr[i22] == 0) {
                qt.y0(99, b10);
                qt.y0(101, b11 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(100, o1.p0.c(b13, b12));
                qt.y0(102, (b11 >> 5) & 1);
                return;
            }
            if (bArr[i22] == 1) {
                this.f8840e[0] = bArr[i18];
                for (int i23 = 1; i23 < 7; i23++) {
                    int i24 = (i23 - 1) * 2;
                    int iC = o1.p0.c(bArr[i20 + i24], bArr[i24 + i19]);
                    int[] iArr3 = this.f8840e;
                    if (iArr3[i23] != iC) {
                        iArr3[i23] = iC;
                    }
                }
                o1.x.B(nt.f8643f, 103, this.f8840e);
                return;
            }
            return;
        }
        if (b2 == 125) {
            int i25 = bArr[i2 + 2] & 255;
            if (i25 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i26 = i2 + 3;
                    l0.c0.b((bArr[i26] >> 3) & 1, (bArr[i26] >> 4) & 1, 0);
                    return;
                } else {
                    int i27 = i2 + 3;
                    l0.c0.a((bArr[i27] >> 3) & 1, (bArr[i27] >> 4) & 1, 0);
                    return;
                }
            }
            if (i25 == 3) {
                int i28 = (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)) / 100;
                qt.y0(1031, i28);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i28}, null, null);
                return;
            } else {
                if (i25 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f8849n = true;
                return;
            }
        }
        if (b2 != 40) {
            if (b2 == 41 && !this.f8849n) {
                qt.k(bArr[i2 + 2], bArr[i2 + 3], false, 500);
                return;
            }
            return;
        }
        byte b17 = bArr[i2 + 2];
        qt.y0(10, (b17 >> 7) & 1);
        qt.y0(11, (b17 >> 6) & 1);
        qt.y0(12, (b17 >> 5) & 1);
        qt.y0(13, (b17 >> 4) & 1);
        qt.y0(26, (b17 >> 3) & 1);
        qt.y0(14, (b17 >> 2) & 1);
        qt.y0(15, (b17 >> 1) & 1);
        byte b18 = bArr[i2 + 3];
        qt.y0(18, (b18 >> 7) & 1);
        qt.y0(19, (b18 >> 6) & 1);
        int i29 = b18 >> 5;
        qt.y0(20, i29 & 1);
        qt.y0(80, (b18 >> 4) & 1);
        qt.y0(77, i29 & 7);
        int i30 = b18 & DhcpPacket.DHCP_DOMAIN_NAME;
        qt.y0(21, i30 <= 7 ? i30 : 7);
        int i31 = i2 + 4;
        int i32 = bArr[i31] & 255;
        int i33 = i2 + 5;
        int i34 = bArr[i33] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i32 = bArr[i33] & 255;
            i34 = bArr[i31] & 255;
        }
        if (SystemProperties.getInt("persist.fyt.temperature", 0) != 0) {
            if (i32 == 0) {
                qt.y0(27, -2);
            } else if (i32 != 255) {
                qt.y0(27, (i32 + 33) * 10);
            } else {
                qt.y0(27, -3);
            }
            if (i34 == 0) {
                qt.y0(28, -2);
            } else if (i34 != 255) {
                qt.y0(28, (i34 + 33) * 10);
            } else {
                qt.y0(28, -3);
            }
        } else {
            if (i32 == 0) {
                qt.y0(27, -2);
            } else if (i32 == 31) {
                qt.y0(27, -3);
            } else if (i32 >= 1 && i32 <= 29) {
                qt.y0(27, (i32 * 5) + 175);
            } else if (i32 < 32 || i32 > 35) {
                qt.y0(27, -1);
            } else {
                qt.y0(27, ((i32 - 32) * 5) + 160);
            }
            if (i34 == 0) {
                qt.y0(28, -2);
            } else if (i34 == 31) {
                qt.y0(28, -3);
            } else if (i34 >= 1 && i34 <= 29) {
                qt.y0(28, (i34 * 5) + 175);
            } else if (i34 < 20 || i34 > 35) {
                qt.y0(28, -1);
            } else {
                qt.y0(28, ((i34 - 32) * 5) + 160);
            }
        }
        byte b19 = bArr[i2 + 6];
        qt.y0(65, (b19 >> 7) & 1);
        qt.y0(16, (b19 >> 6) & 1);
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f8848m);
        u0.c.f17374a.d(this.f8854s);
        u0.c.f17386m.d(this.f8851p);
        l0.b0.p0(this.f8852q);
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
        if (i2 == 0) {
            if (b3(iArr, 2)) {
                if (iArr[0] == 4 || iArr[0] == 5) {
                    z.k.s(227, 133, 2, 16, iArr[1]);
                    return;
                }
                if (iArr[0] == 3) {
                    z.k.s(227, 133, 2, 17, iArr[1]);
                    return;
                }
                if (iArr[0] == 6) {
                    z.k.s(227, 133, 2, 8, iArr[1]);
                    return;
                } else if (iArr[0] == 11) {
                    z.k.s(227, 133, 2, 2, 0);
                    return;
                } else {
                    if (iArr[0] == 12) {
                        z.k.s(227, 133, 2, 1, 0);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 == 1) {
            if (b3(iArr, 1)) {
                z.k.s(227, 144, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 != 2) {
            if (i2 == 3 && b3(iArr, 5)) {
                z.k.s(227, 199, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                return;
            }
            return;
        }
        if (b3(iArr, 2)) {
            if (iArr[0] == 9 && iArr[1] == 1) {
                if (this.f8847l == 1) {
                    z.k.s(227, 133, 2, 19, 0);
                    return;
                } else {
                    z.k.s(227, 133, 2, 4, 0);
                    return;
                }
            }
            if (iArr[0] == 8 && iArr[1] == 1) {
                if (this.f8847l == 1) {
                    z.k.s(227, 133, 2, 18, 0);
                    return;
                } else {
                    z.k.s(227, 133, 2, 5, 0);
                    return;
                }
            }
            if (iArr[0] == 5 && iArr[1] == 1) {
                z.k.s(227, 133, 2, 32, 134);
            } else if (iArr[0] == 7 && iArr[1] == 1) {
                z.k.s(227, 133, 2, 32, 4);
            }
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 9;
        }
        return 6;
    }

    public final boolean b3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public final void c3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.dj.huangguan.ActivityCarCD")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.dj.huangguan.ActivityCarCD");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void d3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.dj.huangguan.ActivityCarRadio")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.dj.huangguan.ActivityCarRadio");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
