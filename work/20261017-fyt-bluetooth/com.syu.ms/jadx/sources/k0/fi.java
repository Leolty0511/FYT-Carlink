package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class fi extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f5180l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5184e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f5181b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5182c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5183d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5185f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5186g = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 21}, new int[]{10, 25}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 5}, new int[]{20, 54}, new int[]{33, 7}, new int[]{34, 8}, new int[]{35, 29}, new int[]{36, 33}, new int[]{37, 32}, new int[]{38, 3}, new int[]{39, 4}, new int[]{40, 55}, new int[]{41, 1}, new int[]{42, 25}, new int[]{43, 64}, new int[]{44, 9}, new int[]{45, 18}, new int[]{46, 58}, new int[]{47, 38}, new int[]{48, 9}, new int[]{49, 29}, new int[]{136, 13}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5187h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5188i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5189j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5190k = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            fi.this.f5188i++;
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                fi fiVar = fi.this;
                if (fiVar.f5188i % 2 == 0) {
                    if (fiVar.f5187h) {
                        z.k.s(227, 144, 2, 125, 8);
                    } else {
                        z.k.s(227, 144, 2, 41, 0);
                    }
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8637c) {
                case 43:
                    z.k.s(227, -18, 2, 3, 1);
                    break;
                case 44:
                    z.k.s(227, -18, 2, 3, 2);
                    break;
                case 45:
                    z.k.s(227, -18, 2, 3, 3);
                    break;
                case 46:
                    z.k.s(227, -18, 2, 3, 4);
                    break;
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f5181b.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        b3(this.f5181b.b(1, 0));
        qt.z(this.f5190k);
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        l0.b0.a(this.f5189j);
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
            if (this.f5187h) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5500);
            return;
        }
        if (b2 == 82) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (b3 == 1) {
                int[] iArr2 = new int[1];
                iArr2[0] = b4 != 1 ? 0 : 1;
                qt.y0(98, iArr2);
                return;
            }
            if (b3 == 0) {
                int[] iArr3 = new int[1];
                iArr3[0] = b4 != 1 ? 0 : 1;
                qt.y0(112, iArr3);
                return;
            }
            if (b3 == 2) {
                int[] iArr4 = new int[1];
                iArr4[0] = b4 != 1 ? 0 : 1;
                qt.y0(113, iArr4);
                return;
            }
            if (b3 == 3) {
                int[] iArr5 = new int[1];
                iArr5[0] = b4 != 1 ? 0 : 1;
                qt.y0(114, iArr5);
                return;
            }
            if (b3 == 4) {
                int[] iArr6 = new int[1];
                iArr6[0] = b4 != 1 ? 0 : 1;
                qt.y0(115, iArr6);
                return;
            }
            if (b3 == 5) {
                int[] iArr7 = new int[1];
                iArr7[0] = b4 != 1 ? 0 : 1;
                qt.y0(116, iArr7);
                return;
            }
            if (b3 == 6) {
                int[] iArr8 = new int[1];
                iArr8[0] = b4 != 1 ? 0 : 1;
                qt.y0(117, iArr8);
                return;
            }
            if (b3 == 7) {
                int[] iArr9 = new int[1];
                iArr9[0] = b4 != 1 ? 0 : 1;
                qt.y0(118, iArr9);
                return;
            }
            if (b3 == 8) {
                int[] iArr10 = new int[1];
                iArr10[0] = b4 != 1 ? 0 : 1;
                qt.y0(119, iArr10);
                return;
            }
            if (b3 == 9) {
                int[] iArr11 = new int[1];
                iArr11[0] = b4 != 1 ? 0 : 1;
                qt.y0(120, iArr11);
                return;
            }
            if (b3 == 10) {
                qt.y0(121, b4);
                return;
            }
            if (b3 == 11) {
                qt.y0(122, b4);
                return;
            }
            if (b3 == 12) {
                qt.y0(123, b4);
                return;
            }
            if (b3 == 13) {
                qt.y0(124, b4);
                return;
            }
            if (b3 == 14) {
                qt.y0(125, b4);
                return;
            }
            if (b3 == 15) {
                qt.y0(126, b4);
                return;
            }
            if (b3 == 16) {
                int[] iArr12 = new int[1];
                iArr12[0] = b4 != 1 ? 0 : 1;
                qt.y0(127, iArr12);
                return;
            }
            if (b3 == 17) {
                int[] iArr13 = new int[1];
                iArr13[0] = b4 != 1 ? 0 : 1;
                qt.y0(128, iArr13);
                return;
            }
            if (b3 == 18) {
                qt.y0(129, b4);
                return;
            }
            if (b3 == 19) {
                int[] iArr14 = new int[1];
                iArr14[0] = b4 != 1 ? 0 : 1;
                qt.y0(130, iArr14);
                return;
            }
            if (b3 == 20) {
                int[] iArr15 = new int[1];
                iArr15[0] = b4 != 1 ? 0 : 1;
                qt.y0(131, iArr15);
                return;
            }
            if (b3 == 21) {
                qt.y0(132, b4);
                return;
            }
            if (b3 == 22) {
                qt.y0(133, b4);
                return;
            }
            if (b3 == 23) {
                int[] iArr16 = new int[1];
                iArr16[0] = b4 != 1 ? 0 : 1;
                qt.y0(134, iArr16);
                return;
            } else if (b3 == 24) {
                int[] iArr17 = new int[1];
                iArr17[0] = b4 != 1 ? 0 : 1;
                qt.y0(135, iArr17);
                return;
            } else {
                if (b3 == 25) {
                    int[] iArr18 = new int[1];
                    iArr18[0] = b4 != 1 ? 0 : 1;
                    qt.y0(136, iArr18);
                    return;
                }
                return;
            }
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                    return;
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                }
            }
            if (i7 == 3) {
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            } else if (i7 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f5187h = true;
                return;
            } else {
                if (i7 != 10) {
                    return;
                }
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
        }
        if (b2 == 48) {
            if (f5180l == 0) {
                return;
            }
            int i11 = (bArr[i2 + 2] >> 7) & 1;
            if (u0.b.f17347o == 0) {
                if (i11 != 0) {
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
        if (b2 == 49) {
            int i12 = nt.f8633a;
            if (i12 == 2818487 || i12 == 2884023 || i12 == 2949559 || i12 == 3015095) {
                return;
            }
            int i13 = ((bArr[i2 + 2] & 255) >> 7) & 1;
            if (i13 == 1) {
                qt.a(1);
                return;
            } else {
                if (i13 == 0) {
                    qt.a(0);
                    return;
                }
                return;
            }
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f5185f = b5 & 255;
                int i14 = 0;
                while (true) {
                    iArr = this.f5186g;
                    if (i14 < iArr.length) {
                        int i15 = this.f5185f;
                        if (i15 != iArr[i14][0]) {
                            i14++;
                        } else if (i15 != 0) {
                            this.f5184e = i14;
                        }
                    }
                }
                int i16 = this.f5185f;
                if (i16 != 3) {
                    if (i16 != 4) {
                        if (i16 == 33) {
                            for (int i17 = 0; i17 < (b6 & 255); i17++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                        } else if (i16 == 34) {
                            for (int i18 = 0; i18 < (b6 & 255); i18++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        } else if (i16 == 36) {
                            for (int i19 = 0; i19 < (b6 & 255); i19++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (i16 != 37) {
                            int i20 = b6 & 255;
                            if (i20 == 1) {
                                if (i14 < iArr.length) {
                                    l0.b0.l0(iArr[i14][1], 0);
                                }
                            } else if (i20 == 0) {
                                int i21 = this.f5184e;
                                if (i21 < iArr.length && i21 != 255) {
                                    l0.b0.l0(iArr[i21][1], 1);
                                }
                                this.f5184e = 255;
                            }
                        } else {
                            for (int i22 = 0; i22 < (b6 & 255); i22++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                    } else if ((b6 & 255) == 1) {
                        if (h0.c.E != 4) {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        } else {
                            l0.b0.l0(18, 0);
                            l0.b0.l0(18, 1);
                        }
                    }
                } else if ((b6 & 255) == 1) {
                    int i23 = h0.c.E;
                    if (i23 == 3 || i23 == 4 || i23 == 5) {
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    } else {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                    }
                }
                break;
            case 33:
                qt.y0(21, bArr[i2 + 3] & 255);
                int i24 = bArr[i2 + 2] & 255;
                qt.y0(53, (i24 >> 5) & 1);
                qt.y0(13, (i24 >> 4) & 1);
                qt.y0(11, (i24 >> 3) & 1);
                qt.y0(12, (i24 >> 2) & 1);
                qt.y0(65, (i24 >> 1) & 1);
                qt.y0(16, (i24 >> 0) & 1);
                int i25 = bArr[i2 + 4] & 255;
                if (i25 != 0) {
                    if (i25 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i25 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i25 == 3) {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    } else if (i25 != 4) {
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
                qt.y0(27, bArr[i2 + 5] & 255);
                break;
            case 34:
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                break;
            case 35:
                u0.d.D2(a3(bArr[i2 + 2] & 255));
                u0.d.E2(a3(bArr[i2 + 3] & 255));
                u0.d.F2(a3(bArr[i2 + 4] & 255));
                u0.d.G2(a3(bArr[i2 + 5] & 255));
                break;
            default:
                switch (b2) {
                    case 56:
                        qt.y0(104, bArr[i2 + 2] & 255);
                        qt.y0(105, bArr[i2 + 3] & 255);
                        qt.y0(106, bArr[i2 + 4] & 255);
                        qt.y0(107, bArr[i2 + 5] & 255);
                        qt.y0(100, bArr[i2 + 6] & 255);
                        qt.y0(101, bArr[i2 + 7] & 255);
                        qt.y0(102, bArr[i2 + 8] & 255);
                        qt.y0(103, bArr[i2 + 9] & 255);
                        break;
                    case 57:
                        qt.y0(108, bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(109, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(110, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                        qt.y0(111, bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME);
                        break;
                    case 58:
                        byte b7 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b7 >> 4) & 1);
                            qt.y0(2, (b7 >> 5) & 1);
                        } else {
                            qt.y0(1, (b7 >> 5) & 1);
                            qt.y0(2, (b7 >> 4) & 1);
                        }
                        qt.y0(3, (b7 >> 3) & 1);
                        qt.y0(4, (b7 >> 2) & 1);
                        qt.y0(5, (b7 >> 1) & 1);
                        qt.y0(0, (b7 >> 0) & 1);
                        qt.y0(139, (bArr[i2 + 4] & 255) | ((bArr[i2 + 3] & 255) << 8));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5181b.j();
        u0.c.f17386m.d(l0.c0.f13020n);
        qt.q0(this.f5190k);
        l0.b0.p0(l0.c0.f13021o);
        l0.b0.o0(this.f5189j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 140) {
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
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2)) {
            int iW = (iArr[1] * 800) / a.f.w();
            int i3 = (iArr[2] * 480) / a.f.i();
            z.k.s(227, 227, 5, (iW >> 8) & 255, iW & 255, (i3 >> 8) & 255, i3 & 255);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0 || i2 == 1) {
            return 15;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 0;
        }
        return 5;
    }

    public final void b3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f5180l = i2;
        qt.y0(99, i2);
        int iB = this.f5181b.b(1, 0);
        int i3 = f5180l;
        if (iB != i3) {
            this.f5181b.g(1, i3);
        }
    }
}
