package k0;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class r1 extends lt {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f9740j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f9741k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f9742l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f9743m = 255;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f9744n = 255;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static Runnable f9745o = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9746b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9747c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9748d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f9749e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, -1}, new int[]{4, -1}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 2}, new int[]{11, 13}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9750f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9751g = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9752h = new d();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9753i = new e();

    public class a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            int i2 = r1.f9740j;
            if (i2 > 0) {
                r1.f9740j = i2 - 1;
                r1.c3();
            }
            if (r1.f9740j == 0) {
                r1.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 3, 181, time.hour, time.minute, time.second);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.this.i3((byte) -30, u0.b.i3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.this.i3((byte) -28, u0.b.j3);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r1.this.i3((byte) -29, u0.b.k3);
        }
    }

    public static void a3() {
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = b3();
        int i4 = u0.b.D;
        if (i4 == 1) {
            iArr[3] = 48;
            int i5 = w0.d.f17798j;
            if (i5 % 6 != 0 || i5 == 0) {
                iArr[4] = ((i5 & 255) % 6) + 48;
            } else {
                iArr[4] = 54;
            }
            iArr[5] = 32;
            int i6 = w0.d.f17796h;
            if (i6 - 65536 == 0 || 1 == i6 - 65536 || 2 == i6 - 65536) {
                int i7 = w0.d.f17797i;
                iArr[6] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[7] = ((i7 % 10000) / 1000) + 48;
                iArr[8] = ((i7 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i7 % 100) / 10) + 48;
                iArr[11] = (i7 % 10) + 48;
            } else {
                int i8 = w0.d.f17797i;
                iArr[6] = i8 / 10000 == 0 ? (i8 / 10000) + 32 : (i8 / 10000) + 48;
                iArr[7] = (i8 % 10000) / 1000 == 0 ? ((i8 % 10000) / 1000) + 32 : ((i8 % 10000) / 1000) + 48;
                iArr[8] = ((i8 % 1000) / 100) + 48;
                iArr[9] = ((i8 % 100) / 10) + 48;
                iArr[10] = (i8 % 10) + 48;
            }
        } else if (i4 != 4) {
            if (i4 != 6) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i9 = u0.b.r3 % 10000;
                    iArr[4] = (i9 / 1000) + 48;
                    int i10 = (i9 % 100) / 10;
                    int i11 = i9 % 1000;
                    if (i10 != 0) {
                        i11 /= 10;
                    }
                    iArr[5] = i11 + 48;
                    iArr[6] = i10 + 48;
                    iArr[7] = (i9 % 10) + 48;
                    int i12 = u0.b.t3;
                    int i13 = (i12 / 60) % 60;
                    iArr[8] = 32;
                    iArr[9] = (i13 / 10) + 48;
                    iArr[10] = (i13 % 10) + 48;
                    iArr[11] = 32;
                    int i14 = i12 % 60;
                    iArr[12] = (i14 / 10) + 48;
                    iArr[13] = (i14 % 10) + 48;
                }
            } else if (d1.d.f1570c == 1) {
                int i15 = d1.d.f1572e;
                if (i15 / 10 > 0) {
                    iArr[3] = (i15 / 10) + 48;
                }
                iArr[4] = (i15 % 10) + 48;
                iArr[5] = 45;
                int i16 = d1.d.f1571d / 100;
                int i17 = i16 / 10000;
                if (i17 > 0) {
                    iArr[6] = i17 + 48;
                }
                iArr[7] = ((i16 % 10000) / 1000) + 48;
                iArr[8] = ((i16 % 1000) / 100) + 48;
                iArr[9] = 46;
                iArr[10] = ((i16 % 100) / 10) + 48;
                iArr[11] = ((i16 % 10) / 1) + 48;
            }
        } else if (o0.e.C != 0) {
            iArr[3] = 84;
            int i18 = o0.e.B % 10000;
            iArr[4] = (i18 / 1000) + 48;
            int i19 = (i18 % 100) / 10;
            int i20 = i18 % 1000;
            if (i19 != 0) {
                i20 /= 10;
            }
            iArr[5] = i20 + 48;
            iArr[6] = i19 + 48;
            iArr[7] = (i18 % 10) + 48;
            int i21 = o0.e.f16794r;
            int i22 = (i21 / 60) % 60;
            iArr[8] = 32;
            iArr[9] = (i22 / 10) + 48;
            iArr[10] = (i22 % 10) + 48;
            iArr[11] = 32;
            int i23 = i21 % 60;
            iArr[12] = (i23 / 10) + 48;
            iArr[13] = (i23 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i24 = i2 + 1;
            iArr2[i24] = (byte) iArr[i2];
            i2 = i24;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:5:0x000f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
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
                b2 = 10;
                break;
            case 3:
                b2 = 19;
                break;
            case 4:
                int i3 = o0.e.H;
                if (i3 != 1) {
                    b2 = (i3 != 2 && i3 != 3) ? (byte) 0 : (byte) 13;
                } else {
                    b2 = 6;
                }
                break;
            case 5:
                b2 = DhcpPacket.DHCP_HOST_NAME;
                break;
            case 6:
                b2 = 8;
                break;
            case 7:
                int i4 = f9741k;
                if (i4 != 13) {
                    b2 = i4 != 14 ? (byte) 0 : (byte) 22;
                } else {
                    b2 = 21;
                }
                break;
            case 8:
            case 9:
            case 10:
                b2 = 13;
                break;
            case 11:
                b2 = 1;
                break;
            case 12:
                b2 = -123;
                break;
            case 13:
                b2 = 21;
                break;
            default:
                b2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return (byte) 16;
        }
        return b2;
    }

    public static void c3() {
        int i2;
        int[] iArr = new int[15];
        f9740j = 4;
        int i3 = 0;
        for (int i4 = 0; i4 < 15; i4++) {
            iArr[i4] = 32;
        }
        iArr[0] = 13;
        iArr[1] = 225;
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

    public static void d3(int i2) {
        if (i2 == 3) {
            g3(7);
            return;
        }
        if (i2 == 4) {
            g3(8);
            return;
        }
        if (i2 != 29 && i2 != 36) {
            if (i2 != 37) {
                return;
            }
            g3(2);
        } else if (f9741k == 2) {
            g3(2);
        } else {
            g3(1);
        }
    }

    public static void f3(int i2) {
        f9743m = i2;
        boolean z2 = i2 == 1 || i2 == 2;
        if (f9744n != i2) {
            if (z2) {
                qt.y0(1015, 1);
            } else {
                qt.y0(1015, 0);
            }
        }
        f9744n = f9743m;
    }

    public static void g3(int i2) {
        int[] iArr = {0, 0, 0, 0};
        int i3 = iArr[2];
        iArr[2] = i2;
        if (i2 > 7) {
            iArr[2] = 7;
            iArr[3] = 1;
        } else {
            iArr[3] = 0;
        }
        z.k.s(227, 2, -84, iArr[2], iArr[3]);
        iArr[0] = i3;
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
        qt.z(this.f9750f);
        u0.c.f17388o.a(this.f9751g, 1);
        u0.c.f17389p.a(this.f9752h, 1);
        u0.c.f17390q.a(this.f9753i, 1);
        if (nt.a()) {
            qt.z(f9745o);
            w0.e.f17815a.a(f9745o, 1);
            w0.e.f17819e.a(f9745o, 1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2 + 1];
        if (b2 == -92) {
            int i5 = i2 + 2;
            qt.y0(11, bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(15, (bArr[i2 + 3] >> 6) & 1);
            qt.y0(13, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(14, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(12, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
            qt.y0(16, bArr[i2 + 11] & 255);
            int i6 = i2 + 12;
            qt.y0(17, bArr[i6] & 255);
            f9742l = bArr[i5] & DhcpPacket.DHCP_DOMAIN_NAME;
            f9741k = bArr[i6] & 255;
            return;
        }
        if (b2 == -79) {
            if (nt.a()) {
                f3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        if (b2 == -74) {
            qt.y0(18, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == -32) {
            e3(bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 18) {
            byte b3 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (b3 >> 6) & 1);
                qt.y0(2, (b3 >> 7) & 1);
            } else {
                qt.y0(1, (b3 >> 7) & 1);
                qt.y0(2, (b3 >> 6) & 1);
            }
            qt.y0(3, (b3 >> 5) & 1);
            qt.y0(4, (b3 >> 4) & 1);
            qt.y0(5, (b3 >> 3) & 1);
            qt.y0(0, (b3 >> 2) & 1);
            return;
        }
        if (b2 != 114) {
            return;
        }
        qt.y0(10, bArr[i2 + 3] & 255);
        if (nt.a()) {
            if ((bArr[i2 + 2] & 255 & 32) == 32) {
                u0.d.C2(1);
            } else {
                u0.d.C2(0);
            }
            this.f9747c = bArr[i2 + 4] & 255;
            int i7 = 0;
            while (true) {
                iArr = this.f9749e;
                if (i7 >= iArr.length) {
                    break;
                }
                int i8 = this.f9747c;
                if (i8 == iArr[i7][0]) {
                    if (i8 == 0) {
                        break;
                    }
                    this.f9746b = i7;
                    break;
                }
                i7++;
            }
            int i9 = this.f9747c;
            if (i9 == 0) {
                if (i9 == 0) {
                    int i10 = this.f9746b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f9746b = 255;
                    return;
                }
                return;
            }
            if (i7 < iArr.length) {
                if ((iArr[i7][1] == 3 || iArr[i7][1] == 4 || iArr[i7][1] == 29 || iArr[i7][1] == 32 || iArr[i7][1] == 33) && ((i4 = u0.b.D) == 13 || i4 == 7)) {
                    d3(iArr[i7][1]);
                } else {
                    l0.b0.l0(iArr[i7][1], 0);
                }
            }
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9750f);
        u0.c.f17388o.d(this.f9751g);
        u0.c.f17389p.d(this.f9752h);
        u0.c.f17390q.d(this.f9753i);
        qt.q0(f9745o);
        w0.e.f17815a.d(f9745o);
        w0.e.f17819e.d(f9745o);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 19) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0 && T2(iArr, 1)) {
            int i3 = iArr[0];
            if (i3 == 1) {
                z.k.s(227, 2, 172, 1, 0);
                return;
            }
            if (i3 == 2) {
                z.k.s(227, 2, 172, 2, 0);
            } else if (i3 == 3) {
                z.k.s(227, 2, 172, 7, 0);
            } else {
                if (i3 != 4) {
                    return;
                }
                z.k.s(227, 2, 172, 7, 1);
            }
        }
    }

    public final void e3(int i2) {
        switch (i2) {
            case 32:
                o1.u.x0();
                if (i2 == 32) {
                    w0.f.J(28, 30);
                }
                break;
            case 33:
                o1.u.x0();
                if (i2 == 32) {
                    w0.f.J(28, 27);
                }
                break;
            case 34:
                o1.u.i();
                break;
            case 35:
                o1.u.q();
                break;
            case 36:
                o1.u.j();
                break;
        }
    }

    public final void i3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }
}
