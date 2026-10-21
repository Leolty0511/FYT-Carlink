package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class kn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7370c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7371d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 5}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{90, 6}};

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
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 38) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 10000);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 107) {
            int i4 = i2 + 2;
            qt.y0(29, (bArr[i4] >> 0) & 3);
            qt.y0(30, (bArr[i4] >> 2) & 3);
            return;
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i5 = i2 + 3;
            l0.c0.a((bArr[i5] >> 3) & 1, (bArr[i5] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i5] & 255}, null, null);
            return;
        }
        switch (b2) {
            case 32:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f7370c = b3 & 255;
                int i6 = 0;
                while (true) {
                    iArr = this.f7371d;
                    if (i6 < iArr.length) {
                        int i7 = this.f7370c;
                        if (i7 != iArr[i6][0]) {
                            i6++;
                        } else if (i7 != 0) {
                            this.f7369b = i6;
                        }
                    }
                }
                int i8 = this.f7370c;
                if (i8 != 55) {
                    if (i8 != 90) {
                        if (i8 == 82) {
                            if ((b4 & 255) == 1) {
                                if (h0.c.E == 4) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else {
                                    l0.b0.l0(3, 0);
                                    l0.b0.l0(3, 1);
                                }
                            }
                        } else if (i8 != 83) {
                            int i9 = b4 & 255;
                            if (i9 != 1) {
                                if (i9 == 0) {
                                    int i10 = this.f7369b;
                                    if (i10 < iArr.length && i10 != 255) {
                                        l0.b0.l0(iArr[i10][1], 1);
                                    }
                                    this.f7369b = 255;
                                }
                            } else if (i6 < iArr.length) {
                                l0.b0.l0(iArr[i6][1], 0);
                            }
                        } else if ((b4 & 255) == 1) {
                            int i11 = h0.c.E;
                            if (i11 == 3 || i11 == 4 || i11 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(4, 0);
                                l0.b0.l0(4, 1);
                            }
                        }
                        break;
                    } else if ((b4 & 255) == 1 && !o1.u.V()) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        break;
                    }
                } else if ((b4 & 255) == 1 && !o1.u.V()) {
                    l0.b0.l0(9, 0);
                    l0.b0.l0(9, 1);
                    break;
                }
                break;
            case 33:
                int i12 = i2 + 2;
                qt.y0(10, (bArr[i12] >> 7) & 1);
                qt.y0(11, (bArr[i12] >> 6) & 1);
                qt.y0(12, (bArr[i12] >> 5) & 1);
                qt.y0(13, (bArr[i12] >> 3) & 1);
                qt.y0(14, (bArr[i12] >> 2) & 1);
                qt.y0(65, (bArr[i12] >> 1) & 1);
                qt.y0(16, (bArr[i12] >> 0) & 1);
                int i13 = i2 + 3;
                qt.y0(18, (bArr[i13] >> 7) & 1);
                qt.y0(19, (bArr[i13] >> 6) & 1);
                qt.y0(20, (bArr[i13] >> 5) & 1);
                qt.y0(21, bArr[i13] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i14 = i2 + 4;
                int i15 = bArr[i14] & 255;
                int i16 = i2 + 5;
                int i17 = bArr[i16] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i15 = bArr[i16] & 255;
                    i17 = bArr[i14] & 255;
                }
                if (i15 == 0) {
                    qt.y0(27, -2);
                } else if (i15 == 127) {
                    qt.y0(27, -3);
                } else {
                    qt.y0(27, i15);
                }
                if (i17 == 0) {
                    qt.y0(28, -2);
                } else if (i17 == 127) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i17);
                }
                qt.y0(53, (bArr[i2 + 6] >> 2) & 1);
                break;
            case 34:
                u0.d.R2(a3(bArr[i2 + 2] & 255));
                u0.d.S2(a3(bArr[i2 + 3] & 255));
                u0.d.T2(a3(bArr[i2 + 4] & 255));
                u0.d.U2(a3(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i18 = i2 + 2;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 3;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i19 == 0 && i21 == 0 && i23 == 0 && i25 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i19;
                l0.c0.f13014h = i21;
                l0.c0.f13015i = i23;
                l0.c0.f13016j = i25;
                u0.d.D2(a3(bArr[i18] & 255));
                u0.d.E2(a3(bArr[i20] & 255));
                u0.d.F2(a3(bArr[i22] & 255));
                u0.d.G2(a3(bArr[i24] & 255));
                break;
            case 36:
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
                qt.y0(0, (b5 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public int a3(int i2) {
        if (i2 == 0) {
            return 10;
        }
        return (i2 * 9) / 31;
    }
}
