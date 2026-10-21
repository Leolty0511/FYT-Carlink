package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class a7 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3184c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3185d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 32}, new int[]{17, 33}, new int[]{18, 29}, new int[]{19, 12}, new int[]{32, 49}, new int[]{33, 40}, new int[]{34, 41}, new int[]{35, 42}, new int[]{36, 43}, new int[]{37, 44}, new int[]{38, 45}, new int[]{39, 46}, new int[]{40, 47}, new int[]{41, 48}, new int[]{42, 50}, new int[]{43, 51}, new int[]{52, 24}, new int[]{53, 22}, new int[]{54, 53}, new int[]{55, 9}, new int[]{56, 38}, new int[]{57, 18}, new int[]{61, 56}, new int[]{63, 0}, new int[]{72, 29}, new int[]{73, 32}, new int[]{74, 33}, new int[]{75, 34}, new int[]{76, 35}, new int[]{82, 18}, new int[]{83, 26}, new int[]{84, 11}, new int[]{87, 58}, new int[]{89, 2}, new int[]{90, 12}, new int[]{91, 58}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}};

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
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f3184c = b3 & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f3185d;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f3184c;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f3183b = i4;
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
                        l0.b0.l0(iArr[this.f3183b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 != 2) {
            if (b2 == 4) {
                if (nt.a()) {
                    u0.d.R2(l0.c0.I1(bArr[i2 + 2]) & 255);
                    u0.d.S2(l0.c0.B1(bArr[i2 + 3]) & 255);
                    u0.d.T2(l0.c0.B1(bArr[i2 + 4]) & 255);
                    u0.d.U2(l0.c0.I1(bArr[i2 + 5]) & 255);
                    return;
                }
                return;
            }
            if (b2 != 11) {
                if (b2 != 17) {
                    if (b2 != 127) {
                        return;
                    }
                    qt.L(new String(bArr, i2 + 2, i3 - 2));
                    return;
                } else {
                    if (nt.a()) {
                        byte b5 = bArr[i2 + 2];
                        u0.d.A3((b5 != 128 ? b5 & 128 : 0) != 0 ? 1000 - ((((~(b5 & 255)) + 1) & 255) * 10) : ((b5 & 255) * 10) + 1000);
                        return;
                    }
                    return;
                }
            }
            byte b6 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b6 >> 7) & 1);
                qt.y0(2, (b6 >> 6) & 1);
            } else {
                qt.y0(1, (b6 >> 6) & 1);
                qt.y0(2, (b6 >> 7) & 1);
            }
            qt.y0(5, (b6 >> 3) & 1);
            qt.y0(4, (b6 >> 5) & 1);
            qt.y0(3, (b6 >> 4) & 1);
            return;
        }
        byte b7 = bArr[i2 + 2];
        qt.y0(10, (b7 >> 7) & 1);
        qt.y0(11, (b7 >> 6) & 1);
        int[] iArr2 = new int[1];
        iArr2[0] = (b7 & 32) == 0 ? 0 : 1;
        qt.y0(12, iArr2);
        qt.y0(13, (b7 >> 3) & 1);
        qt.y0(65, (b7 >> 1) & 1);
        qt.y0(16, (b7 >> 0) & 1);
        byte b8 = bArr[i2 + 3];
        qt.y0(18, (b8 >> 7) & 1);
        qt.y0(19, (b8 >> 6) & 1);
        qt.y0(20, (b8 >> 5) & 1);
        int i6 = b8 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i6 > 7) {
            i6 = 7;
        }
        qt.y0(21, i6);
        int i7 = i2 + 4;
        int i8 = bArr[i7] & 255;
        int i9 = i2 + 5;
        int i10 = bArr[i9] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i8 = bArr[i9] & 255;
            i10 = bArr[i7] & 255;
        }
        if (i8 == 0) {
            qt.y0(27, -2);
        } else if (i8 == 255) {
            qt.y0(27, -3);
        } else if (i8 >= 31 && i8 <= 85) {
            qt.y0(27, i8 & 255);
        }
        if (i10 == 0) {
            qt.y0(28, -2);
        } else if (i10 == 255) {
            qt.y0(28, -3);
        } else if (i10 >= 31 && i10 <= 85) {
            qt.y0(28, i10 & 255);
        }
        byte b9 = bArr[i2 + 6];
        qt.y0(37, (b9 >> 6) & 1);
        qt.y0(53, (b9 >> 2) & 1);
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
    }
}
