package k0;

import android.net.dhcp.DhcpPacket;
import android.os.RemoteException;
import android.os.SystemProperties;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class td extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10613c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f10612b = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{63, 25}, new int[]{90, 12}, new int[]{24, 13}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10614d = (int[][]) Array.newInstance((Class<?>) int.class, 16, 8);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10615e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10616f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10617g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10618h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte f10619i = 5;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f10620j = new c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f10621k = new d();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10622l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10623m = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            td.this.c3(u0.b.K3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 102, 0);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(td.this.f10621k);
            td.this.f10619i = (byte) 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            td tdVar = td.this;
            byte b2 = (byte) (tdVar.f10619i - 1);
            tdVar.f10619i = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                z.k.s(227, 144, 2, 33, 0);
            } else {
                l0.b0.p0(tdVar.f10621k);
                td.this.f10619i = (byte) 5;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.W1 == 1) {
                if (u0.b.D != 12) {
                    u0.b.f17311c.c(12);
                }
                if (!qt.i0().equals("com.syu.carinfo.focus.FocusSyncBtActi")) {
                    o1.u.f("com.syu.canbus.sync");
                }
            }
            u0.b.W1 = 0;
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 12 || i2 == 13) {
                return;
            }
            td.this.h3(198, 161, 130);
            qt.y0(110, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f10616f = (nt.f8633a >> 16) & 65535;
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        z.k.s(227, -119, 1, 5);
        z.k.s(227, -118, 1, 5);
        z.k.s(227, 144, 2, 48, 0);
        u0.c.f17374a.a(this.f10623m, 1);
        qt.y(this.f10618h);
        u0.c.f17386m.a(this.f10620j, 1);
        z.c.f18185e.a(this.f10622l, 1);
        u0.c.f17397x.a(this.f10617g, 1);
        int i2 = this.f10616f;
        if (i2 == 1) {
            z.k.s(227, -117, 1, 1);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, -117, 1, 0);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            byte b3 = bArr[i2 + 2];
        }
        if (b2 == 102) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 4600);
            return;
        }
        if (b2 == 120) {
            qt.y0(107, bArr[i2 + 2]);
            qt.y0(108, bArr[i2 + 3]);
            qt.y0(109, bArr[i2 + 4]);
            return;
        }
        if (b2 == 121) {
            int i5 = i2 + 2;
            if (this.f10615e != bArr[i5]) {
                if (bArr[i5] == 4) {
                    l0.b0.l0(13, 0);
                    l0.b0.l0(13, 1);
                }
                this.f10615e = bArr[i5];
                return;
            }
            return;
        }
        switch (b2) {
            case 32:
                int i6 = i2 + 3;
                byte b4 = bArr[i6];
                int i7 = i2 + 2;
                byte b5 = bArr[i7];
                if (b5 == 61) {
                    o1.u.W0();
                    break;
                } else if (b5 != 86) {
                    if (b5 == 82) {
                        if (nt.a()) {
                            if (u0.b.D == 12) {
                                z.k.s(227, 198, 2, 161, 9);
                            } else if (b4 != 0) {
                                l0.b0.l0(3, 0);
                            } else {
                                l0.b0.l0(3, 1);
                            }
                        }
                        break;
                    } else if (b5 == 83) {
                        if (nt.a()) {
                            if (u0.b.D == 12) {
                                if (b4 == 0) {
                                    z.k.s(227, 198, 2, 161, 9);
                                }
                            } else if (b4 != 0) {
                                l0.b0.l0(4, 0);
                            } else {
                                l0.b0.l0(4, 1);
                            }
                        }
                        break;
                    } else {
                        switch (b5) {
                            case 14:
                                if ((bArr[i6] & 255) == 0 && b4 == 0) {
                                    int i8 = u0.b.D;
                                    if (i8 == 12) {
                                        i3(161, 10);
                                    } else if (i8 == 1) {
                                        w0.d.f17790b.i();
                                    } else {
                                        u0.d.L1();
                                    }
                                    break;
                                }
                                break;
                            case 15:
                                if ((bArr[i6] & 255) == 0 && b4 == 0) {
                                    int i9 = u0.b.D;
                                    if (i9 == 12) {
                                        i3(161, 11);
                                    } else if (i9 == 1) {
                                        w0.d.f17790b.d();
                                    } else {
                                        u0.d.x1();
                                    }
                                    break;
                                }
                                break;
                            case 16:
                                if (b4 == 0) {
                                    int i10 = u0.b.D;
                                    if (i10 == 12) {
                                        i3(161, 25);
                                    } else if (i10 == 1) {
                                        w0.d.f17790b.g();
                                    } else {
                                        u0.d.B1();
                                    }
                                }
                                break;
                            case 17:
                                if (b4 == 0) {
                                    int i11 = u0.b.D;
                                    if (i11 == 12) {
                                        i3(161, 26);
                                    } else if (i11 == 1) {
                                        w0.d.f17790b.c();
                                    } else {
                                        u0.d.I1();
                                    }
                                }
                                break;
                            case 18:
                                if (b4 == 0) {
                                    int i12 = u0.b.D;
                                    if (i12 == 12) {
                                        i3(161, 10);
                                    } else if (i12 == 1) {
                                        w0.d.f17790b.h();
                                    } else {
                                        u0.d.y1();
                                    }
                                }
                                break;
                            default:
                                switch (b5) {
                                    case 32:
                                    case 33:
                                    case 34:
                                    case 35:
                                    case 36:
                                    case 37:
                                    case 38:
                                    case 39:
                                    case 40:
                                    case 41:
                                        if (b4 == 0) {
                                            g3((bArr[i7] & 255) - 32);
                                        }
                                        break;
                                    case 42:
                                        int i13 = u0.b.D;
                                        if (i13 == 2) {
                                            if (b4 == 0) {
                                                h0.c.f2425b.h(13);
                                            }
                                        } else if ((i13 == 12 || i13 == 13) && b4 == 0) {
                                            h3(198, 161, 23);
                                        }
                                        break;
                                    case 43:
                                        int i14 = u0.b.D;
                                        if (i14 == 2) {
                                            if (b4 == 0) {
                                                h0.c.f2425b.h(14);
                                            }
                                        } else if ((i14 == 12 || i14 == 13) && b4 == 0) {
                                            h3(198, 161, 24);
                                        }
                                        break;
                                    default:
                                        switch (b5) {
                                            case 52:
                                                if (nt.a()) {
                                                    if (b4 != 0) {
                                                        l0.b0.l0(21, 0);
                                                    } else {
                                                        l0.b0.l0(21, 1);
                                                    }
                                                }
                                                break;
                                            case 53:
                                                o1.u.E();
                                                break;
                                            case 54:
                                                o1.u.j();
                                                break;
                                            case 55:
                                                a.i.A();
                                                break;
                                            case 56:
                                                o1.u.i();
                                                break;
                                            case 57:
                                                o1.u.r();
                                                break;
                                            default:
                                                switch (b5) {
                                                    case 72:
                                                        if (nt.a()) {
                                                            if (b4 != 0) {
                                                                l0.b0.l0(29, 0);
                                                            } else {
                                                                l0.b0.l0(29, 1);
                                                            }
                                                        }
                                                        break;
                                                    case 73:
                                                        if (nt.a() && (bArr[i6] & 255) == 0) {
                                                            int i15 = u0.b.D;
                                                            if (i15 == 12 || i15 == 13) {
                                                                z.k.s(227, 198, 2, 161, 25);
                                                            } else {
                                                                u0.d.B1();
                                                            }
                                                            break;
                                                        }
                                                        break;
                                                    case 74:
                                                        if (nt.a() && (bArr[i6] & 255) == 0) {
                                                            int i16 = u0.b.D;
                                                            if (i16 == 12 || i16 == 13) {
                                                                z.k.s(227, 198, 2, 161, 25);
                                                            } else {
                                                                u0.d.I1();
                                                            }
                                                            break;
                                                        }
                                                        break;
                                                    case 75:
                                                        if (nt.a() && (bArr[i6] & 255) == 0) {
                                                            int i17 = u0.b.D;
                                                            if (i17 == 12 || i17 == 13) {
                                                                z.k.s(227, 198, 2, 161, 10);
                                                            } else {
                                                                u0.d.B1();
                                                            }
                                                            break;
                                                        }
                                                        break;
                                                    case 76:
                                                        if (nt.a() && (bArr[i6] & 255) == 0) {
                                                            int i18 = u0.b.D;
                                                            if (i18 == 12 || i18 == 13) {
                                                                z.k.s(227, 198, 2, 161, 11);
                                                            } else {
                                                                u0.d.x1();
                                                            }
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        switch (b5) {
                                                            case 92:
                                                                if (b4 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                    h3(198, 161, 28);
                                                                    break;
                                                                }
                                                                break;
                                                            case 93:
                                                                if (b4 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                    h3(198, 161, 29);
                                                                    break;
                                                                }
                                                                break;
                                                            case 94:
                                                                if (b4 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                    h3(198, 161, 30);
                                                                    break;
                                                                }
                                                                break;
                                                            case 95:
                                                                if (b4 == 0 && o1.u.Y0().equals("com.syu.canbus")) {
                                                                    h3(198, 161, 31);
                                                                    break;
                                                                }
                                                                break;
                                                            default:
                                                                if (nt.a()) {
                                                                    byte b6 = bArr[i7];
                                                                    byte b7 = bArr[i6];
                                                                    int i19 = b6 & 255;
                                                                    int i20 = 0;
                                                                    while (true) {
                                                                        iArr = this.f10612b;
                                                                        if (i20 < iArr.length) {
                                                                            if (i19 != iArr[i20][0]) {
                                                                                i20++;
                                                                            } else if (i19 != 0) {
                                                                                this.f10613c = i20;
                                                                            }
                                                                        }
                                                                    }
                                                                    if (i19 != 3) {
                                                                        if (i19 != 4) {
                                                                            if ((b7 & 255) == 0) {
                                                                                int i21 = this.f10613c;
                                                                                if (i21 < iArr.length) {
                                                                                    i4 = 255;
                                                                                    if (i21 != 255) {
                                                                                        l0.b0.l0(iArr[i21][1], 1);
                                                                                    }
                                                                                } else {
                                                                                    i4 = 255;
                                                                                }
                                                                                this.f10613c = i4;
                                                                            } else if (i20 < iArr.length) {
                                                                                l0.b0.l0(iArr[i20][1], 0);
                                                                            }
                                                                        } else if ((b7 & 255) == 1) {
                                                                            if (h0.c.E != 4) {
                                                                                l0.b0.l0(3, 0);
                                                                                l0.b0.l0(3, 1);
                                                                            } else {
                                                                                l0.b0.l0(18, 0);
                                                                                l0.b0.l0(18, 1);
                                                                            }
                                                                        }
                                                                    } else if ((b7 & 255) == 1) {
                                                                        int i22 = h0.c.E;
                                                                        if (i22 == 3 || i22 == 4 || i22 == 5) {
                                                                            l0.b0.l0(26, 0);
                                                                            l0.b0.l0(26, 1);
                                                                        } else {
                                                                            l0.b0.l0(4, 0);
                                                                            l0.b0.l0(4, 1);
                                                                        }
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                } else if (b4 == 0 && u0.b.D == 1) {
                    w0.d.f17790b.w(2);
                    break;
                }
                break;
            case 33:
                int i23 = bArr[i2 + 2] & 255;
                int i24 = bArr[i2 + 3] & 255;
                int i25 = i2 + 4;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 5;
                int i28 = bArr[i27] & 255;
                int i29 = bArr[i2 + 6] & 255;
                int i30 = bArr[i2 + 7] & 255;
                qt.y0(10, (i23 >> 7) & 1);
                qt.y0(11, (i23 >> 6) & 1);
                qt.y0(12, (i23 >> 5) & 1);
                qt.y0(16, (i23 >> 4) & 1);
                qt.y0(13, (i23 >> 3) & 1);
                qt.y0(14, (i23 >> 2) & 1);
                qt.y0(15, (i23 >> 1) & 1);
                qt.y0(18, (i24 >> 7) & 1);
                qt.y0(19, (i24 >> 6) & 1);
                qt.y0(20, (i24 >> 5) & 1);
                qt.y0(21, i24 & 15);
                int i31 = (i29 >> 6) & 1;
                qt.y0(37, i31);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i26 = bArr[i27] & 255;
                    i28 = bArr[i25] & 255;
                }
                if (i31 == 1) {
                    if (i26 == 119) {
                        qt.y0(27, -2);
                    } else if (i26 == 171) {
                        qt.y0(27, -3);
                    } else if (i26 <= 119 || i26 >= 171) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, ((i26 - 120) / 2) + 60);
                    }
                    if (i28 == 119) {
                        qt.y0(28, -2);
                    } else if (i28 == 171) {
                        qt.y0(28, -3);
                    } else if (i28 < 119 || i28 > 171) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, ((i28 - 120) / 2) + 60);
                    }
                } else {
                    if (i26 == 0) {
                        qt.y0(27, -2);
                    } else if (i26 == 127) {
                        qt.y0(27, -3);
                    } else if (i26 < 31 || i26 > 59) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, ((i26 - 31) * 5) + 155);
                    }
                    if (i28 == 0) {
                        qt.y0(28, -2);
                    } else if (i28 == 127) {
                        qt.y0(28, -3);
                    } else if (i28 < 31 || i28 > 59) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, ((i28 - 31) * 5) + 155);
                    }
                }
                qt.y0(53, (i29 >> 2) & 1);
                int i32 = (i30 * 10) + 1000;
                if (i30 == 0) {
                    u0.d.A3(0);
                } else {
                    if ((32768 & i30) != 0) {
                        i32 = ((-(~(i30 - 1))) * 10) + 1000;
                    }
                    u0.d.A3(i32);
                }
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(a3(bArr[i2 + 2] & 255));
                    u0.d.S2(a3(bArr[i2 + 3] & 255));
                    u0.d.T2(a3(bArr[i2 + 4] & 255));
                    u0.d.U2(a3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i33 = i2 + 2;
                    int i34 = bArr[i33] & 255;
                    int i35 = i2 + 3;
                    int i36 = bArr[i35] & 255;
                    int i37 = i2 + 4;
                    int i38 = bArr[i37] & 255;
                    int i39 = i2 + 5;
                    int i40 = bArr[i39] & 255;
                    if (i34 == 0 && i36 == 0 && i38 == 0 && i40 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i34 || l0.c0.f13014h != i36 || l0.c0.f13015i != i38 || l0.c0.f13016j != i40) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i34;
                    l0.c0.f13014h = i36;
                    l0.c0.f13015i = i38;
                    l0.c0.f13016j = i40;
                    u0.d.D2(a3(bArr[i33] & 255));
                    u0.d.E2(a3(bArr[i35] & 255));
                    u0.d.F2(a3(bArr[i37] & 255));
                    u0.d.G2(a3(bArr[i39] & 255));
                }
                break;
            case 36:
                byte b8 = bArr[i2 + 2];
                byte b9 = bArr[i2 + 4];
                byte b10 = bArr[i2 + 5];
                byte b11 = bArr[i2 + 6];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b8 >> 7) & 1);
                    qt.y0(2, (b8 >> 6) & 1);
                } else {
                    qt.y0(1, (b8 >> 6) & 1);
                    qt.y0(2, (b8 >> 7) & 1);
                }
                qt.y0(4, (b8 >> 5) & 1);
                qt.y0(3, (b8 >> 4) & 1);
                qt.y0(5, (b8 >> 3) & 1);
                qt.y0(119, (b9 >> 7) & 1);
                qt.y0(120, (b9 >> 4) & 7);
                qt.y0(117, (b9 >> 3) & 1);
                qt.y0(116, (b9 >> 2) & 1);
                qt.y0(121, (b9 >> 1) & 1);
                qt.y0(115, (b9 >> 0) & 1);
                qt.y0(118, (b10 >> 7) & 1);
                qt.y0(125, (b10 >> 0) & 7);
                qt.y0(126, (b10 >> 3) & 7);
                qt.y0(127, (b11 >> 0) & 63);
                qt.y0(128, (b11 >> 7) & 1);
                break;
            default:
                switch (b2) {
                    case 47:
                        qt.y0(133, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(135, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(134, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
                        qt.y0(136, (bArr[i2 + 9] & 255) | (65280 & (bArr[i2 + 8] << 8)));
                        break;
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        int i41 = i2 + 2;
                        qt.y0(139, (bArr[i41] >> 4) & 15);
                        qt.y0(140, (bArr[i41] >> 0) & 15);
                        int i42 = i2 + 3;
                        qt.y0(142, (bArr[i42] >> 4) & 15);
                        qt.y0(144, (bArr[i42] >> 0) & 15);
                        int i43 = i2 + 4;
                        qt.y0(143, (bArr[i43] >> 4) & 15);
                        qt.y0(141, (bArr[i43] >> 0) & 15);
                        qt.y0(145, bArr[i2 + 5] & 255);
                        qt.y0(146, (bArr[i2 + 6] >> 0) & 1);
                        break;
                    default:
                        switch (b2) {
                            case 80:
                                int[] iArr2 = new int[6];
                                for (int i44 = 0; i44 < 6; i44++) {
                                    iArr2[i44] = bArr[i2 + 2 + i44];
                                }
                                o1.x.B(nt.f8643f, 105, iArr2);
                                break;
                            case 81:
                                int i45 = i2 + 2;
                                int i46 = i2 + 4;
                                o1.x.B(nt.f8643f, 99, new int[]{bArr[i45] & 255, bArr[i46] & 255, bArr[i2 + 5] & 255});
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    int i47 = (i2 + i3) - 1;
                                    for (int i48 = i2 + 6; i48 < i47; i48 += 2) {
                                        sb.append((char) ((bArr[i48 + 1] & 255) | (bArr[i48] << 8)));
                                    }
                                    qt.z0(100, new int[]{bArr[i45] & 255, bArr[i2 + 3] & 255, bArr[i46] & 255}, sb.toString());
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    return;
                                }
                                break;
                            case 82:
                                qt.y0(101, ((((bArr[i2 + 2] & 255) * 60) + bArr[i2 + 3]) * 60) + bArr[i2 + 4]);
                                break;
                            case 83:
                                qt.y0(106, (bArr[i2 + 3] * DhcpPacket.DHCP_VENDOR_CLASS_ID) + bArr[i2 + 4]);
                                break;
                            default:
                                switch (b2) {
                                    case 104:
                                        int i49 = i2 + 2;
                                        int i50 = i2 + 3;
                                        qt.y0(114, (bArr[i49] & 255) + ((bArr[i50] << 8) & 65280));
                                        qt.y0(1032, (bArr[i49] & 255) + ((bArr[i50] << 8) & 65280));
                                        break;
                                    case 105:
                                        byte b12 = bArr[i2 + 2];
                                        byte b13 = bArr[i2 + 3];
                                        qt.y0(129, b12 & 255);
                                        qt.y0(130, b13 & DhcpPacket.DHCP_DOMAIN_NAME);
                                        break;
                                    case 106:
                                        int i51 = i2 + 2;
                                        int i52 = i2 + 3;
                                        qt.y0(113, (bArr[i51] & 255) + ((bArr[i52] << 8) & 65280));
                                        qt.y0(1031, (bArr[i51] & 255) + ((bArr[i52] << 8) & 65280));
                                        break;
                                    case 107:
                                        byte b14 = bArr[i2 + 2];
                                        byte b15 = bArr[i2 + 3];
                                        byte b16 = bArr[i2 + 4];
                                        byte b17 = bArr[i2 + 5];
                                        qt.y0(29, b14 & 3);
                                        qt.y0(30, (b14 >> 2) & 3);
                                        qt.y0(31, (b14 >> 4) & 3);
                                        qt.y0(32, (b14 >> 6) & 3);
                                        qt.y0(65, b15 & 1);
                                        qt.y0(67, (b16 >> 7) & 1);
                                        qt.y0(42, (b16 >> 6) & 1);
                                        qt.y0(44, (b16 >> 0) & 15);
                                        qt.y0(56, (b17 >> 6) & 3);
                                        qt.y0(40, b17 & 63);
                                        break;
                                    case 108:
                                        byte b18 = bArr[i2 + 2];
                                        byte b19 = bArr[i2 + 3];
                                        byte b20 = bArr[i2 + 4];
                                        byte b21 = bArr[i2 + 5];
                                        byte b22 = bArr[i2 + 6];
                                        byte b23 = bArr[i2 + 7];
                                        byte b24 = bArr[i2 + 8];
                                        byte b25 = bArr[i2 + 9];
                                        byte b26 = bArr[i2 + 10];
                                        byte b27 = bArr[i2 + 11];
                                        byte b28 = bArr[i2 + 12];
                                        byte b29 = bArr[i2 + 13];
                                        qt.y0(131, b18 | ((b19 & DhcpPacket.DHCP_DOMAIN_NAME) << 4) | ((b20 & DhcpPacket.DHCP_DOMAIN_NAME) << 8) | ((b21 & DhcpPacket.DHCP_DOMAIN_NAME) << 12) | ((b22 & DhcpPacket.DHCP_DOMAIN_NAME) << 16) | ((b28 & DhcpPacket.DHCP_DOMAIN_NAME) << 20));
                                        qt.y0(132, ((b29 & DhcpPacket.DHCP_DOMAIN_NAME) << 20) | ((b24 & DhcpPacket.DHCP_DOMAIN_NAME) << 4) | b23 | ((b25 & DhcpPacket.DHCP_DOMAIN_NAME) << 8) | ((b26 & DhcpPacket.DHCP_DOMAIN_NAME) << 12) | ((b27 & DhcpPacket.DHCP_DOMAIN_NAME) << 16));
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f10620j);
        l0.b0.p0(this.f10621k);
        u0.c.f17374a.d(this.f10623m);
        z.c.f18185e.d(this.f10622l);
        qt.p0(this.f10618h);
        u0.c.f17397x.d(this.f10617g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 147) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            h3(144, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            h3(198, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            h3(132, iArr[0], iArr[1]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        return (i2 * 10) / 30;
    }

    public final void b3(int i2) {
        z.k.s(227, 198, 2, 164, (byte) i2);
    }

    public final void c3(int i2) {
        if (i2 == 18) {
            b3(12);
        }
        switch (i2) {
            case 1:
            case 2:
                b3(27);
                break;
            case 3:
                b3(10);
                break;
            case 4:
                b3(5);
                break;
            case 5:
                b3(6);
                break;
            case 6:
                b3(4);
                break;
            case 7:
                b3(8);
                break;
            default:
                switch (i2) {
                    case 10:
                        b3(14);
                        break;
                    case 11:
                        b3(11);
                        break;
                    case 12:
                        b3(18);
                        break;
                    case 13:
                        b3(22);
                        break;
                    default:
                        b3(2);
                        break;
                }
                break;
        }
    }

    public void g3(int i2) {
        int i3 = u0.b.D;
        if (i3 == 8 || i3 == 9) {
            u0.d.I3(37, i3, 8, i2);
        }
        if (i3 == 4 && i2 > 0) {
            o0.e.f16766b.D(i2 - 1);
            return;
        }
        if (i3 == 1 && i2 > 0 && i2 < 7) {
            w0.f.B(i2);
            return;
        }
        if (i3 == 2) {
            switch (i2) {
                case 0:
                    h0.c.f2425b.h(2);
                    break;
                case 1:
                    h0.c.f2425b.h(3);
                    break;
                case 2:
                    h0.c.f2425b.h(4);
                    break;
                case 3:
                    h0.c.f2425b.h(5);
                    break;
                case 4:
                    h0.c.f2425b.h(6);
                    break;
                case 5:
                    h0.c.f2425b.h(7);
                    break;
                case 6:
                    h0.c.f2425b.h(8);
                    break;
                case 7:
                    h0.c.f2425b.h(9);
                    break;
                case 8:
                    h0.c.f2425b.h(10);
                    break;
                case 9:
                    h0.c.f2425b.h(11);
                    break;
            }
        }
        if (i3 == 12 || i3 == 13) {
            switch (i2) {
                case 0:
                    h3(198, 161, 13);
                    break;
                case 1:
                    h3(198, 161, 14);
                    break;
                case 2:
                    h3(198, 161, 15);
                    break;
                case 3:
                    h3(198, 161, 16);
                    break;
                case 4:
                    h3(198, 161, 17);
                    break;
                case 5:
                    h3(198, 161, 18);
                    break;
                case 6:
                    h3(198, 161, 19);
                    break;
                case 7:
                    h3(198, 161, 20);
                    break;
                case 8:
                    h3(198, 161, 21);
                    break;
                case 9:
                    h3(198, 161, 22);
                    break;
            }
        }
    }

    public final void h3(int i2, int i3, int i4) {
        z.k.s(227, (byte) i2, 2, (byte) i3, (byte) i4);
    }

    public final void i3(int i2, int i3) {
        try {
            Z0(0, new int[]{i2, i3}, null, null);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }
}
