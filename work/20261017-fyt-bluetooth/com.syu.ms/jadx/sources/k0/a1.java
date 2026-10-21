package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class a1 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3055c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3056d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 12}, new int[]{5, 18}, new int[]{6, 67}, new int[]{7, 68}};

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
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        switch (bArr[i2]) {
            case 2:
                if (nt.a()) {
                    byte b2 = bArr[i2 + 2];
                    byte b3 = bArr[i2 + 3];
                    this.f3055c = b2 & 255;
                    int i4 = 0;
                    while (true) {
                        iArr = this.f3056d;
                        if (i4 < iArr.length) {
                            int i5 = this.f3055c;
                            if (i5 != iArr[i4][0]) {
                                i4++;
                            } else if (i5 != 0) {
                                this.f3054b = i4;
                            }
                        }
                    }
                    if ((b3 & 255) == 0) {
                        int i6 = this.f3054b;
                        if (i6 < iArr.length && i6 != 255) {
                            l0.b0.l0(iArr[i6][1], 1);
                        }
                        this.f3054b = 255;
                    } else if (i4 < iArr.length) {
                        l0.b0.l0(iArr[i4][1], 0);
                    }
                }
                break;
            case 3:
                byte b4 = bArr[i2 + 2];
                qt.y0(12, b4 & 1);
                qt.y0(55, (b4 >> 1) & 1);
                qt.y0(16, (b4 >> 2) & 1);
                qt.y0(65, (b4 >> 3) & 1);
                qt.y0(13, (b4 >> 4) & 1);
                qt.y0(11, (b4 >> 5) & 1);
                qt.y0(14, (b4 >> 6) & 1);
                qt.y0(10, (b4 >> 7) & 1);
                byte b5 = bArr[i2 + 3];
                qt.y0(21, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(18, (b5 >> 7) & 1);
                qt.y0(19, (b5 >> 6) & 1);
                qt.y0(20, (b5 >> 5) & 1);
                if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 4]);
                    qt.y0(28, bArr[i2 + 5]);
                } else {
                    qt.y0(27, bArr[i2 + 5]);
                    qt.y0(28, bArr[i2 + 4]);
                }
                break;
            case 4:
                byte b6 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 7) & 1);
                    qt.y0(2, (b6 >> 6) & 1);
                } else {
                    qt.y0(1, (b6 >> 6) & 1);
                    qt.y0(2, (b6 >> 7) & 1);
                }
                qt.y0(0, (b6 >> 2) & 1);
                qt.y0(5, (b6 >> 3) & 1);
                qt.y0(4, (b6 >> 5) & 1);
                qt.y0(3, (b6 >> 4) & 1);
                break;
            case 5:
                if (nt.a()) {
                    int i7 = bArr[i2 + 2] & 255;
                    int i8 = i7 / 2;
                    int i9 = i7 % 2;
                    u0.d.A3((i8 * 10) + i9 < 400 ? (1000 - ((i9 != 0 ? (40 - i8) - 1 : 40 - i8) * 10)) - (i9 * 5) : ((i8 - 40) * 10) + 1000 + (i9 * 5));
                }
                break;
            case 6:
                if (nt.a()) {
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 5600);
                }
                break;
            case 7:
                qt.y0(98, bArr[i2 + 2] & 255);
                break;
            case 8:
                if (nt.a()) {
                    u0.d.R2(l0.c0.r1(bArr[i2 + 2] & 4095));
                    int i10 = i2 + 3;
                    u0.d.S2(l0.c0.r1(bArr[i10] & 4095));
                    u0.d.S2(l0.c0.r1(bArr[i10] & 4095));
                    u0.d.U2(l0.c0.r1(bArr[i2 + 4] & 4095));
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 99) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && iArr != null && iArr.length > 0) {
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            a3(iArr[0]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 135, 1, (byte) i2);
    }
}
