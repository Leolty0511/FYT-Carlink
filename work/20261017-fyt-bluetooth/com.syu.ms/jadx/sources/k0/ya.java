package k0;

import android.bluetooth.BluetoothClass;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class ya extends lt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12414c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12413b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12415d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f12416e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 25}, new int[]{96, 3}, new int[]{100, 4}, new int[]{102, 3}, new int[]{98, 4}, new int[]{103, 32}, new int[]{101, 33}, new int[]{99, 33}, new int[]{97, 32}, new int[]{116, 33}, new int[]{117, 32}, new int[]{113, 6}, new int[]{114, 1}, new int[]{115, 5}, new int[]{112, 16}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f12417f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f12418g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12419h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f12420i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f12421j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f12422k = new e();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f12423l = new f();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f12424m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12425n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f12426o = new g();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f12427p = new h();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f12428q = new i();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f12429r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f12430s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f12431t = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ya yaVar = ya.this;
            int i2 = yaVar.f12413b;
            if (i2 > 0) {
                yaVar.f12413b = i2 - 1;
            }
            if (yaVar.f12413b == 0) {
                yaVar.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ya.this.c3();
            ya.this.f12413b = 4;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ya.this.f12421j);
            ya.this.f12419h = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ya yaVar = ya.this;
            int i2 = 1;
            int i3 = yaVar.f12419h - 1;
            yaVar.f12419h = i3;
            if (i3 <= 0) {
                l0.b0.p0(yaVar.f12421j);
                ya.this.f12419h = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 48);
                switch (nt.f8633a) {
                    case 721220:
                    case 1376580:
                        i2 = 0;
                        break;
                    case 786756:
                    case 1442116:
                        break;
                    case 852292:
                    case 983364:
                        i2 = 2;
                        break;
                    case 917828:
                        i2 = 4;
                        break;
                    case 1048900:
                        i2 = 5;
                        break;
                    case 1114436:
                        i2 = 6;
                        break;
                    case 1179972:
                        i2 = 7;
                        break;
                    case 1245508:
                        i2 = 8;
                        break;
                    case 1311044:
                        i2 = 9;
                        break;
                    default:
                        i2 = -1;
                        break;
                }
                if (i2 != -1) {
                    ya.this.v3(i2);
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 1000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (ya.this.f12424m == millis && ya.this.f12425n == i2) {
                return;
            }
            ya.this.f12424m = millis;
            ya.this.f12425n = i2;
            z.k.s(227, -58, 4, 1, (byte) time.hour, (byte) time.minute, (byte) ((((byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1)) << 7) | (i2 << 6)));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ya.this.u3((byte) 112, u0.b.i3);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ya.this.u3((byte) 113, u0.b.j3);
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
            if (ya.this.f12429r != i2) {
                ya.this.f12429r = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (ya.this.f12431t.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                ya.this.f12431t = h0.c.f2437h;
                if (ya.this.f12431t == null) {
                    ya.this.f12431t = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                ya yaVar = ya.this;
                yaVar.w3(yaVar.f12429r, ya.this.f12431t);
                if (ya.this.f12430s != z4) {
                    ya.this.f12430s = z4;
                    ya.this.f12429r = 0;
                }
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        qt.z(this.f12423l);
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        u0.c.f17388o.a(this.f12426o, 1);
        u0.c.f17389p.a(this.f12427p, 1);
        h0.d.f2464c.a(this.f12428q, 1);
        h0.d.f2462a.a(this.f12428q, 1);
        qt.z(this.f12417f);
        y0.g.f18094d.a(this.f12418g, 1);
        y0.g.f18095e.a(this.f12418g, 1);
        w0.e.f17815a.a(this.f12417f, 1);
        w0.e.f17819e.a(this.f12417f, 1);
        qt.y(this.f12422k);
        u0.c.f17386m.a(this.f12420i, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -111) {
            if (nt.a()) {
                if ((bArr[i2 + 2] & 1) == 1) {
                    o1.u.j();
                    return;
                } else {
                    if (o1.u.Y0().equals("com.syu.aux")) {
                        o1.u.k();
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == -109) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            byte b8 = bArr[i2 + 7];
            byte b9 = bArr[i2 + 8];
            byte b10 = bArr[i2 + 9];
            byte b11 = bArr[i2 + 10];
            qt.y0(100, b3);
            qt.y0(101, b4);
            qt.y0(102, b5);
            qt.y0(103, b6);
            qt.y0(104, b7);
            qt.y0(105, b8);
            qt.y0(106, b9);
            qt.y0(107, b10);
            qt.y0(108, b11);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 5320);
            return;
        }
        if (b2 == 85) {
            if (!nt.a() || (i4 = bArr[i2 + 9] & 255) == 255) {
                return;
            }
            u0.d.A3(i4 > 40 ? ((i4 > 90 ? 50 : i4 - 40) * 10) + 1000 : 1000 - ((40 - i4) * 10));
            return;
        }
        if (b2 == 104) {
            int i5 = i2 + 2;
            int i6 = i2 + 3;
            qt.y0(99, (bArr[i5] & 255) + ((bArr[i6] << 8) & 65280));
            qt.y0(1032, (bArr[i5] & 255) + ((bArr[i6] << 8) & 65280));
            return;
        }
        if (b2 == 106) {
            int i7 = i2 + 2;
            int i8 = i2 + 3;
            qt.y0(98, (bArr[i7] & 255) + ((bArr[i8] << 8) & 65280));
            qt.y0(1031, (bArr[i7] & 255) + ((bArr[i8] << 8) & 65280));
            return;
        }
        if (b2 == 116) {
            qt.y0(109, (bArr[i2 + 3] >> 6) & 3);
            return;
        }
        if (b2 == 47) {
            if (nt.a()) {
                e3(bArr[i2 + 2] & 255);
                return;
            }
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b12 = bArr[i2 + 2];
                    byte b13 = bArr[i2 + 3];
                    this.f12415d = b12 & 255;
                    int i9 = 0;
                    while (true) {
                        iArr = this.f12416e;
                        if (i9 < iArr.length) {
                            int i10 = this.f12415d;
                            if (i10 != iArr[i9][0]) {
                                i9++;
                            } else if (i10 != 0) {
                                this.f12414c = i9;
                            }
                        }
                    }
                    int i11 = this.f12415d;
                    if (i11 == 9) {
                        if ((b13 & 255) == 1) {
                            if (nt.f8637c == 2) {
                                l0.b0.l0(13, 0);
                                l0.b0.l0(13, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                    } else if (i11 != 10) {
                        int i12 = b13 & 255;
                        if (i12 != 1) {
                            if (i12 == 0) {
                                int i13 = this.f12414c;
                                if (i13 < iArr.length && i13 != 255) {
                                    l0.b0.l0(iArr[i13][1], 1);
                                }
                                this.f12414c = 255;
                            }
                        } else if (i9 < iArr.length) {
                            l0.b0.l0(iArr[i9][1], 0);
                        }
                    } else if ((b13 & 255) == 1) {
                        if (nt.f8637c == 2) {
                            int i14 = h0.c.E;
                            if (i14 == 3 || i14 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        } else {
                            l0.b0.l0(26, 0);
                            l0.b0.l0(26, 1);
                        }
                    }
                }
                break;
            case 33:
                byte b14 = bArr[i2 + 2];
                qt.y0(10, (b14 >> 7) & 1);
                qt.y0(11, (b14 >> 6) & 1);
                qt.y0(12, (b14 >> 5) & 1);
                qt.y0(16, (b14 >> 4) & 1);
                qt.y0(13, (b14 >> 3) & 1);
                qt.y0(14, (b14 >> 2) & 1);
                qt.y0(15, (b14 >> 1) & 1);
                byte b15 = bArr[i2 + 3];
                qt.y0(18, (b15 >> 7) & 1);
                qt.y0(19, (b15 >> 6) & 1);
                int i15 = b15 >> 5;
                qt.y0(20, i15 & 1);
                qt.y0(77, i15 & 7);
                qt.y0(21, b15 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, bArr[i2 + 5] & 255);
                    qt.y0(28, bArr[i2 + 4] & 255);
                } else {
                    qt.y0(27, bArr[i2 + 4] & 255);
                    qt.y0(28, bArr[i2 + 5] & 255);
                }
                byte b16 = bArr[i2 + 6];
                qt.y0(37, (b16 >> 6) & 3);
                qt.y0(65, (b16 >> 4) & 1);
                qt.y0(53, (b16 >> 2) & 1);
                u0.d.A3(bArr[i2 + 7] + 1000);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(d3(bArr[i2 + 2] & 255));
                    u0.d.S2(d3(bArr[i2 + 3] & 255));
                    u0.d.T2(d3(bArr[i2 + 4] & 255));
                    u0.d.U2(d3(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i16 = i2 + 2;
                    int i17 = bArr[i16] & 255;
                    int i18 = i2 + 3;
                    int i19 = bArr[i18] & 255;
                    int i20 = i2 + 4;
                    int i21 = bArr[i20] & 255;
                    int i22 = i2 + 5;
                    int i23 = bArr[i22] & 255;
                    if (i17 == 0 && i19 == 0 && i21 == 0 && i23 == 0) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i17 || l0.c0.f13014h != i19 || l0.c0.f13015i != i21 || l0.c0.f13016j != i23) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i17;
                    l0.c0.f13014h = i19;
                    l0.c0.f13015i = i21;
                    l0.c0.f13016j = i23;
                    u0.d.D2(d3(bArr[i16] & 255));
                    u0.d.E2(d3(bArr[i18] & 255));
                    u0.d.F2(d3(bArr[i20] & 255));
                    u0.d.G2(d3(bArr[i22] & 255));
                }
                break;
            case 36:
                byte b17 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b17 >> 7) & 1);
                    qt.y0(2, (b17 >> 6) & 1);
                } else {
                    qt.y0(1, (b17 >> 6) & 1);
                    qt.y0(2, (b17 >> 7) & 1);
                }
                qt.y0(4, (b17 >> 5) & 1);
                qt.y0(3, (b17 >> 4) & 1);
                qt.y0(5, (b17 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f12423l);
        u0.c.f17388o.d(this.f12426o);
        u0.c.f17389p.d(this.f12427p);
        h0.d.f2464c.d(this.f12428q);
        h0.d.f2462a.d(this.f12428q);
        qt.q0(this.f12417f);
        y0.g.f18094d.d(this.f12418g);
        y0.g.f18095e.d(this.f12418g);
        w0.e.f17815a.d(this.f12417f);
        w0.e.f17819e.d(this.f12417f);
        qt.p0(this.f12422k);
        u0.c.f17386m.d(this.f12420i);
        l0.b0.p0(this.f12421j);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 110) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, -125, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (T2(iArr, 2)) {
                z.k.s(227, -32, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 2)) {
                z.k.s(227, -28, 2, iArr[0], iArr[1]);
            }
        } else if (i2 == 1003 && iArr != null && iArr.length > 0) {
            int[] iArr2 = new int[5];
            iArr2[0] = 227;
            iArr2[1] = -58;
            iArr2[2] = 2;
            iArr2[3] = 2;
            iArr2[4] = (byte) (iArr[0] != 0 ? 2 : 1);
            z.k.s(iArr2);
        }
    }

    public final void a3() {
        int[] iArr = new int[10];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 8;
        b3(iArr);
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
            } else if (i6 == 0 || i6 == 1) {
                iArr[4] = 16;
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

    public final void b3(int[] iArr) {
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
                iArr[3] = 0;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                } else if (i2 == 3) {
                    iArr[2] = 8;
                    iArr[3] = 17;
                }
                break;
            case 5:
                iArr[2] = 7;
                iArr[3] = 48;
                break;
            case 6:
                iArr[2] = 3;
                iArr[3] = 0;
                break;
            case 7:
                iArr[2] = 6;
                iArr[3] = 18;
                break;
            case 8:
            case 10:
                iArr[2] = 8;
                iArr[3] = 16;
                break;
            case 9:
            default:
                iArr[2] = 0;
                iArr[3] = 0;
                break;
        }
    }

    public final void c3() {
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

    public final int d3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 9;
        }
        if (i2 == 2) {
            return 6;
        }
        if (i2 != 3) {
            return i2 != 4 ? 15 : 0;
        }
        return 3;
    }

    public final void e3(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 9:
                o1.u.x0();
                if (i2 == 1) {
                    w0.f.J(0, 0);
                } else if (i2 == 2) {
                    w0.f.J(0, 65536);
                } else if (i2 == 3) {
                    w0.f.J(0, 65537);
                } else if (i2 == 9) {
                    w0.f.J(0, 65536);
                }
                break;
            case 4:
            case 5:
                if (i2 == 5) {
                    o1.u.i();
                } else {
                    o1.u.E();
                }
                break;
            case 6:
                if (nt.f8633a != 333) {
                    o1.u.q();
                } else {
                    o1.u.i();
                }
                break;
            case 7:
                if (nt.f8633a != 333) {
                    o1.u.j();
                } else {
                    o1.u.q();
                }
                break;
            case 8:
                o1.u.j();
                break;
            case 10:
                o1.u.i();
                break;
            case 14:
                o1.u.Z0();
                break;
            case 15:
                c.e.d().c(BluetoothClass.Device.PHONE_ISDN);
                break;
            case 17:
                if (h0.c.E != 5) {
                    h0.c.f2425b.h(0);
                } else {
                    h0.c.f2425b.h(1);
                }
                break;
            case 18:
                h0.c.f2425b.h(1);
                break;
        }
    }

    public final void u3(byte b2, String str) {
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

    public final void v3(int i2) {
        z.k.s(227, -30, 1, i2);
    }

    public final void w3(int i2, String str) {
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
}
