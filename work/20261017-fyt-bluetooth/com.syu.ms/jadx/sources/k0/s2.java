package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class s2 extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10142c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10141b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10143d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10144e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 27}, new int[]{9, 28}, new int[]{10, 2}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f10145f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10146g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s2 s2Var = s2.this;
            int i2 = s2Var.f10141b;
            if (i2 > 0) {
                s2Var.f10141b = i2 - 1;
            }
            if (s2Var.f10141b == 0) {
                s2.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s2.this.c3();
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        for (int i2 = 0; i2 < 15; i2++) {
            iArr[i2] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17797i;
                iArr[3] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[4] = ((i6 % 10000) / 1000) + 48;
                iArr[5] = ((i6 % 1000) / 100) + 48;
                iArr[6] = 46;
                iArr[7] = ((i6 % 100) / 10) + 48;
                iArr[8] = (i6 % 10) + 48;
                iArr[9] = 77;
                iArr[10] = 104;
                iArr[11] = 122;
            } else {
                int i7 = w0.d.f17797i;
                iArr[3] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[4] = (i7 % 10000) / 1000 == 0 ? ((i7 % 10000) / 1000) + 32 : ((i7 % 10000) / 1000) + 48;
                iArr[5] = ((i7 % 1000) / 100) + 48;
                iArr[6] = ((i7 % 100) / 10) + 48;
                iArr[7] = (i7 % 10) + 48;
                iArr[8] = 75;
                iArr[9] = 104;
                iArr[10] = 122;
            }
        } else if (i3 != 4) {
            if (i3 != 6) {
                if ((i3 == 8 || i3 == 9) && u0.b.s3 != 0) {
                    iArr[3] = 84;
                    int i8 = u0.b.r3 % 10000;
                    iArr[4] = (i8 / 1000) + 48;
                    int i9 = (i8 % 100) / 10;
                    int i10 = i8 % 1000;
                    if (i9 != 0) {
                        i10 /= 10;
                    }
                    iArr[5] = i10 + 48;
                    iArr[6] = i9 + 48;
                    iArr[7] = (i8 % 10) + 48;
                    int i11 = u0.b.t3;
                    int i12 = (i11 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i12 / 10) + 48;
                    iArr[10] = (i12 % 10) + 48;
                    iArr[11] = 32;
                    int i13 = i11 % 60;
                    iArr[12] = (i13 / 10) + 48;
                    iArr[13] = (i13 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i14 = d1.d.f1572e;
                if (i14 / 10 > 0) {
                    iArr[3] = (i14 / 10) + 48;
                }
                iArr[4] = (i14 % 10) + 48;
                iArr[5] = 45;
                int i15 = d1.d.f1571d / 100;
                int i16 = i15 / 10000;
                if (i16 > 0) {
                    iArr[6] = i16 + 48;
                }
                iArr[7] = ((i15 % 10000) / 1000) + 48;
                iArr[8] = ((i15 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i15 % 100) / 10) + 48;
                iArr[11] = ((i15 % 10) / 1) + 48;
                iArr[12] = 77;
                iArr[13] = 104;
                iArr[14] = 122;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            int i17 = o0.e.B % 10000;
            iArr[4] = (i17 / 1000) + 48;
            int i18 = (i17 % 100) / 10;
            int i19 = i17 % 1000;
            if (i18 != 0) {
                i19 /= 10;
            }
            iArr[5] = i19 + 48;
            iArr[6] = i18 + 48;
            iArr[7] = (i17 % 10) + 48;
            int i20 = o0.e.f16794r;
            int i21 = (i20 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i21 / 10) + 48;
            iArr[10] = (i21 % 10) + 48;
            iArr[11] = 32;
            int i22 = i20 % 60;
            iArr[12] = (i22 / 10) + 48;
            iArr[13] = (i22 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        int i23 = 0;
        iArr2[0] = 227;
        while (i23 < 15) {
            int i24 = i23 + 1;
            iArr2[i24] = (byte) iArr[i23];
            i23 = i24;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000e  */
    public static byte b3() {
        byte b2 = 3;
        switch (u0.b.D) {
            case 0:
                b2 = 9;
                break;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    b2 = 1;
                } else if (1 == i2 - 65536) {
                    b2 = 2;
                } else if (2 != i2 - 65536) {
                    if (i2 + 0 != 0) {
                        b2 = 1 != i2 - 0 ? (byte) 0 : (byte) 5;
                    } else {
                        b2 = 4;
                    }
                }
                break;
            case 2:
            case 3:
                b2 = 10;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    b2 = 7;
                } else if (i3 == 2) {
                    b2 = 14;
                } else if (i3 != 3) {
                    b2 = 0;
                } else {
                    b2 = 13;
                }
                break;
            case 5:
                b2 = DhcpPacket.DHCP_HOST_NAME;
                break;
            case 6:
                b2 = 8;
                break;
            case 7:
                b2 = 11;
                break;
            case 8:
            case 10:
                b2 = 13;
                break;
            case 9:
            default:
                b2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
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
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        if (nt.a()) {
            qt.z(this.f10145f);
            y0.g.f18094d.a(this.f10146g, 1);
            y0.g.f18095e.a(this.f10146g, 1);
            w0.e.f17815a.a(this.f10145f, 1);
            w0.e.f17819e.a(this.f10145f, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2 + 1];
        if (b2 == 114) {
            qt.y0(98, bArr[i2 + 3] & 255);
            if (nt.a()) {
                qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 132);
                this.f10143d = bArr[i2 + 4] & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f10144e;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f10143d;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f10142c = i4;
                        break;
                    }
                    i4++;
                }
                if (this.f10143d == 0) {
                    int i6 = this.f10142c;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                    }
                    this.f10142c = 255;
                } else if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                }
                u0.d.R2(d3(bArr[i2 + 8] & 255));
                u0.d.S2(d3(bArr[i2 + 9] & 255));
                u0.d.T2(d3(bArr[i2 + 10] & 255));
                u0.d.U2(d3(bArr[i2 + 11] & 255));
                u0.d.D2(d3(bArr[i2 + 12] & 255));
                u0.d.E2(d3(bArr[i2 + 13] & 255));
                u0.d.F2(d3(bArr[i2 + 14] & 255));
                u0.d.G2(d3(bArr[i2 + 15] & 255));
                return;
            }
            return;
        }
        if (b2 != 115) {
            return;
        }
        byte b3 = bArr[i2 + 2];
        qt.y0(10, (b3 >> 6) & 1);
        int i7 = b3 & 48;
        if (i7 == 0) {
            qt.y0(12, 0);
        } else if (i7 == 16) {
            qt.y0(12, 1);
        } else if (i7 == 48) {
            qt.y0(12, 2);
        }
        qt.y0(13, (b3 >> 3) & 1);
        qt.y0(14, (b3 >> 2) & 1);
        byte b4 = bArr[i2 + 3];
        qt.y0(53, (b4 >> 7) & 1);
        qt.y0(11, (b4 >> 6) & 1);
        qt.y0(16, (b4 >> 5) & 1);
        qt.y0(65, (b4 >> 4) & 1);
        qt.y0(30, (b4 >> 2) & 3);
        qt.y0(29, b4 & 3);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i8 = i2 + 4;
            byte b5 = bArr[i8];
            if (b5 == -1) {
                qt.y0(28, -3);
            } else if (b5 == 0) {
                qt.y0(28, -1);
            } else if (b5 != 1) {
                qt.y0(28, bArr[i8] & 255);
            } else {
                qt.y0(28, -2);
            }
            int i9 = i2 + 5;
            byte b6 = bArr[i9];
            if (b6 == -1) {
                qt.y0(27, -3);
            } else if (b6 == 0) {
                qt.y0(27, -1);
            } else if (b6 != 1) {
                qt.y0(27, bArr[i9] & 255);
            } else {
                qt.y0(27, -2);
            }
        } else {
            int i10 = i2 + 4;
            byte b7 = bArr[i10];
            if (b7 == -1) {
                qt.y0(27, -3);
            } else if (b7 == 0) {
                qt.y0(27, -1);
            } else if (b7 != 1) {
                qt.y0(27, bArr[i10] & 255);
            } else {
                qt.y0(27, -2);
            }
            int i11 = i2 + 5;
            byte b8 = bArr[i11];
            if (b8 == -1) {
                qt.y0(28, -3);
            } else if (b8 == 0) {
                qt.y0(28, -1);
            } else if (b8 != 1) {
                qt.y0(28, bArr[i11] & 255);
            } else {
                qt.y0(28, -2);
            }
        }
        byte b9 = bArr[i2 + 6];
        qt.y0(20, (b9 >> 6) & 1);
        qt.y0(19, (b9 >> 5) & 1);
        qt.y0(18, (b9 >> 4) & 1);
        qt.y0(21, b9 & DhcpPacket.DHCP_DOMAIN_NAME);
        byte b10 = bArr[i2 + 7];
        qt.y0(24, (b10 >> 6) & 1);
        qt.y0(23, (b10 >> 5) & 1);
        qt.y0(22, (b10 >> 4) & 1);
        qt.y0(25, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
        byte b11 = bArr[i2 + 9];
        if ((b11 & 1) != 0) {
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b11 >> 6) & 1);
                qt.y0(2, (b11 >> 7) & 1);
            } else {
                qt.y0(1, (b11 >> 7) & 1);
                qt.y0(2, (b11 >> 6) & 1);
            }
            qt.y0(3, (b11 >> 5) & 1);
            qt.y0(4, (b11 >> 4) & 1);
            qt.y0(5, (b11 >> 3) & 1);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f10145f);
        y0.g.f18094d.d(this.f10146g);
        y0.g.f18095e.d(this.f10146g);
        w0.e.f17815a.d(this.f10145f);
        w0.e.f17819e.d(this.f10145f);
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
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f10141b = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 210;
        iArr[2] = b3();
        if (y0.f.f18055i == 1 || (i2 = y0.f.C0) == 0) {
            iArr[3] = 77;
            iArr[4] = 85;
            iArr[5] = 84;
            iArr[6] = 69;
        } else {
            iArr[3] = 86;
            iArr[4] = 79;
            iArr[5] = 76;
            if (i2 >= 10) {
                iArr[7] = (i2 / 10) + 48;
            }
            iArr[8] = (i2 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i3 < 15) {
            int i5 = i3 + 1;
            iArr2[i5] = (byte) iArr[i3];
            i3 = i5;
        }
        z.k.s(iArr2);
    }

    public int d3(int i2) {
        return (i2 * 5) / 8;
    }
}
