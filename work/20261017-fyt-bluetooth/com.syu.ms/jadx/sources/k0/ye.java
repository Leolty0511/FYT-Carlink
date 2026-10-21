package k0;

import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;

/* JADX INFO: loaded from: classes2.dex */
public class ye extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12457c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f12458d = {new int[]{18, 3}, new int[]{19, 4}, new int[]{20, 7}, new int[]{21, 8}, new int[]{22, 12}, new int[]{23, 13}, new int[]{33, 0}, new int[]{34, 1}, new int[]{35, 5}, new int[]{36, 6}, new int[]{37, 2}, new int[]{38, 26}, new int[]{39, 18}, new int[]{40, 12}, new int[]{41, 24}, new int[]{42, 18}, new int[]{43, 38}, new int[]{44, 3}, new int[]{45, 4}, new int[]{80, 18}, new int[]{81, 26}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12459e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12460f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12461g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12462h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12463i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12464j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12465k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12466l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f12467m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f12468n = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f12469o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12470p = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ye.this.f12464j == 0) {
                l0.c0.x();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ye yeVar = ye.this;
            if (yeVar.f12464j != 4) {
                yeVar.f12464j = 4;
                l0.b0.p0(yeVar.f12466l);
                l0.b0.b(ye.this.f12466l);
            }
            if (ye.this.f12464j > 0) {
                l0.c0.u0();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ye yeVar = ye.this;
            int i2 = yeVar.f12464j;
            if (i2 > 0) {
                yeVar.f12464j = i2 - 1;
            }
            if (yeVar.f12464j == 0) {
                z.k.s(227, 132, 7, 0, 0, 0, 0, 0, 0, 0);
                l0.b0.p0(ye.this.f12466l);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.d();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 36, 0);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ye yeVar = ye.this;
            byte b2 = (byte) (yeVar.f12469o + 1);
            yeVar.f12469o = b2;
            if (b2 > 5) {
                l0.b0.o0(yeVar.f12470p);
                ye.this.f12469o = (byte) 0;
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
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8306a = null;
        mtVar.f8320o = 1;
        u0.c.f17386m.a(l0.c0.f13020n, 1);
        l0.b0.b(this.f12463i);
        y0.g.f18094d.a(this.f12465k, 1);
        y0.g.f18095e.a(this.f12465k, 1);
        w0.e.f17815a.a(this.f12463i, 1);
        w0.e.f17819e.a(this.f12463i, 1);
        u0.c.f17393t.a(this.f12463i, 1);
        u0.c.f17392s.a(this.f12463i, 1);
        u0.c.f17374a.a(this.f12463i, 1);
        y0.g.f18099i.a(this.f12467m, 1);
        qt.x(this.f12468n);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        byte b3 = bArr[i2];
        if (b3 == 1) {
            if (nt.a()) {
                int i4 = bArr[i2 + 2] & 255;
                this.f12457c = i4;
                int i5 = 0;
                while (true) {
                    iArr = this.f12458d;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    int i6 = this.f12457c;
                    if (i6 == iArr[i5][0]) {
                        if (i6 == 0) {
                            break;
                        }
                        this.f12456b = i5;
                        break;
                    }
                    i5++;
                }
                if (i4 == 18) {
                    if (nt.f8637c != 16) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        return;
                    }
                    return;
                }
                if (i4 == 19) {
                    if (nt.f8637c != 16) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    }
                    return;
                }
                if (i4 != 0) {
                    if (i5 >= iArr.length || (b2 = this.f12469o) != 0) {
                        return;
                    }
                    this.f12469o = (byte) (b2 + 1);
                    l0.b0.l0(iArr[i5][1], 0);
                    l0.b0.a(this.f12470p);
                    return;
                }
                int i7 = this.f12456b;
                if (i7 < iArr.length && i7 != 255) {
                    l0.b0.l0(iArr[i7][1], 1);
                    l0.b0.o0(this.f12470p);
                    this.f12469o = (byte) 0;
                }
                this.f12456b = 255;
                return;
            }
            return;
        }
        if (b3 == 36) {
            int i8 = i2 + 2;
            if ((bArr[i8] & 255) >= 128) {
                qt.m(bArr[i8], 0, 128, true, 50);
                return;
            } else {
                qt.i(bArr[i8], 0, false, 50);
                return;
            }
        }
        if (b3 == 38) {
            int i9 = bArr[i2 + 2] & 255;
            int i10 = bArr[i2 + 3] & 255;
            int i11 = bArr[i2 + 4] & 255;
            int i12 = bArr[i2 + 5] & 255;
            qt.y0(98, ((i9 << 8) | i10) & 65535);
            int i13 = 65535 & ((i11 << 8) | i12);
            qt.y0(99, i13);
            qt.y0(1032, i13);
            int i14 = bArr[i2 + 6] & 255;
            if (i14 == 0) {
                u0.d.A3(0);
            } else {
                u0.d.A3((i14 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
            }
            switch (nt.f8633a) {
                case 262576:
                case 328112:
                case 393648:
                case 459184:
                case 524720:
                case 590256:
                case 655792:
                case 721328:
                case 1049008:
                    break;
                default:
                    int i15 = i2 + 7;
                    l0.c0.N1((bArr[i15] >> 5) & 1, (bArr[i15] >> 6) & 1, 0);
                    break;
            }
            return;
        }
        if (b3 == 103) {
            switch (nt.f8633a) {
                case 262576:
                case 328112:
                case 393648:
                case 459184:
                case 524720:
                case 590256:
                case 655792:
                case 721328:
                case 1049008:
                    int i16 = i2 + 2;
                    l0.c0.N1(bArr[i16] == 2 ? 1 : 0, bArr[i16] == 1 ? 1 : 0, bArr[i16] == 3 ? 1 : 0);
                    break;
            }
            return;
        }
        if (b3 == 4) {
            u0.d.R2(l0.c0.Q0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.Q0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.Q0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.Q0(bArr[i2 + 5] & 255));
            return;
        }
        if (b3 == 5) {
            int i17 = i2 + 2;
            int i18 = bArr[i17] & 255;
            int i19 = i2 + 3;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 4;
            int i22 = bArr[i21] & 255;
            int i23 = i2 + 5;
            int i24 = bArr[i23] & 255;
            if (i18 == 0 && i20 == 0 && i22 == 0 && i24 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i18 || l0.c0.f13014h != i20 || l0.c0.f13015i != i22 || l0.c0.f13016j != i24) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i18;
            l0.c0.f13014h = i20;
            l0.c0.f13015i = i22;
            l0.c0.f13016j = i24;
            u0.d.D2(l0.c0.Q0(bArr[i17] & 255));
            u0.d.E2(l0.c0.Q0(bArr[i19] & 255));
            u0.d.F2(l0.c0.Q0(bArr[i21] & 255));
            u0.d.G2(l0.c0.Q0(bArr[i23] & 255));
            return;
        }
        if (b3 != 33) {
            if (b3 != 34) {
                return;
            }
            int i25 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (i25 >> 1) & 1);
                qt.y0(1, (i25 >> 0) & 1);
            } else {
                qt.y0(1, (i25 >> 0) & 1);
                qt.y0(2, (i25 >> 1) & 1);
            }
            qt.y0(3, (i25 >> 2) & 1);
            qt.y0(4, (i25 >> 3) & 1);
            qt.y0(5, (i25 >> 4) & 1);
            qt.y0(0, (i25 >> 5) & 1);
            return;
        }
        byte b4 = bArr[i2 + 2];
        byte b5 = bArr[i2 + 3];
        int i26 = i2 + 4;
        byte b6 = bArr[i26];
        int i27 = i2 + 5;
        byte b7 = bArr[i27];
        byte b8 = bArr[i2 + 6];
        qt.y0(10, (b4 >> 7) & 1);
        qt.y0(11, (b4 >> 6) & 1);
        qt.y0(12, (b4 >> 5) & 1);
        qt.y0(13, (b4 >> 4) & 1);
        qt.y0(16, (b4 >> 3) & 1);
        qt.y0(14, (b4 >> 2) & 1);
        qt.y0(42, (b4 >> 1) & 1);
        qt.y0(65, (b4 >> 0) & 1);
        qt.y0(18, (b5 >> 7) & 1);
        qt.y0(19, (b5 >> 6) & 1);
        qt.y0(20, (b5 >> 5) & 1);
        qt.y0(21, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
        qt.y0(55, (b8 >> 7) & 1);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b6 = bArr[i27];
            b7 = bArr[i26];
        }
        if (b6 == -1) {
            qt.y0(27, -3);
        } else if (b6 == 0) {
            qt.y0(27, -2);
        } else if (b6 <= 29 || b6 >= 65) {
            qt.y0(27, -1);
        } else {
            qt.y0(27, b6 * 5);
        }
        if (b7 == -1) {
            qt.y0(28, -3);
            return;
        }
        if (b7 == 0) {
            qt.y0(28, -2);
        } else if (b7 <= 29 || b7 >= 65) {
            qt.y0(28, -1);
        } else {
            qt.y0(28, b7 * 5);
        }
    }

    @Override // k0.lt
    public void W2() {
        y0.g.f18094d.d(this.f12465k);
        y0.g.f18095e.d(this.f12465k);
        w0.e.f17815a.d(this.f12463i);
        w0.e.f17819e.d(this.f12463i);
        u0.c.f17393t.d(this.f12463i);
        u0.c.f17392s.d(this.f12463i);
        u0.c.f17374a.d(this.f12463i);
        y0.g.f18099i.d(this.f12467m);
        u0.c.f17386m.d(l0.c0.f13020n);
        l0.b0.p0(this.f12463i);
        l0.b0.p0(l0.c0.f13021o);
        qt.o0(this.f12468n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 100) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
