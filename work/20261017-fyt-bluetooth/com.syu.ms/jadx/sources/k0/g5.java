package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class g5 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5378c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5379d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 12}};

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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f5378c = b3 & 255;
                int i7 = 0;
                while (true) {
                    iArr = this.f5379d;
                    if (i7 >= iArr.length) {
                        break;
                    }
                    int i8 = this.f5378c;
                    if (i8 == iArr[i7][0]) {
                        if (i8 == 0) {
                            break;
                        }
                        this.f5377b = i7;
                        break;
                    }
                    i7++;
                }
                if ((b4 & 255) != 0) {
                    if (i7 < iArr.length) {
                        l0.b0.l0(iArr[i7][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i9 = this.f5377b;
                    if (i9 < iArr.length && i9 != 255) {
                        l0.b0.l0(iArr[i9][1], 1);
                    }
                    this.f5377b = 255;
                    return;
                }
            }
            return;
        }
        if (b2 != 2) {
            if (b2 != 10) {
                return;
            }
            int i10 = bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME;
            int[] iArr2 = new int[1];
            iArr2[0] = i10 <= 10 ? i10 : 10;
            qt.y0(98, iArr2);
            int[] iArr3 = new int[1];
            int i11 = i2 + 3;
            iArr3[0] = (bArr[i11] & 1) == 0 ? 0 : 1;
            qt.y0(99, iArr3);
            if (nt.a()) {
                if ((bArr[i11] & 1) != 0) {
                    qt.b(1);
                    return;
                } else {
                    qt.b(0);
                    return;
                }
            }
            return;
        }
        byte b5 = bArr[i2 + 2];
        qt.y0(10, (b5 >> 7) & 1);
        qt.y0(11, (b5 >> 6) & 1);
        int[] iArr4 = new int[1];
        iArr4[0] = (b5 & 32) == 0 ? 0 : 1;
        qt.y0(12, iArr4);
        qt.y0(13, (b5 >> 3) & 1);
        qt.y0(65, (b5 >> 1) & 1);
        byte b6 = bArr[i2 + 3];
        int i12 = (b6 >> 4) & 15;
        if (i12 == 2) {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        } else if (i12 != 4) {
            if (i12 == 6) {
                i4 = 0;
                i5 = 1;
            } else if (i12 == 8) {
                i5 = 0;
                i6 = 0;
                i4 = 1;
            } else if (i12 == 10) {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (i12 != 12) {
                i4 = 0;
                i5 = 0;
            } else {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            }
            i6 = i5;
        } else {
            i4 = 0;
            i6 = 0;
            i5 = 1;
        }
        qt.y0(19, i4);
        qt.y0(18, i5);
        qt.y0(20, i6);
        qt.y0(21, b6 & 31);
        int i13 = i2 + 4;
        byte b7 = bArr[i13];
        int i14 = i2 + 5;
        byte b8 = bArr[i14];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b7 = bArr[i14];
            b8 = bArr[i13];
        }
        if (b7 == -1) {
            qt.y0(27, -3);
        } else if (b7 == 0) {
            qt.y0(27, -2);
        } else if (b7 != 127) {
            int i15 = (b7 & DhcpPacket.DHCP_DOMAIN_NAME) + 17;
            int[] iArr5 = new int[1];
            if (i15 > 32) {
                i15 = 32;
            }
            iArr5[0] = i15;
            qt.y0(27, iArr5);
        } else {
            qt.y0(27, -1);
        }
        if (b8 == -1) {
            qt.y0(28, -3);
        } else if (b8 == 0) {
            qt.y0(28, -2);
        } else if (b8 != 127) {
            int i16 = (b8 & DhcpPacket.DHCP_DOMAIN_NAME) + 17;
            int[] iArr6 = new int[1];
            iArr6[0] = i16 <= 32 ? i16 : 32;
            qt.y0(28, iArr6);
        } else {
            qt.y0(28, -1);
        }
        if (nt.a()) {
            int i17 = bArr[i2 + 7] & 255;
            u0.d.A3((i17 & 128) != 0 ? 1000 - ((i17 & 127) * 10) : (i17 * 10) + 1000);
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
