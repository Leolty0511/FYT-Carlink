package k0;

import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class rf extends lt {
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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == 1) {
            qt.y0(98, -1);
            byte b3 = bArr[i2 + 2];
            int i4 = ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255);
            int i5 = ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255);
            int i6 = ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255);
            int i7 = ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255);
            int i8 = ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255);
            int i9 = ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255);
            int i10 = (65280 & (bArr[i2 + 16] << 8)) | (bArr[i2 + 17] & 255);
            qt.y0(100, bArr[i2 + 5]);
            qt.y0(99, b3);
            qt.y0(101, i4);
            qt.y0(102, i5);
            qt.y0(103, i6);
            qt.y0(104, i7);
            qt.y0(105, i8);
            qt.y0(106, i9);
            qt.y0(107, i10);
            return;
        }
        if (b2 == 2) {
            qt.y0(98, -2);
            qt.y0(108, bArr[i2 + 2]);
            qt.y0(110, bArr[i2 + 4]);
            qt.y0(111, bArr[i2 + 5]);
            qt.y0(112, bArr[i2 + 6]);
            qt.y0(113, bArr[i2 + 7]);
            return;
        }
        if (b2 == 3) {
            qt.y0(98, -3);
            qt.y0(114, bArr[i2 + 2]);
            qt.y0(115, bArr[i2 + 3]);
            return;
        }
        if (b2 == 4) {
            qt.y0(98, -4);
            qt.y0(116, bArr[i2 + 2]);
            qt.y0(117, bArr[i2 + 3]);
            qt.y0(118, bArr[i2 + 4]);
            qt.y0(119, bArr[i2 + 5]);
            qt.y0(120, bArr[i2 + 6]);
            qt.y0(121, bArr[i2 + 9]);
            o1.x.C(nt.f8643f, 123, new int[]{1}, null, null);
            return;
        }
        if (b2 == 5) {
            qt.y0(98, -5);
            qt.y0(122, bArr[i2 + 2]);
            return;
        }
        if (b2 == 36) {
            byte b4 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b4 >> 7) & 1);
                qt.y0(2, (b4 >> 6) & 1);
            } else {
                qt.y0(1, (b4 >> 6) & 1);
                qt.y0(2, (b4 >> 7) & 1);
            }
            qt.y0(3, (b4 >> 4) & 1);
            qt.y0(4, (b4 >> 5) & 1);
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(0, (b4 >> 2) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, GLES10.GL_CLEAR);
            return;
        }
        if (b2 != 42) {
            return;
        }
        byte b5 = bArr[i2 + 2];
        byte b6 = bArr[i2 + 3];
        int i11 = i2 + 4;
        byte b7 = bArr[i11];
        int i12 = i2 + 5;
        byte b8 = bArr[i12];
        byte b9 = bArr[i2 + 6];
        qt.y0(10, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        qt.y0(12, (b5 >> 5) & 1);
        qt.y0(13, (b5 >> 4) & 1);
        qt.y0(14, (b5 >> 2) & 1);
        qt.y0(65, (b5 >> 1) & 1);
        qt.y0(16, (b5 >> 0) & 1);
        qt.y0(18, (b6 >> 7) & 1);
        qt.y0(19, (b6 >> 6) & 1);
        qt.y0(20, (b6 >> 5) & 1);
        qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b7 = bArr[i12];
            b8 = bArr[i11];
        }
        int i13 = b7 & 255;
        if (b7 == -2) {
            qt.y0(27, -2);
        } else if (b7 == -1) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i13);
        }
        int i14 = b8 & 255;
        if (b8 == -2) {
            qt.y0(28, -2);
        } else if (b8 == -1) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i14);
        }
        qt.y0(29, (b9 >> 4) & 3);
        qt.y0(30, b9 & 3);
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
    }
}
