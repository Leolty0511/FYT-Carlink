package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class aj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3343c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f3344d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{11, 3}, new int[]{12, 4}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f3345e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 144, 1, 35);
            z.k.s(227, 144, 1, 36);
            z.k.s(227, 144, 1, 40);
            z.k.s(227, 144, 1, 48);
            z.k.s(227, 144, 1, 104);
            z.k.s(227, 144, 1, 106);
            z.k.s(227, 144, 1, 127);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8311f = 1;
        mtVar.f8310e = 1;
        mtVar.f8320o = 1;
        mtVar.f8313h = 2;
        u0.c.f17386m.a(this.f3345e, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f3343c = b3 & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f3344d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f3343c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f3342b = i8;
                    break;
                }
                i8++;
            }
            if ((b4 & 255) != 0) {
                if (i8 < iArr.length) {
                    l0.b0.l0(iArr[i8][1], 0);
                    return;
                }
                return;
            } else {
                int i10 = this.f3342b;
                if (i10 < iArr.length && i10 != 255) {
                    l0.b0.l0(iArr[i10][1], 1);
                }
                this.f3342b = 255;
                return;
            }
        }
        if (b2 == 40) {
            byte b5 = bArr[i2 + 2];
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(3, (b5 >> 4) & 1);
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
                return;
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
                return;
            }
        }
        if (b2 == 48) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 5600);
            return;
        }
        if (b2 == 104) {
            qt.y0(1032, ((bArr[i2 + 2] << 0) & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 106) {
            qt.y0(1031, ((bArr[i2 + 2] << 0) & 255) | ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 35) {
            if (b2 != 36) {
                return;
            }
            byte b6 = bArr[i2 + 3];
            byte b7 = bArr[i2 + 4];
            byte b8 = bArr[i2 + 5];
            byte b9 = bArr[i2 + 6];
            u0.d.R2(l0.c0.E0(b6));
            u0.d.S2(l0.c0.E0(b7));
            u0.d.T2(l0.c0.E0(b8));
            u0.d.U2(l0.c0.E0(b9));
            return;
        }
        byte b10 = bArr[i2 + 2];
        byte b11 = bArr[i2 + 3];
        byte b12 = bArr[i2 + 4];
        byte b13 = bArr[i2 + 5];
        qt.y0(10, (b10 >> 7) & 1);
        qt.y0(11, (b10 >> 6) & 1);
        qt.y0(12, (b10 >> 5) & 1);
        qt.y0(13, (b10 >> 3) & 1);
        qt.y0(16, (b10 >> 1) & 1);
        int i11 = b11 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i11 != 1) {
            if (i11 == 2) {
                i4 = 0;
                i6 = 1;
            } else if (i11 == 3) {
                i4 = 0;
                i6 = 0;
                i5 = 1;
            } else if (i11 == 4) {
                i6 = 0;
                i4 = 1;
                i5 = 1;
            } else if (i11 != 5) {
                i4 = 0;
                i6 = 0;
            } else {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            }
            i5 = i6;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 1;
        }
        int[] iArr2 = new int[1];
        iArr2[0] = b11 == 5 ? 1 : 0;
        qt.y0(65, iArr2);
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(21, b12 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i12 = b13 & 255;
        if (i12 == 0) {
            i7 = -2;
        } else if (i12 != 30) {
            i7 = (i12 <= 0 || i12 >= 30) ? -1 : ((b13 - 1) * 5) + 160;
        } else {
            i7 = -3;
        }
        qt.y0(27, i7);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f3345e);
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
        if (i2 != 1003) {
            return;
        }
        z.k.s(227, 140, 1, 1);
        a.i.a0(150L);
        z.k.s(227, 140, 1, 0);
    }
}
