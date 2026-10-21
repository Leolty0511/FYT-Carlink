package k0;

import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class li extends lt {
    public static int C = 0;
    public static int D = 3;
    public static int E = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7670b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7673e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7671c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7672d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 0}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7674f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f7675g = {new int[]{1, 75}, new int[]{2, 74}, new int[]{3, 74}, new int[]{4, 22}, new int[]{5, 54}, new int[]{6, 54}, new int[]{7, 76}, new int[]{8, 53}, new int[]{9, 74}, new int[]{10, 54}, new int[]{11, -1}, new int[]{12, -1}, new int[]{13, -1}, new int[]{14, -1}, new int[]{15, -1}, new int[]{16, 5}, new int[]{17, 18}, new int[]{18, 26}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f7676h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7677i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7678j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7679k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7680l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7681m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7682n = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7683o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7684p = new d();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f7685q = new e();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f7686r = new f();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f7687s = new g();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f7688t = new h();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Runnable f7689u = new i();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f7690v = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f7691w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f7692x = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public o1.g0 f7693y = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f7694z = 1;
    public final int A = 2;
    public final int B = 3;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (li.this.f7677i == time.hour && li.this.f7678j == time.minute && li.this.f7679k == zIs24HourFormat) {
                return;
            }
            z.k.s(227, -56, 4, time.minute, time.hour, zIs24HourFormat ? 1 : 0, 0);
            li.this.f7677i = time.hour;
            li.this.f7678j = time.minute;
            li.this.f7679k = zIs24HourFormat ? 1 : 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(li.this.f7683o);
            li.this.f7681m = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            li liVar = li.this;
            int i2 = liVar.f7681m - 1;
            liVar.f7681m = i2;
            if (i2 <= 0) {
                l0.b0.p0(liVar.f7683o);
                li.this.f7681m = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                if (nt.f8637c == 10) {
                    li liVar2 = li.this;
                    liVar2.B3(liVar2.f7693y.b(1, 1));
                }
                li liVar3 = li.this;
                liVar3.z3(liVar3.f7693y.b(2, 3));
                li liVar4 = li.this;
                liVar4.A3(liVar4.f7693y.b(3, 3));
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 262599:
                case 9306566:
                    z.k.s(227, -30, 1, 9);
                    break;
                case 328135:
                case 9437638:
                    z.k.s(227, -30, 1, 8);
                    break;
                case 5374391:
                    z.k.s(227, -30, 1, 0);
                    break;
                case 5439927:
                    z.k.s(227, -30, 1, 1);
                    break;
                case 5505463:
                    z.k.s(227, -30, 1, 2);
                    break;
                case 5570999:
                    z.k.s(227, -30, 1, 3);
                    break;
                case 5636535:
                    z.k.s(227, -30, 1, 4);
                    break;
                case 5702071:
                    z.k.s(227, -30, 1, 5);
                    break;
                case 5767607:
                    z.k.s(227, -30, 1, 6);
                    break;
                case 5833143:
                    z.k.s(227, -30, 1, 7);
                    break;
                case 5898679:
                    z.k.s(227, -30, 1, 8);
                    break;
                case 5964215:
                    z.k.s(227, -30, 1, 9);
                    break;
                case 9241030:
                    z.k.s(227, -30, 1, 5);
                    break;
                case 9372102:
                    z.k.s(227, -30, 1, 4);
                    break;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            li.this.b3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            li.this.d3();
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            li.this.y3((byte) 112, u0.b.i3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            li.this.y3((byte) 113, u0.b.j3);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            boolean z2;
            int i3 = h0.c.E;
            boolean z3 = true;
            boolean z4 = i3 == 5 || i3 == 3 || i3 == 4;
            switch (i3) {
                case 0:
                default:
                    i2 = 0;
                    break;
                case 1:
                case 2:
                case 6:
                    i2 = 2;
                    break;
                case 3:
                case 4:
                case 5:
                    i2 = 1;
                    break;
            }
            if (li.this.f7690v != i2) {
                li.this.f7690v = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (li.this.f7692x.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                li.this.f7692x = h0.c.f2437h;
                if (li.this.f7692x == null) {
                    li.this.f7692x = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                li liVar = li.this;
                liVar.C3(liVar.f7690v, li.this.f7692x);
                if (li.this.f7691w != z4) {
                    li.this.f7691w = z4;
                    li.this.f7690v = 0;
                }
            }
        }
    }

    public final void A3(int i2) {
        E = i2;
        z.k.s(227, -112, 2, 34, i2);
        qt.y0(178, E);
        int iB = this.f7693y.b(3, 0);
        int i3 = E;
        if (iB != i3) {
            this.f7693y.g(3, i3);
        }
    }

    public final void B3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        C = i2;
        qt.y0(142, i2);
        int iB = this.f7693y.b(1, 0);
        int i3 = C;
        if (iB != i3) {
            this.f7693y.g(1, i3);
        }
    }

    public final void C3(int i2, String str) {
        if (str == null) {
            return;
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[charArray.length + 5];
        iArr[0] = -29;
        iArr[1] = -59;
        iArr[2] = (byte) (charArray.length + 2);
        iArr[3] = (byte) i2;
        iArr[4] = 1;
        for (int i3 = 0; i3 < str.length(); i3++) {
            iArr[5 + i3] = (byte) charArray[i3];
        }
        z.k.s(iArr);
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
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(23);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(23);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(21);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(21);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(19);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(19);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(20);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(20);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(35);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(34);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(9);
                    break;
                } else if (i2 == -1) {
                    a3(10);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(3);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(4);
                } else {
                    a3(5);
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
        mtVar.f8312g = 0;
        mtVar.f8314i = 0;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8322q = 0;
        switch (nt.f8633a) {
            case 5374391:
            case 5439927:
            case 5767607:
            case 5833143:
                mtVar.f8322q = 1;
                break;
            case 8585655:
            case 8651191:
                mtVar.f8314i = 1;
                break;
        }
        qt.z(this.f7684p);
        qt.z(this.f7685q);
        qt.z(this.f7680l);
        u0.c.f17386m.a(this.f7682n, 1);
        y0.g.f18094d.a(this.f7686r, 1);
        y0.g.f18095e.a(this.f7686r, 1);
        w0.e.f17815a.a(this.f7685q, 1);
        w0.e.f17819e.a(this.f7685q, 1);
        u0.c.f17388o.a(this.f7687s, 1);
        u0.c.f17389p.a(this.f7688t, 1);
        h0.d.f2464c.a(this.f7689u, 1);
        h0.d.f2462a.a(this.f7689u, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int[][] iArr2;
        int i5;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            if (this.f7676h) {
                return;
            }
            int i6 = nt.f8633a;
            if (i6 != 4915639 && i6 != 11207095) {
                qt.i(b3, b4, true, 5696);
                return;
            }
            qt.i(b3, b4, true, 6362);
        }
        if (b2 == 125) {
            int i7 = bArr[i2 + 2] & 255;
            if (i7 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i8 = i2 + 3;
                    l0.c0.b((bArr[i8] >> 3) & 1, (bArr[i8] >> 4) & 1, 0);
                    return;
                } else {
                    int i9 = i2 + 3;
                    l0.c0.a((bArr[i9] >> 3) & 1, (bArr[i9] >> 4) & 1, 0);
                    return;
                }
            }
            if (i7 == 3) {
                int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i10);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                return;
            } else {
                if (i7 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f7676h = true;
                return;
            }
        }
        if (b2 == 47) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            this.f7674f = b5 & 255;
            int i11 = 0;
            while (true) {
                iArr = this.f7675g;
                if (i11 >= iArr.length) {
                    break;
                }
                int i12 = this.f7674f;
                if (i12 == iArr[i11][0]) {
                    if (i12 == 0) {
                        break;
                    }
                    this.f7673e = i11;
                    break;
                }
                i11++;
            }
            if ((b6 & 255) != 0) {
                if (i11 < iArr.length) {
                    l0.b0.l0(iArr[i11][1], 0);
                    return;
                }
                return;
            }
            int i13 = this.f7673e;
            if (i13 < iArr.length) {
                i4 = 255;
                if (i13 != 255) {
                    l0.b0.l0(iArr[i13][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f7673e = i4;
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 112) {
            int i14 = i2 + 2;
            qt.y0(103, (bArr[i14] >> 7) & 1);
            qt.y0(99, (bArr[i14] >> 6) & 1);
            qt.y0(111, (bArr[i14] >> 5) & 1);
            qt.y0(107, (bArr[i14] >> 4) & 1);
            qt.y0(104, (bArr[i14] >> 3) & 1);
            qt.y0(100, (bArr[i14] >> 2) & 1);
            qt.y0(112, (bArr[i14] >> 1) & 1);
            qt.y0(108, (bArr[i14] >> 0) & 1);
            qt.y0(102, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(98, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(110, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(106, ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 9] & 255));
            int i15 = i2 + 11;
            qt.y0(105, (bArr[i15] >> 7) & 1);
            qt.y0(101, (bArr[i15] >> 6) & 1);
            qt.y0(113, (bArr[i15] >> 5) & 1);
            qt.y0(109, (bArr[i15] >> 4) & 1);
            return;
        }
        if (b2 == 113) {
            qt.y0(115, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 2] & 255));
            qt.y0(116, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(117, (bArr[i2 + 6] & 255) | ((bArr[i2 + 8] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280));
            return;
        }
        switch (b2) {
            case 32:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                this.f7671c = b7 & 255;
                int i16 = 0;
                while (true) {
                    iArr2 = this.f7672d;
                    if (i16 < iArr2.length) {
                        int i17 = this.f7671c;
                        if (i17 != iArr2[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f7670b = i16;
                        }
                    }
                }
                if (this.f7671c == 22) {
                    if ((b8 & 255) == 1) {
                        z.k.s(227, -57, 1, 1);
                    }
                } else if ((b8 & 255) == 0) {
                    int i18 = this.f7670b;
                    if (i18 < iArr2.length) {
                        i5 = 255;
                        if (i18 != 255) {
                            l0.b0.l0(iArr2[i18][1], 1);
                        }
                    } else {
                        i5 = 255;
                    }
                    this.f7670b = i5;
                } else if (i16 < iArr2.length) {
                    l0.b0.l0(iArr2[i16][1], 0);
                }
                break;
            case 33:
                int i19 = bArr[i2 + 2] & 255;
                int i20 = bArr[i2 + 3] & 255;
                int i21 = i2 + 4;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 5;
                int i24 = bArr[i23] & 255;
                int i25 = bArr[i2 + 6] & 255;
                int i26 = bArr[i2 + 7] & 255;
                qt.y0(10, (i19 >> 7) & 1);
                qt.y0(11, (i19 >> 6) & 1);
                qt.y0(12, (i19 >> 5) & 1);
                qt.y0(16, (i19 >> 4) & 1);
                qt.y0(13, (i19 >> 3) & 1);
                qt.y0(14, (i19 >> 2) & 1);
                qt.y0(15, (i19 >> 1) & 1);
                qt.y0(18, (i20 >> 7) & 1);
                qt.y0(19, (i20 >> 6) & 1);
                qt.y0(20, (i20 >> 5) & 1);
                qt.y0(21, 15 & i20);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i22 = bArr[i23] & 255;
                    i24 = bArr[i21] & 255;
                }
                if (i22 == 0) {
                    qt.y0(27, -2);
                } else if (i22 == 127) {
                    qt.y0(27, -3);
                } else if (i22 < 31 || i22 > 64) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i22);
                }
                if (i24 == 0) {
                    qt.y0(28, -2);
                } else if (i24 == 127) {
                    qt.y0(28, -3);
                } else if (i24 < 31 || i24 > 64) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i24);
                }
                qt.y0(65, (i25 >> 4) & 1);
                qt.y0(53, (i25 >> 2) & 1);
                qt.y0(37, (i25 >> 6) & 1);
                u0.d.A3((i26 & 128) != 0 ? 1000 - ((256 - i26) * 10) : 1000);
                break;
            case 34:
                u0.d.R2(l0.c0.e1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.e1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.e1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.e1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i27 = i2 + 2;
                int i28 = bArr[i27] & 255;
                int i29 = i2 + 3;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 4;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 5;
                int i34 = bArr[i33] & 255;
                if (i28 == 0 && i30 == 0 && i32 == 0 && i34 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i28 || l0.c0.f13014h != i30 || l0.c0.f13015i != i32 || l0.c0.f13016j != i34) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i28;
                l0.c0.f13014h = i30;
                l0.c0.f13015i = i32;
                l0.c0.f13016j = i34;
                u0.d.D2(l0.c0.e1(bArr[i27] & 255));
                u0.d.E2(l0.c0.e1(bArr[i29] & 255));
                u0.d.F2(l0.c0.e1(bArr[i31] & 255));
                u0.d.G2(l0.c0.e1(bArr[i33] & 255));
                break;
            case 36:
                byte b9 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b9 >> 6) & 1);
                    qt.y0(1, (b9 >> 7) & 1);
                } else {
                    qt.y0(2, (b9 >> 7) & 1);
                    qt.y0(1, (b9 >> 6) & 1);
                }
                qt.y0(4, (b9 >> 5) & 1);
                qt.y0(3, (b9 >> 4) & 1);
                qt.y0(5, (b9 >> 3) & 1);
                qt.y0(0, (b9 >> 2) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7682n);
        l0.b0.p0(this.f7683o);
        qt.q0(this.f7684p);
        qt.q0(this.f7685q);
        y0.g.f18094d.d(this.f7686r);
        y0.g.f18095e.d(this.f7686r);
        w0.e.f17815a.d(this.f7685q);
        w0.e.f17819e.d(this.f7685q);
        u0.c.f17388o.d(this.f7687s);
        u0.c.f17389p.d(this.f7688t);
        h0.d.f2464c.d(this.f7689u);
        h0.d.f2462a.d(this.f7689u);
        qt.q0(this.f7680l);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 185) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, -32, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -57, 1, 1);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -125, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 != 3) {
            return;
        }
        if (iArr[0] == 34) {
            A3(iArr[1]);
        } else if (iArr[0] == 35) {
            z3(iArr[1]);
        } else {
            z.k.s(227, -112, 2, iArr[0], iArr[1]);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, -32, 2, i2, 0);
    }

    public final void b3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        c3(iArr);
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17797i;
            int i5 = w0.d.f17798j & 255;
            int i6 = w0.d.f17796h;
            if (i6 == 65536) {
                iArr[4] = 1;
            } else if (i6 == 65537) {
                iArr[4] = 2;
            } else if (i6 == 65538) {
                iArr[4] = 0;
            } else if (i6 == 0) {
                iArr[4] = 17;
            } else if (i6 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            iArr[7] = (i5 % 6) + 1;
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i7 = u0.b.s3;
                iArr[4] = i7 & 255;
                iArr[5] = (i7 >> 8) & 255;
                int i8 = u0.b.r3;
                iArr[6] = i8 & 255;
                iArr[7] = (i8 >> 8) & 255;
                int i9 = u0.b.t3;
                iArr[8] = i9 / 60;
                iArr[9] = i9 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i10 = o0.e.f16794r;
            iArr[7] = i10 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i10 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i10 % 60;
        } else {
            int i11 = o0.e.C;
            iArr[4] = i11 & 255;
            iArr[5] = (i11 >> 8) & 255;
            int i12 = o0.e.B;
            iArr[6] = i12 & 255;
            iArr[7] = (i12 >> 8) & 255;
            int i13 = o0.e.f16794r;
            iArr[8] = i13 / 60;
            iArr[9] = i13 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i14 = i2 + 1;
            iArr2[i14] = iArr[i2];
            i2 = i14;
        }
        z.k.s(iArr2);
    }

    public final void c3(int[] iArr) {
        if (iArr == null || iArr.length < 3) {
            return;
        }
        switch (u0.b.D) {
            case 1:
                iArr[2] = 1;
                iArr[3] = 1;
                break;
            case 2:
                iArr[2] = 11;
                iArr[3] = 0;
                break;
            case 3:
                iArr[2] = 11;
                iArr[3] = 16;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                } else if (i2 == 3) {
                    iArr[2] = 9;
                    iArr[3] = 16;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 48;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 9:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public final void d3() {
        int i2 = 0;
        int[] iArr = {196, 1, y0.f.C0};
        if (y0.f.f18055i == 1 || y0.f.C0 == 0) {
            iArr[2] = 128;
        }
        if (y0.f.C0 > 36) {
            iArr[2] = 36;
        }
        int[] iArr2 = new int[4];
        iArr2[0] = 227;
        while (i2 < 3) {
            int i3 = i2 + 1;
            iArr2[i3] = iArr[i2];
            i2 = i3;
        }
        z.k.s(iArr2);
    }

    public final void y3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4 + 1] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 5];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    public final void z3(int i2) {
        D = i2;
        z.k.s(227, -112, 2, 35, i2);
        qt.y0(177, D);
        int iB = this.f7693y.b(2, 0);
        int i3 = D;
        if (iB != i3) {
            this.f7693y.g(2, i3);
        }
    }
}
