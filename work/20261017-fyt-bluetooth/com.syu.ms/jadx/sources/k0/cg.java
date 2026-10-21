package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class cg extends lt {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static int f4014o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f4015p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f4016q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4018c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4019d = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 25}, new int[]{6, 29}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{16, 26}, new int[]{17, 12}, new int[]{18, 9}, new int[]{19, 38}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4020e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f4021f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f4022g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o1.g0 f4023h = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4024i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4025j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f4026k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f4027l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4028m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f4029n = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cg cgVar = cg.this;
            byte b2 = (byte) (cgVar.f4021f + 1);
            cgVar.f4021f = b2;
            if (b2 > 11) {
                if (cg.f4014o == 1 && u0.b.f17357r0 == 0 && !o1.u.S(a.b.Q)) {
                    o1.u.c();
                }
                l0.b0.o0(cg.this.f4022g);
                cg.this.f4021f = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cg cgVar = cg.this;
            int i2 = cgVar.f4025j;
            int i3 = y0.f.Q0;
            if (i2 != i3) {
                cgVar.f4025j = i3;
                if (u0.b.D == 13) {
                    z.k.s(227, 202, 8, 1, y0.f.Q0, 0, 0, 0, 0, 0, 0);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = cg.this.f4028m;
            if (i2 != i3) {
                if (i3 == 13) {
                    z.k.s(227, 202, 8, 0, 0, 0, 0, 0, 0, 0, 0);
                }
                if (u0.b.D == 13) {
                    z.k.s(227, 202, 8, 1, 0, 0, 0, 0, 0, 0, 0);
                }
                cg.this.f4028m = u0.b.D;
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8317l = 1;
        mtVar.f8320o = 1;
        this.f4023h.a();
        b3(this.f4023h.b(1, 1));
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        u0.c.f17374a.a(this.f4029n, 1);
        y0.g.f18110t.a(this.f4026k, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 22) {
            qt.y0(1032, (bArr[i2 + 4] | ((bArr[i2 + 5] << 8) & 65280)) & 65535);
        }
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4800);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4018c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f4019d;
                    if (i4 < iArr.length) {
                        int i5 = this.f4018c;
                        if (i5 != iArr[i4][0]) {
                            i4++;
                        } else if (i5 != 0) {
                            this.f4017b = i4;
                        }
                    }
                }
                if (this.f4018c != 16) {
                    int i6 = b4 & 255;
                    if (i6 != 1) {
                        if (i6 == 0) {
                            int i7 = this.f4017b;
                            if (i7 < iArr.length && i7 != 255) {
                                l0.b0.l0(iArr[i7][1], 1);
                            }
                            this.f4017b = 255;
                        }
                    } else if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                    }
                } else if ((b4 & 255) == 1) {
                    int i8 = h0.c.E;
                    if (i8 == 3 || i8 == 4 || i8 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else if (!u0.i.l3().r3()) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    } else {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                qt.y0(13, (b5 >> 3) & 1);
                qt.y0(14, (b5 >> 2) & 1);
                qt.y0(15, (b5 >> 1) & 1);
                qt.y0(16, (b5 >> 0) & 1);
                byte b6 = bArr[i2 + 3];
                qt.y0(18, (b6 >> 7) & 1);
                qt.y0(19, (b6 >> 6) & 1);
                qt.y0(20, (b6 >> 5) & 1);
                int i9 = b6 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i9 > 7) {
                    i9 = 7;
                }
                qt.y0(21, i9);
                int i10 = i2 + 4;
                byte b7 = bArr[i10];
                int i11 = i2 + 5;
                byte b8 = bArr[i11];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i11];
                    b8 = bArr[i10];
                }
                if (b7 == 0) {
                    qt.y0(27, -2);
                } else if (b7 == 31) {
                    qt.y0(27, -3);
                } else if (b7 < 1 || b7 > 29) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, (b7 * 5) + 175);
                }
                if (b8 == 0) {
                    qt.y0(28, -2);
                } else if (b8 == 31) {
                    qt.y0(28, -3);
                } else if (b8 < 1 || b8 > 29) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, (b8 * 5) + 175);
                }
                qt.y0(33, (bArr[i2 + 6] >> 0) & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 35:
                if (nt.a()) {
                    int i12 = i2 + 2;
                    int i13 = bArr[i12] & 255;
                    int i14 = i2 + 3;
                    int i15 = bArr[i14] & 255;
                    int i16 = i2 + 4;
                    int i17 = bArr[i16] & 255;
                    int i18 = i2 + 5;
                    int i19 = bArr[i18] & 255;
                    if (u0.b.f17347o == 0) {
                        if (l0.c0.f13013g != i13 || l0.c0.f13014h != i15 || l0.c0.f13015i != i17 || l0.c0.f13016j != i19) {
                            if (i13 != 0 || i15 != 0 || i17 != 0 || i19 != 0) {
                                u0.d.C2(1);
                            } else if (u0.b.f17350p == 1) {
                                l0.c0.f13017k = 2;
                                l0.b0.b(l0.c0.f13018l);
                            }
                        }
                        l0.c0.f13013g = i13;
                        l0.c0.f13014h = i15;
                        l0.c0.f13015i = i17;
                        l0.c0.f13016j = i19;
                    }
                    u0.d.D2(l0.c0.E0(bArr[i12] & 255));
                    u0.d.E2(l0.c0.E0(bArr[i14] & 255));
                    u0.d.F2(l0.c0.E0(bArr[i16] & 255));
                    u0.d.G2(l0.c0.E0(bArr[i18] & 255));
                }
                break;
            case 36:
                byte b9 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b9 >> 7) & 1);
                    qt.y0(2, (b9 >> 6) & 1);
                } else {
                    qt.y0(1, (b9 >> 6) & 1);
                    qt.y0(2, (b9 >> 7) & 1);
                }
                qt.y0(3, (b9 >> 4) & 1);
                qt.y0(4, (b9 >> 5) & 1);
                qt.y0(5, (b9 >> 3) & 1);
                qt.y0(0, (b9 >> 2) & 1);
                int i20 = (bArr[i2 + 3] >> 0) & 1;
                if (f4014o != i20) {
                    f4014o = i20;
                    if (u0.b.f17357r0 == 0) {
                        if (this.f4021f == 0 && f4014o == 1) {
                            l0.b0.a(this.f4022g);
                            this.f4021f = (byte) (this.f4021f + 1);
                        } else if (f4014o == 0) {
                            this.f4021f = (byte) 0;
                            l0.b0.o0(this.f4022g);
                            if (o1.u.S(a.b.Q)) {
                                o1.u.c();
                            }
                        }
                    }
                }
                int i21 = (bArr[i2 + 4] >> 6) & 3;
                if (f4015p != i21) {
                    f4015p = i21;
                    if (f4016q == 1) {
                        if (i21 == 2) {
                            if (!o1.u.S(a.b.Q)) {
                                this.f4020e = true;
                                qt.t();
                                z.k.s(227, 202, 8, 1, 0, 0, 0, 0, 0, 0, 0);
                            } else {
                                this.f4020e = false;
                            }
                            break;
                        } else if (this.f4020e && o1.u.S(a.b.Q)) {
                            qt.f();
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4023h.j();
        u0.c.f17386m.d(l0.c0.f13020n);
        u0.c.f17374a.d(this.f4029n);
        y0.g.f18110t.d(this.f4026k);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 202, 8, 1, 0, 0, 0, 0, 0, 0, 0);
        } else if (i2 == 1) {
            b3(iArr[0]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 135, 2, iArr[0], iArr[1]);
        }
    }

    public final void b3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f4016q = i2;
        qt.y0(98, i2);
        int iB = this.f4023h.b(1, 0);
        int i3 = f4016q;
        if (iB != i3) {
            this.f4023h.g(1, i3);
        }
    }
}
