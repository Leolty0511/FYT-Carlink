package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class je extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6855d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[][] f6853b = new int[5][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[][] f6854c = new int[15][];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6856e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f6857f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{8, 12}, new int[]{9, 13}, new int[]{10, 18}, new int[]{11, 26}, new int[]{32, 54}, new int[]{33, 5}, new int[]{34, 1}, new int[]{35, 2}, new int[]{36, 34}, new int[]{37, 35}, new int[]{38, 32}, new int[]{39, 33}, new int[]{40, 29}, new int[]{41, 0}, new int[]{42, 6}, new int[]{240, 7}, new int[]{i.a.Theme_actionModeShareDrawable, 8}, new int[]{i.a.Theme_actionModeFindDrawable, 31}, new int[]{i.a.Theme_actionModeWebSearchDrawable, 30}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f6858g = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 13) {
                z.k.s(227, 130, 1, 15);
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        z.k.s(227, 255, 1, 127);
        z.k.s(227, 131, 2, 5, 0);
        z.k.s(227, 131, 2, 6, 0);
        z.k.s(227, 131, 2, 9, 0);
        z.k.s(227, 131, 2, 11, 0);
        z.k.s(227, 131, 2, 12, 0);
        u0.c.f17374a.a(this.f6858g, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        if (nt.f8637c == 1) {
            mtVar.f8306a = null;
        }
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
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
                int i4 = b3 & 255;
                if (i4 == 241) {
                    l0.b0.r0(b4 & 255);
                    return;
                }
                if (i4 == 240) {
                    l0.b0.s0(b4 & 255);
                    return;
                }
                if (i4 == 242) {
                    if (u0.b.D == 13) {
                        z.k.s(227, 130, 1, 4);
                        return;
                    } else {
                        l0.b0.l0(31, 0);
                        return;
                    }
                }
                if (i4 == 243) {
                    if (u0.b.D == 13) {
                        z.k.s(227, 130, 1, 5);
                        return;
                    } else {
                        l0.b0.l0(30, 0);
                        return;
                    }
                }
                this.f6856e = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f6857f;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f6856e;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f6855d = i5;
                        break;
                    }
                    i5++;
                }
                int i7 = this.f6856e;
                if (i7 == 3) {
                    if ((b4 & 255) == 1) {
                        if (u0.b.D == 13) {
                            z.k.s(227, 130, 1, 4);
                            return;
                        } else {
                            l0.b0.l0(4, 0);
                            l0.b0.l0(4, 1);
                        }
                    }
                    return;
                }
                if (i7 == 4) {
                    if ((b4 & 255) == 1) {
                        if (u0.b.D == 13) {
                            z.k.s(227, 130, 1, 5);
                            return;
                        } else {
                            l0.b0.l0(3, 0);
                            l0.b0.l0(3, 1);
                            return;
                        }
                    }
                    return;
                }
                if ((b4 & 255) != 0) {
                    if (i5 < iArr.length) {
                        l0.b0.l0(iArr[i5][1], 0);
                        return;
                    }
                    return;
                } else {
                    int i8 = this.f6855d;
                    if ((i8 < iArr.length) & (i8 != 255)) {
                        l0.b0.l0(iArr[i8][1], 1);
                    }
                    this.f6855d = 255;
                    return;
                }
            }
            return;
        }
        if (b2 == 2) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            } else {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            }
            qt.y0(3, (b5 >> 5) & 1);
            qt.y0(4, (b5 >> 4) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 11) {
            qt.y0(43, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
            qt.y0(44, ((bArr[i2 + 14] & 255) << 8) | (bArr[i2 + 15] & 255));
            qt.y0(42, ((bArr[i2 + 16] & 255) << 8) | (bArr[i2 + 17] & 255));
            for (int i9 = 0; i9 < 5; i9++) {
                int i10 = i2 + (i9 * 2);
                int[] iArr2 = {i9, (bArr[i10 + 5] & 255) | ((bArr[i10 + 4] & 255) << 8)};
                if (qt.C0(41, iArr2, this.f6853b[i9])) {
                    this.f6853b[i9] = iArr2;
                }
            }
            return;
        }
        if (b2 == 12) {
            for (int i11 = 0; i11 < 15; i11++) {
                int i12 = (15 - i11) - 1;
                int i13 = i2 + (i11 * 2);
                int[] iArr3 = {i12, (bArr[i13 + 3] & 255) | ((bArr[i13 + 2] & 255) << 8)};
                if (qt.C0(40, iArr3, this.f6854c[i11])) {
                    this.f6854c[i12] = iArr3;
                }
            }
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 4:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 5];
                byte b8 = bArr[i2 + 6];
                qt.y0(7, b6 & 255);
                qt.y0(8, (b8 & 255) | ((b7 & 255) << 8));
                break;
            case 5:
                byte b9 = bArr[i2 + 2];
                byte b10 = bArr[i2 + 3];
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 5];
                byte b13 = bArr[i2 + 6];
                byte b14 = bArr[i2 + 7];
                byte b15 = bArr[i2 + 8];
                byte b16 = bArr[i2 + 9];
                byte b17 = bArr[i2 + 10];
                byte b18 = bArr[i2 + 11];
                byte b19 = bArr[i2 + 12];
                qt.y0(9, b10 & 255);
                qt.y0(10, b11 & 255);
                qt.y0(11, ((b12 & 255) << 8) | (b13 & 255));
                qt.y0(12, ((b14 & 255) << 8) | (b15 & 255));
                qt.y0(13, ((b16 & 255) << 8) | (b17 & 255));
                qt.y0(14, (b19 & 255) | ((b18 & 255) << 8));
                break;
            case 6:
                byte b20 = bArr[i2 + 2];
                byte b21 = bArr[i2 + 3];
                int i14 = b20 & 255;
                int i15 = 255 & (b21 >> 4);
                if (i15 == 2) {
                    try {
                        qt.z0(15, new int[]{i14, b21 & DhcpPacket.DHCP_DOMAIN_NAME}, new String(bArr, i2 + 4, i3 - 6, "UTF-16LE"));
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                        return;
                    }
                } else if (i15 != 1) {
                    qt.z0(15, new int[]{i14, b21 & DhcpPacket.DHCP_DOMAIN_NAME}, new String(bArr, i2 + 4, i3 - 6));
                } else {
                    try {
                        qt.z0(15, new int[]{i14, b21 & DhcpPacket.DHCP_DOMAIN_NAME}, new String(bArr, i2 + 4, i3 - 6, "UTF-16BE"));
                    } catch (UnsupportedEncodingException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                break;
            case 7:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 4600);
                break;
            case 8:
                if (nt.a()) {
                    u0.d.R2(l0.c0.e1(bArr[i2 + 6] & 255));
                    int i16 = i2 + 7;
                    u0.d.S2(l0.c0.e1(bArr[i16] & 255));
                    u0.d.T2(l0.c0.e1(bArr[i16] & 255));
                    u0.d.U2(l0.c0.e1(bArr[i2 + 8] & 255));
                    int i17 = i2 + 3;
                    int i18 = bArr[i17] & 255;
                    int i19 = i2 + 4;
                    int i20 = bArr[i19] & 255;
                    int i21 = i2 + 5;
                    int i22 = bArr[i21] & 255;
                    if (i18 == 0 && i20 == 0 && i22 == 0) {
                        u0.d.C2(0);
                    } else if (l0.c0.f13013g != i18 || l0.c0.f13014h != i20 || l0.c0.f13016j != i22) {
                        l0.c0.f13013g = i18;
                        l0.c0.f13014h = i20;
                        l0.c0.f13016j = i22;
                        if (u0.b.f17347o == 0) {
                            u0.d.C2(1);
                            l0.c0.f13017k = 4;
                            l0.b0.b(l0.c0.f13018l);
                        }
                    }
                    u0.d.D2(l0.c0.e1(bArr[i17] & 255));
                    u0.d.E2(l0.c0.e1(bArr[i19] & 255));
                    u0.d.F2(l0.c0.e1(bArr[i19] & 255));
                    u0.d.G2(l0.c0.e1(bArr[i21] & 255));
                }
                break;
            case 9:
                byte b22 = bArr[i2 + 2];
                byte b23 = bArr[i2 + 3];
                byte b24 = bArr[i2 + 4];
                byte b25 = bArr[i2 + 5];
                byte b26 = bArr[i2 + 6];
                byte b27 = bArr[i2 + 7];
                byte b28 = bArr[i2 + 8];
                byte b29 = bArr[i2 + 9];
                qt.y0(16, (b22 >> 7) & 1);
                qt.y0(17, (b22 >> 4) & 7);
                qt.y0(18, (b22 >> 2) & 3);
                qt.y0(19, (b22 >> 0) & 3);
                qt.y0(20, (b23 >> 7) & 1);
                qt.y0(21, (b23 >> 6) & 1);
                qt.y0(22, (b23 >> 5) & 1);
                qt.y0(23, (b23 >> 4) & 1);
                qt.y0(24, (b23 >> 2) & 3);
                qt.y0(25, (b23 >> 0) & 3);
                qt.y0(26, (b24 >> 7) & 1);
                qt.y0(27, (b24 >> 6) & 1);
                qt.y0(28, (b24 >> 5) & 1);
                qt.y0(29, (b24 >> 4) & 1);
                qt.y0(30, (b24 >> 3) & 1);
                qt.y0(31, (b24 >> 2) & 1);
                qt.y0(32, (b24 >> 0) & 3);
                qt.y0(33, (b25 >> 6) & 3);
                qt.y0(34, (b25 >> 3) & 7);
                qt.y0(35, (b25 >> 0) & 7);
                qt.y0(36, b26 & 255);
                qt.y0(37, b27 & 255);
                qt.y0(38, 255 & b28);
                qt.y0(45, (b29 >> 7) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 47) {
            return;
        }
        int i4 = 0;
        if (i2 == 40) {
            while (i4 < 15) {
                o1.x.v(bVar, i2, this.f6854c[i4]);
                i4++;
            }
        } else {
            if (i2 != 41) {
                o1.x.v(bVar, i2, nt.f8645g[i2]);
                return;
            }
            while (i4 < 5) {
                o1.x.v(bVar, i2, this.f6853b[i4]);
                i4++;
            }
        }
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (a3(iArr, 1)) {
                z.k.s(227, 130, 1, iArr[0]);
            }
        } else if (i2 == 1 && a3(iArr, 2)) {
            z.k.s(227, 132, 2, iArr[0], iArr[1]);
        }
    }

    public final boolean a3(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
