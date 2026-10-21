package k0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.net.ProxyProperties;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class sr extends lt {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f10412w;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10414c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10413b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10415d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10416e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{23, 21}, new int[]{24, 12}, new int[]{25, 54}, new int[]{135, 25}, new int[]{96, 3}, new int[]{100, 4}, new int[]{102, 3}, new int[]{98, 4}, new int[]{103, 32}, new int[]{101, 33}, new int[]{99, 33}, new int[]{97, 32}, new int[]{112, 16}, new int[]{113, 6}, new int[]{114, 1}, new int[]{115, 5}, new int[]{116, 31}, new int[]{117, 30}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10417f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10418g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f10419h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o1.g0 f10420i = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10421j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10422k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f10423l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f10424m = new d();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f10425n = new e();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f10426o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f10427p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f10428q = new f();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f10429r = new g();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f10430s = new h();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f10431t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f10432u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f10433v = ProxyProperties.LOCAL_EXCL_LIST;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sr srVar = sr.this;
            int i2 = srVar.f10413b;
            if (i2 > 0) {
                srVar.f10413b = i2 - 1;
            }
            if (srVar.f10413b == 0) {
                srVar.a3();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sr.this.c3();
            sr.this.f10413b = 4;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(sr.this.f10424m);
            sr.this.f10422k = 5;
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sr srVar = sr.this;
            int i2 = srVar.f10422k - 1;
            srVar.f10422k = i2;
            if (i2 <= 0) {
                l0.b0.p0(srVar.f10424m);
                sr.this.f10422k = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 1, 48);
                sr srVar2 = sr.this;
                srVar2.w3(srVar2.f10420i.b(2, 0));
                switch (nt.f8633a) {
                    case 2752966:
                        z.k.s(227, 226, 1, 0);
                        break;
                    case 2818502:
                        z.k.s(227, 226, 1, 1);
                        break;
                    case 2884038:
                        z.k.s(227, 226, 1, 2);
                        break;
                    case 2949574:
                        z.k.s(227, 226, 1, 3);
                        break;
                    case 3015110:
                        z.k.s(227, 226, 1, 4);
                        break;
                    case 3080646:
                        z.k.s(227, 226, 1, 5);
                        break;
                    case 3146182:
                        z.k.s(227, 226, 1, 6);
                        break;
                    case 3211718:
                        z.k.s(227, 226, 1, 7);
                        break;
                    case 3277254:
                        z.k.s(227, 226, 1, 8);
                        break;
                    case 3342790:
                        z.k.s(227, 226, 1, 9);
                        break;
                    case 3408326:
                        z.k.s(227, 226, 1, 10);
                        break;
                    case 3473862:
                        z.k.s(227, 226, 1, 11);
                        break;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (sr.this.f10426o == millis && sr.this.f10427p == i2) {
                return;
            }
            sr.this.f10426o = millis;
            sr.this.f10427p = i2;
            z.k.s(227, -58, 4, 1, (byte) time.hour, (byte) time.minute, (byte) ((((byte) (Calendar.getInstance(TimeZone.getDefault()).get(9) == 0 ? 0 : 1)) << 7) | (i2 << 6)));
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sr.this.u3((byte) 112, u0.b.i3);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            sr.this.u3((byte) 113, u0.b.j3);
        }
    }

    public class h implements Runnable {
        public h() {
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
            if (sr.this.f10431t != i2) {
                sr.this.f10431t = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (sr.this.f10433v.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                sr.this.f10433v = h0.c.f2437h;
                if (sr.this.f10433v == null) {
                    sr.this.f10433v = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                sr srVar = sr.this;
                srVar.x3(srVar.f10431t, sr.this.f10433v);
                if (sr.this.f10432u != z4) {
                    sr.this.f10432u = z4;
                    sr.this.f10431t = 0;
                }
            }
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f10420i.a();
        qt.z(this.f10425n);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        if (nt.f8633a == 3473862) {
            mtVar.f8314i = 1;
        }
        u0.c.f17386m.a(this.f10423l, 1);
        u0.c.f17388o.a(this.f10428q, 1);
        u0.c.f17389p.a(this.f10429r, 1);
        h0.d.f2464c.a(this.f10430s, 1);
        h0.d.f2462a.a(this.f10430s, 1);
        qt.z(this.f10418g);
        y0.g.f18094d.a(this.f10419h, 1);
        y0.g.f18095e.a(this.f10419h, 1);
        w0.e.f17815a.a(this.f10418g, 1);
        w0.e.f17819e.a(this.f10418g, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == -111) {
            int i4 = bArr[i2 + 2] & 255;
            if (this.f10417f != i4) {
                if (i4 == 1) {
                    if (!qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                        v3();
                        if (y0.f.f18055i != 1) {
                            l0.b0.l0(12, 0);
                            l0.b0.l0(12, 1);
                        }
                    }
                } else if (i4 == 0 && qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                    l0.b0.l0(6, 0);
                    l0.b0.l0(6, 1);
                    if (y0.f.f18055i == 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                this.f10417f = i4;
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
            qt.y0(98, b3);
            qt.y0(99, b4);
            qt.y0(100, b5);
            qt.y0(101, b6);
            qt.y0(102, b7);
            qt.y0(103, b8);
            qt.y0(104, b9);
            qt.y0(105, b10);
            qt.y0(106, b11);
            return;
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, true, 5824);
            return;
        }
        if (b2 == 104) {
            qt.y0(1032, (bArr[i2 + 2] & 255) + ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 106) {
            qt.y0(1031, (bArr[i2 + 2] & 255) + ((bArr[i2 + 3] << 8) & 65280));
            return;
        }
        if (b2 == 116) {
            int i5 = i2 + 2;
            qt.y0(107, (bArr[i5] >> 4) & 1);
            qt.y0(108, (bArr[i5] >> 3) & 1);
            qt.y0(109, (bArr[i5] >> 2) & 1);
            qt.y0(110, (bArr[i5] >> 1) & 1);
            qt.y0(111, (bArr[i5] >> 0) & 1);
            int i6 = i2 + 3;
            qt.y0(112, (bArr[i6] >> 0) & 7);
            qt.y0(113, (bArr[i6] >> 3) & 7);
            qt.y0(114, (bArr[i6] >> 6) & 3);
            int i7 = i2 + 4;
            qt.y0(115, (bArr[i7] >> 0) & 3);
            qt.y0(116, (bArr[i7] >> 2) & 3);
            qt.y0(117, (bArr[i7] >> 4) & 3);
            qt.y0(118, (bArr[i7] >> 6) & 1);
            int i8 = i2 + 5;
            qt.y0(119, (bArr[i8] >> 0) & 7);
            qt.y0(120, (bArr[i8] >> 3) & 1);
            return;
        }
        if (b2 == 47) {
            d3(bArr[i2 + 2] & 255);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        switch (b2) {
            case 32:
                byte b12 = bArr[i2 + 2];
                byte b13 = bArr[i2 + 3];
                this.f10415d = b12 & 255;
                int i9 = 0;
                while (true) {
                    iArr = this.f10416e;
                    if (i9 < iArr.length) {
                        int i10 = this.f10415d;
                        if (i10 != iArr[i9][0]) {
                            i9++;
                        } else if (i10 != 0) {
                            this.f10414c = i9;
                        }
                    }
                }
                int i11 = b13 & 255;
                if (i11 != 1) {
                    if (i11 == 0) {
                        int i12 = this.f10414c;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f10414c = 255;
                    }
                } else if (i9 < iArr.length) {
                    l0.b0.l0(iArr[i9][1], 0);
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
                qt.y0(20, (b15 >> 5) & 1);
                byte b16 = bArr[i2 + 6];
                qt.y0(37, 3 & (b16 >> 6));
                qt.y0(65, (b16 >> 4) & 1);
                qt.y0(53, (b16 >> 2) & 1);
                qt.y0(21, (15 & b15) | (16 & b16));
                int i13 = i2 + 4;
                int i14 = bArr[i13] & 255;
                int i15 = i2 + 5;
                int i16 = bArr[i15] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i14 = bArr[i15] & 255;
                    i16 = bArr[i13] & 255;
                }
                if (i14 == 0) {
                    qt.y0(27, -2);
                } else if (i14 == 127) {
                    qt.y0(27, -3);
                } else if (i14 == 255) {
                    qt.y0(27, -1);
                } else if (nt.f8645g[37] == 1) {
                    qt.y0(27, i14 * 10);
                } else {
                    qt.y0(27, i14 * 5);
                }
                if (i16 == 0) {
                    qt.y0(28, -2);
                } else if (i16 == 127) {
                    qt.y0(28, -3);
                } else if (i16 == 255) {
                    qt.y0(28, -1);
                } else if (nt.f8645g[37] == 1) {
                    qt.y0(28, i16 * 10);
                } else {
                    qt.y0(28, i16 * 5);
                }
                int i17 = bArr[i2 + 7] & 255;
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((((i17 & 128) != 0 ? 1320 - ((256 - i17) * 18) : (i17 * 18) + 1320) / 10) * 10) | 268435456) & (-1) : (i17 & 128) != 0 ? 1000 - ((256 - i17) * 10) : ((i17 & 255) * 10) + 1000);
                break;
            case 34:
                u0.d.R2(l0.c0.K0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.K0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.K0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.K0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i18 = i2 + 2;
                int i19 = bArr[i18] & 255;
                int i20 = i2 + 3;
                int i21 = bArr[i20] & 255;
                int i22 = i2 + 4;
                int i23 = bArr[i22] & 255;
                int i24 = i2 + 5;
                int i25 = bArr[i24] & 255;
                if (i19 == 0 && i21 == 0 && i23 == 0 && i25 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i19 || l0.c0.f13014h != i21 || l0.c0.f13015i != i23 || l0.c0.f13016j != i25) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i19;
                l0.c0.f13014h = i21;
                l0.c0.f13015i = i23;
                l0.c0.f13016j = i25;
                u0.d.D2(l0.c0.K0(bArr[i18] & 255));
                u0.d.E2(l0.c0.K0(bArr[i20] & 255));
                u0.d.F2(l0.c0.K0(bArr[i22] & 255));
                u0.d.G2(l0.c0.K0(bArr[i24] & 255));
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
        this.f10420i.j();
        qt.q0(this.f10425n);
        u0.c.f17388o.d(this.f10428q);
        u0.c.f17389p.d(this.f10429r);
        h0.d.f2464c.d(this.f10430s);
        h0.d.f2462a.d(this.f10430s);
        qt.q0(this.f10418g);
        y0.g.f18094d.d(this.f10419h);
        y0.g.f18095e.d(this.f10419h);
        w0.e.f17815a.d(this.f10418g);
        w0.e.f17819e.d(this.f10418g);
        u0.c.f17386m.d(this.f10423l);
        l0.b0.p0(this.f10424m);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 122) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                z.k.s(227, -32, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, -125, 2, iArr[0], iArr[1]);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (T2(iArr, 1)) {
                z.k.s(227, -112, 1, iArr[0]);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 2)) {
                if (iArr[0] == 15) {
                    w3(iArr[1]);
                    return;
                } else {
                    z.k.s(227, -28, 2, iArr[0], iArr[1]);
                    return;
                }
            }
            return;
        }
        if (i2 == 1003 && iArr != null && iArr.length > 0) {
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

    public final void d3(int i2) {
        switch (i2) {
            case 1:
                if (u0.b.D == 1) {
                    w0.f.J(28, 30);
                } else {
                    o1.u.x0();
                }
                break;
            case 2:
                if (u0.b.D == 1) {
                    w0.f.J(28, 28);
                } else {
                    o1.u.x0();
                }
                break;
            case 3:
                if (u0.b.D == 1) {
                    w0.f.J(28, 29);
                } else {
                    o1.u.x0();
                }
                break;
            case 4:
                o1.u.E();
                break;
            case 5:
            case 6:
                o1.u.i();
                break;
            case 7:
                o1.u.q();
                break;
            case 8:
                o1.u.j();
                break;
            case 9:
                if (u0.b.D == 1) {
                    w0.f.J(28, 27);
                } else {
                    o1.u.x0();
                }
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

    public final void v3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.xp.xiandai.XiandaiSosPage")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.xp.xiandai.XiandaiSosPage");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void w3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        z.k.s(227, 228, 2, 15, (byte) i2);
        f10412w = i2;
        qt.y0(121, i2);
        int iB = this.f10420i.b(2, 0);
        int i3 = f10412w;
        if (iB != i3) {
            this.f10420i.g(2, i3);
        }
    }

    public final void x3(int i2, String str) {
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
