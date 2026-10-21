package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class e9 extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8311f = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        } else {
            this.f7886a.f8314i = 1;
        }
        mt mtVar2 = this.f7886a;
        mtVar2.f8310e = 1;
        mtVar2.f8312g = 1;
        mtVar2.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 != 1) {
            if (b2 != 36) {
                return;
            }
            byte b3 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            } else {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            }
            qt.y0(4, (b3 >> 5) & 1);
            qt.y0(3, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        byte b6 = bArr[i2 + 4];
        byte b7 = bArr[i2 + 5];
        qt.y0(21, b5 & 7);
        int i7 = (b5 >> 3) & 7;
        if (i7 != 1) {
            if (i7 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i7 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i7 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i7 != 5) {
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
        qt.y0(77, i7);
        qt.y0(13, (b5 >> 6) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            qt.y0(28, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(27, (b6 >> 4) & 15);
        } else {
            qt.y0(27, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(28, (b6 >> 4) & 15);
        }
        int[] iArr = new int[1];
        iArr[0] = (b7 & 3) == 2 ? 1 : 0;
        qt.y0(11, iArr);
        qt.y0(12, (b7 >> 2) & 1);
        qt.y0(62, (b7 >> 3) & 1);
        qt.y0(15, (b7 >> 4) & 1);
        qt.y0(16, (b7 >> 5) & 1);
        if (nt.a()) {
            l0.f0.h(b4);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 124) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && qt.l0(iArr, 2)) {
            z.k.s(227, 113, 2, iArr[0], iArr[1]);
        }
    }
}
