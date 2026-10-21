package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class dc extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4402c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4403d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}};

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
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 0];
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f4402c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f4403d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f4402c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f4401b = i4;
                        break;
                    }
                    i4++;
                }
                if ((b4 & 255) != 0) {
                    if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i4 <= iArr.length) {
                        l0.b0.l0(iArr[this.f4401b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 != 33) {
            if (b2 != 36) {
                if (b2 == 38) {
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 540);
                    return;
                } else {
                    if (b2 != 48) {
                        return;
                    }
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                }
            }
            byte b5 = bArr[i2 + 3];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 1) & 1);
                qt.y0(2, b5 & 1);
            } else {
                qt.y0(1, b5 & 1);
                qt.y0(2, (b5 >> 1) & 1);
            }
            qt.y0(3, (b5 >> 2) & 1);
            qt.y0(4, (b5 >> 3) & 1);
            qt.y0(5, (b5 >> 4) & 1);
            qt.y0(0, (b5 >> 5) & 1);
            return;
        }
        byte b6 = bArr[i2 + 2];
        byte b7 = bArr[i2 + 3];
        byte b8 = bArr[i2 + 4];
        byte b9 = bArr[i2 + 5];
        qt.y0(10, (b6 >> 7) & 1);
        qt.y0(11, (b6 >> 6) & 1);
        qt.y0(12, (b6 >> 5) & 1);
        qt.y0(13, (b6 >> 4) & 1);
        qt.y0(16, (b6 >> 3) & 1);
        qt.y0(65, (b6 >> 1) & 1);
        qt.y0(18, (b7 >> 7) & 1);
        qt.y0(19, (b7 >> 6) & 1);
        qt.y0(20, (b7 >> 5) & 1);
        qt.y0(21, b7 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (b8 == 0) {
            qt.y0(27, -2);
            return;
        }
        if (b8 == 31) {
            qt.y0(27, -3);
        } else {
            if (b8 < 1 || b8 > 17) {
                return;
            }
            qt.y0(27, (b8 - 1) + 36);
        }
    }

    @Override // k0.lt
    public void W2() {
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
