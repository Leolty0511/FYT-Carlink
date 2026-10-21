package k0;

import android.net.dhcp.DhcpPacket;

/* JADX INFO: loaded from: classes2.dex */
public class wg extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 != 113) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        byte b3 = bArr[i2 + 2];
        byte b4 = bArr[i2 + 3];
        byte b5 = bArr[i2 + 4];
        qt.y0(10, (b3 >> 7) & 1);
        qt.y0(11, (b3 >> 6) & 1);
        qt.y0(12, (b3 >> 5) & 1);
        qt.y0(16, (b3 >> 4) & 1);
        qt.y0(21, b4 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i7 = (b4 >> 4) & 15;
        if (i7 == 1) {
            i4 = 1;
            i5 = 0;
            i6 = 0;
        } else if (i7 == 2) {
            i4 = 1;
            i6 = 1;
            i5 = 0;
        } else if (i7 == 3) {
            i6 = 1;
            i5 = 0;
            i4 = 0;
        } else if (i7 != 4) {
            if (i7 != 5) {
                i5 = 0;
                i4 = 0;
            } else {
                i5 = 1;
                i4 = 0;
            }
            i6 = i4;
        } else {
            i5 = 1;
            i6 = 1;
            i4 = 0;
        }
        qt.y0(18, i5);
        qt.y0(19, i4);
        qt.y0(20, i6);
        qt.y0(27, b5 & 255);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
