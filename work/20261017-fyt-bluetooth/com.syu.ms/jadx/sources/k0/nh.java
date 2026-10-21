package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class nh extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f8473j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8476d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f8474b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8475c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8477e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f8478f = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{10, 25}, new int[]{20, 13}, new int[]{21, 21}, new int[]{22, 54}, new int[]{23, 5}, new int[]{24, 1}, new int[]{25, 25}, new int[]{26, 55}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8479g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8480h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8481i = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(nh.this.f8481i);
            nh.this.f8479g = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nh nhVar = nh.this;
            int i2 = nhVar.f8479g - 1;
            nhVar.f8479g = i2;
            if (i2 <= 0) {
                l0.b0.p0(nhVar.f8481i);
                nh.this.f8479g = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 255);
                }
            }
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[21] != 0) {
                        a3(1);
                    }
                } else if (nt.f8645g[21] == 0) {
                    a3(10);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(23);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(23);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(21);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(21);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(19);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(19);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(20);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(20);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(25);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(25);
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    a3(9);
                } else {
                    a3(10);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(4);
                } else {
                    a3(5);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8314i = 1;
        this.f8474b.a();
        b3(this.f8474b.b(1, 0));
        u0.c.f17386m.a(this.f8480h, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56, 70};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b2 = bArr[i2];
        if (b2 == -1) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 6580);
            return;
        }
        if (b2 == 48) {
            if (f8473j == 0) {
                return;
            }
            int i9 = (bArr[i2 + 2] >> 7) & 1;
            if (u0.b.f17347o == 0) {
                if (i9 != 0) {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                }
            }
            return;
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
            qt.y0(99, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
            int i10 = i2 + 5;
            qt.y0(98, (bArr[i10] >> 7) & 1);
            qt.y0(110, (bArr[i10] >> 6) & 1);
            return;
        }
        if (b2 == 102) {
            int i11 = i2 + 2;
            qt.y0(101, (bArr[i11] >> 7) & 1);
            qt.y0(102, (bArr[i11] >> 6) & 1);
            qt.y0(103, (bArr[i11] >> 5) & 1);
            qt.y0(127, (bArr[i11] >> 3) & 1);
            int i12 = i2 + 3;
            qt.y0(104, (bArr[i12] >> 5) & 7);
            qt.y0(105, (bArr[i12] >> 3) & 3);
            qt.y0(128, (bArr[i12] >> 2) & 1);
            qt.y0(111, (bArr[i12] >> 1) & 1);
            int i13 = i2 + 4;
            qt.y0(106, (bArr[i13] >> 6) & 1);
            qt.y0(112, (bArr[i13] >> 5) & 1);
            qt.y0(113, (bArr[i13] >> 4) & 1);
            qt.y0(114, (bArr[i13] >> 3) & 1);
            qt.y0(115, (bArr[i13] >> 2) & 1);
            qt.y0(116, (bArr[i13] >> 1) & 1);
            int i14 = i2 + 5;
            qt.y0(107, (bArr[i14] >> 7) & 1);
            qt.y0(108, (bArr[i14] >> 5) & 3);
            qt.y0(109, (bArr[i14] >> 4) & 1);
            qt.y0(126, (bArr[i14] >> 3) & 1);
            qt.y0(129, (bArr[i14] >> 2) & 1);
            int i15 = i2 + 6;
            qt.y0(117, (bArr[i15] >> 6) & 1);
            qt.y0(118, (bArr[i15] >> 4) & 3);
            qt.y0(119, (bArr[i15] >> 0) & 15);
            qt.y0(120, (bArr[i2 + 7] >> 0) & 15);
            int i16 = i2 + 8;
            qt.y0(121, (bArr[i16] >> 7) & 1);
            qt.y0(130, (bArr[i16] >> 4) & 3);
            qt.y0(131, (bArr[i16] >> 2) & 3);
            qt.y0(132, (bArr[i16] >> 0) & 3);
            int i17 = i2 + 9;
            qt.y0(133, (bArr[i17] >> 6) & 3);
            qt.y0(122, (bArr[i17] >> 3) & 1);
            qt.y0(123, (bArr[i17] >> 2) & 1);
            qt.y0(124, (bArr[i17] >> 1) & 1);
            qt.y0(125, (bArr[i17] >> 0) & 1);
            return;
        }
        if (b2 == 103) {
            int i18 = i2 + 2;
            l0.c0.N1((bArr[i18] >> 1) & 1, (bArr[i18] >> 0) & 1, 0);
            return;
        }
        switch (b2) {
            case 32:
                byte b4 = bArr[i2 + 2];
                byte b5 = bArr[i2 + 3];
                this.f8477e = b4 & 255;
                int i19 = 0;
                while (true) {
                    iArr = this.f8478f;
                    if (i19 < iArr.length) {
                        int i20 = this.f8477e;
                        if (i20 != iArr[i19][0]) {
                            i19++;
                        } else if (i20 != 0) {
                            this.f8476d = i19;
                        }
                    }
                }
                int i21 = b5 & 255;
                if (i21 != 1) {
                    if (i21 == 0) {
                        int i22 = this.f8476d;
                        if (i22 < iArr.length && i22 != 255) {
                            int i23 = this.f8477e;
                            if (i23 == 3) {
                                int i24 = h0.c.E;
                                if (i24 == 3 || i24 == 4 || i24 == 5) {
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(3, 1);
                                }
                            } else if (i23 != 4) {
                                l0.b0.l0(iArr[i22][1], 1);
                            } else {
                                int i25 = h0.c.E;
                                if (i25 == 3 || i25 == 4 || i25 == 5) {
                                    l0.b0.l0(18, 1);
                                } else {
                                    l0.b0.l0(4, 1);
                                }
                            }
                        }
                        this.f8476d = 255;
                    }
                } else if (i19 < iArr.length) {
                    int i26 = this.f8477e;
                    if (i26 == 3) {
                        int i27 = h0.c.E;
                        if (i27 == 3 || i27 == 4 || i27 == 5) {
                            l0.b0.l0(26, 0);
                        } else {
                            l0.b0.l0(3, 0);
                        }
                    } else if (i26 == 4) {
                        int i28 = h0.c.E;
                        if (i28 == 3 || i28 == 4 || i28 == 5) {
                            l0.b0.l0(18, 0);
                        } else {
                            l0.b0.l0(4, 0);
                        }
                    } else {
                        l0.b0.l0(iArr[i19][1], 0);
                    }
                }
                break;
            case 33:
                int i29 = bArr[i2 + 2] & 255;
                qt.y0(14, (i29 >> 7) & 1);
                qt.y0(13, (i29 >> 4) & 1);
                qt.y0(11, (i29 >> 3) & 1);
                qt.y0(12, (i29 >> 2) & 1);
                qt.y0(65, (i29 >> 1) & 1);
                qt.y0(16, (i29 >> 0) & 1);
                qt.y0(21, bArr[i2 + 3] & 255);
                int i30 = bArr[i2 + 4] & 255;
                if (i30 != 0) {
                    if (i30 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i30 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i30 == 3) {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    } else if (i30 != 4) {
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
                qt.y0(77, i30);
                int i31 = i2 + 5;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 6;
                int i34 = bArr[i33] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i32 = bArr[i33] & 255;
                    i34 = bArr[i31] & 255;
                }
                qt.y0(27, i32 & 255);
                qt.y0(28, i34 & 255);
                break;
            case 34:
                u0.d.R2(l0.c0.s1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.s1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.s1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.s1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i35 = i2 + 2;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 3;
                int i38 = bArr[i37] & 255;
                int i39 = i2 + 4;
                int i40 = bArr[i39] & 255;
                int i41 = i2 + 5;
                int i42 = bArr[i41] & 255;
                if (i36 == 0 && i38 == 0 && i40 == 0 && i42 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i36 || l0.c0.f13014h != i38 || l0.c0.f13015i != i40 || l0.c0.f13016j != i42) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i36;
                l0.c0.f13014h = i38;
                l0.c0.f13015i = i40;
                l0.c0.f13016j = i42;
                u0.d.D2(l0.c0.s1(bArr[i35] & 255));
                u0.d.E2(l0.c0.s1(bArr[i37] & 255));
                u0.d.F2(l0.c0.s1(bArr[i39] & 255));
                u0.d.G2(l0.c0.s1(bArr[i41] & 255));
                break;
            case 36:
                int i43 = i2 + 2;
                qt.y0(42, (bArr[i43] >> 7) & 1);
                qt.y0(43, (bArr[i43] >> 4) & 1);
                int i44 = bArr[i43] & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i44 != 0) {
                    if (i44 == 1) {
                        i8 = 1;
                    } else if (i44 != 2) {
                        i8 = 0;
                    } else {
                        i8 = 0;
                        i7 = 1;
                    }
                    i7 = i8;
                } else {
                    i7 = 0;
                    i8 = 1;
                }
                qt.y0(46, i8);
                qt.y0(47, i7);
                qt.y0(44, bArr[i2 + 3] & 255);
                qt.y0(40, bArr[i2 + 4] & 255);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f8474b.j();
        u0.c.f17386m.d(this.f8480h);
        l0.b0.p0(this.f8481i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 134) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            b3(iArr[0]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 136, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 224, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 133, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 4 && iArr != null && iArr.length > 0) {
            z.k.s(227, 144, 1, iArr[0]);
        }
    }

    public final void a3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 224, 2, b2, 1);
        a.i.a0(200L);
        z.k.s(227, 224, 2, b2, 0);
    }

    public final void b3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f8473j = i2;
        qt.y0(100, i2);
        int iB = this.f8474b.b(1, 0);
        int i3 = f8473j;
        if (iB != i3) {
            this.f8474b.g(1, i3);
        }
    }
}
