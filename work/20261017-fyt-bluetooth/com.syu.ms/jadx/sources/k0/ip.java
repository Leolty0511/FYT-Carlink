package k0;

import android.media.videoeditor.MediaProperties;
import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ip extends lt {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f6541q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f6542r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f6543s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f6544t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f6545u = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6546b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6547c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6548d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6549e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f6550f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6551g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6552h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f6553i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f6554j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public o1.g0 f6555k = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f6556l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f6557m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f6558n = 3;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f6559o = 4;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f6560p = 5;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3 = h0.c.E;
            if (i3 == 3) {
                i2 = 2;
            } else if (i3 != 4) {
                i2 = i3 != 5 ? 0 : 3;
            } else {
                i2 = 1;
            }
            if (ip.this.f6549e != i2) {
                ip.this.f6549e = i2;
                z.k.s(227, 163, 1, i2);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ip.a3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ip.this.f6554j);
            ip.this.f6552h = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ip ipVar = ip.this;
            int i2 = ipVar.f6552h - 1;
            ipVar.f6552h = i2;
            if (i2 <= 0) {
                l0.b0.p0(ipVar.f6554j);
                ip.this.f6552h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                ip ipVar2 = ip.this;
                ipVar2.j3(ipVar2.f6555k.b(1, 1));
                ip ipVar3 = ip.this;
                ipVar3.k3(ipVar3.f6555k.b(2, 1));
                ip ipVar4 = ip.this;
                ipVar4.l3(ipVar4.f6555k.b(3, 1));
                ip ipVar5 = ip.this;
                ipVar5.m3(ipVar5.f6555k.b(4, 1));
                ip ipVar6 = ip.this;
                ipVar6.n3(ipVar6.f6555k.b(5, 1));
            }
        }
    }

    public static void a3() {
        int i2 = u0.b.D;
        if (i2 != 1) {
            if (i2 == 3) {
                z.k.s(227, 162, 1, 4);
                return;
            }
            switch (i2) {
                case 8:
                case 9:
                case 10:
                    z.k.s(227, 162, 1, 3);
                    break;
                default:
                    z.k.s(227, 162, 1, 0);
                    break;
            }
        }
        int[] iArr = new int[5];
        int i3 = 0;
        iArr[0] = 162;
        iArr[1] = 3;
        int i4 = w0.d.f17796h;
        if (i4 == 65536 || i4 == 65537 || i4 == 65538) {
            iArr[2] = 1;
        } else if (i4 == 0 || i4 == 1) {
            iArr[2] = 2;
        }
        int i5 = w0.d.f17797i;
        iArr[4] = i5 & 255;
        iArr[3] = (i5 >> 8) & 255;
        int[] iArr2 = new int[6];
        iArr2[0] = 227;
        while (i3 < 5) {
            int i6 = i3 + 1;
            iArr2[i6] = iArr[i3];
            i3 = i6;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f6555k.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8315j = 0;
        mtVar.f8319n = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        if (nt.f8637c == 135) {
            mtVar.f8313h = 2;
        } else {
            mtVar.f8313h = 0;
        }
        u0.c.f17386m.a(this.f6553i, 1);
        l0.b0.b(this.f6551g);
        h0.d.f2462a.a(this.f6550f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f6547c = b3 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f6548d;
                    if (i7 < iArr.length) {
                        int i8 = this.f6547c;
                        if (i8 != iArr[i7][0]) {
                            i7++;
                        } else if (i8 != 0) {
                            this.f6546b = i7;
                        }
                    }
                }
                int i9 = b4 & 255;
                if (i9 != 1) {
                    if (i9 == 0) {
                        int i10 = this.f6546b;
                        if (i10 < iArr.length && i10 != 255) {
                            l0.b0.l0(iArr[i10][1], 1);
                        }
                        this.f6546b = 255;
                    }
                } else if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                }
                break;
            case 33:
                int i11 = i2 + 2;
                qt.y0(10, (bArr[i11] >> 7) & 1);
                qt.y0(11, (bArr[i11] >> 6) & 1);
                qt.y0(12, (bArr[i11] >> 5) & 1);
                qt.y0(53, (bArr[i11] >> 4) & 1);
                qt.y0(13, (bArr[i11] >> 3) & 1);
                qt.y0(14, (bArr[i11] >> 2) & 1);
                qt.y0(16, (bArr[i11] >> 1) & 1);
                qt.y0(15, (bArr[i11] >> 0) & 1);
                int i12 = i2 + 3;
                int i13 = bArr[i12] & 255;
                if (i13 == 1) {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                } else if (i13 != 2) {
                    if (i13 == 3) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i13 == 4) {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    } else if (i13 != 5) {
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
                    i6 = 0;
                    i5 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(77, bArr[i12] & 255);
                qt.y0(21, bArr[i2 + 4] & 255);
                int i14 = i2 + 5;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 6;
                int i17 = bArr[i16] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i15 = bArr[i16] & 255;
                    i17 = bArr[i14] & 255;
                }
                if (i15 == 0) {
                    qt.y0(27, -2);
                } else if (i15 != 16) {
                    qt.y0(27, i15);
                } else {
                    qt.y0(27, -3);
                }
                if (i17 == 0) {
                    qt.y0(28, -2);
                } else if (i17 != 16) {
                    qt.y0(28, i17);
                } else {
                    qt.y0(28, -3);
                }
                int i18 = i2 + 7;
                qt.y0(29, (bArr[i18] >> 7) & 1);
                qt.y0(30, (bArr[i18] >> 6) & 1);
                qt.y0(58, (bArr[i18] >> 4) & 3);
                break;
            case 34:
                int i19 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i19 >> 7) & 1);
                    qt.y0(1, (i19 >> 6) & 1);
                } else {
                    qt.y0(2, (i19 >> 6) & 1);
                    qt.y0(1, (i19 >> 7) & 1);
                }
                qt.y0(4, (i19 >> 4) & 1);
                qt.y0(3, (i19 >> 5) & 1);
                qt.y0(5, (i19 >> 3) & 1);
                qt.y0(0, (i19 >> 2) & 1);
                break;
            case 35:
                u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                break;
            case 36:
                int i20 = i2 + 2;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 3;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 4;
                int i25 = bArr[i24] & 255;
                int i26 = i2 + 5;
                int i27 = bArr[i26] & 255;
                if (i21 == 0 && i23 == 0 && i25 == 0 && i27 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i21 || l0.c0.f13014h != i23 || l0.c0.f13015i != i25 || l0.c0.f13016j != i27) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i21;
                l0.c0.f13014h = i23;
                l0.c0.f13015i = i25;
                l0.c0.f13016j = i27;
                u0.d.D2(l0.c0.L0(bArr[i20] & 255));
                u0.d.E2(l0.c0.L0(bArr[i22] & 255));
                u0.d.F2(l0.c0.L0(bArr[i24] & 255));
                u0.d.G2(l0.c0.L0(bArr[i26] & 255));
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5445);
                        break;
                    case 49:
                        if ((bArr[i2 + 2] & 255) == 0) {
                            qt.a(0);
                        } else {
                            qt.a(1);
                        }
                        break;
                    case 50:
                        int i28 = i2 + 2;
                        qt.y0(98, (bArr[i28] >> 7) & 1);
                        qt.y0(99, (bArr[i28] >> 6) & 1);
                        qt.y0(100, (bArr[i28] >> 5) & 1);
                        qt.y0(101, (bArr[i28] >> 4) & 1);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f6553i);
        l0.b0.p0(this.f6554j);
        l0.b0.p0(this.f6551g);
        h0.d.f2462a.d(this.f6550f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 107) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            switch (iArr[0]) {
                case 7:
                    j3(iArr[1]);
                    break;
                case 8:
                    k3(iArr[1]);
                    break;
                case 9:
                    l3(iArr[1]);
                    break;
                case 10:
                    m3(iArr[1]);
                    break;
                case 11:
                    n3(iArr[1]);
                    break;
                default:
                    z.k.s(227, 130, 2, iArr[0], iArr[1]);
                    break;
            }
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 131, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (u0.b.f17347o == 1) {
                z.k.s(227, -91, 1, 0);
                return;
            } else {
                z.k.s(227, -91, 1, 1);
                return;
            }
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * 1280) / a.f.w();
            int i3 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
            a.f.p().t(LogType.CANBUS, " touch_x = " + iW + "touch_y ==" + i3 + " ObjApp.getHeight()" + a.f.i());
            if (iArr[0] == 0) {
                z.k.s(227, 164, 5, 1, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
            } else if (iArr[0] == 1) {
                z.k.s(227, 164, 5, 0, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
            }
        }
    }

    public final void j3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6541q = i2;
        z.k.s(227, 130, 2, 7, i2);
        qt.y0(102, f6541q);
        int iB = this.f6555k.b(1, 1);
        int i3 = f6541q;
        if (iB != i3) {
            this.f6555k.g(1, i3);
        }
    }

    public final void k3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6542r = i2;
        z.k.s(227, 130, 2, 8, i2);
        qt.y0(103, f6542r);
        int iB = this.f6555k.b(2, 1);
        int i3 = f6542r;
        if (iB != i3) {
            this.f6555k.g(2, i3);
        }
    }

    public final void l3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6543s = i2;
        z.k.s(227, 130, 2, 9, i2);
        qt.y0(104, f6543s);
        int iB = this.f6555k.b(3, 1);
        int i3 = f6543s;
        if (iB != i3) {
            this.f6555k.g(3, i3);
        }
    }

    public final void m3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6544t = i2;
        z.k.s(227, 130, 2, 10, i2);
        qt.y0(105, f6544t);
        int iB = this.f6555k.b(4, 1);
        int i3 = f6544t;
        if (iB != i3) {
            this.f6555k.g(4, i3);
        }
    }

    public final void n3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f6545u = i2;
        z.k.s(227, 130, 2, 11, i2);
        qt.y0(106, f6545u);
        int iB = this.f6555k.b(5, 1);
        int i3 = f6545u;
        if (iB != i3) {
            this.f6555k.g(5, i3);
        }
    }
}
