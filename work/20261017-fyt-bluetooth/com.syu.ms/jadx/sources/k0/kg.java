package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class kg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7303c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7304d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f7305e = {new int[]{10, 29}, new int[]{50, 31}, new int[]{51, 30}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.f8637c == 2) {
            mt mtVar = this.f7886a;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8310e = 1;
            mtVar.f8311f = 0;
            mtVar.f8312g = 0;
        }
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        this.f7886a.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7303c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7305e;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7303c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7302b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f7303c;
            if (i6 == 50) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(31, 0);
                }
                l0.b0.l0(31, 1);
            }
            if (i6 == 51) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(30, 0);
                }
                l0.b0.l0(30, 1);
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 != 0 || i4 > iArr.length) {
                    return;
                }
                l0.b0.l0(iArr[this.f7302b][1], 1);
                return;
            }
        }
        if (b2 == 4) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 28) {
            u0.d.R2(a3(bArr[i2 + 3] & 255));
            int i10 = i2 + 4;
            u0.d.S2(a3(bArr[i10] & 255));
            u0.d.T2(a3(bArr[i10] & 255));
            u0.d.U2(a3(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 50) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            byte b12 = bArr[i2 + 8];
            byte b13 = bArr[i2 + 9];
            qt.y0(7, (b6 >> 7) & 1);
            qt.y0(10, ((b6 << 8) & 65280) | (b7 & 255));
            qt.y0(11, ((b8 << 8) & 65280) | (b9 & 255));
            qt.y0(12, ((b11 << 8) & 65280) | (b10 & 255));
            qt.y0(13, (b13 & 255) | ((b12 << 8) & 65280));
            return;
        }
        if (b2 == 113) {
            int i11 = i2 + 4;
            bArr[i11] = (byte) qt.c(bArr[i11] & 255);
            int i12 = i2 + 5;
            bArr[i12] = (byte) qt.c(bArr[i12] & 255);
            int i13 = i2 + 6;
            bArr[i13] = (byte) qt.c(bArr[i13] & 255);
            qt.L(new String(bArr, i2 + 2, i3 - 3));
            return;
        }
        if (b2 == 37) {
            qt.x0(27, new String(bArr, i2 + 4, 8));
            qt.x0(28, new String(bArr, i2 + 12, 8));
            qt.x0(29, new String(bArr, i2 + 20, 8));
            qt.x0(30, new String(bArr, i2 + 28, 8));
            qt.x0(31, new String(bArr, i2 + 36, 8));
            qt.x0(32, new String(bArr, i2 + 44, 8));
            qt.y0(33, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 38) {
            qt.y0(34, bArr[i2 + 2] & 255);
            qt.x0(35, new String(bArr, i2 + 3, 16));
            qt.x0(36, new String(bArr, i2 + 19, 16));
            qt.x0(37, new String(bArr, i2 + 35, 16));
            return;
        }
        switch (b2) {
            case 31:
                qt.y0(7, bArr[i2 + 2] & 255);
                qt.y0(8, bArr[i2 + 3] & 255);
                qt.y0(9, bArr[i2 + 4] & 255);
                qt.y0(10, bArr[i2 + 5] & 255);
                qt.y0(11, bArr[i2 + 6] & 255);
                break;
            case 32:
                int i14 = i2 + 2;
                qt.y0(12, bArr[i14] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(13, (bArr[i14] >> 4) & 1);
                qt.y0(14, (bArr[i14] >> 5) & 1);
                qt.y0(15, (bArr[i14] >> 6) & 1);
                qt.y0(16, (bArr[i14] >> 7) & 1);
                break;
            case 33:
                qt.y0(16, bArr[i2 + 2] & 255);
                qt.y0(17, (((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255)) & 65535);
                qt.y0(18, bArr[i2 + 5] & 255);
                int i15 = i2 + 6;
                qt.y0(19, (bArr[i15] >> 7) & 1);
                qt.y0(20, (bArr[i15] >> 6) & 1);
                break;
            case 34:
                qt.y0(21, bArr[i2 + 2] & 255);
                qt.y0(22, bArr[i2 + 3] & 255);
                qt.y0(23, (((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255)) & 65535);
                qt.y0(24, qt.c(bArr[i2 + 6] & 255));
                qt.y0(25, qt.c(bArr[i2 + 7] & 255));
                qt.y0(26, qt.c(bArr[i2 + 8] & 255));
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
        if (i2 < 0 || i2 >= 23) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1 && T2(iArr, 1)) {
            z.k.s(227, 129, 1, iArr[0]);
        }
    }

    public final int a3(int i2) {
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }
}
