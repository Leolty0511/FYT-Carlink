package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class hi extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5986b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5989e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5987c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5988d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{18, 13}, new int[]{21, 6}, new int[]{22, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5990f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5991g = {new int[]{1, 0}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 1}, new int[]{5, 64}, new int[]{6, 28}, new int[]{7, 27}, new int[]{8, 38}, new int[]{9, 33}, new int[]{10, 32}, new int[]{11, 40}, new int[]{12, 41}, new int[]{13, 42}, new int[]{14, 43}, new int[]{15, 44}, new int[]{16, 45}, new int[]{64, 53}, new int[]{65, 1}, new int[]{66, 64}, new int[]{67, 29}, new int[]{68, 25}, new int[]{69, 1}, new int[]{70, 31}, new int[]{71, 1}, new int[]{72, 30}, new int[]{73, 15}, new int[]{74, 72}, new int[]{75, 58}, new int[]{76, 14}, new int[]{77, 55}, new int[]{78, 71}, new int[]{79, 13}, new int[]{80, 54}, new int[]{81, 11}, new int[]{82, 1}, new int[]{83, 24}, new int[]{84, 53}, new int[]{85, 65}, new int[]{86, 63}, new int[]{87, 18}, new int[]{88, 54}, new int[]{89, 21}, new int[]{90, 12}, new int[]{91, -1}, new int[]{92, 78}, new int[]{93, 15}, new int[]{94, 63}, new int[]{95, 62}, new int[]{96, 34}, new int[]{97, 34}, new int[]{98, 33}, new int[]{99, 33}, new int[]{100, 35}, new int[]{101, 35}, new int[]{102, 32}, new int[]{103, 32}, new int[]{112, 29}, new int[]{113, 6}, new int[]{114, 1}, new int[]{115, 9}, new int[]{116, 31}, new int[]{117, 30}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5992h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5993i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte f5994j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5995k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5996l = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 393672:
                case 10355142:
                    z.k.s(227, -18, 2, 88, 2);
                    break;
                case 524744:
                case 590280:
                    z.k.s(227, -18, 2, 88, 3);
                    break;
                case 6750662:
                    z.k.s(227, -18, 2, 88, 1);
                    z.k.s(227, -125, 2, 47, 0);
                    break;
                case 6816198:
                    z.k.s(227, -18, 2, 88, 1);
                    z.k.s(227, -125, 2, 47, 1);
                    break;
                default:
                    z.k.s(227, -18, 2, 88, 0);
                    break;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(hi.this.f5996l);
            hi.this.f5994j = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hi hiVar = hi.this;
            byte b2 = (byte) (hiVar.f5994j - 1);
            hiVar.f5994j = b2;
            if (b2 <= 0) {
                l0.b0.p0(hiVar.f5996l);
                hi.this.f5994j = (byte) 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 131, 2, 0, 1);
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
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        switch (nt.f8633a) {
            case 8389062:
            case 8782279:
            case 10224070:
            case 10289606:
            case 10355142:
                mtVar.f8313h = 2;
                break;
        }
        u0.c.f17386m.a(this.f5995k, 1);
        qt.z(this.f5993i);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == -109) {
            qt.y0(123, bArr[i2 + 2] & 255);
            qt.y0(124, bArr[i2 + 3]);
            qt.y0(125, bArr[i2 + 4]);
            qt.y0(126, bArr[i2 + 5]);
            qt.y0(127, bArr[i2 + 6]);
            qt.y0(128, bArr[i2 + 7] & 255);
            qt.y0(129, bArr[i2 + 8] & 255);
            qt.y0(130, bArr[i2 + 9]);
            qt.y0(131, bArr[i2 + 10] & 255);
            qt.y0(132, bArr[i2 + 11] & 255);
            qt.y0(133, bArr[i2 + 12] & 255);
        }
        if (b2 == 48) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (this.f5992h) {
                return;
            }
            qt.l(b4, b3, false, 540);
            return;
        }
        if (b2 == 64) {
            qt.y0(112, bArr[i2 + 3] & 255);
            qt.y0(113, bArr[i2 + 4] & 255);
            qt.y0(114, bArr[i2 + 5] & 255);
            qt.y0(115, bArr[i2 + 6] & 255);
            qt.y0(116, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 125) {
            int i14 = bArr[i2 + 2] & 255;
            if (i14 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i15 = i2 + 3;
                    l0.c0.b((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                    return;
                } else {
                    int i16 = i2 + 3;
                    l0.c0.a((bArr[i16] >> 3) & 1, (bArr[i16] >> 4) & 1, 0);
                    return;
                }
            }
            if (i14 == 3) {
                int i17 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i17);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i17}, null, null);
                return;
            } else {
                if (i14 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f5992h = true;
                return;
            }
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                this.f5987c = b5 & 255;
                int i18 = 0;
                while (true) {
                    iArr = this.f5988d;
                    if (i18 < iArr.length) {
                        int i19 = this.f5987c;
                        if (i19 != iArr[i18][0]) {
                            i18++;
                        } else if (i19 != 0) {
                            this.f5986b = i18;
                        }
                    }
                }
                int i20 = b6 & 255;
                if (i20 == 1) {
                    if (i18 < iArr.length) {
                        l0.b0.l0(iArr[i18][1], 0);
                    }
                } else if (i20 == 0) {
                    int i21 = this.f5986b;
                    if (i21 < iArr.length) {
                        i4 = 255;
                        if (i21 != 255) {
                            l0.b0.l0(iArr[i21][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f5986b = i4;
                }
                break;
            case 33:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                byte b9 = bArr[i2 + 4];
                int i22 = i2 + 5;
                byte b10 = bArr[i22];
                int i23 = i2 + 6;
                byte b11 = bArr[i23];
                qt.y0(72, (b7 >> 7) & 1);
                qt.y0(11, (b7 >> 6) & 1);
                qt.y0(12, (b7 >> 4) & 3);
                qt.y0(13, (b7 >> 3) & 1);
                qt.y0(14, (b7 >> 2) & 1);
                qt.y0(16, (b7 >> 1) & 1);
                qt.y0(33, (b7 >> 0) & 1);
                int i24 = b8 & DhcpPacket.DHCP_DOMAIN_NAME;
                if (i24 != 1) {
                    if (i24 == 2) {
                        i5 = 0;
                        i7 = 1;
                    } else if (i24 == 3) {
                        i5 = 0;
                        i7 = 0;
                        i6 = 1;
                    } else if (i24 == 4) {
                        i7 = 0;
                        i5 = 1;
                        i6 = 1;
                    } else if (i24 != 5) {
                        i5 = 0;
                        i7 = 0;
                    } else {
                        i7 = 0;
                        i6 = 0;
                        i5 = 1;
                    }
                    i6 = i7;
                } else {
                    i5 = 0;
                    i6 = 0;
                    i7 = 1;
                }
                qt.y0(65, i5);
                qt.y0(18, i5);
                qt.y0(19, i7);
                qt.y0(20, i6);
                qt.y0(77, i24);
                int i25 = (b8 >> 4) & 15;
                if (i25 != 1) {
                    if (i25 == 2) {
                        i8 = 0;
                        i10 = 1;
                    } else if (i25 == 3) {
                        i8 = 0;
                        i10 = 0;
                        i9 = 1;
                    } else if (i25 == 4) {
                        i10 = 0;
                        i8 = 1;
                        i9 = 1;
                    } else if (i25 != 5) {
                        i8 = 0;
                        i10 = 0;
                    } else {
                        i10 = 0;
                        i9 = 0;
                        i8 = 1;
                    }
                    i9 = i10;
                } else {
                    i8 = 0;
                    i9 = 0;
                    i10 = 1;
                }
                qt.y0(22, i8);
                qt.y0(23, i10);
                qt.y0(24, i9);
                qt.y0(87, i25);
                qt.y0(21, b9 & 255);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b10 = bArr[i23];
                    b11 = bArr[i22];
                }
                byte b12 = b10;
                byte b13 = b11;
                if (b12 <= 32) {
                    qt.y0(27, -2);
                } else if (b12 >= 64) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, b12 & 255);
                }
                if (b13 <= 32) {
                    qt.y0(28, -2);
                } else if (b13 >= 64) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, b13 & 255);
                }
                int i26 = i2 + 7;
                qt.y0(80, (bArr[i26] >> 2) & 1);
                qt.y0(43, (bArr[i26] >> 1) & 1);
                qt.y0(67, (bArr[i26] >> 0) & 1);
                int i27 = i2 + 8;
                int i28 = (bArr[i27] >> 4) & 15;
                if (i28 == 1) {
                    i11 = 0;
                    i12 = 0;
                    i13 = 1;
                } else if (i28 == 2) {
                    i12 = 0;
                    i13 = 1;
                    i11 = 1;
                } else if (i28 == 3) {
                    i13 = 0;
                    i12 = 0;
                    i11 = 1;
                } else if (i28 != 4) {
                    i13 = 0;
                    i11 = 0;
                    i12 = 0;
                } else {
                    i13 = 0;
                    i11 = 0;
                    i12 = 1;
                }
                qt.y0(46, i13);
                qt.y0(47, i11);
                qt.y0(49, i12);
                qt.y0(44, (bArr[i27] >> 0) & 15);
                int i29 = i2 + 9;
                if ((bArr[i29] & 255) <= 32) {
                    qt.y0(40, -2);
                } else if ((bArr[i29] & 255) >= 64) {
                    qt.y0(40, -3);
                } else {
                    qt.y0(40, bArr[i29] & 255);
                }
                int i30 = i2 + 10;
                qt.y0(29, (bArr[i30] >> 4) & 15);
                qt.y0(30, (bArr[i30] >> 0) & 15);
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i31 = i2 + 2;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 3;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 4;
                int i36 = bArr[i35] & 255;
                int i37 = i2 + 5;
                int i38 = bArr[i37] & 255;
                if (i32 == 0 && i34 == 0 && i36 == 0 && i38 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i32 || l0.c0.f13014h != i34 || l0.c0.f13015i != i36 || l0.c0.f13016j != i38) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i32;
                l0.c0.f13014h = i34;
                l0.c0.f13015i = i36;
                l0.c0.f13016j = i38;
                u0.d.D2(l0.c0.K0(bArr[i31] & 255));
                u0.d.E2(l0.c0.K0(bArr[i33] & 255));
                u0.d.F2(l0.c0.K0(bArr[i35] & 255));
                u0.d.G2(l0.c0.K0(bArr[i37] & 255));
                break;
            case 36:
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                this.f5990f = b14 & 255;
                int i39 = 0;
                while (true) {
                    iArr2 = this.f5991g;
                    if (i39 < iArr2.length) {
                        int i40 = this.f5990f;
                        if (i40 != iArr2[i39][0]) {
                            i39++;
                        } else if (i40 != 0) {
                            this.f5989e = i39;
                        }
                    }
                }
                int i41 = this.f5990f;
                if (i41 == 2) {
                    for (int i42 = 0; i42 < (b15 & 255); i42++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (i41 != 3) {
                    if (i41 != 9) {
                        if (i41 != 10) {
                            if (i41 != 116) {
                                if (i41 != 117) {
                                    int i43 = b15 & 255;
                                    if (i43 == 1) {
                                        if (i39 < iArr2.length) {
                                            l0.b0.l0(iArr2[i39][1], 0);
                                        }
                                    } else if (i43 == 0) {
                                        int i44 = this.f5989e;
                                        if (i44 < iArr2.length && i44 != 255) {
                                            l0.b0.l0(iArr2[i44][1], 1);
                                        }
                                        this.f5989e = 255;
                                    }
                                }
                            }
                        }
                        for (int i45 = 0; i45 < (b15 & 255); i45++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    for (int i46 = 0; i46 < (b15 & 255); i46++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                } else {
                    for (int i47 = 0; i47 < (b15 & 255); i47++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                break;
            default:
                switch (b2) {
                    case 39:
                        int i48 = i2 + 2;
                        qt.y0(104, (bArr[i48] >> 1) & 1);
                        qt.y0(105, (bArr[i48] >> 0) & 1);
                        qt.y0(106, ((bArr[i2 + 6] << 24) & (-16777216)) | ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(107, (bArr[i2 + 7] & 255) | ((bArr[i2 + 8] << 8) & 65280));
                        break;
                    case 40:
                        byte b16 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(1, (b16 >> 7) & 1);
                            qt.y0(2, (b16 >> 6) & 1);
                        } else {
                            qt.y0(1, (b16 >> 6) & 1);
                            qt.y0(2, (b16 >> 7) & 1);
                        }
                        qt.y0(3, (b16 >> 4) & 1);
                        qt.y0(4, (b16 >> 5) & 1);
                        qt.y0(5, (b16 >> 3) & 1);
                        qt.y0(0, (b16 >> 2) & 1);
                        break;
                    case 41:
                        int i49 = i2 + 2;
                        qt.y0(108, (bArr[i49] >> 2) & 3);
                        qt.y0(109, 3 & (bArr[i49] >> 0));
                        qt.y0(110, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(111, (bArr[i2 + 5] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                        break;
                    default:
                        switch (b2) {
                            case 113:
                                qt.y0(99, bArr[i2 + 2] & 255);
                                qt.y0(100, bArr[i2 + 3] & 255);
                                qt.y0(101, bArr[i2 + 4] & 255);
                                break;
                            case 114:
                                qt.y0(102, bArr[i2 + 2] & 255);
                                qt.y0(103, bArr[i2 + 3] & 255);
                                break;
                            case 115:
                                qt.y0(117, bArr[i2 + 2] & 255);
                                qt.y0(118, bArr[i2 + 3] & 255);
                                qt.y0(119, 255 & bArr[i2 + 4]);
                                int i50 = i2 + 5;
                                qt.y0(120, (bArr[i50] >> 2) & 1);
                                qt.y0(121, (bArr[i50] >> 1) & 1);
                                qt.y0(122, (bArr[i50] >> 0) & 1);
                                break;
                            case 116:
                                int i51 = i2 + 2;
                                qt.y0(134, (bArr[i51] >> 4) & 3);
                                qt.y0(135, (bArr[i51] >> 2) & 3);
                                qt.y0(136, (bArr[i51] >> 0) & 3);
                                qt.y0(137, (bArr[i2 + 3] >> 6) & 3);
                                qt.y0(138, (bArr[i2 + 4] >> 3) & 3);
                                qt.y0(139, 3 & (bArr[i2 + 5] >> 0));
                                qt.y0(140, (bArr[i2 + 6] >> 0) & 255);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5995k);
        l0.b0.p0(this.f5996l);
        qt.q0(this.f5993i);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 141) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 225, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else if (i2 == 1003 && iArr != null && iArr.length > 0) {
            z.k.s(227, -57, 1, 1);
        }
    }
}
