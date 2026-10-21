package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ed extends lt {
    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 0;
        z.k.s(227, 114, 4, 4, 1, 1, 2);
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
        byte b4 = bArr[i2 + 3];
        int i4 = i2 + 4;
        byte b5 = bArr[i4];
        int i5 = i2 + 5;
        byte b6 = bArr[i5];
        qt.y0(10, (b3 >> 7) & 1);
        qt.y0(11, (b3 >> 6) & 1);
        qt.y0(12, (b3 >> 5) & 1);
        qt.y0(13, (b3 >> 4) & 1);
        qt.y0(14, (b3 >> 2) & 1);
        qt.y0(65, (b3 >> 1) & 1);
        qt.y0(16, (b3 >> 0) & 1);
        qt.y0(18, (b4 >> 7) & 1);
        qt.y0(19, (b4 >> 6) & 1);
        int i6 = b4 >> 5;
        qt.y0(20, i6 & 1);
        qt.y0(77, i6 & 7);
        qt.y0(21, b4 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b5 = bArr[i5];
            b6 = bArr[i4];
        }
        int i7 = b5 & 255;
        if (i7 == 0) {
            qt.y0(27, -2);
        } else if (i7 == 31) {
            qt.y0(27, -3);
        } else if (i7 < 31) {
            qt.y0(27, i7 + 36);
        }
        int i8 = b6 & 255;
        if (i8 == 0) {
            qt.y0(28, -2);
        } else if (i8 == 31) {
            qt.y0(28, -3);
        } else if (i8 < 31) {
            qt.y0(28, i8 + 36);
        }
    }

    @Override // k0.lt
    public void W2() {
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
        if (i2 == 1 && b3(iArr, 2)) {
            a3(iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, 113, 2, (byte) i2, (byte) i3);
    }

    public final boolean b3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
