package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class a2 extends lt {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f3057e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f3058f = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3060c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3061d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 2}, new int[]{11, -1}, new int[]{12, -1}, new int[]{13, 3}, new int[]{14, 4}};

    public static void a3(int i2) {
        f3057e = i2;
        boolean z2 = i2 == 1 || i2 == 2;
        if (f3058f != i2) {
            if (z2) {
                qt.y0(1015, 1);
            } else {
                qt.y0(1015, 0);
            }
        }
        f3058f = f3057e;
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
        mtVar.f8314i = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == -79) {
            if (nt.a()) {
                a3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        if (b2 == 18) {
            byte b3 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 == 114) {
            if (nt.a()) {
                this.f3060c = bArr[i2 + 4] & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f3061d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f3060c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f3059b = i4;
                        break;
                    }
                    i4++;
                }
                if (this.f3060c == 0) {
                    int i6 = this.f3059b;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f3059b = 255;
                } else if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
                qt.l(bArr[i2 + 7], bArr[i2 + 6], false, 7800);
                return;
            }
            return;
        }
        if (b2 != 115) {
            return;
        }
        byte b4 = bArr[i2 + 2];
        qt.y0(10, (b4 >> 6) & 1);
        qt.y0(12, (b4 >> 4) & 3);
        qt.y0(13, (b4 >> 3) & 1);
        byte b5 = bArr[i2 + 3];
        qt.y0(11, 3 & (b5 >> 6));
        qt.y0(16, (b5 >> 5) & 1);
        qt.y0(65, (b5 >> 4) & 1);
        int i7 = i2 + 4;
        byte b6 = bArr[i7];
        int i8 = i2 + 5;
        byte b7 = bArr[i8];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b6 = bArr[i8];
            b7 = bArr[i7];
        }
        if (b6 == -1) {
            qt.y0(27, -3);
        } else if (b6 == 0) {
            qt.y0(27, -1);
        } else if (b6 != 1) {
            qt.y0(27, (((b6 & 128) == 0 ? 0 : 1) * 5) + ((b6 & 127) * 10));
        } else {
            qt.y0(27, -2);
        }
        if (b7 == -1) {
            qt.y0(28, -3);
        } else if (b7 == 0) {
            qt.y0(28, -1);
        } else if (b7 != 1) {
            qt.y0(28, (((b7 & 128) == 0 ? 0 : 1) * 5) + ((b7 & 127) * 10));
        } else {
            qt.y0(28, -2);
        }
        byte b8 = bArr[i2 + 6];
        qt.y0(20, (b8 >> 6) & 1);
        qt.y0(19, (b8 >> 5) & 1);
        qt.y0(18, (b8 >> 4) & 1);
        qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
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
        switch (i2) {
            case 0:
                b3(0);
                break;
            case 1:
                b3(1);
                break;
            case 2:
                b3(2);
                break;
            case 3:
                b3(3);
                break;
            case 4:
                b3(4);
                break;
            case 5:
                b3(5);
                break;
            case 6:
                b3(6);
                break;
            case 7:
                b3(7);
                break;
            case 8:
                b3(8);
                break;
            case 9:
                b3(9);
                break;
            case 10:
                b3(10);
                break;
            case 11:
                b3(11);
                break;
            case 12:
                b3(12);
                break;
            case 13:
                b3(13);
                break;
            case 14:
                b3(14);
                break;
            case 15:
                b3(15);
                break;
            case 16:
                b3(16);
                break;
            case 17:
                b3(17);
                break;
            case 18:
                b3(18);
                break;
            case 19:
                z.k.s(227, 2, 110, iArr[0], iArr[1]);
                break;
            case 20:
                z.k.s(227, 2, -45, iArr[0], 0);
                break;
        }
    }

    public final void b3(int i2) {
        z.k.s(227, 2, -45, (byte) i2, 0);
        z.k.s(227, 2, -45, 0, 0);
    }
}
