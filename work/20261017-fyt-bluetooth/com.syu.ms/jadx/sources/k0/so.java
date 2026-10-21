package k0;

import android.net.dhcp.DhcpPacket;

/* JADX INFO: loaded from: classes2.dex */
public class so extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10377c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10378d = {new int[]{2, 5}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 29}, new int[]{8, 6}, new int[]{16, 2}, new int[]{17, 2}, new int[]{18, 68}, new int[]{19, 67}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 4}, new int[]{24, 3}, new int[]{31, 13}, new int[]{129, 7}, new int[]{130, 8}, new int[]{80, 18}, new int[]{32, -1}, new int[]{33, 5}, new int[]{35, 18}, new int[]{48, 18}, new int[]{25, 7}, new int[]{26, 8}, new int[]{34, 11}, new int[]{145, 40}, new int[]{146, 41}, new int[]{147, 42}, new int[]{148, 43}, new int[]{149, 44}, new int[]{150, 45}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 21}, new int[]{154, 14}, new int[]{155, 5}, new int[]{156, 3}, new int[]{157, 4}, new int[]{158, 55}, new int[]{159, 1}, new int[]{160, 2}, new int[]{161, 54}, new int[]{162, 29}, new int[]{163, 6}, new int[]{164, 12}, new int[]{165, 62}, new int[]{166, 5}, new int[]{176, 18}, new int[]{177, 26}, new int[]{178, 6}, new int[]{179, 1}, new int[]{180, 1}, new int[]{181, 24}, new int[]{182, 54}, new int[]{183, 55}, new int[]{184, 5}, new int[]{185, 34}, new int[]{186, 35}, new int[]{187, 32}, new int[]{188, 33}, new int[]{189, 29}, new int[]{190, 31}, new int[]{191, 30}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        z.k.s(227, 202, 1, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f10377c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f10378d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f10377c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f10376b = i4;
                    break;
                }
                i4++;
            }
            int i6 = b4 & 255;
            if (i6 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i6 == 0) {
                    int i7 = this.f10376b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f10376b = 255;
                }
                return;
            }
        }
        if (b2 == 74) {
            qt.y0(31, bArr[i2 + 2] & 255);
            qt.y0(32, bArr[i2 + 3] & 255);
            qt.y0(33, bArr[i2 + 4] & 255);
            qt.y0(34, bArr[i2 + 5] & 255);
            qt.y0(35, bArr[i2 + 6] & 255);
            qt.y0(36, bArr[i2 + 7] & 255);
            qt.y0(37, bArr[i2 + 8] & 255);
            qt.y0(38, bArr[i2 + 9] & 255);
            qt.y0(39, bArr[i2 + 10] & 255);
            qt.y0(40, bArr[i2 + 11] & 255);
            qt.y0(41, bArr[i2 + 12] & 255);
            qt.y0(42, bArr[i2 + 13] & 255);
            qt.y0(43, bArr[i2 + 14] & 255);
            qt.y0(44, bArr[i2 + 15] & 255);
            qt.y0(45, bArr[i2 + 16] & 255);
            qt.y0(46, bArr[i2 + 17] & 255);
            qt.y0(47, bArr[i2 + 18] & 255);
            qt.y0(48, bArr[i2 + 19] & 255);
            qt.y0(49, bArr[i2 + 20] & 255);
            qt.y0(50, bArr[i2 + 21] & 255);
            qt.y0(51, bArr[i2 + 22] & 255);
            return;
        }
        if (b2 == 113) {
            int i8 = i2 + 4;
            int i9 = (((bArr[i8] >> 4) & 15) * 10) + (bArr[i8] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i10 = i2 + 5;
            int i11 = (((bArr[i10] >> 4) & 15) * 10) + (bArr[i10] & DhcpPacket.DHCP_DOMAIN_NAME);
            int i12 = i2 + 6;
            qt.L("Toyota_Proace_20" + i9 + "_" + i11 + "_" + ((((bArr[i12] >> 4) & 15) * 10) + (bArr[i12] & DhcpPacket.DHCP_DOMAIN_NAME)) + " V" + ((int) bArr[i2 + 8]) + ((int) bArr[i2 + 9]) + ((int) bArr[i2 + 10]));
            return;
        }
        switch (b2) {
            case 54:
                byte b5 = bArr[i2 + 2];
                int i13 = b5 & 128;
                int i14 = b5 & 127;
                u0.d.A3(i13 != 0 ? 1000 - (i14 * 10) : (i14 * 10) + 1000);
                break;
            case 55:
                qt.y0(10, bArr[i2 + 2] & 255);
                qt.y0(11, bArr[i2 + 3] & 255);
                qt.y0(12, bArr[i2 + 4] & 255);
                qt.y0(13, bArr[i2 + 5] & 255);
                qt.y0(14, bArr[i2 + 6] & 255);
                qt.y0(15, bArr[i2 + 7] & 255);
                qt.y0(16, bArr[i2 + 8] & 255);
                qt.y0(17, bArr[i2 + 9] & 255);
                qt.y0(18, bArr[i2 + 10] & 255);
                qt.y0(19, bArr[i2 + 11] & 255);
                qt.y0(20, bArr[i2 + 12] & 255);
                qt.y0(21, bArr[i2 + 13] & 255);
                qt.y0(22, bArr[i2 + 14] & 255);
                qt.y0(23, bArr[i2 + 15] & 255);
                qt.y0(24, bArr[i2 + 16] & 255);
                qt.y0(25, bArr[i2 + 17] & 255);
                qt.y0(26, bArr[i2 + 18] & 255);
                qt.y0(27, bArr[i2 + 19] & 255);
                qt.y0(28, bArr[i2 + 20] & 255);
                qt.y0(29, bArr[i2 + 21] & 255);
                qt.y0(30, bArr[i2 + 22] & 255);
                break;
            case 56:
                int i15 = i2 + 3;
                qt.y0(1, (bArr[i15] >> 7) & 1);
                qt.y0(58, (bArr[i15] >> 3) & 1);
                qt.y0(2, (bArr[i15] >> 2) & 1);
                qt.y0(3, (bArr[i15] >> 1) & 1);
                int i16 = i2 + 5;
                qt.y0(4, (bArr[i16] >> 6) & 3);
                qt.y0(5, (bArr[i16] >> 4) & 3);
                int i17 = i2 + 6;
                qt.y0(57, (bArr[i17] >> 6) & 1);
                qt.y0(8, (bArr[i17] >> 0) & 15);
                int i18 = i2 + 7;
                qt.y0(6, (bArr[i18] >> 6) & 3);
                qt.y0(7, (bArr[i18] >> 3) & 1);
                int i19 = i2 + 8;
                qt.y0(52, (bArr[i19] >> 7) & 1);
                qt.y0(53, (bArr[i19] >> 5) & 3);
                qt.y0(54, (bArr[i19] >> 4) & 1);
                qt.y0(55, (bArr[i19] >> 3) & 1);
                qt.y0(56, (bArr[i19] >> 2) & 1);
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
        if (i2 < 0 || i2 >= 59) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 128, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 4, iArr[0], iArr[1], iArr[2], iArr[3]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 135, 2, iArr[0], iArr[1]);
        }
    }
}
