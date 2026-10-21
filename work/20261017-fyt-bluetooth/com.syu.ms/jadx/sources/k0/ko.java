package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class ko extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7373c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7374d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}};

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
        mtVar.f8312g = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8320o = 0;
        mtVar.f8314i = 0;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f7373c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f7374d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f7373c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f7372b = i4;
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
                    int i7 = this.f7372b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f7372b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 33) {
            if (b2 != 36) {
                return;
            }
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 1) & 1);
                qt.y0(2, (b5 >> 0) & 1);
            } else {
                qt.y0(1, (b5 >> 0) & 1);
                qt.y0(2, (b5 >> 1) & 1);
            }
            qt.y0(4, (b5 >> 3) & 1);
            qt.y0(3, (b5 >> 2) & 1);
            qt.y0(5, (b5 >> 4) & 1);
            return;
        }
        byte b6 = bArr[i2 + 2];
        byte b7 = bArr[i2 + 3];
        int i8 = i2 + 4;
        byte b8 = bArr[i8];
        int i9 = i2 + 5;
        byte b9 = bArr[i9];
        byte b10 = bArr[i2 + 6];
        qt.y0(10, (b6 >> 7) & 1);
        qt.y0(11, (b6 >> 6) & 1);
        qt.y0(12, (b6 >> 5) & 1);
        qt.y0(62, (b6 >> 4) & 1);
        qt.y0(13, (b6 >> 3) & 1);
        qt.y0(16, (b6 >> 0) & 1);
        qt.y0(18, (b7 >> 7) & 1);
        qt.y0(19, (b7 >> 6) & 1);
        qt.y0(20, (b7 >> 5) & 1);
        qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
        qt.y0(65, (b10 >> 7) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b8 = bArr[i9];
            b9 = bArr[i8];
        }
        qt.y0(27, b8 & 255);
        qt.y0(28, b9 & 255);
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
