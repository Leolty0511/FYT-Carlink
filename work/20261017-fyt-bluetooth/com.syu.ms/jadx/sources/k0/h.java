package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class h extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5687c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5686b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5688d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f5689e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{5, 18}, new int[]{6, 26}, new int[]{8, 27}, new int[]{9, 28}, new int[]{10, 2}, new int[]{13, 32}, new int[]{14, 33}, new int[]{15, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5690f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5691g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte f5692h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f5693i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            int i2 = hVar.f5686b;
            if (i2 > 0) {
                hVar.f5686b = i2 - 1;
            }
            if (hVar.f5686b == 0) {
                h.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            byte b2 = (byte) (hVar.f5692h + 1);
            hVar.f5692h = b2;
            if (b2 > 5) {
                l0.b0.o0(hVar.f5693i);
                h.this.f5692h = (byte) 0;
            }
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
            int i4 = w0.d.f17796h;
            if (i4 - 65536 == 0 || 1 == i4 - 65536 || 2 == i4 - 65536) {
                int i5 = w0.d.f17797i;
                iArr[3] = i5 / 10000 == 0 ? (i5 / 10000) + 32 : (i5 / 10000) + 48;
                iArr[4] = ((i5 % 10000) / 1000) + 48;
                iArr[5] = ((i5 % 1000) / 100) + 48;
                iArr[6] = 46;
                iArr[7] = ((i5 % 100) / 10) + 48;
                iArr[8] = (i5 % 10) + 48;
                iArr[9] = 77;
                iArr[10] = 104;
                iArr[11] = 122;
            } else {
                int i6 = w0.d.f17797i;
                iArr[3] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[4] = (i6 % 10000) / 1000 == 0 ? ((i6 % 10000) / 1000) + 32 : ((i6 % 10000) / 1000) + 48;
                iArr[5] = ((i6 % 1000) / 100) + 48;
                iArr[6] = ((i6 % 100) / 10) + 48;
                iArr[7] = (i6 % 10) + 48;
                iArr[8] = 75;
                iArr[9] = 104;
                iArr[10] = 122;
            }
        } else if (i3 != 4) {
            if (i3 != 6) {
                if ((i3 == 8 || i3 == 9) && u0.b.s3 != 0) {
                    iArr[3] = 84;
                    int i7 = u0.b.r3 % 10000;
                    iArr[4] = (i7 / 1000) + 48;
                    int i8 = (i7 % 100) / 10;
                    int i9 = i7 % 1000;
                    if (i8 != 0) {
                        i9 /= 10;
                    }
                    iArr[5] = i9 + 48;
                    iArr[6] = i8 + 48;
                    iArr[7] = (i7 % 10) + 48;
                    int i10 = u0.b.t3;
                    int i11 = (i10 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i11 / 10) + 48;
                    iArr[10] = (i11 % 10) + 48;
                    iArr[11] = 32;
                    int i12 = i10 % 60;
                    iArr[12] = (i12 / 10) + 48;
                    iArr[13] = (i12 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i13 = d1.d.f1572e;
                if (i13 / 10 > 0) {
                    iArr[3] = (i13 / 10) + 48;
                }
                iArr[4] = (i13 % 10) + 48;
                iArr[5] = 45;
                int i14 = d1.d.f1571d / 100;
                int i15 = i14 / 10000;
                if (i15 > 0) {
                    iArr[6] = i15 + 48;
                }
                iArr[7] = ((i14 % 10000) / 1000) + 48;
                iArr[8] = ((i14 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i14 % 100) / 10) + 48;
                iArr[11] = ((i14 % 10) / 1) + 48;
                iArr[12] = 77;
                iArr[13] = 104;
                iArr[14] = 122;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            int i16 = o0.e.B % 10000;
            iArr[4] = (i16 / 1000) + 48;
            int i17 = (i16 % 100) / 10;
            int i18 = i16 % 1000;
            if (i17 != 0) {
                i18 /= 10;
            }
            iArr[5] = i18 + 48;
            iArr[6] = i17 + 48;
            iArr[7] = (i16 % 10) + 48;
            int i19 = o0.e.f16794r;
            int i20 = (i19 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i20 / 10) + 48;
            iArr[10] = (i20 % 10) + 48;
            iArr[11] = 32;
            int i21 = i19 % 60;
            iArr[12] = (i21 / 10) + 48;
            iArr[13] = (i21 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        int i22 = 0;
        iArr2[0] = 227;
        while (i22 < 15) {
            int i23 = i22 + 1;
            iArr2[i23] = (byte) iArr[i22];
            i22 = i23;
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
        if (nt.a()) {
            qt.z(this.f5690f);
            y0.g.f18094d.a(this.f5691g, 1);
            y0.g.f18095e.a(this.f5691g, 1);
            w0.e.f17815a.a(this.f5690f, 1);
            w0.e.f17819e.a(this.f5690f, 1);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 114) {
            if (nt.a()) {
                qt.l(bArr[i2 + 7] & 255, bArr[i2 + 6] & 255, false, 7800);
                this.f5688d = bArr[i2 + 4] & 255;
                int i4 = 0;
                while (true) {
                    iArr = this.f5689e;
                    if (i4 >= iArr.length) {
                        break;
                    }
                    int i5 = this.f5688d;
                    if (i5 == iArr[i4][0]) {
                        if (i5 == 0) {
                            break;
                        }
                        this.f5687c = i4;
                        break;
                    }
                    i4++;
                }
                if (this.f5688d == 0) {
                    int i6 = this.f5687c;
                    if (i6 < iArr.length && i6 != 255) {
                        l0.b0.l0(iArr[i6][1], 1);
                        l0.b0.o0(this.f5693i);
                        this.f5692h = (byte) 0;
                    }
                    this.f5687c = 255;
                } else if (i4 < iArr.length && (b2 = this.f5692h) == 0) {
                    this.f5692h = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i4][1], 0);
                    l0.b0.a(this.f5693i);
                }
                u0.d.R2((bArr[i2 + 8] >> 4) & 15);
                u0.d.S2((bArr[i2 + 9] >> 4) & 15);
                u0.d.T2((bArr[i2 + 10] >> 4) & 15);
                u0.d.U2((bArr[i2 + 11] >> 4) & 15);
                u0.d.D2((bArr[i2 + 12] >> 4) & 15);
                u0.d.E2((bArr[i2 + 13] >> 4) & 15);
                u0.d.F2((bArr[i2 + 14] >> 4) & 15);
                u0.d.G2((bArr[i2 + 15] >> 4) & 15);
                return;
            }
            return;
        }
        if (b3 != 115) {
            return;
        }
        byte b4 = bArr[i2 + 2];
        int[] iArr2 = new int[1];
        iArr2[0] = (b4 & 48) == 0 ? 0 : 1;
        qt.y0(12, iArr2);
        qt.y0(13, (b4 >> 3) & 1);
        qt.y0(14, (b4 >> 2) & 1);
        byte b5 = bArr[i2 + 3];
        int[] iArr3 = new int[1];
        iArr3[0] = (b5 & 192) == 0 ? 0 : 1;
        qt.y0(11, iArr3);
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
            qt.y0(27, ((b6 & 127) * 10) + (((b6 >> 7) & 1) * 5));
        } else {
            qt.y0(27, -2);
        }
        if (b7 == -1) {
            qt.y0(28, -3);
        } else if (b7 == 0) {
            qt.y0(28, -1);
        } else if (b7 != 1) {
            qt.y0(28, ((b7 & 127) * 10) + (((b7 >> 7) & 1) * 5));
        } else {
            qt.y0(28, -2);
        }
        byte b8 = bArr[i2 + 6];
        qt.y0(20, (b8 >> 6) & 1);
        qt.y0(19, (b8 >> 5) & 1);
        qt.y0(18, (b8 >> 4) & 1);
        qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
        int i9 = i2 + 8;
        if ((bArr[i9] & 128) != 0) {
            this.f7886a.f8311f = 1;
        } else {
            this.f7886a.f8311f = 0;
        }
        if (nt.a()) {
            int i10 = bArr[i9] & 127;
            if ((bArr[i9] & 255) >= 128) {
                int i11 = i10 >= 40 ? ((i10 - 40) * 10) + 1000 : 1000 - ((40 - i10) * 10);
                if (i11 > 600) {
                    u0.d.A3(i11);
                }
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5690f);
        y0.g.f18094d.d(this.f5691g);
        y0.g.f18095e.d(this.f5691g);
        w0.e.f17815a.d(this.f5690f);
        w0.e.f17819e.d(this.f5690f);
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

    public void c3() {
        int i2;
        int[] iArr = new int[15];
        this.f5686b = 4;
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
