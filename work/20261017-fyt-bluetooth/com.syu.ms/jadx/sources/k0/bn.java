package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class bn extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3763c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3764d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3763c = b3 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f3764d;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f3763c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f3762b = i7;
                    break;
                }
                i7++;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i7 < iArr.length) {
                    l0.b0.l0(iArr[i7][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f3762b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f3762b = 255;
                }
                return;
            }
        }
        if (b2 == 125) {
            if ((bArr[i2 + 2] & 255) != 1) {
                return;
            }
            int i11 = i2 + 3;
            l0.c0.a((bArr[i11] >> 3) & 1, (bArr[i11] >> 4) & 1, 0);
            o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i11] & 255}, null, null);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 40) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                int i12 = i2 + 2;
                qt.y0(1, (bArr[i12] >> 7) & 1);
                qt.y0(2, (bArr[i12] >> 6) & 1);
            } else {
                int i13 = i2 + 2;
                qt.y0(1, (bArr[i13] >> 6) & 1);
                qt.y0(2, (bArr[i13] >> 7) & 1);
            }
            int i14 = i2 + 2;
            qt.y0(3, (bArr[i14] >> 4) & 1);
            qt.y0(4, (bArr[i14] >> 5) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5560);
            return;
        }
        switch (b2) {
            case 34:
                u0.d.R2(l0.c0.E0(bArr[i2 + 6] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 7] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 8] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 9] & 255));
                break;
            case 35:
                int i15 = i2 + 2;
                int i16 = bArr[i15] & 255;
                int i17 = i2 + 3;
                int i18 = bArr[i17] & 255;
                int i19 = i2 + 4;
                int i20 = bArr[i19] & 255;
                int i21 = i2 + 5;
                int i22 = bArr[i21] & 255;
                if (i16 == 0 && i18 == 0 && i20 == 0 && i22 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i16 || l0.c0.f13014h != i18 || l0.c0.f13015i != i20 || l0.c0.f13016j != i22) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i16;
                l0.c0.f13014h = i18;
                l0.c0.f13015i = i20;
                l0.c0.f13016j = i22;
                u0.d.D2(l0.c0.E0(bArr[i15] & 255));
                u0.d.E2(l0.c0.E0(bArr[i17] & 255));
                u0.d.F2(l0.c0.E0(bArr[i19] & 255));
                u0.d.G2(l0.c0.E0(bArr[i21] & 255));
                break;
            case 36:
                int i23 = i2 + 2;
                qt.y0(11, (bArr[i23] >> 6) & 1);
                qt.y0(12, (bArr[i23] >> 5) & 1);
                qt.y0(13, (bArr[i23] >> 3) & 1);
                qt.y0(16, (bArr[i23] >> 1) & 1);
                qt.y0(65, (bArr[i23] >> 0) & 1);
                int i24 = bArr[i2 + 3] & 255;
                if (i24 != 1) {
                    if (i24 == 2) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i24 == 3) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i24 != 4) {
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
                qt.y0(21, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                int i25 = i2 + 5;
                int i26 = bArr[i25] & 255;
                int i27 = i2 + 6;
                int i28 = bArr[i27] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i26 = bArr[i27] & 255;
                    i28 = bArr[i25] & 255;
                }
                if (i26 == 36) {
                    qt.y0(27, -2);
                } else if (i26 != 64) {
                    qt.y0(27, i26);
                } else {
                    qt.y0(27, -3);
                }
                if (i28 == 36) {
                    qt.y0(28, -2);
                } else if (i28 == 64) {
                    qt.y0(28, -3);
                } else {
                    qt.y0(28, i28);
                }
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
}
