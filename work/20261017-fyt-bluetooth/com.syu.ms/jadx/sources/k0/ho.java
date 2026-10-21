package k0;

import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class ho extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6117c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f6118d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{23, 12}, new int[]{24, 6}, new int[]{25, 16}, new int[]{131, 3}, new int[]{132, 4}, new int[]{133, 2}, new int[]{134, 63}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f6119e = {34, 204};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6120f = 0;

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8317l = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            u0.d.D2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.E2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.F2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.G2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f6117c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f6118d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f6117c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f6116b = i4;
                    break;
                }
                i4++;
            }
            if (this.f6117c != 7) {
                if ((b4 & 255) != 1 || i4 >= iArr.length) {
                    return;
                }
                l0.b0.l0(iArr[i4][1], 0);
                l0.b0.l0(this.f6118d[i4][1], 1);
                return;
            }
            if ((b4 & 255) == 1) {
                int i6 = h0.c.E;
                if (i6 != 3) {
                    if (i6 == 4) {
                        l0.b0.l0(18, 0);
                        l0.b0.l0(18, 1);
                        return;
                    } else if (i6 != 5) {
                        l0.b0.l0(2, 0);
                        l0.b0.l0(2, 1);
                        return;
                    }
                }
                l0.b0.l0(26, 0);
                l0.b0.l0(26, 1);
                return;
            }
            return;
        }
        if (b2 == 36) {
            int i7 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i7 >> 6) & 1);
                qt.y0(1, (i7 >> 7) & 1);
            } else {
                qt.y0(2, (i7 >> 7) & 1);
                qt.y0(1, (i7 >> 6) & 1);
            }
            qt.y0(4, (i7 >> 5) & 1);
            qt.y0(3, (i7 >> 4) & 1);
            qt.y0(5, (i7 >> 3) & 1);
            return;
        }
        if (b2 == 38) {
            int i8 = i2 + 2;
            qt.y0(98, (bArr[i8] >> 0) & 1);
            qt.y0(99, (bArr[i8] >> 1) & 1);
            qt.y0(100, (bArr[i8] >> 2) & 1);
            qt.y0(101, (bArr[i8] >> 3) & 1);
            qt.y0(102, (bArr[i8] >> 4) & 7);
            qt.y0(103, (bArr[i8] >> 7) & 1);
            int i9 = i2 + 3;
            qt.y0(104, (bArr[i9] >> 2) & 1);
            qt.y0(105, (bArr[i9] >> 3) & 1);
            qt.y0(106, (bArr[i9] >> 4) & 1);
            qt.y0(107, (bArr[i9] >> 5) & 1);
            qt.y0(108, (bArr[i9] >> 6) & 3);
            return;
        }
        if (b2 == 41) {
            int i10 = i2 + 3;
            if ((bArr[i10] & 128) != 0) {
                qt.j(bArr[i2 + 2], bArr[i10] & DhcpPacket.DHCP_DOMAIN_NAME, 0, MediaProperties.HEIGHT_360);
                return;
            } else {
                int i11 = 4096 - ((bArr[i2 + 2] & 255) | ((bArr[i10] << 8) & BatteryStats.HistoryItem.STATE_PHONE_STATE_MASK));
                qt.i(i11 & 255, (i11 >> 8) & 15, true, MediaProperties.HEIGHT_360);
                return;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 84) {
            qt.y0(119, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 != 85) {
            switch (b2) {
                case 80:
                    qt.y0(110, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                    qt.y0(111, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(112, (bArr[i2 + 7] & 255) | (65280 & (bArr[i2 + 6] << 8)));
                    break;
                case 81:
                    qt.y0(113, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                    qt.y0(114, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(115, (bArr[i2 + 7] & 255) | (65280 & (bArr[i2 + 6] << 8)));
                    break;
                case 82:
                    qt.y0(116, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                    qt.y0(117, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                    qt.y0(118, (bArr[i2 + 7] & 255) | (65280 & (bArr[i2 + 6] << 8)));
                    break;
            }
            return;
        }
        int i12 = i2 + 2;
        int i13 = bArr[i12] & 255;
        int i14 = i2 + 3;
        int i15 = bArr[i14] & 255;
        int i16 = bArr[i2 + 4] & 255;
        int i17 = bArr[i2 + 6] & 255;
        int i18 = bArr[i2 + 7] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i13 = bArr[i14] & 255;
            i15 = bArr[i12] & 255;
        }
        int i19 = i13 & 255;
        if (i19 == 16) {
            qt.y0(27, -2);
        } else if (i19 == 80) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i19);
        }
        int i20 = i15 & 255;
        if (i20 == 16) {
            qt.y0(28, -2);
        } else if (i20 == 80) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i20);
        }
        qt.y0(21, i16 & 15);
        int i21 = (i16 >> 4) & 15;
        qt.y0(77, i21);
        switch (i21) {
            case 1:
                qt.y0(18, 0);
                qt.y0(19, 1);
                qt.y0(20, 0);
                break;
            case 2:
                qt.y0(18, 0);
                qt.y0(19, 1);
                qt.y0(20, 1);
                break;
            case 3:
                qt.y0(18, 0);
                qt.y0(19, 0);
                qt.y0(20, 1);
                break;
            case 4:
                qt.y0(18, 1);
                qt.y0(19, 0);
                qt.y0(20, 1);
                break;
            case 5:
                qt.y0(18, 1);
                qt.y0(19, 1);
                qt.y0(20, 0);
                break;
            case 6:
                qt.y0(18, 1);
                qt.y0(19, 0);
                qt.y0(20, 0);
                break;
            case 7:
                qt.y0(18, 1);
                qt.y0(19, 1);
                qt.y0(20, 1);
                break;
            default:
                qt.y0(18, 0);
                qt.y0(19, 0);
                qt.y0(20, 0);
                break;
        }
        qt.y0(13, (i17 >> 0) & 1);
        qt.y0(11, (i17 >> 1) & 1);
        qt.y0(14, (i17 >> 2) & 1);
        qt.y0(12, (i17 >> 3) & 1);
        qt.y0(53, (i17 >> 4) & 1);
        qt.y0(16, (i17 >> 6) & 1);
        qt.y0(15, (i17 >> 7) & 1);
        if (i18 == 255 || i18 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i18 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 120) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 51, 4, iArr[0], this.f6119e[this.f6120f % 2], 0, 0);
            int i3 = this.f6120f + 1;
            this.f6120f = i3;
            this.f6120f = i3 % 2;
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], 0);
        } else if (i2 == 2) {
            z.k.s(227, 133, 3, iArr[0], iArr[1], iArr[2]);
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 131, 2, iArr[0], iArr[1]);
        }
    }
}
