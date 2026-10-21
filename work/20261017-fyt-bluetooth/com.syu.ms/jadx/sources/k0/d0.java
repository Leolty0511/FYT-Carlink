package k0;

import android.net.dhcp.DhcpPacket;

/* JADX INFO: loaded from: classes2.dex */
public class d0 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4261c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4262d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{15, 2}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte f4263e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4264f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4265g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f4266h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4267i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0 d0Var = d0.this;
            byte b2 = (byte) (d0Var.f4263e + 1);
            d0Var.f4263e = b2;
            if (b2 > 5) {
                l0.b0.o0(d0Var.f4264f);
                d0.this.f4263e = (byte) 0;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0 d0Var = d0.this;
            int i2 = d0Var.f4265g;
            if (i2 > 0) {
                d0Var.f4265g = i2 - 1;
            }
            if (d0Var.f4265g == 0) {
                d0.a3();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.this.c3();
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
        qt.z(this.f4266h);
        y0.g.f18094d.a(this.f4267i, 1);
        y0.g.f18095e.a(this.f4267i, 1);
        w0.e.f17815a.a(this.f4266h, 1);
        w0.e.f17819e.a(this.f4266h, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        if (bArr[i2 + 1] == 114 && nt.a()) {
            this.f4261c = bArr[i2 + 4] & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f4262d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f4261c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f4260b = i4;
                    break;
                }
                i4++;
            }
            if (this.f4261c == 0) {
                int i6 = this.f4260b;
                if (i6 < iArr.length && i6 != 255) {
                    l0.b0.l0(iArr[i6][1], 1);
                    l0.b0.o0(this.f4264f);
                    this.f4263e = (byte) 0;
                }
                this.f4260b = 255;
            } else if (i4 < iArr.length && (b2 = this.f4263e) == 0) {
                this.f4263e = (byte) (b2 + 1);
                l0.b0.l0(iArr[i4][1], 0);
                l0.b0.a(this.f4264f);
            }
            u0.d.R2((bArr[i2 + 8] >> 4) & 15);
            u0.d.S2((bArr[i2 + 9] >> 4) & 15);
            u0.d.T2((bArr[i2 + 10] >> 4) & 15);
            u0.d.U2((bArr[i2 + 11] >> 4) & 15);
            u0.d.D2((bArr[i2 + 12] >> 4) & 15);
            u0.d.E2((bArr[i2 + 13] >> 4) & 15);
            u0.d.F2((bArr[i2 + 14] >> 4) & 15);
            u0.d.G2((bArr[i2 + 15] >> 4) & 15);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f4266h);
        y0.g.f18094d.d(this.f4267i);
        y0.g.f18095e.d(this.f4267i);
        w0.e.f17815a.d(this.f4266h);
        w0.e.f17819e.d(this.f4266h);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f4265g = 4;
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
}
