package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.Spanned;

/* JADX INFO: loaded from: classes2.dex */
public class mc extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8068c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8069d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f8070e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f8071f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f8072g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8073h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f8074i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f8075j = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[] f8076k = {34, 204};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8077l = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mc.this.a3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mc.this.c3();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            switch (i2) {
                case 0:
                default:
                    i3 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    break;
                case 3:
                    i3 = 2;
                    break;
                case 4:
                case 5:
                    i3 = 1;
                    break;
            }
            if (mc.this.f8073h != i3) {
                mc.this.f8073h = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (mc.this.f8075j.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                mc.this.f8075j = h0.c.f2437h;
                if (mc.this.f8075j == null) {
                    mc.this.f8075j = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                if (mc.this.f8073h != 0) {
                    mc mcVar = mc.this;
                    mcVar.l3(mcVar.f8073h, mc.this.f8075j);
                }
                if (mc.this.f8074i != z4) {
                    mc.this.f8074i = z4;
                    mc.this.f8073h = 0;
                }
            }
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        d3(16);
                    }
                } else if (nt.f8645g[11] == 0) {
                    d3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        d3(2);
                    }
                } else if (nt.f8645g[13] == 0) {
                    d3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        d3(38);
                    }
                } else if (nt.f8645g[15] == 0) {
                    d3(38);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[38] == 1) {
                        d3(4);
                    }
                } else if (nt.f8645g[38] == 0) {
                    d3(4);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        d3(35);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    d3(35);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    d3(21);
                } else {
                    d3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    d3(10);
                } else {
                    d3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    d3(12);
                } else {
                    d3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 1;
        mtVar.f8318m = new int[]{34, 35, 36, 37, 38, 39, 41, 42};
        h0.d.f2464c.a(this.f8072g, 1);
        h0.d.f2462a.a(this.f8072g, 1);
        if (nt.a()) {
            qt.z(this.f8070e);
            y0.g.f18094d.a(this.f8071f, 1);
            y0.g.f18095e.a(this.f8071f, 1);
            w0.e.f17815a.a(this.f8070e, 1);
            w0.e.f17819e.a(this.f8070e, 1);
            u0.c.f17374a.a(this.f8070e, 1);
            u0.c.f17393t.a(this.f8070e, 1);
            u0.c.f17392s.a(this.f8070e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        int i7 = 0;
        if (b2 == 32) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f8068c = b3 & 255;
                int i8 = 0;
                while (true) {
                    iArr = this.f8069d;
                    if (i8 >= iArr.length) {
                        break;
                    }
                    int i9 = this.f8068c;
                    if (i9 == iArr[i8][0]) {
                        if (i9 == 0) {
                            break;
                        }
                        this.f8067b = i8;
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
                    if (i8 <= iArr.length) {
                        l0.b0.l0(iArr[this.f8067b][1], 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 65) {
            byte b5 = bArr[i2 + 2];
            if (b5 == 1) {
                byte b6 = bArr[i2 + 3];
                qt.y0(101, (b6 >> 7) & 1);
                qt.y0(102, (b6 >> 6) & 1);
                qt.y0(103, (b6 >> 5) & 1);
                qt.y0(5, (b6 >> 4) & 1);
                qt.y0(4, (b6 >> 3) & 1);
                qt.y0(3, (b6 >> 2) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b6 >> 1) & 1);
                    qt.y0(2, (b6 >> 0) & 1);
                    return;
                } else {
                    qt.y0(1, (b6 >> 0) & 1);
                    qt.y0(2, (b6 >> 1) & 1);
                    return;
                }
            }
            if (b5 != 2) {
                if (b5 != 3) {
                    return;
                }
                byte b7 = bArr[i2 + 3];
                qt.y0(99, (b7 >> 7) & 1);
                qt.y0(100, (b7 >> 6) & 1);
                return;
            }
            int i10 = i2 + 3;
            int i11 = i2 + 4;
            qt.y0(110, ((bArr[i10] << 8) & 65280) | ((bArr[i11] << 0) & 255));
            qt.y0(1032, ((bArr[i10] << 8) & 65280) | ((bArr[i11] << 0) & 255));
            qt.y0(109, (((bArr[i2 + 5] << 8) & 65280) | ((bArr[i2 + 6] << 0) & 255)) / 16);
            qt.y0(105, ((bArr[i2 + 7] << 8) & 65280) | ((bArr[i2 + 8] << 0) & 255));
            qt.y0(112, ((bArr[i2 + 9] << 8) & 65280) | ((bArr[i2 + 10] << 0) & 255));
            qt.y0(106, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | ((bArr[i2 + 13] << 0) & 255));
            qt.y0(104, bArr[i2 + 14] & 255);
            return;
        }
        if (b2 != 85) {
            if (b2 == 97) {
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                return;
            }
            switch (b2) {
                case 34:
                    if (nt.a()) {
                        u0.d.R2(l0.c0.K1(bArr[i2 + 2] & 255));
                        u0.d.S2(l0.c0.K1(bArr[i2 + 3] & 255));
                        u0.d.T2(l0.c0.K1(bArr[i2 + 4] & 255));
                        u0.d.U2(l0.c0.K1(bArr[i2 + 5] & 255));
                    }
                    break;
                case 35:
                    if (nt.a()) {
                        u0.d.D2(l0.c0.K1(bArr[i2 + 2] & 255));
                        u0.d.E2(l0.c0.K1(bArr[i2 + 3] & 255));
                        u0.d.F2(l0.c0.K1(bArr[i2 + 4] & 255));
                        u0.d.G2(l0.c0.K1(bArr[i2 + 5] & 255));
                    }
                    break;
                case 36:
                    byte b8 = bArr[i2 + 3];
                    qt.y0(0, (b8 >> 5) & 1);
                    qt.y0(5, (b8 >> 4) & 1);
                    qt.y0(4, (b8 >> 3) & 1);
                    qt.y0(3, (b8 >> 2) & 1);
                    if (!SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                        qt.y0(1, (b8 >> 0) & 1);
                        qt.y0(2, (b8 >> 1) & 1);
                    } else {
                        qt.y0(1, (b8 >> 1) & 1);
                        qt.y0(2, (b8 >> 0) & 1);
                    }
                    break;
                case 37:
                    byte b9 = bArr[i2 + 2];
                    qt.y0(107, (b9 >> 1) & 1);
                    qt.y0(108, (b9 >> 0) & 1);
                    break;
                case 38:
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 12600);
                    break;
            }
            return;
        }
        int i12 = i2 + 2;
        byte b10 = bArr[i12];
        int i13 = i2 + 3;
        byte b11 = bArr[i13];
        byte b12 = bArr[i2 + 4];
        byte b13 = bArr[i2 + 5];
        byte b14 = bArr[i2 + 6];
        byte b15 = bArr[i2 + 7];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b10 = bArr[i13];
            b11 = bArr[i12];
        }
        int i14 = b10 & 255;
        if (i14 == 16) {
            qt.y0(27, -2);
        } else if (i14 != 80) {
            qt.y0(27, i14);
        } else {
            qt.y0(27, -3);
        }
        int i15 = b11 & 255;
        if (i15 == 16) {
            qt.y0(28, -2);
        } else if (i15 != 80) {
            qt.y0(28, i15);
        } else {
            qt.y0(28, -3);
        }
        qt.y0(21, b12 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
        int i16 = (b12 >> 4) & 15;
        switch (i16) {
            case 1:
                i5 = 0;
                i6 = 0;
                i4 = 1;
                break;
            case 2:
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i4 = 0;
                i5 = 1;
                i6 = i5;
                break;
            case 5:
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 6:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 7:
                i4 = 1;
                i5 = i4;
                i6 = i5;
                break;
            default:
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
        }
        qt.y0(19, i4);
        qt.y0(20, i5);
        qt.y0(18, i6);
        qt.y0(77, i16);
        qt.y0(29, b13 & 3);
        qt.y0(30, 3 & (b13 >> 4));
        qt.y0(67, (b13 >> 2) & 1);
        qt.y0(13, b14 & 1);
        qt.y0(11, (b14 >> 1) & 1);
        qt.y0(14, (b14 >> 2) & 1);
        if (nt.f8637c < 2) {
            int[] iArr2 = new int[1];
            iArr2[0] = ((b14 >> 3) & 1) == 0 ? 0 : 1;
            qt.y0(12, iArr2);
        } else {
            int[] iArr3 = new int[1];
            iArr3[0] = ((b15 >> 1) & 1) == 0 ? 1 : 0;
            qt.y0(12, iArr3);
        }
        qt.y0(53, (b14 >> 4) & 1);
        qt.y0(38, (b14 >> 6) & 1);
        qt.y0(15, (b14 >> 7) & 1);
        if (nt.a()) {
            int i17 = b15 & 255;
            if (i17 < 40) {
                i7 = 1000 - ((40 - i17) * 10);
            } else if (i17 >= 40 && i17 <= 200) {
                i7 = ((i17 - 40) * 10) + 1000;
            }
            u0.d.A3(i7);
        }
    }

    @Override // k0.lt
    public void W2() {
        h0.d.f2464c.d(this.f8072g);
        h0.d.f2462a.d(this.f8072g);
        qt.q0(this.f8070e);
        y0.g.f18094d.d(this.f8071f);
        y0.g.f18095e.d(this.f8071f);
        w0.e.f17815a.d(this.f8070e);
        w0.e.f17819e.d(this.f8070e);
        u0.c.f17374a.d(this.f8070e);
        u0.c.f17393t.d(this.f8070e);
        u0.c.f17392s.d(this.f8070e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 51, 5, iArr[0], this.f8076k[this.f8077l % 2], 37, 38, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8076k[this.f8077l % 2], 37, 38, 170);
            z.k.s(227, 51, 5, iArr[0], this.f8076k[this.f8077l % 2], 37, 38, 170);
            int i3 = this.f8077l + 1;
            this.f8077l = i3;
            this.f8077l = i3 % 2;
            return;
        }
        if (i2 == 1) {
            z.k.s(227, 198, 2, 2, 1);
            return;
        }
        if (i2 == 2) {
            if (T2(iArr, 1)) {
                z.k.s(227, 198, 2, 0, iArr[0]);
            }
        } else {
            if (i2 != 3) {
                return;
            }
            z.k.s(227, 144, 2, 65, 1);
            z.k.s(227, 144, 2, 65, 2);
            z.k.s(227, 144, 2, 65, 3);
        }
    }

    public void a3() {
        b3();
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 == 1) {
            int[] iArr = new int[6];
            iArr[0] = 194;
            iArr[1] = 4;
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[2] = 1;
            } else if (i6 == 65537) {
                iArr[2] = 2;
            } else if (i6 == 65538) {
                iArr[2] = 3;
            } else if (i6 == 0) {
                iArr[2] = 17;
            } else if (i6 == 1) {
                iArr[2] = 18;
            }
            iArr[3] = i4 & 255;
            iArr[4] = (i4 >> 8) & 255;
            iArr[5] = (i5 % 6) + 1;
            int[] iArr2 = new int[7];
            iArr2[0] = 227;
            while (i3 < 6) {
                int i7 = i3 + 1;
                iArr2[i7] = iArr[i3];
                i3 = i7;
            }
            z.k.s(iArr2);
            return;
        }
        if (i2 == 4) {
            int[] iArr3 = new int[8];
            iArr3[0] = 195;
            iArr3[1] = 6;
            if (n0.j4.f16464b == 8) {
                iArr3[3] = o0.e.C;
                iArr3[2] = o0.e.B;
            } else {
                iArr3[2] = o0.e.C;
                iArr3[3] = o0.e.B;
            }
            iArr3[4] = 0;
            iArr3[5] = 0;
            int i8 = o0.e.f16794r;
            iArr3[6] = i8 / 60;
            iArr3[7] = i8 % 60;
            int[] iArr4 = new int[9];
            iArr4[0] = 227;
            while (i3 < 8) {
                int i9 = i3 + 1;
                iArr4[i9] = iArr3[i3];
                i3 = i9;
            }
            z.k.s(iArr4);
            return;
        }
        if (i2 != 6) {
            if (i2 != 8 && i2 != 9) {
                int[] iArr5 = {195, 6, 0, 0, 0, 0, 0, 0};
                int[] iArr6 = new int[9];
                iArr6[0] = 227;
                while (i3 < 8) {
                    int i10 = i3 + 1;
                    iArr6[i10] = iArr5[i3];
                    i3 = i10;
                }
                z.k.s(iArr6);
                return;
            }
            int i11 = u0.b.s3;
            int i12 = u0.b.r3;
            int i13 = u0.b.t3;
            int[] iArr7 = {195, 6, i11 & 255, (i11 >> 8) & 255, i12 & 255, (i12 >> 8) & 255, i13 / 60, i13 % 60};
            int[] iArr8 = new int[9];
            iArr8[0] = 227;
            while (i3 < 8) {
                int i14 = i3 + 1;
                iArr8[i14] = iArr7[i3];
                i3 = i14;
            }
            z.k.s(iArr8);
        }
    }

    public void b3() {
        int i2 = 9;
        int i3 = 48;
        switch (u0.b.D) {
            case 0:
                i2 = 0;
                break;
            case 1:
                i2 = 1;
                i3 = i2;
                break;
            case 2:
                i3 = 64;
                i2 = 5;
                break;
            case 3:
                i2 = 11;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 2;
                } else if (i4 != 2) {
                    i2 = i4 == 3 ? 8 : 0;
                }
                i3 = n0.j4.f16464b != 8 ? 16 : 33;
                break;
            case 5:
                i2 = 7;
                break;
            case 6:
                i2 = 3;
                break;
            case 7:
                i2 = 6;
                i3 = 18;
                break;
            case 8:
            case 10:
                i2 = n0.j4.f16464b == 32 ? 8 : 9;
                i3 = 17;
                break;
            case 9:
            default:
                i2 = 12;
                break;
            case 11:
            case 12:
            case 13:
            case 14:
                i2 = 0;
                i3 = i2;
                break;
        }
        z.k.s(227, 192, 2, i2, i3);
    }

    public void c3() {
        int i2 = 0;
        int i3 = y0.f.C0;
        int[] iArr = {196, 1, i3};
        if (i3 > 30) {
            iArr[2] = 30;
        }
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = iArr[2] | 128;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i4 = i2 + 1;
            iArr2[i4] = iArr[i2];
            i2 = i4;
        }
        z.k.s(iArr2);
    }

    public final void d3(int i2) {
        Z0(0, new int[]{i2}, null, null);
    }

    public final void l3(int i2, String str) {
        int i3;
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[10];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = 7;
        iArr[3] = (byte) i2;
        int length = str.length() < 11 ? str.length() : 11;
        for (int i4 = 0; i4 < 6; i4++) {
            iArr[i4 + 4] = 255;
        }
        for (int i5 = 0; i5 < (length + 1) / 2; i5++) {
            int i6 = 15;
            int i7 = i5 * 2;
            if (charArray[i7] == '*') {
                i3 = 10;
            } else if (charArray[i7] == '#') {
                i3 = 11;
            } else {
                i3 = charArray[i7] == '+' ? 12 : charArray[i7] - '0';
            }
            int i8 = i7 + 1;
            if (i8 < length) {
                if (charArray[i8] == '*') {
                    i6 = 10;
                } else if (charArray[i8] == '#') {
                    i6 = 11;
                } else {
                    i6 = charArray[i8] == '+' ? 12 : charArray[i8] - '0';
                }
            }
            iArr[4 + i5] = i6 | (i3 << 4);
        }
        z.k.s(iArr);
    }
}
