package k0;

import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class gd extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5459c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5460d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f5461e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 13}, new int[]{11, 12}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5462f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5463g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5464h = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(gd.this.f5464h);
            gd.this.f5462f = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            gd gdVar = gd.this;
            int i2 = gdVar.f5462f - 1;
            gdVar.f5462f = i2;
            if (i2 <= 0) {
                l0.b0.p0(gdVar.f5464h);
                gd.this.f5462f = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 255, 1, 127);
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
        u0.c.f17386m.a(this.f5463g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 10) {
            qt.y0(119, bArr[i2 + 2]);
        }
        if (b2 == 14) {
            int i5 = i2 + 2;
            qt.y0(116, (bArr[i5] >> 7) & 1);
            qt.y0(108, (bArr[i5] >> 0) & 1);
            qt.y0(109, (bArr[i5] >> 1) & 1);
            qt.y0(110, (bArr[i5] >> 3) & 1);
            qt.y0(111, (bArr[i5] >> 2) & 1);
            qt.y0(112, bArr[i2 + 3]);
            qt.y0(113, bArr[i2 + 4]);
            qt.y0(115, bArr[i2 + 5]);
            qt.y0(114, bArr[i2 + 6]);
            return;
        }
        if (b2 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 1:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f5459c = b3 & 255;
                    if (nt.f8637c != 1) {
                        int i6 = 0;
                        while (true) {
                            iArr = this.f5460d;
                            if (i6 < iArr.length) {
                                int i7 = this.f5459c;
                                if (i7 != iArr[i6][0]) {
                                    i6++;
                                } else if (i7 != 0) {
                                    this.f5458b = i6;
                                }
                            }
                        }
                        if ((b4 & 255) == 0) {
                            if (i6 <= iArr.length) {
                                l0.b0.l0(iArr[this.f5458b][1], 1);
                            }
                        } else if (i6 < iArr.length) {
                            l0.b0.l0(iArr[i6][1], 0);
                        }
                    } else {
                        int i8 = 0;
                        while (true) {
                            iArr2 = this.f5461e;
                            if (i8 < iArr2.length) {
                                int i9 = this.f5459c;
                                if (i9 != iArr2[i8][0]) {
                                    i8++;
                                } else if (i9 != 0) {
                                    this.f5458b = i8;
                                }
                            }
                        }
                        if (this.f5459c == 9) {
                            if ((b4 & 255) == 1) {
                                int i10 = h0.c.E;
                                if (i10 == 3 || i10 == 5) {
                                    l0.b0.l0(26, 0);
                                    l0.b0.l0(26, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                        } else if ((b4 & 255) == 0) {
                            if (i8 < iArr2.length) {
                                l0.b0.l0(iArr2[this.f5458b][1], 1);
                            }
                        } else if (i8 < iArr2.length) {
                            l0.b0.l0(iArr2[i8][1], 0);
                        }
                    }
                }
                break;
            case 2:
                if (nt.a()) {
                    int i11 = bArr[i2 + 7] & 255;
                    if (i11 != 255) {
                        if (i11 >= 70) {
                            int i12 = i11 - 70;
                            i4 = ((i12 / 2) * 10) + 1000 + ((i12 % 2) * 5);
                        } else {
                            int i13 = 70 - i11;
                            i4 = (1000 - ((i13 / 2) * 10)) - ((i13 % 2) * 5);
                        }
                        u0.d.A3(i4);
                    } else {
                        u0.d.A3(0);
                    }
                }
                break;
            case 3:
                int i14 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (i14 >> 7) & 1);
                    qt.y0(2, (i14 >> 6) & 1);
                } else {
                    qt.y0(1, (i14 >> 6) & 1);
                    qt.y0(2, (i14 >> 7) & 1);
                }
                qt.y0(3, (i14 >> 4) & 1);
                qt.y0(4, (i14 >> 5) & 1);
                qt.y0(5, (i14 >> 3) & 1);
                break;
            case 4:
                if (nt.a()) {
                    int i15 = i2 + 2;
                    if (bArr[i15] == 1) {
                        if (u0.b.f17347o == 0) {
                            u0.d.C2(1);
                        }
                    } else if (bArr[i15] == 0) {
                        u0.d.C2(0);
                    }
                    u0.d.D2(l0.c0.g1(bArr[i2 + 3] & 255));
                    u0.d.E2(l0.c0.g1(bArr[i2 + 4] & 255));
                    u0.d.F2(l0.c0.g1(bArr[i2 + 5] & 255));
                    u0.d.G2(l0.c0.g1(bArr[i2 + 6] & 255));
                    u0.d.R2(l0.c0.g1(bArr[i2 + 7] & 255));
                    u0.d.S2(l0.c0.g1(bArr[i2 + 8] & 255));
                    u0.d.T2(l0.c0.g1(bArr[i2 + 9] & 255));
                    u0.d.U2(l0.c0.g1(bArr[i2 + 10] & 255));
                }
                break;
            case 5:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, MediaProperties.HEIGHT_720);
                break;
            case 6:
                byte b5 = bArr[i2 + 3];
                qt.y0(29, (b5 >> 4) & 15);
                qt.y0(30, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            default:
                switch (b2) {
                    case 16:
                        qt.y0(104, bArr[i2 + 3] & 255);
                        qt.y0(105, bArr[i2 + 4] & 255);
                        qt.y0(107, bArr[i2 + 5] & 255);
                        qt.y0(106, bArr[i2 + 6] & 255);
                        qt.y0(100, bArr[i2 + 7] & 255);
                        qt.y0(101, bArr[i2 + 8] & 255);
                        qt.y0(103, bArr[i2 + 9] & 255);
                        qt.y0(102, bArr[i2 + 10] & 255);
                        break;
                    case 17:
                        qt.y0(120, bArr[i2 + 2] & 255);
                        break;
                    case 18:
                        if (bArr[i2 + 2] != 1) {
                            qt.a(0);
                        } else {
                            qt.a(1);
                        }
                        break;
                    case 19:
                        qt.y0(121, bArr[i2 + 2] & 255);
                        qt.y0(122, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                        qt.y0(123, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5463g);
        l0.b0.p0(this.f5464h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 124) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -1, 1, 14);
            z.k.s(227, -1, 1, 15);
            z.k.s(227, -1, 1, 16);
        } else if (i2 != 1003) {
            if (i2 != 1005) {
                return;
            }
            z.k.s(227, -125, 2, 1, iArr[0] + 2);
        } else {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] == 1) {
                z.k.s(227, -125, 2, 0, 1);
            } else {
                z.k.s(227, -125, 2, 1, 1);
            }
        }
    }
}
