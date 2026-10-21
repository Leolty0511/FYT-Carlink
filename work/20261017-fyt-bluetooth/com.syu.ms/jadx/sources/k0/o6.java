package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class o6 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8738e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f8739f = {new int[]{129, 7}, new int[]{130, 8}, new int[]{131, 12}, new int[]{133, 18}, new int[]{134, 26}, new int[]{141, 34}, new int[]{142, 35}, new int[]{143, 29}, new int[]{144, 6}, new int[]{150, 32}, new int[]{151, 33}, new int[]{152, 13}, new int[]{1, -1}, new int[]{2, -1}, new int[]{3, -1}, new int[]{4, -1}, new int[]{5, -1}, new int[]{6, -1}, new int[]{7, -1}, new int[]{8, -1}, new int[]{9, 29}, new int[]{10, -1}, new int[]{11, 6}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8740g = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o6.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i4 = i2 + 1;
            iArr2[i4] = (byte) iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
            case 9:
            default:
                b2 = 0;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                b2 = (i2 - 65536 != 0 && 1 != i2 - 65536 && 2 != i2 - 65536 && i2 + 0 != 0 && 1 != i2 - 0) ? (byte) 0 : (byte) 7;
                break;
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
                b2 = 7;
                break;
            case 4:
                int i3 = o0.e.H;
                b2 = (i3 != 1 && i3 != 2 && i3 != 3) ? (byte) 0 : (byte) 7;
                break;
            case 11:
                b2 = 1;
                break;
            case 12:
                b2 = 4;
                break;
            case 13:
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 0;
        }
        return b2;
    }

    public static int c3(int i2) {
        int i3 = ((i2 * 10) / 8) - 1;
        if (i3 > 9) {
            return 10;
        }
        return i3;
    }

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
        if (nt.a()) {
            qt.z(this.f8740g);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2 = bArr[i2 + 1];
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
        }
        switch (b2) {
            case 114:
                if (nt.a()) {
                    qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 140);
                    int i4 = bArr[i2 + 4] & 255;
                    this.f8737d = i4;
                    if (i4 != 0) {
                        this.f8737d = i4 | 128;
                    }
                    int i5 = 0;
                    while (true) {
                        iArr = this.f8739f;
                        if (i5 < iArr.length) {
                            int i6 = this.f8737d;
                            if (i6 != iArr[i5][0]) {
                                i5++;
                            } else if (i6 != 0) {
                                this.f8735b = i5;
                            }
                        }
                    }
                    if (this.f8737d == 0) {
                        int i7 = this.f8735b;
                        if (i7 < iArr.length && i7 != 255) {
                            l0.b0.l0(iArr[i7][1], 1);
                        }
                        this.f8735b = 255;
                    } else if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                    }
                    u0.d.R2(c3(bArr[i2 + 8] & 255));
                    u0.d.S2(c3(bArr[i2 + 9] & 255));
                    u0.d.T2(c3(bArr[i2 + 10] & 255));
                    u0.d.U2(c3(bArr[i2 + 11] & 255));
                    u0.d.D2(c3(bArr[i2 + 12] & 255));
                    u0.d.E2(c3(bArr[i2 + 13] & 255));
                    u0.d.F2(c3(bArr[i2 + 14] & 255));
                    u0.d.G2(c3(bArr[i2 + 15] & 255));
                }
                break;
            case 115:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 6];
                byte b6 = bArr[i2 + 7];
                qt.y0(10, (b3 >> 6) & 1);
                qt.y0(12, (b3 >> 4) & 1);
                qt.y0(13, (b3 >> 3) & 1);
                qt.y0(14, (b3 >> 2) & 1);
                qt.y0(11, (b4 >> 6) & 1);
                qt.y0(16, (b4 >> 5) & 1);
                qt.y0(65, (b4 >> 4) & 1);
                int i8 = i2 + 4;
                byte b7 = bArr[i8];
                int i9 = i2 + 5;
                byte b8 = bArr[i9];
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b7 = bArr[i9];
                    b8 = bArr[i8];
                }
                int i10 = b7 & 255;
                if (i10 == 0) {
                    qt.y0(27, -1);
                } else if (i10 == 1) {
                    qt.y0(27, -2);
                } else if (i10 != 255) {
                    qt.y0(27, b7 * 5);
                } else {
                    qt.y0(27, -3);
                }
                int i11 = b8 & 255;
                if (i11 == 0) {
                    qt.y0(28, -1);
                } else if (i11 == 1) {
                    qt.y0(28, -2);
                } else if (i11 != 255) {
                    qt.y0(28, b8 * 5);
                } else {
                    qt.y0(28, -3);
                }
                qt.y0(20, (b5 >> 6) & 1);
                qt.y0(19, (b5 >> 5) & 1);
                qt.y0(18, (b5 >> 4) & 1);
                qt.y0(21, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(24, (b6 >> 6) & 1);
                qt.y0(23, (b6 >> 5) & 1);
                qt.y0(22, (b6 >> 4) & 1);
                qt.y0(25, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
                byte b9 = bArr[i2 + 9];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b9 >> 6) & 1);
                    qt.y0(2, (b9 >> 7) & 1);
                } else {
                    qt.y0(1, (b9 >> 7) & 1);
                    qt.y0(2, (b9 >> 6) & 1);
                }
                qt.y0(3, (b9 >> 5) & 1);
                qt.y0(4, (b9 >> 4) & 1);
                qt.y0(5, (b9 >> 3) & 1);
                qt.y0(29, (b9 >> 2) & 1);
                qt.y0(30, (b9 >> 1) & 1);
                break;
            case 116:
                if (nt.a()) {
                    this.f8738e = bArr[i2 + 2] & 255;
                    int i12 = 0;
                    while (true) {
                        iArr2 = this.f8739f;
                        if (i12 < iArr2.length) {
                            int i13 = this.f8738e;
                            if (i13 != iArr2[i12][0]) {
                                i12++;
                            } else if (i13 != 0) {
                                this.f8736c = i12;
                            }
                        }
                    }
                    if (this.f8738e == 0) {
                        int i14 = this.f8736c;
                        if (i14 < iArr2.length && i14 != 255) {
                            l0.b0.l0(iArr2[i14][1], 1);
                        }
                        this.f8736c = 255;
                    } else if (i12 < iArr2.length) {
                        l0.b0.l0(iArr2[i12][1], 0);
                    }
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f8740g);
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
