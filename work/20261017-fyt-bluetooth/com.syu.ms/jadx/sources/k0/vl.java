package k0;

import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class vl extends lt {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f11416l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11418c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f11419d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11420e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1.g0 f11421f = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f11422g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11423h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f11424i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f11425j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11426k = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(vl.this.f11425j);
            vl.this.f11423h = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            vl vlVar = vl.this;
            int i2 = vlVar.f11423h - 1;
            vlVar.f11423h = i2;
            if (i2 <= 0) {
                l0.b0.p0(vlVar.f11425j);
                vl.this.f11423h = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                vl vlVar2 = vl.this;
                vlVar2.d3(vlVar2.f11421f.b(1, 0));
                switch (vl.this.f11420e) {
                    case 147:
                        z.k.s(227, 226, 1, 0);
                        break;
                    case 148:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 149:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 150:
                        z.k.s(227, 226, 1, 3);
                        break;
                    case 151:
                        z.k.s(227, 226, 1, 4);
                        break;
                    case 152:
                        z.k.s(227, 226, 1, 5);
                        break;
                    case 153:
                        z.k.s(227, 226, 1, 6);
                        break;
                    case 154:
                        z.k.s(227, 226, 1, 7);
                        break;
                    case 155:
                        z.k.s(227, 226, 1, 8);
                        break;
                    case 156:
                        z.k.s(227, 226, 1, 9);
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
        this.f11420e = (nt.f8633a >> 16) & 65535;
        this.f11421f.a();
        d3(this.f11421f.b(1, 0));
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f11424i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i7 = i2 + 2;
            int i8 = bArr[i7] & 255;
            int i9 = i2 + 3;
            int i10 = bArr[i9] & 255;
            int i11 = i2 + 4;
            int i12 = bArr[i11] & 255;
            int i13 = i2 + 5;
            int i14 = bArr[i13] & 255;
            if (i8 == 0 && i10 == 0 && i12 == 0 && i14 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i8 || l0.c0.f13014h != i10 || l0.c0.f13015i != i12 || l0.c0.f13016j != i14) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i8;
            l0.c0.f13014h = i10;
            l0.c0.f13015i = i12;
            l0.c0.f13016j = i14;
            switch (this.f11420e) {
                case 147:
                case 148:
                case 150:
                case 151:
                    u0.d.D2(l0.c0.k1(bArr[i7] & 255));
                    u0.d.E2(l0.c0.k1(bArr[i9] & 255));
                    u0.d.F2(l0.c0.k1(bArr[i11] & 255));
                    u0.d.G2(l0.c0.k1(bArr[i13] & 255));
                    break;
                case 149:
                default:
                    u0.d.D2(l0.c0.L0(bArr[i7] & 255));
                    u0.d.E2(l0.c0.L0(bArr[i9] & 255));
                    u0.d.F2(l0.c0.L0(bArr[i11] & 255));
                    u0.d.G2(l0.c0.L0(bArr[i13] & 255));
                    break;
            }
            return;
        }
        if (b2 == 30) {
            switch (this.f11420e) {
                case 147:
                case 148:
                case 150:
                case 151:
                    u0.d.R2(l0.c0.k1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.k1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.k1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.k1(bArr[i2 + 5] & 255));
                    break;
                case 149:
                default:
                    u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                    break;
            }
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f11418c = b3 & 255;
            int i15 = 0;
            while (true) {
                iArr = this.f11419d;
                if (i15 >= iArr.length) {
                    break;
                }
                int i16 = this.f11418c;
                if (i16 == iArr[i15][0]) {
                    if (i16 == 0) {
                        break;
                    }
                    this.f11417b = i15;
                    break;
                }
                i15++;
            }
            int i17 = b4 & 255;
            if (i17 == 1) {
                if (i15 < iArr.length) {
                    l0.b0.l0(iArr[i15][1], 0);
                    return;
                }
                return;
            } else {
                if (i17 == 0) {
                    int i18 = this.f11417b;
                    if (i18 < iArr.length && i18 != 255) {
                        l0.b0.l0(iArr[i18][1], 1);
                    }
                    this.f11417b = 255;
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
        if (b2 == 41) {
            int i19 = i2 + 3;
            if ((bArr[i19] & 128) != 0) {
                qt.j(bArr[i2 + 2], bArr[i19] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                return;
            } else {
                int i20 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i19] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                qt.i(i20 & 255, (i20 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                return;
            }
        }
        if (b2 == 49) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 85) {
            if (b2 != 96) {
                if (b2 == 64) {
                    qt.y0(113, bArr[i2 + 5] & 255);
                    return;
                }
                if (b2 != 65) {
                    return;
                }
                qt.y0(114, bArr[i2 + 2] & 255);
                qt.y0(115, bArr[i2 + 3] & 255);
                qt.y0(116, bArr[i2 + 4] & 255);
                qt.y0(117, bArr[i2 + 5] & 255);
                qt.y0(118, bArr[i2 + 6] & 255);
                qt.y0(119, bArr[i2 + 7] & 255);
                qt.y0(120, bArr[i2 + 8] & 255);
                qt.y0(121, bArr[i2 + 9] & 255);
                qt.y0(122, bArr[i2 + 10] & 255);
                qt.y0(123, bArr[i2 + 11] & 255);
                qt.y0(124, bArr[i2 + 12] & 255);
                qt.y0(125, bArr[i2 + 13] & 255);
                qt.y0(126, bArr[i2 + 14] & 255);
                qt.y0(127, bArr[i2 + 15] & 255);
                return;
            }
            int i21 = bArr[i2 + 2] & 255;
            if (i21 == 1) {
                qt.y0(98, bArr[i2 + 4] & 255);
                qt.y0(103, bArr[i2 + 5] & 255);
                qt.y0(108, bArr[i2 + 6] & 255);
                return;
            }
            if (i21 == 2) {
                qt.y0(99, bArr[i2 + 4] & 255);
                qt.y0(104, bArr[i2 + 5] & 255);
                qt.y0(109, bArr[i2 + 6] & 255);
                return;
            }
            if (i21 == 3) {
                qt.y0(101, bArr[i2 + 4] & 255);
                qt.y0(106, bArr[i2 + 5] & 255);
                qt.y0(111, bArr[i2 + 6] & 255);
                return;
            } else if (i21 == 4) {
                qt.y0(100, bArr[i2 + 4] & 255);
                qt.y0(105, bArr[i2 + 5] & 255);
                qt.y0(110, bArr[i2 + 6] & 255);
                return;
            } else {
                if (i21 != 5) {
                    return;
                }
                qt.y0(102, bArr[i2 + 4] & 255);
                qt.y0(107, bArr[i2 + 5] & 255);
                qt.y0(112, bArr[i2 + 6] & 255);
                return;
            }
        }
        int i22 = i2 + 2;
        int i23 = bArr[i22] & 255;
        int i24 = i2 + 3;
        int i25 = bArr[i24] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i23 = bArr[i22] & 255;
            i25 = bArr[i24] & 255;
        }
        if (i23 == 16) {
            qt.y0(27, -2);
        } else if (i23 == 80) {
            qt.y0(27, -3);
        } else if (i23 < 32 || i23 > 64) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i23);
        }
        if (i25 == 16) {
            qt.y0(28, -2);
        } else if (i25 == 80) {
            qt.y0(28, -3);
        } else if (i25 < 32 || i25 > 64) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i25);
        }
        int i26 = i2 + 4;
        qt.y0(21, (bArr[i26] >> 0) & 15);
        int i27 = (bArr[i26] >> 4) & 15;
        if (i27 != 1) {
            if (i27 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i27 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i27 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i27 != 6) {
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
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(67, (bArr[i2 + 5] >> 2) & 1);
        int i28 = i2 + 6;
        qt.y0(13, (bArr[i28] >> 0) & 1);
        qt.y0(11, (bArr[i28] >> 1) & 1);
        qt.y0(62, (bArr[i28] >> 2) & 1);
        if (((bArr[i28] >> 3) & 1) == 1) {
            qt.y0(12, 1);
        } else {
            qt.y0(12, 0);
        }
        qt.y0(15, (bArr[i28] >> 7) & 1);
        qt.y0(16, (bArr[i28] >> 6) & 1);
    }

    @Override // k0.lt
    public void W2() {
        this.f11421f.j();
        u0.c.f17386m.d(this.f11424i);
        l0.b0.p0(this.f11425j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 129) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            a3(iArr[0]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            if (iArr[0] == 255) {
                d3(iArr[1]);
            } else {
                z.k.s(227, 132, 2, iArr[0], iArr[1]);
            }
        }
    }

    public final void a3(int i2) {
        int i3 = (this.f11426k + 1) % 2;
        this.f11426k = i3;
        int[] iArr = new int[7];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 4;
        iArr[3] = (byte) i2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 0;
        iArr[6] = 0;
        z.k.s(iArr);
    }

    public final void d3(int i2) {
        f11416l = i2;
        qt.y0(128, i2);
        z.k.s(227, 238, 2, i2, 0);
        int iB = this.f11421f.b(1, 0);
        int i3 = f11416l;
        if (iB != i3) {
            this.f11421f.g(1, i3);
        }
    }
}
