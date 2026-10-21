package k0;

import android.net.dhcp.DhcpPacket;

/* JADX INFO: loaded from: classes2.dex */
public class jg extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6871d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6872e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6873f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{18, 67}, new int[]{19, 68}, new int[]{21, 2}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f6874g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 0}, new int[]{4, 12}, new int[]{5, 11}, new int[]{6, 22}, new int[]{7, 24}, new int[]{8, 54}, new int[]{9, 55}, new int[]{10, 64}, new int[]{11, 1}, new int[]{12, 3}, new int[]{13, 4}, new int[]{14, 65}, new int[]{15, 66}, new int[]{16, 67}, new int[]{17, 68}, new int[]{18, 67}, new int[]{19, 68}, new int[]{20, 5}};

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
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f6870c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f6873f;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f6870c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f6869b = i4;
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
                int i6 = this.f6869b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                }
                this.f6869b = 255;
                return;
            }
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f6871d = b5 & 255;
            int i7 = 0;
            while (true) {
                iArr2 = this.f6874g;
                if (i7 >= iArr2.length) {
                    break;
                }
                int i8 = this.f6871d;
                if (i8 == iArr2[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f6872e = i7;
                    break;
                }
                i7++;
            }
            if ((b6 & 255) != 0) {
                if (i7 < iArr2.length) {
                    l0.b0.l0(iArr2[i7][1], 0);
                    return;
                }
                return;
            } else {
                int i9 = this.f6872e;
                if (i9 < iArr2.length && i9 != 255) {
                    l0.b0.l0(iArr2[i9][1], 1);
                }
                this.f6872e = 255;
                return;
            }
        }
        if (b2 != 3) {
            if (b2 != 113) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        byte b7 = bArr[i2 + 2];
        byte b8 = bArr[i2 + 3];
        byte b9 = bArr[i2 + 4];
        byte b10 = bArr[i2 + 5];
        qt.y0(11, (b7 >> 6) & 1);
        qt.y0(12, 3 & (b7 >> 2));
        qt.y0(16, (b7 >> 1) & 1);
        qt.y0(53, (b7 >> 0) & 1);
        qt.y0(65, (b8 >> 5) & 1);
        qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
        qt.y0(18, (b9 >> 6) & 1);
        qt.y0(19, (b9 >> 4) & 1);
        qt.y0(20, (b9 >> 5) & 1);
        int i10 = b10 & 255;
        if (b10 == 1 || b10 == 0) {
            qt.y0(27, -2);
        } else if (b10 == 29) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i10);
        }
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
