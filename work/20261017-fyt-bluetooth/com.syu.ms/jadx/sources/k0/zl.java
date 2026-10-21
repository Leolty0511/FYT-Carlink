package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class zl extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12838c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12839d = {new int[]{2, 13}, new int[]{3, 2}, new int[]{4, 7}, new int[]{5, 8}, new int[]{6, 12}, new int[]{8, 3}, new int[]{9, 4}, new int[]{10, 29}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f12840e = new byte[1024];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12841f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12842g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12843h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12844i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12845j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12846k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12847l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f12848m = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(zl.this.f12846k);
            zl.this.f12844i = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zl zlVar = zl.this;
            int i2 = zlVar.f12844i - 1;
            zlVar.f12844i = i2;
            if (i2 <= 0) {
                l0.b0.p0(zlVar.f12846k);
                zl.this.f12844i = 5;
            } else {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                if (u0.b.f17306a0 == 1) {
                    z.k.s(227, 144, 1, 48);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.K();
        }
    }

    public static void b3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (b2 ^ 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 1;
        mtVar.f8322q = 1;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f12845j, 1);
        w0.e.f17815a.a(this.f12847l, 1);
        w0.e.f17819e.a(this.f12847l, 1);
        u0.c.f17393t.a(this.f12847l, 1);
        u0.c.f17392s.a(this.f12847l, 1);
        u0.c.f17374a.a(this.f12847l, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2 = bArr[i2];
        if (b2 == 29) {
            int i8 = i2 + 2;
            int i9 = bArr[i8] & 255;
            int i10 = i2 + 3;
            int i11 = bArr[i10] & 255;
            int i12 = i2 + 4;
            int i13 = bArr[i12] & 255;
            int i14 = i2 + 5;
            int i15 = bArr[i14] & 255;
            if (i9 == 0 && i11 == 0 && i13 == 0 && i15 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i9 || l0.c0.f13014h != i11 || l0.c0.f13015i != i13 || l0.c0.f13016j != i15) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i9;
            l0.c0.f13014h = i11;
            l0.c0.f13015i = i13;
            l0.c0.f13016j = i15;
            u0.d.D2(l0.c0.K1(bArr[i8] & 255));
            u0.d.E2(l0.c0.K1(bArr[i10] & 255));
            u0.d.F2(l0.c0.K1(bArr[i12] & 255));
            u0.d.G2(l0.c0.K1(bArr[i14] & 255));
            return;
        }
        if (b2 == 30) {
            u0.d.R2(l0.c0.K1(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.K1(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.K1(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.K1(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 35) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f12838c = b3 & 255;
            int i16 = 0;
            while (true) {
                iArr = this.f12839d;
                if (i16 >= iArr.length) {
                    break;
                }
                int i17 = this.f12838c;
                if (i17 == iArr[i16][0]) {
                    if (i17 == 0) {
                        break;
                    }
                    this.f12837b = i16;
                    break;
                }
                i16++;
            }
            int i18 = b4 & 255;
            if (i18 == 1) {
                if (i16 < iArr.length) {
                    l0.b0.l0(iArr[i16][1], 0);
                    return;
                }
                return;
            } else {
                if (i18 == 0) {
                    int i19 = this.f12837b;
                    if (i19 < iArr.length) {
                        i4 = 255;
                        if (i19 != 255) {
                            l0.b0.l0(iArr[i19][1], 1);
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f12837b = i4;
                    return;
                }
                return;
            }
        }
        if (b2 == 36) {
            byte b5 = bArr[i2 + 2];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b5 >> 7) & 1);
                qt.y0(2, (b5 >> 6) & 1);
            } else {
                qt.y0(1, (b5 >> 6) & 1);
                qt.y0(2, (b5 >> 7) & 1);
            }
            qt.y0(3, (b5 >> 4) & 1);
            qt.y0(4, (b5 >> 5) & 1);
            qt.y0(5, (b5 >> 3) & 1);
            qt.y0(0, (b5 >> 2) & 1);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 12300);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 != 85) {
            return;
        }
        int i20 = i2 + 2;
        int i21 = bArr[i20] & 255;
        int i22 = i2 + 3;
        int i23 = bArr[i22] & 255;
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            i21 = bArr[i22] & 255;
            i23 = bArr[i20] & 255;
        }
        if (i21 == 16) {
            qt.y0(27, -2);
        } else if (i21 == 80) {
            qt.y0(27, -3);
        } else if (i21 <= 16 || i21 >= 80) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, i21);
        }
        if (i23 == 16) {
            qt.y0(28, -2);
        } else if (i23 == 80) {
            qt.y0(28, -3);
        } else if (i23 <= 16 || i23 >= 80) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, i23);
        }
        int i24 = i2 + 4;
        qt.y0(21, (bArr[i24] >> 0) & 15);
        switch ((bArr[i24] >> 4) & 15) {
            case 1:
                i5 = 0;
                i6 = 0;
                i7 = 1;
                break;
            case 2:
                i5 = 0;
                i7 = 1;
                i6 = i7;
                break;
            case 3:
                i5 = 0;
                i7 = 0;
                i6 = 1;
                break;
            case 4:
                i7 = 0;
                i5 = 1;
                i6 = 1;
                break;
            case 5:
                i6 = 0;
                i5 = 1;
                i7 = 1;
                break;
            case 6:
                i7 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 7:
                i5 = 1;
                i7 = i5;
                i6 = i7;
                break;
            default:
                i5 = 0;
                i7 = i5;
                i6 = i7;
                break;
        }
        qt.y0(18, i5);
        qt.y0(19, i7);
        qt.y0(20, i6);
        int i25 = i2 + 5;
        qt.y0(29, (bArr[i25] >> 0) & 3);
        qt.y0(30, (bArr[i25] >> 4) & 3);
        int i26 = i2 + 6;
        qt.y0(13, (bArr[i26] >> 0) & 1);
        qt.y0(11, (bArr[i26] >> 1) & 1);
        qt.y0(14, (bArr[i26] >> 2) & 1);
        qt.y0(15, (bArr[i26] >> 7) & 1);
        qt.y0(16, (bArr[i26] >> 6) & 1);
        qt.y0(53, (bArr[i26] >> 4) & 1);
        qt.y0(12, (bArr[i2 + 7] >> 0) & 3);
        int i27 = bArr[i2 + 9] & 255;
        if (i27 == 255) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i27 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f12845j);
        l0.b0.p0(this.f12846k);
        w0.e.f17815a.d(this.f12847l);
        w0.e.f17819e.d(this.f12847l);
        u0.c.f17393t.d(this.f12847l);
        u0.c.f17392s.d(this.f12847l);
        u0.c.f17374a.d(this.f12847l);
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
        if (i2 == 0) {
            a3(iArr[0]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 144, 1, iArr[0]);
        }
    }

    public final void a3(int i2) {
        int i3 = (this.f12848m + 1) % 2;
        this.f12848m = i3;
        int[] iArr = new int[8];
        iArr[0] = 227;
        iArr[1] = 51;
        iArr[2] = 5;
        byte b2 = (byte) i2;
        iArr[3] = b2;
        iArr[4] = i3 == 0 ? 34 : 204;
        iArr[5] = 37;
        iArr[6] = 0;
        iArr[7] = 170;
        z.k.s(iArr);
        int[] iArr2 = new int[8];
        iArr2[0] = 227;
        iArr2[1] = 51;
        iArr2[2] = 5;
        iArr2[3] = b2;
        iArr2[4] = this.f12848m == 0 ? 34 : 204;
        iArr2[5] = 37;
        iArr2[6] = 0;
        iArr2[7] = 170;
        z.k.s(iArr2);
        int[] iArr3 = new int[8];
        iArr3[0] = 227;
        iArr3[1] = 51;
        iArr3[2] = 5;
        iArr3[3] = b2;
        iArr3[4] = this.f12848m == 0 ? 34 : 204;
        iArr3[5] = 37;
        iArr3[6] = 0;
        iArr3[7] = 170;
        z.k.s(iArr3);
        byte[] bArr = new byte[9];
        bArr[0] = 46;
        bArr[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr[2] = 5;
        bArr[3] = b2;
        bArr[4] = (byte) (this.f12848m == 0 ? 34 : 204);
        bArr[5] = 37;
        bArr[6] = 0;
        bArr[7] = -86;
        bArr[8] = 0;
        b3(bArr);
        byte[] bArr2 = new byte[9];
        bArr2[0] = 46;
        bArr2[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr2[2] = 5;
        bArr2[3] = b2;
        bArr2[4] = (byte) (this.f12848m == 0 ? 34 : 204);
        bArr2[5] = 37;
        bArr2[6] = 0;
        bArr2[7] = -86;
        bArr2[8] = 0;
        b3(bArr2);
        byte[] bArr3 = new byte[9];
        bArr3[0] = 46;
        bArr3[1] = DhcpPacket.DHCP_LEASE_TIME;
        bArr3[2] = 5;
        bArr3[3] = b2;
        bArr3[4] = (byte) (this.f12848m == 0 ? 34 : 204);
        bArr3[5] = 37;
        bArr3[6] = 0;
        bArr3[7] = -86;
        bArr3[8] = 0;
        b3(bArr3);
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
            a.i.a0(100L);
            return;
        }
        if (this.f12841f + bArr.length > 1024) {
            this.f12841f = 0;
            this.f12842g = 0;
            this.f12843h = 0;
        }
        System.arraycopy(bArr, 0, this.f12840e, this.f12841f, bArr.length);
        int length = this.f12841f + bArr.length;
        this.f12841f = length;
        int i5 = this.f12843h;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f12840e[1];
            int i6 = 2;
            while (true) {
                i4 = this.f12843h;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f12840e[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f12840e;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f12842g = this.f12843h + 1;
            } else {
                this.f12842g = 1;
            }
            this.f12843h = 0;
        }
        int i7 = this.f12841f - 2;
        while (true) {
            i2 = this.f12842g;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f12840e;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f12843h = i8;
                int i9 = i8 + i2 + 3;
                this.f12843h = i9;
                if (i9 >= this.f12841f) {
                    this.f12843h = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f12843h;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f12840e[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f12840e;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f12842g;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f12842g = this.f12843h;
                } else {
                    this.f12842g++;
                }
                this.f12843h = 0;
            }
            this.f12842g++;
        }
        if (i2 != 0) {
            int i12 = this.f12841f - i2;
            this.f12841f = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f12840e;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f12842g = 0;
        }
    }
}
