package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class us extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11174c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11175d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 2}, new int[]{6, 13}, new int[]{7, 12}, new int[]{8, 34}, new int[]{9, 35}, new int[]{10, 32}, new int[]{11, 33}, new int[]{12, 29}, new int[]{65, 6}, new int[]{68, 1}, new int[]{73, 5}, new int[]{80, 8}, new int[]{81, 7}, new int[]{82, 30}, new int[]{83, 31}, new int[]{84, 8}, new int[]{85, 7}, new int[]{86, 30}, new int[]{87, 31}, new int[]{88, 18}, new int[]{89, 24}, new int[]{90, 54}, new int[]{91, 2}, new int[]{92, 16}, new int[]{93, 5}, new int[]{94, 0}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11176e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11177f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11178g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11179h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11180i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11181j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11182k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f11183l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f11184m = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 13) {
                z.k.s(227, 136, 1, 1);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(us.this.f11184m);
            us.this.f11182k = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            us usVar = us.this;
            int i2 = usVar.f11182k - 1;
            usVar.f11182k = i2;
            if (i2 <= 0) {
                l0.b0.p0(usVar.f11184m);
                us.this.f11182k = 6;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 48, 0);
                switch (nt.f8633a) {
                    case 6029768:
                        z.k.s(227, 132, 1, 0);
                        break;
                    case 6095304:
                        z.k.s(227, 132, 1, 1);
                        break;
                    case 6160840:
                        z.k.s(227, 132, 1, 2);
                        break;
                    case 6226376:
                        z.k.s(227, 132, 1, 3);
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
        u0.c.f17386m.a(this.f11183l, 1);
        u0.c.f17374a.a(this.f11181j, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8321p = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 10624);
        }
        if (b2 == 39) {
            int i6 = bArr[i2 + 2] & 255;
            if (i6 == 0) {
                u0.d.A3(0);
                return;
            }
            u0.d.B3(bArr[i2 + 3] == 1 ? (((((i6 & 128) != 0 ? 1320 - ((256 - i6) * 18) : (i6 * 18) + 1320) / 10) * 10) | 268435456) & (-1) : (i6 & 128) != 0 ? 1000 - ((256 - i6) * 10) : ((i6 & 255) * 10) + 1000);
            return;
        }
        if (b2 == 69) {
            int i7 = i2 + 2;
            int i8 = bArr[i7] & 255;
            if (i8 == 0) {
                qt.y0(40, -2);
            } else if (i8 == 254) {
                qt.y0(40, -3);
            } else if (i8 == 255) {
                qt.y0(40, -1);
            } else if (nt.f8645g[37] == 1) {
                qt.y0(40, bArr[i7] * 10);
            } else {
                qt.y0(40, bArr[i7] * 5);
            }
            int i9 = i2 + 3;
            qt.y0(44, (bArr[i9] >> 4) & 15);
            int i10 = bArr[i9] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i10 != 2) {
                if (i10 == 3) {
                    i5 = 1;
                } else if (i10 != 4) {
                    i5 = 0;
                } else {
                    i5 = 0;
                    i4 = 1;
                }
                i4 = i5;
            } else {
                i4 = 0;
                i5 = 1;
            }
            qt.y0(46, i5);
            qt.y0(47, i4);
            int i11 = i2 + 4;
            qt.y0(42, (bArr[i11] >> 7) & 1);
            qt.y0(67, (bArr[i11] >> 6) & 1);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f11174c = b3 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f11175d;
                    if (i12 < iArr.length) {
                        int i13 = this.f11174c;
                        if (i13 != iArr[i12][0]) {
                            i12++;
                        } else if (i13 != 0) {
                            this.f11173b = i12;
                        }
                    }
                }
                int i14 = this.f11174c;
                if (i14 == 6) {
                    if ((b4 & 255) == 1) {
                        int i15 = h0.c.E;
                        if (i15 == 3 || i15 == 4 || i15 == 5) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        } else {
                            l0.b0.l0(13, 0);
                            l0.b0.l0(13, 1);
                        }
                    }
                    break;
                } else if (i14 == 7) {
                    if ((b4 & 255) == 1) {
                        int i16 = h0.c.E;
                        if (i16 == 3 || i16 == 4 || i16 == 5) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else if (u0.i.l3().r3()) {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        } else {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                    break;
                } else {
                    switch (i14) {
                        case 80:
                            for (int i17 = 0; i17 < (b4 & 255); i17++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                            break;
                        case 81:
                            for (int i18 = 0; i18 < (b4 & 255); i18++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        case 82:
                            for (int i19 = 0; i19 < (b4 & 255); i19++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                            break;
                        case 83:
                            for (int i20 = 0; i20 < (b4 & 255); i20++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                            break;
                        default:
                            int i21 = b4 & 255;
                            if (i21 != 0) {
                                if (i12 < iArr.length) {
                                    l0.b0.l0(iArr[i12][1], 0);
                                }
                            } else if (i21 == 0) {
                                int i22 = this.f11173b;
                                if (i22 < iArr.length && i22 != 255) {
                                    l0.b0.l0(iArr[i22][1], 1);
                                }
                                this.f11173b = 255;
                            }
                            break;
                    }
                }
                break;
            case 33:
                int i23 = bArr[i2 + 2] & 255;
                int i24 = bArr[i2 + 3] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 6;
                int i30 = bArr[i29] & 255;
                qt.y0(10, (i23 >> 7) & 1);
                qt.y0(11, (i23 >> 6) & 1);
                qt.y0(12, (i23 >> 5) & 1);
                qt.y0(16, (i23 >> 4) & 1);
                qt.y0(65, (i23 >> 3) & 1);
                qt.y0(54, (i23 >> 2) & 1);
                qt.y0(62, (i23 >> 1) & 1);
                qt.y0(52, (i23 >> 0) & 1);
                qt.y0(18, (i24 >> 7) & 1);
                qt.y0(19, (i24 >> 6) & 1);
                qt.y0(20, (i24 >> 5) & 1);
                qt.y0(21, (i24 >> 0) & 15);
                int i31 = i2 + 8;
                qt.y0(37, (bArr[i31] >> 7) & 1);
                int i32 = (bArr[i31] >> 7) & 1;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i26 = bArr[i27] & 255;
                    i28 = bArr[i25] & 255;
                }
                if (i26 == 0) {
                    qt.y0(27, -2);
                } else if (i26 == 255) {
                    qt.y0(27, -3);
                } else if (i32 == 1) {
                    qt.y0(27, i26 * 10);
                } else {
                    qt.y0(27, i26 * 5);
                }
                if (i30 == 0) {
                    qt.y0(28, -2);
                } else if (i30 == 255) {
                    qt.y0(28, -3);
                } else if (i32 == 1) {
                    qt.y0(28, i28 * 10);
                } else {
                    qt.y0(28, i28 * 5);
                }
                qt.y0(29, (bArr[i29] >> 6) & 3);
                qt.y0(30, (bArr[i29] >> 4) & 3);
                qt.y0(93, (bArr[i29] >> 2) & 3);
                qt.y0(94, (bArr[i29] >> 0) & 3);
                int i33 = i2 + 7;
                qt.y0(31, (bArr[i33] >> 4) & 15);
                qt.y0(32, (bArr[i33] >> 0) & 15);
                qt.y0(13, (bArr[i31] >> 2) & 1);
                qt.y0(80, (bArr[i31] >> 1) & 1);
                qt.y0(33, (bArr[i31] >> 0) & 1);
                break;
            case 34:
                u0.d.R2(l0.c0.L0(bArr[i2 + 6] & 255));
                u0.d.S2(l0.c0.L0(bArr[i2 + 7] & 255));
                u0.d.T2(l0.c0.L0(bArr[i2 + 8] & 255));
                u0.d.U2(l0.c0.L0(bArr[i2 + 9] & 255));
                break;
            case 35:
                int i34 = i2 + 2;
                int i35 = bArr[i34] & 255;
                int i36 = i2 + 3;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 4;
                int i39 = bArr[i38] & 255;
                int i40 = i2 + 5;
                int i41 = bArr[i40] & 255;
                if (l0.c0.f13013g != i35 || l0.c0.f13014h != i37 || l0.c0.f13015i != i39 || l0.c0.f13016j != i41) {
                    if (i35 != 0 || i37 != 0 || i39 != 0 || i41 != 0) {
                        u0.d.C2(1);
                    } else if (u0.b.f17350p == 1) {
                        l0.c0.f13017k = 2;
                        l0.b0.b(l0.c0.f13018l);
                    }
                }
                l0.c0.f13013g = i35;
                l0.c0.f13014h = i37;
                l0.c0.f13015i = i39;
                l0.c0.f13016j = i41;
                u0.d.D2(l0.c0.L0(bArr[i34] & 255));
                u0.d.E2(l0.c0.L0(bArr[i36] & 255));
                u0.d.F2(l0.c0.L0(bArr[i38] & 255));
                u0.d.G2(l0.c0.L0(bArr[i40] & 255));
                break;
            case 36:
                int i42 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i42 >> 6) & 1);
                    qt.y0(1, (i42 >> 7) & 1);
                } else {
                    qt.y0(2, (i42 >> 7) & 1);
                    qt.y0(1, (i42 >> 6) & 1);
                }
                qt.y0(4, (i42 >> 5) & 1);
                qt.y0(3, (i42 >> 4) & 1);
                qt.y0(5, (i42 >> 3) & 1);
                qt.y0(0, (i42 >> 2) & 1);
                int i43 = i2 + 3;
                if (this.f11176e != ((bArr[i43] >> 0) & 1)) {
                    int i44 = (bArr[i43] >> 0) & 1;
                    this.f11176e = i44;
                    if (u0.b.f17357r0 == 0) {
                        if (i44 == 1) {
                            if (!o1.u.a0()) {
                                qt.y0(98, 1);
                                this.f11177f = true;
                                SystemProperties.set("persist.lesc.video.ignore", "true");
                                a.i.a0(200L);
                                o1.u.z();
                                float f2 = y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f;
                                this.f11180i = y0.f.f18037c;
                                y0.h.t0((int) f2);
                            }
                            u0.d.C2(0);
                        } else if (i44 == 0) {
                            y0.h.t0(this.f11180i);
                            if (this.f11177f && o1.u.a0()) {
                                qt.y0(98, 0);
                                a.i.a0(350L);
                                SystemProperties.set("persist.lesc.video.ignore", "false");
                                if (SystemProperties.getBoolean("persist.fyt.fy_radartofront", false)) {
                                    o1.u.f("com.syu.frontvideo");
                                }
                            }
                            this.f11177f = false;
                        }
                    }
                }
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i45 = i2 + 6;
                        l0.c0.a((bArr[i45] >> 6) & 1, (bArr[i45] >> 7) & 1, (bArr[i45] >> 5) & 1);
                        break;
                    case 50:
                        int i46 = i2 + 2;
                        if (this.f11178g != ((bArr[i46] >> 7) & 1)) {
                            int i47 = (bArr[i46] >> 7) & 1;
                            this.f11178g = i47;
                            if (i47 == 1) {
                                if (!o1.u.a0()) {
                                    this.f11179h = true;
                                    o1.u.z();
                                }
                                u0.d.C2(0);
                            } else if (i47 == 0) {
                                if (this.f11179h && o1.u.a0()) {
                                    l0.b0.l0(6, 0);
                                    l0.b0.l0(6, 1);
                                }
                                this.f11179h = false;
                            }
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f11183l);
        l0.b0.p0(this.f11184m);
        u0.c.f17374a.d(this.f11181j);
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
        switch (i2) {
            case 0:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 130, 2, iArr[0], iArr[1]);
                }
                break;
            case 1:
                if (qt.l0(iArr, 2)) {
                    z.k.s(227, 131, 2, iArr[0], iArr[1]);
                }
                break;
            case 2:
                if (qt.l0(iArr, 5)) {
                    z.k.s(227, 133, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                }
                break;
            case 3:
                if (qt.l0(iArr, 1)) {
                    z.k.s(227, 134, 1, iArr[0]);
                }
                break;
            case 4:
                if (qt.l0(iArr, 1)) {
                    z.k.s(227, 136, 1, iArr[0]);
                }
                break;
            case 5:
                if (qt.l0(iArr, 1)) {
                    z.k.s(227, 137, 1, iArr[0]);
                }
                break;
            case 6:
                if (qt.l0(iArr, 1) && nt.U == 1) {
                    o1.x.x(nt.f8643f, 1001, iArr[0]);
                    break;
                }
                break;
        }
    }
}
