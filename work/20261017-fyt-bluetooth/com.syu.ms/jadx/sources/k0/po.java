package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class po extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8306a = new String[]{"com.syu.canbus"};
        } else {
            this.f7886a.f8306a = null;
        }
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 40) {
            if (b2 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        byte b3 = bArr[i2 + 2];
        qt.y0(10, (b3 >> 7) & 1);
        qt.y0(11, (b3 >> 6) & 1);
        qt.y0(12, (b3 >> 5) & 1);
        qt.y0(13, (b3 >> 3) & 1);
        qt.y0(14, (b3 >> 2) & 1);
        byte b4 = bArr[i2 + 3];
        qt.y0(18, (b4 >> 7) & 1);
        qt.y0(19, (b4 >> 6) & 1);
        qt.y0(20, (b4 >> 5) & 1);
        qt.y0(21, (b4 >> 0) & 15);
        int i4 = i2 + 4;
        byte b5 = bArr[i4];
        int i5 = i2 + 5;
        byte b6 = bArr[i5];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b5 = bArr[i5];
            b6 = bArr[i4];
        }
        if (b5 == 0) {
            qt.y0(27, -2);
        } else if (b5 == 31) {
            qt.y0(27, -3);
        } else if (b5 >= 1 && b5 <= 29) {
            qt.y0(27, (b5 * 5) + 175);
        } else if (b5 < 32 || b5 > 35) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, ((b5 - 32) * 5) + 160);
        }
        if (b6 == 0) {
            qt.y0(28, -2);
        } else if (b6 == 31) {
            qt.y0(28, -3);
        } else if (b6 >= 1 && b6 <= 29) {
            qt.y0(28, (b6 * 5) + 175);
        } else if (b6 < 20 || b6 > 35) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, ((b6 - 32) * 5) + 160);
        }
        byte b7 = bArr[i2 + 6];
        qt.y0(65, (b7 >> 7) & 1);
        qt.y0(16, (b7 >> 6) & 1);
        byte b8 = bArr[i2 + 7];
        if (b8 == 0) {
            qt.y0(40, -2);
        } else if (b8 == 31) {
            qt.y0(40, -3);
        } else if (b8 >= 1 && b8 <= 29) {
            qt.y0(40, (b6 * 5) + 175);
        } else if (b8 < 20 || b8 > 35) {
            qt.y0(40, -1);
        } else {
            qt.y0(40, ((b6 - 32) * 5) + 160);
        }
        int i6 = i2 + 8;
        byte b9 = bArr[i6];
        qt.y0(48, (b9 >> 7) & 1);
        qt.y0(46, (b9 >> 6) & 1);
        qt.y0(47, (b9 >> 5) & 1);
        qt.y0(44, bArr[i6] & DhcpPacket.DHCP_DOMAIN_NAME);
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
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            z.k.s(227, 149, 2, iArr[0], iArr[1]);
        }
    }
}
