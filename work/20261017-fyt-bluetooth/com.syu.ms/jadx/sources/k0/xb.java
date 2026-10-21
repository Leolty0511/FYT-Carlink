package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class xb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12080c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12081d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 2}, new int[]{4, 1}, new int[]{5, 3}, new int[]{6, 4}, new int[]{7, 13}, new int[]{8, 18}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12082e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12083f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12084g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f12085h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(xb.this.f12085h);
            xb.this.f12083f = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            xb xbVar = xb.this;
            int i2 = xbVar.f12083f - 1;
            xbVar.f12083f = i2;
            if (i2 <= 0) {
                l0.b0.p0(xbVar.f12085h);
                xb.this.f12083f = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 2, 4, 0);
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f12084g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 20) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 128) != 0) {
                    qt.b(1);
                    return;
                }
                qt.b(0);
            }
            return;
        }
        if (b2 == 28) {
            if (nt.a()) {
                u0.d.R2(l0.c0.q1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.q1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.q1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.q1(bArr[i2 + 5] & 255));
                u0.d.D2(l0.c0.q1(bArr[i2 + 6] & 255));
                u0.d.E2(l0.c0.q1(bArr[i2 + 7] & 255));
                u0.d.F2(l0.c0.q1(bArr[i2 + 8] & 255));
                u0.d.G2(l0.c0.q1(bArr[i2 + 9] & 255));
                return;
            }
            return;
        }
        if (b2 == 36) {
            int i5 = i2 + 2;
            if ((bArr[i5] & 255) >= 128) {
                qt.m(bArr[i5], 0, 128, true, 50);
                return;
            } else {
                qt.i(bArr[i5], 0, false, 50);
                return;
            }
        }
        switch (b2) {
            case 3:
                byte b3 = bArr[i2 + 4];
                byte b4 = bArr[i2 + 5];
                byte b5 = bArr[i2 + 6];
                byte b6 = bArr[i2 + 7];
                byte b7 = bArr[i2 + 8];
                byte b8 = bArr[i2 + 9];
                int i6 = ((b3 & 255) * 256) + (b4 & 255);
                if (i6 >= 0 && i6 <= 4000) {
                    qt.y0(8, i6);
                }
                int i7 = ((b5 & 255) * 256) + (b6 & 255);
                if (i7 >= 0 && i7 <= 4000) {
                    qt.y0(9, i7);
                }
                int i8 = ((b7 & 255) * 256) + (b8 & 255);
                if (i8 >= 0 && i8 <= 4000) {
                    qt.y0(10, i8);
                }
                if (nt.a()) {
                    byte b9 = bArr[i2 + 2];
                    int i9 = (bArr[i2 + 3] & 255) | ((b9 << 8) & 65280);
                    if ((b9 & 128) != 0) {
                        int i10 = ((~i9) + 1) & 65535;
                        i4 = 1000 - (!this.f12082e ? ((i10 / 2) * 10) + ((i10 % 2) * 5) : i10 * 10);
                    } else {
                        i4 = (!this.f12082e ? ((i9 / 2) * 10) + ((i9 % 2) * 5) : i9 * 10) + 1000;
                    }
                    u0.d.A3(i4);
                }
                break;
            case 4:
                byte b10 = bArr[i2 + 2];
                byte b11 = bArr[i2 + 4];
                byte b12 = bArr[i2 + 5];
                byte b13 = bArr[i2 + 6];
                qt.y0(11, b10 & 255);
                qt.y0(12, b11 & 255);
                int i11 = b12 & 255;
                qt.y0(13, i11);
                qt.y0(14, b13 & 255);
                if (nt.a()) {
                    if (i11 == 0) {
                        this.f12082e = false;
                    } else {
                        this.f12082e = true;
                    }
                }
                break;
            case 5:
                byte b14 = bArr[i2 + 2];
                byte b15 = bArr[i2 + 3];
                byte b16 = bArr[i2 + 4];
                byte b17 = bArr[i2 + 5];
                byte b18 = bArr[i2 + 6];
                qt.y0(15, b14 & 255);
                qt.y0(16, b15 & 255);
                qt.y0(17, b16 & 255);
                qt.y0(18, b17 & 255);
                qt.y0(19, b18 & 255);
                break;
            case 6:
                if (nt.a()) {
                    byte b19 = bArr[i2 + 2];
                    byte b20 = bArr[i2 + 3];
                    this.f12080c = b19 & 255;
                    int i12 = 0;
                    while (true) {
                        iArr = this.f12081d;
                        if (i12 < iArr.length) {
                            int i13 = this.f12080c;
                            if (i13 != iArr[i12][0]) {
                                i12++;
                            } else if (i13 != 0) {
                                this.f12079b = i12;
                            }
                        }
                    }
                    if ((b20 & 255) == 0) {
                        int i14 = this.f12079b;
                        if (i14 < iArr.length && i14 != 255) {
                            l0.b0.l0(iArr[i14][1], 1);
                        }
                        this.f12079b = 255;
                    } else if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                    }
                }
                break;
            case 7:
                byte b21 = bArr[i2 + 2];
                byte b22 = bArr[i2 + 3];
                qt.y0(20, (b21 >> 4) & 15);
                qt.y0(21, b21 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(22, b22 & 1);
                break;
            case 8:
                byte b23 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b23 >> 6) & 1);
                    qt.y0(2, (b23 >> 7) & 1);
                    qt.y0(3, (b23 >> 4) & 1);
                    qt.y0(4, (b23 >> 5) & 1);
                } else {
                    qt.y0(1, (b23 >> 7) & 1);
                    qt.y0(2, (b23 >> 6) & 1);
                    qt.y0(3, (b23 >> 5) & 1);
                    qt.y0(4, (b23 >> 4) & 1);
                }
                qt.y0(5, (b23 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        l0.b0.p0(this.f12085h);
        u0.c.f17386m.d(this.f12084g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 23) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (iArr == null || iArr.length <= 4) {
                return;
            }
            z.k.s(227, 130, 5, iArr[0], a3(), iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 4) {
                return;
            }
            z.k.s(227, 131, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 133, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3 && iArr != null && iArr.length > 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        }
    }

    public final int a3() {
        int i2 = u0.b.K3;
        return 1;
    }
}
