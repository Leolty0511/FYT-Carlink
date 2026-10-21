package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class yg extends lt {
    public static int a3(int i2) {
        switch (i2) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 5;
            case 5:
                return 7;
            case 6:
                return 8;
            case 7:
                return 9;
            default:
                return 15;
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
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        int i2 = nt.f8637c;
        if (i2 == 2) {
            z.k.s(227, 136, 1, 17);
        } else if (i2 == 3) {
            z.k.s(227, 136, 1, 33);
        } else if (i2 == 4) {
            z.k.s(227, 136, 1, 49);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 2) {
            qt.o(bArr[i2 + 2], false, 40);
            return;
        }
        if (b2 == 5) {
            int i4 = i2 + 2;
            u0.d.R2(a3((bArr[i4] >> 4) & 15));
            u0.d.S2(a3(bArr[i4] & DhcpPacket.DHCP_DOMAIN_NAME));
            int i5 = i2 + 3;
            u0.d.T2(a3((bArr[i5] >> 4) & 15));
            u0.d.U2(a3(bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME));
            int i6 = i2 + 4;
            u0.d.D2(a3((bArr[i6] >> 4) & 15));
            u0.d.E2(a3(bArr[i6] & DhcpPacket.DHCP_DOMAIN_NAME));
            int i7 = i2 + 5;
            u0.d.F2(a3((bArr[i7] >> 4) & 15));
            u0.d.G2(a3(bArr[i7] & DhcpPacket.DHCP_DOMAIN_NAME));
            return;
        }
        if (b2 != 11) {
            if (b2 != 13) {
                return;
            }
            qt.y0(7, bArr[i2 + 2] & 255);
            return;
        }
        byte b3 = bArr[i2 + 2];
        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
            qt.y0(1, (b3 >> 1) & 1);
            qt.y0(2, b3 & 1);
        } else {
            qt.y0(1, b3 & 1);
            qt.y0(2, (b3 >> 1) & 1);
        }
        qt.y0(3, (b3 >> 2) & 1);
        qt.y0(4, (b3 >> 3) & 1);
        qt.y0(5, (b3 >> 4) & 1);
        qt.y0(0, (b3 >> 5) & 1);
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 8) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
