package k0;

import android.net.dhcp.DhcpPacket;

/* JADX INFO: loaded from: classes2.dex */
public class f extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5029c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5030d = {new int[]{17, 2}, new int[]{18, 4}, new int[]{19, 3}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{48, 18}, new int[]{49, 26}};

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
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -4) {
            if (bArr[i2 + 2] == 18 && nt.a()) {
                int i4 = bArr[i2 + 3] & 255;
                this.f5029c = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f5030d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f5029c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f5028b = i5;
                        break;
                    }
                    i5++;
                }
                if (i4 != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i7 = this.f5028b;
                    if (i7 < iArr.length && i7 != 255) {
                        l0.b0.l0(iArr[i7][1], 1);
                    }
                    this.f5028b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 != -3) {
            return;
        }
        byte b3 = bArr[i2 + 3];
        int[] iArr2 = new int[1];
        iArr2[0] = (b3 & 128) == 0 ? 1 : 0;
        qt.y0(12, iArr2);
        qt.y0(65, (b3 >> 6) & 1);
        qt.y0(16, (b3 >> 5) & 1);
        qt.y0(20, (b3 >> 4) & 1);
        qt.y0(19, (b3 >> 3) & 1);
        qt.y0(13, (b3 >> 2) & 1);
        qt.y0(52, (b3 >> 1) & 1);
        qt.y0(11, (b3 >> 0) & 1);
        byte b4 = bArr[i2 + 4];
        qt.y0(55, (b4 >> 7) & 1);
        int i8 = b4 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i8 > 7) {
            i8 = 7;
        }
        qt.y0(21, i8);
        byte b5 = bArr[i2 + 5];
        qt.y0(37, (b5 >> 7) & 1);
        int i9 = b5 & DhcpPacket.DHCP_DOMAIN_NAME;
        int i10 = bArr[i2 + 2] & 255;
        if (nt.f8645g[55] != 0) {
            qt.y0(27, ((i10 - 100) * 10) + i9);
            return;
        }
        if (i10 == 0) {
            qt.y0(27, -2);
            return;
        }
        if (i10 == 254) {
            qt.y0(27, -1);
        } else if (i10 != 255) {
            qt.y0(27, (i10 * 10) + i9);
        } else {
            qt.y0(27, -3);
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
        if (i2 == 1003 && nt.f8637c == 1 && u0.b.f17347o == 0) {
            if (o1.u.T(a.b.O)) {
                qt.f();
            } else {
                qt.t();
            }
        }
    }
}
