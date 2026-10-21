package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class f7 extends lt implements o1.q {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5080f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5085k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f5076b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5077c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5078d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5079e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5081g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f5082h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 2}, new int[]{11, 2}, new int[]{12, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, -1}, new int[]{17, 3}, new int[]{18, 4}, new int[]{32, 62}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5083i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5084j = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5086l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5087m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f5088n = {new int[]{1, 25}, new int[]{6, 6}, new int[]{9, 12}, new int[]{16, 16}, new int[]{32, 1}, new int[]{36, 54}, new int[]{43, 5}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{95, 13}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f5089o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f5090p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f5091q = {34, 204};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5092r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f5093s = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f7 f7Var = f7.this;
            f7Var.f5083i = 0;
            f7Var.f5084j = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.e2 == 1) {
                o1.x.x(nt.f8643f, 98, 1);
                u0.b.e2 = 0;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 2, -45, 0, 0);
        }
    }

    public static int a3(int i2) {
        int i3 = i2 / 25;
        if (i3 > 10) {
            return 10;
        }
        return i3;
    }

    public static void e3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = bArr[0];
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (((byte) (b2 & 255)) ^ 255);
        z.k.q(bArr);
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
            case 33:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[102] & 15) > 0) {
                        c3(1);
                    }
                } else if ((nt.f8645g[102] & 15) == 0) {
                    c3(20);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[104] >> 1) & 1) == 1) {
                        c3(16);
                    }
                } else if (((nt.f8645g[104] >> 1) & 1) == 0) {
                    c3(16);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if ((nt.f8645g[104] & 1) == 1) {
                        c3(2);
                    }
                } else if ((nt.f8645g[104] & 1) == 0) {
                    c3(2);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[104] >> 7) & 1) == 1) {
                        c3(3);
                    }
                } else if (((nt.f8645g[104] >> 7) & 1) == 0) {
                    c3(3);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[104] >> 6) & 1) == 1) {
                        c3(4);
                    }
                } else if (((nt.f8645g[104] >> 6) & 1) == 0) {
                    c3(4);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (((nt.f8645g[105] >> 1) & 1) == 0) {
                        c3(6);
                    }
                    break;
                } else if (iArr[1] == 1 && ((nt.f8645g[105] >> 1) & 1) == 1) {
                    c3(6);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    c3(21);
                } else {
                    c3(20);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    c3(10);
                } else {
                    c3(9);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    c3(12);
                } else {
                    c3(11);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8310e = 0;
        mtVar.f8314i = 0;
        mtVar.f8320o = 1;
        mtVar.f8322q = 1;
        int i2 = nt.f8637c;
        if (i2 == 2) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8312g = 0;
            mtVar.f8311f = 0;
            mtVar.f8310e = 1;
        } else if (i2 == 1) {
            mtVar.f8312g = 1;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8311f = 0;
            mtVar.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
        } else {
            mtVar.f8312g = 0;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            mtVar.f8311f = 1;
            mtVar.f8314i = 1;
        }
        u0.c.f17386m.a(this.f5089o, 1);
        if (nt.a()) {
            qt.z(l0.g0.f13049e);
            y0.g.f18094d.a(l0.g0.f13052h, 0);
            y0.g.f18095e.a(l0.g0.f13052h, 0);
            w0.e.f17815a.a(l0.g0.f13049e, 1);
            w0.e.f17819e.a(l0.g0.f13049e, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2 = bArr[i2 + 1];
        if (b2 == 18) {
            int i6 = nt.f8637c;
            if (i6 != 1 && i6 != 4 && i6 != 5 && !o1.q0.v()) {
                byte b3 = bArr[i2 + 5];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b3 >> 5) & 1);
                    qt.y0(2, (b3 >> 6) & 1);
                } else {
                    qt.y0(1, (b3 >> 6) & 1);
                    qt.y0(2, (b3 >> 5) & 1);
                }
                qt.y0(3, (b3 >> 4) & 1);
                qt.y0(4, (b3 >> 3) & 1);
                return;
            }
            byte b4 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b4 >> 6) & 1);
                qt.y0(2, (b4 >> 7) & 1);
            } else {
                qt.y0(1, (b4 >> 7) & 1);
                qt.y0(2, (b4 >> 6) & 1);
            }
            qt.y0(3, (b4 >> 5) & 1);
            qt.y0(4, (b4 >> 4) & 1);
            qt.y0(5, (b4 >> 3) & 1);
            qt.y0(0, (b4 >> 2) & 1);
            return;
        }
        if (b2 == 50) {
            qt.y0(1032, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
            return;
        }
        if (b2 == 33) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f5086l = b5 & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f5088n;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f5086l;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f5085k = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f5087m;
            if (i9 != b6) {
                if ((i9 == 1 || i9 == 2) && b6 == 0) {
                    int i10 = this.f5085k;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 0);
                        l0.b0.l0(this.f5088n[this.f5085k][1], 1);
                    }
                    this.f5085k = 255;
                }
                this.f5087m = b6;
                return;
            }
            return;
        }
        int i11 = 7;
        if (b2 == 34) {
            byte b7 = bArr[i2 + 2];
            byte b8 = bArr[i2 + 3];
            if (b7 != 1) {
                if (b7 == 2 && b8 != (i4 = this.f5084j)) {
                    if (b8 > i4) {
                        for (int i12 = 0; i12 < b8 - this.f5084j; i12++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (b8 < i4) {
                        for (int i13 = 0; i13 < this.f5084j - b8; i13++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                    this.f5084j = b8;
                    return;
                }
                return;
            }
            int i14 = this.f5083i;
            if (b8 != i14) {
                if (b8 > i14) {
                    for (int i15 = 0; i15 < b8 - this.f5083i; i15++) {
                        l0.b0.l0(7, 0);
                    }
                    l0.b0.l0(7, 1);
                } else if (b8 < i14) {
                    for (int i16 = 0; i16 < this.f5083i - b8; i16++) {
                        l0.b0.l0(8, 0);
                    }
                    l0.b0.l0(8, 1);
                }
                this.f5083i = b8;
                return;
            }
            return;
        }
        if (b2 == 114) {
            if (nt.a()) {
                this.f5081g = bArr[i2 + 4] & 255;
                int i17 = 0;
                while (true) {
                    iArr2 = this.f5082h;
                    if (i17 >= iArr2.length) {
                        break;
                    }
                    int i18 = this.f5081g;
                    if (i18 == iArr2[i17][0]) {
                        if (i18 == 0) {
                            break;
                        }
                        this.f5080f = i17;
                        break;
                    }
                    i17++;
                }
                if (this.f5081g != 0 && (i5 = this.f5080f) < iArr2.length) {
                    l0.b0.l0(iArr2[i5][1], 0);
                    l0.b0.l0(this.f5082h[this.f5080f][1], 1);
                }
                qt.p(bArr[i2 + 6] & 255, bArr[i2 + 7] & 255, 140);
                u0.d.R2(a3(bArr[i2 + 8] & 255));
                u0.d.S2(a3(bArr[i2 + 9] & 255));
                u0.d.T2(a3(bArr[i2 + 10] & 255));
                u0.d.U2(a3(bArr[i2 + 11] & 255));
                u0.d.D2(a3(bArr[i2 + 12] & 255));
                u0.d.E2(a3(bArr[i2 + 13] & 255));
                u0.d.F2(a3(bArr[i2 + 14] & 255));
                u0.d.G2(a3(bArr[i2 + 15] & 255));
                return;
            }
            return;
        }
        if (b2 != 115) {
            return;
        }
        byte b9 = bArr[i2 + 2];
        qt.y0(1014, (b9 >> 7) & 1);
        qt.y0(10, (b9 >> 6) & 1);
        qt.y0(16, (b9 >> 5) & 1);
        qt.y0(12, (b9 >> 4) & 1);
        qt.y0(13, (b9 >> 3) & 1);
        qt.y0(14, (b9 >> 2) & 1);
        byte b10 = bArr[i2 + 3];
        qt.y0(53, (b10 >> 7) & 1);
        qt.y0(11, (b10 >> 6) & 1);
        qt.y0(65, (b10 >> 4) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            byte b11 = bArr[i2 + 5];
            if (b11 == -1) {
                qt.y0(27, -3);
            } else if (b11 == 0) {
                qt.y0(27, -1);
            } else if (b11 != 1) {
                qt.y0(27, b11 & 255);
            } else {
                qt.y0(27, -2);
            }
            byte b12 = bArr[i2 + 4];
            if (b12 == -1) {
                qt.y0(28, -3);
            } else if (b12 == 0) {
                qt.y0(28, -1);
            } else if (b12 != 1) {
                qt.y0(28, b12 & 255);
            } else {
                qt.y0(28, -2);
            }
        } else {
            byte b13 = bArr[i2 + 4];
            if (b13 == -1) {
                qt.y0(27, -3);
            } else if (b13 == 0) {
                qt.y0(27, -1);
            } else if (b13 != 1) {
                qt.y0(27, b13 & 255);
            } else {
                qt.y0(27, -2);
            }
            byte b14 = bArr[i2 + 5];
            if (b14 == -1) {
                qt.y0(28, -3);
            } else if (b14 == 0) {
                qt.y0(28, -1);
            } else if (b14 != 1) {
                qt.y0(28, b14 & 255);
            } else {
                qt.y0(28, -2);
            }
        }
        byte b15 = bArr[i2 + 6];
        qt.y0(20, (b15 >> 6) & 1);
        qt.y0(19, (b15 >> 5) & 1);
        qt.y0(18, (b15 >> 4) & 1);
        int i19 = b15 & DhcpPacket.DHCP_DOMAIN_NAME;
        if (i19 < 0) {
            i11 = 0;
        } else if (i19 <= 7) {
            i11 = i19;
        }
        qt.y0(21, i11);
    }

    @Override // k0.lt
    public void W2() {
        z.c.f18183c.d(this.f5090p);
        qt.q0(l0.g0.f13049e);
        y0.g.f18094d.d(l0.g0.f13052h);
        y0.g.f18095e.d(l0.g0.f13052h);
        w0.e.f17815a.d(l0.g0.f13049e);
        w0.e.f17819e.d(l0.g0.f13049e);
        u0.c.f17386m.d(this.f5089o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 106) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 49) {
            z.k.s(227, 2, -45, (byte) iArr[0], 0);
        }
        if (i2 == 50) {
            if (iArr != null && iArr.length > 0) {
                e3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f5091q[this.f5092r % 2], 37, 13, -86, 0});
                e3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f5091q[this.f5092r % 2], 37, 13, -86, 0});
                e3(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f5091q[this.f5092r % 2], 37, 13, -86, 0});
                int i3 = this.f5092r + 1;
                this.f5092r = i3;
                this.f5092r = i3 % 2;
            }
            if (nt.W != 1) {
                b3(iArr[0]);
                return;
            }
            int i4 = iArr[0];
            if (i4 == 2) {
                b3(11);
                return;
            }
            if (i4 == 3) {
                b3(12);
                return;
            }
            if (i4 == 11) {
                b3(2);
                return;
            } else if (i4 != 12) {
                b3(iArr[0]);
                return;
            } else {
                b3(3);
                return;
            }
        }
        switch (i2) {
            case 0:
                b3(0);
                break;
            case 1:
                b3(1);
                break;
            case 2:
                if (nt.W != 0) {
                    b3(11);
                } else {
                    b3(2);
                }
                break;
            case 3:
                if (nt.W != 0) {
                    b3(12);
                } else {
                    b3(3);
                }
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
                if (nt.W != 0) {
                    b3(2);
                } else {
                    b3(11);
                }
                break;
            case 12:
                if (nt.W != 0) {
                    b3(3);
                } else {
                    b3(12);
                }
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
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f5077c + bArr.length > 1024) {
            this.f5077c = 0;
            this.f5078d = 0;
            this.f5079e = 0;
        }
        System.arraycopy(bArr, 0, this.f5076b, this.f5077c, bArr.length);
        int length = this.f5077c + bArr.length;
        this.f5077c = length;
        int i5 = this.f5079e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f5076b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f5079e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f5076b[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f5076b;
            if (b3 == bArr2[i4]) {
                d3(bArr2, 1, bArr2[2] + 2);
                this.f5078d = this.f5079e + 1;
            } else {
                this.f5078d = 2;
            }
            this.f5079e = 0;
        }
        int i7 = this.f5077c - 2;
        while (true) {
            i2 = this.f5078d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f5076b;
            if (bArr3[i2] == 46) {
                if (this.f5079e > 512) {
                    this.f5079e = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 3;
                    this.f5079e = i8;
                    if (i8 >= this.f5077c) {
                        this.f5079e = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i9 = i2 + 2;
                    while (true) {
                        i3 = this.f5079e;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f5076b[i9]);
                        i9++;
                    }
                    byte b5 = (byte) (b4 ^ 255);
                    byte[] bArr4 = this.f5076b;
                    if (b5 == bArr4[i3]) {
                        int i10 = this.f5078d;
                        d3(bArr4, i10 + 1, bArr4[i10 + 2] + 2);
                        this.f5078d = this.f5079e;
                    } else {
                        this.f5078d++;
                    }
                    this.f5079e = 0;
                }
            }
            this.f5078d++;
        }
        if (i2 != 0) {
            int i11 = this.f5077c - i2;
            this.f5077c = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f5076b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f5078d = 0;
        }
    }

    public final void b3(int i2) {
        z.k.s(227, 2, -45, (byte) i2, 0);
        o1.l.a().postDelayed(this.f5093s, 200L);
    }

    public final void c3(int i2) {
        Z0(50, new int[]{i2}, null, null);
    }

    public void d3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        if (bArr[i2] != 85) {
            return;
        }
        int i7 = i2 + 2;
        byte b2 = bArr[i7];
        int i8 = i2 + 3;
        byte b3 = bArr[i8];
        byte b4 = bArr[i2 + 4];
        byte b5 = bArr[i2 + 5];
        byte b6 = bArr[i2 + 6];
        byte b7 = bArr[i2 + 7];
        byte b8 = bArr[i2 + 9];
        int i9 = 0;
        qt.y0(100, b2 & 255);
        qt.y0(101, b3 & 255);
        qt.y0(102, b4 & 255);
        qt.y0(103, b5 & 255);
        qt.y0(104, b6 & 255);
        qt.y0(105, b7 & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b2 = bArr[i8];
            b3 = bArr[i7];
        }
        int i10 = b2 & 255;
        if (i10 == 16) {
            qt.y0(27, -2);
        } else if (i10 == 80) {
            qt.y0(27, -3);
        } else if (i10 < 16) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, b2);
        }
        int i11 = b3 & 255;
        if (i11 == 16) {
            qt.y0(28, -2);
        } else if (i11 == 80) {
            qt.y0(28, -3);
        } else if (i11 < 16) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, b3);
        }
        qt.y0(21, b4 & DhcpPacket.DHCP_DOMAIN_NAME);
        switch ((b4 >> 4) & 15) {
            case 1:
                i4 = 1;
                i5 = 0;
                i6 = 0;
                break;
            case 2:
                i4 = 1;
                i6 = 1;
                i5 = 0;
                break;
            case 3:
                i6 = 1;
                i5 = 0;
                i4 = 0;
                break;
            case 4:
                i5 = 1;
                i6 = 1;
                i4 = 0;
                break;
            case 5:
                i5 = 1;
                i4 = 1;
                i6 = 0;
                break;
            case 6:
                i5 = 1;
                i4 = 0;
                i6 = i4;
                break;
            case 7:
                i5 = 1;
                i4 = i5;
                i6 = i4;
                break;
            default:
                i5 = 0;
                i4 = i5;
                i6 = i4;
                break;
        }
        qt.y0(18, i5);
        qt.y0(19, i4);
        qt.y0(20, i6);
        qt.y0(13, b6 & 1);
        qt.y0(11, (b6 >> 1) & 1);
        qt.y0(14, (b6 >> 2) & 1);
        qt.y0(65, (b6 >> 5) & 1);
        qt.y0(12, (b7 >> 0) & 3);
        int i12 = b8 * 10;
        if (i12 < 400) {
            i9 = 1000 - (400 - i12);
        } else if (i12 >= 400 && i12 <= 1250) {
            i9 = (i12 + 1000) - 400;
        }
        if (i9 > 600) {
            u0.d.A3(i9);
        }
    }
}
