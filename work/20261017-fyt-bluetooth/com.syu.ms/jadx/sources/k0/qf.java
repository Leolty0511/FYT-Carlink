package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class qf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9526b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9529e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9527c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9528d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{8, 13}, new int[]{9, 18}, new int[]{10, 26}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 6}, new int[]{22, 29}, new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 4}, new int[]{132, 3}, new int[]{133, 67}, new int[]{134, 68}, new int[]{135, 0}, new int[]{136, 2}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9530f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9531g = {new int[]{1, 0}, new int[]{2, 7}, new int[]{3, 8}, new int[]{4, 75}, new int[]{5, 74}, new int[]{6, 2}, new int[]{7, 22}, new int[]{8, 3}, new int[]{9, 4}, new int[]{16, 3}, new int[]{17, 4}, new int[]{18, 64}};

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8317l = 1;
        mtVar.f8320o = 0;
        mtVar.f8307b = 1;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 17) {
            int i7 = i2 + 3;
            if (bArr[i7] != 1 || App.c().getResources().getConfiguration().orientation == 1) {
                return;
            }
            int i8 = i2 + 2;
            if (bArr[i8] == 7 || bArr[i8] == 16 || bArr[i8] == 17) {
                return;
            }
            byte b3 = bArr[i8];
            byte b4 = bArr[i7];
            this.f9530f = 255 & b3;
            int i9 = 0;
            while (true) {
                iArr = this.f9531g;
                if (i9 >= iArr.length) {
                    break;
                }
                int i10 = this.f9530f;
                if (i10 == iArr[i9][0]) {
                    if (i10 == 0) {
                        break;
                    }
                    this.f9529e = i9;
                    break;
                }
                i9++;
            }
            if (i9 < iArr.length) {
                l0.b0.l0(iArr[i9][1], 0);
                l0.b0.l0(this.f9531g[i9][1], 1);
                return;
            }
            return;
        }
        if (b2 == 18) {
            qt.y0(117, bArr[i2 + 2] & 255);
            qt.y0(118, bArr[i2 + 3] & 255);
            qt.y0(119, bArr[i2 + 4] & 255);
            qt.y0(120, bArr[i2 + 5] & 255);
            qt.y0(121, bArr[i2 + 6] & 255);
            qt.y0(122, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 28) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            byte b9 = bArr[i2 + 6];
            byte b10 = bArr[i2 + 7];
            byte b11 = bArr[i2 + 8];
            byte b12 = bArr[i2 + 9];
            if (b5 == 2 || b5 == 17) {
                qt.y0(107, b7 & 255);
                qt.y0(108, b8 & 255);
                qt.y0(109, b9 & 255);
                qt.y0(110, (b10 >> 0) & 1);
                qt.y0(111, (b10 >> 1) & 1);
                qt.y0(123, (b10 >> 2) & 1);
                qt.y0(114, b11 & 255);
                qt.y0(115, b12 & 255);
                return;
            }
            return;
        }
        if (b2 == 32) {
            byte b13 = bArr[i2 + 2];
            byte b14 = bArr[i2 + 3];
            this.f9527c = b13 & 255;
            int i11 = 0;
            while (true) {
                iArr2 = this.f9528d;
                if (i11 >= iArr2.length) {
                    break;
                }
                int i12 = this.f9527c;
                if (i12 == iArr2[i11][0]) {
                    if (i12 == 0) {
                        break;
                    }
                    this.f9526b = i11;
                    break;
                }
                i11++;
            }
            int i13 = b14 & 255;
            if (i13 == 1) {
                if (i11 < iArr2.length) {
                    l0.b0.l0(iArr2[i11][1], 0);
                    return;
                }
                return;
            } else {
                if (i13 == 0) {
                    int i14 = this.f9526b;
                    if (i14 < iArr2.length) {
                        i4 = 255;
                        if (i14 != 255) {
                            l0.b0.l0(iArr2[i14][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f9526b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 != 40) {
            if (b2 == 106) {
                int i15 = i2 + 2;
                qt.y0(125, (bArr[i15] >> 0) & 1);
                qt.y0(126, (bArr[i15] >> 1) & 1);
                return;
            } else if (b2 == 48) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            } else {
                if (b2 != 49) {
                    return;
                }
                byte b15 = bArr[i2 + 2];
                byte b16 = bArr[i2 + 3];
                byte b17 = bArr[i2 + 4];
                qt.y0(124, bArr[i2 + 5] & 255);
                return;
            }
        }
        byte b18 = bArr[i2 + 2];
        byte b19 = bArr[i2 + 3];
        int i16 = i2 + 4;
        byte b20 = bArr[i16];
        int i17 = i2 + 5;
        byte b21 = bArr[i17];
        byte b22 = bArr[i2 + 6];
        qt.y0(10, (b18 >> 7) & 1);
        qt.y0(11, (b18 >> 6) & 1);
        qt.y0(12, (b18 >> 5) & 1);
        qt.y0(13, (b18 >> 4) & 1);
        qt.y0(14, (b18 >> 2) & 1);
        qt.y0(15, (b18 >> 1) & 1);
        qt.y0(38, (b18 >> 0) & 1);
        qt.y0(18, (b19 >> 7) & 1);
        qt.y0(19, (b19 >> 6) & 1);
        int i18 = b19 >> 5;
        qt.y0(20, i18 & 1);
        qt.y0(77, 7 & i18);
        qt.y0(65, (b22 >> 7) & 1);
        qt.y0(16, (b22 >> 6) & 1);
        qt.y0(67, (b22 >> 2) & 1);
        qt.y0(56, (b22 >> 1) & 1);
        qt.y0(21, b19 & DhcpPacket.DHCP_DOMAIN_NAME);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i6 = b20;
            i5 = b21;
            i6 = bArr[i17] & 255;
            i5 = bArr[i16] & 255;
        }
        i6 = b20;
        i5 = b21;
        int i19 = i6 & 255;
        if (i6 == 0) {
            qt.y0(27, -2);
        } else if (i6 == 31) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i19);
        }
        int i20 = i5 & 255;
        if (i5 == 0) {
            qt.y0(28, -2);
        } else if (i5 == 31) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i20);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(l0.c0.f13021o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 127) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 113, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 116, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 138, 2, iArr[0], iArr[1]);
        } else if (i2 == 4) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 5) {
                return;
            }
            z.k.s(227, 139, 2, iArr[0], iArr[1]);
        }
    }
}
