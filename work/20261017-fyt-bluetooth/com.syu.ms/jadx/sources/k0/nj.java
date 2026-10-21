package k0;

import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class nj extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8501d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8508k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8502e = 255;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8503f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8504g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8505h = 255;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f8506i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 4}, new int[]{6, 3}, new int[]{7, -1}, new int[]{8, 32}, new int[]{9, 33}, new int[]{10, 18}, new int[]{11, 2}, new int[]{12, 25}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{23, 1}, new int[]{27, 26}, new int[]{40, 13}, new int[]{45, 54}, new int[]{48, 58}, new int[]{49, 5}, new int[]{55, 55}, new int[]{98, 16}, new int[]{101, 11}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f8507j = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{5, 38}, new int[]{6, 6}, new int[]{9, 12}, new int[]{10, 40}, new int[]{11, 41}, new int[]{12, 42}, new int[]{13, 43}, new int[]{14, 44}, new int[]{15, 45}, new int[]{16, 16}, new int[]{17, 11}, new int[]{18, 1}, new int[]{19, 56}, new int[]{23, 34}, new int[]{24, 35}, new int[]{25, 32}, new int[]{26, 33}, new int[]{31, 53}, new int[]{32, 1}, new int[]{33, 1}, new int[]{36, 54}, new int[]{40, 18}, new int[]{42, 29}, new int[]{44, 2}, new int[]{45, 24}, new int[]{46, 39}, new int[]{48, 46}, new int[]{49, 47}, new int[]{50, 48}, new int[]{51, 49}, new int[]{52, 50}, new int[]{53, 51}, new int[]{54, 2}, new int[]{55, 24}, new int[]{56, 18}, new int[]{57, 54}, new int[]{58, 22}, new int[]{59, 54}, new int[]{60, 31}, new int[]{61, 30}, new int[]{62, 39}, new int[]{63, 9}, new int[]{64, 25}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8509l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8510m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8511n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8512o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f8513p = {new int[]{1, 0}, new int[]{4, 55}, new int[]{6, 6}, new int[]{9, 12}, new int[]{16, 16}, new int[]{21, 34}, new int[]{22, 35}, new int[]{25, 3}, new int[]{26, 4}, new int[]{32, 1}, new int[]{36, 54}, new int[]{42, 29}, new int[]{43, 5}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{95, 13}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8514q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8515r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f8516s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f8517t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f8518u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Runnable f8519v = new e();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f8520w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f8521x = new f();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f8522y = new g();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f8523z = 0.0f;
    public int A = 255;
    public int B = 255;
    public Runnable C = new h();
    public Runnable D = new i();
    public Runnable E = new j();
    public byte F = 0;
    public Runnable G = new k();
    public byte H = 0;
    public Runnable I = new l();
    public Runnable J = new m();
    public Runnable K = new a();
    public Runnable L = new b();
    public String M = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable N = new c();
    public Runnable O = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                nj.this.p3((byte) -109, u0.b.k3);
            } else {
                nj.this.p3((byte) -109, " ");
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 8) {
                nj.this.p3((byte) -106, u0.b.j3);
            } else {
                nj.this.p3((byte) -106, " ");
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            if (nj.this.M.equals(h0.c.f2437h)) {
                z2 = false;
            } else {
                nj.this.M = h0.c.f2437h;
                if (nj.this.M == null) {
                    nj.this.M = ProxyProperties.LOCAL_EXCL_LIST;
                    z2 = false;
                } else {
                    z2 = true;
                }
            }
            if (z2) {
                nj njVar = nj.this;
                njVar.r3(njVar.M);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj.this.r3(h0.c.f2437h);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj.a3();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj njVar = nj.this;
            njVar.f8515r = 0;
            njVar.f8516s = 0;
            njVar.f8511n = 0;
            njVar.f8512o = 0;
            l0.b0.b(njVar.f8522y);
            nj.this.f8520w = 5;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj njVar = nj.this;
            int i2 = njVar.f8520w - 1;
            njVar.f8520w = i2;
            if (i2 <= 0) {
                l0.b0.p0(njVar.f8522y);
                nj.this.f8520w = 5;
            }
            switch (nt.f8633a) {
                case 1638843:
                    z.k.s(227, 2, 36, 34, 3);
                    break;
                case 1769915:
                case 1835451:
                    z.k.s(227, 2, 36, 20, 3);
                    break;
                case 3735998:
                    z.k.s(227, 2, 36, 12, 3);
                    break;
                case 4391355:
                    z.k.s(227, 2, 36, 35, 3);
                    break;
                case 4456891:
                    z.k.s(227, 2, 36, 36, 3);
                    break;
                case 4522427:
                case 5964219:
                case 6160827:
                case 6226363:
                case 6291899:
                case 6357435:
                    z.k.s(227, 2, 36, 35, 3);
                    break;
                case 15139259:
                    z.k.s(227, 2, 36, 12, 3);
                    break;
                case 15532475:
                    z.k.s(227, 2, 36, 28, 3);
                    break;
                case 15598011:
                    z.k.s(227, 2, 36, 10, 3);
                    break;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj.this.f8523z = u0.b.f17359s0;
            if ((nj.this.f8523z <= 22.5d && nj.this.f8523z >= 0.0f) || (nj.this.f8523z >= 337.5d && nj.this.f8523z <= 360.0f)) {
                nj.this.B = 7;
            } else if (nj.this.f8523z > 22.5d && nj.this.f8523z < 67.5d) {
                nj.this.B = 8;
            } else if (nj.this.f8523z >= 67.5d && nj.this.f8523z <= 112.5d) {
                nj.this.B = 1;
            } else if (nj.this.f8523z > 112.5d && nj.this.f8523z < 157.5d) {
                nj.this.B = 2;
            } else if (nj.this.f8523z >= 157.5d && nj.this.f8523z <= 202.5d) {
                nj.this.B = 3;
            } else if (nj.this.f8523z > 202.5d && nj.this.f8523z < 247.5d) {
                nj.this.B = 4;
            } else if (nj.this.f8523z >= 247.5d && nj.this.f8523z <= 292.5d) {
                nj.this.B = 5;
            } else if (nj.this.f8523z <= 292.5d || nj.this.f8523z >= 337.5d) {
                nj.this.B = 3;
            } else {
                nj.this.B = 6;
            }
            if (nj.this.B != nj.this.A) {
                z.k.s(227, 19, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, nj.this.B, 0, 0, 0, 0, 0, 0, 0);
                nj njVar = nj.this;
                njVar.A = njVar.B;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, 0, (byte) time.hour, (byte) time.minute, 0, 0, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, 0);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj njVar = nj.this;
            byte b2 = (byte) (njVar.F + 1);
            njVar.F = b2;
            if (b2 > 5) {
                l0.b0.o0(njVar.G);
                nj.this.F = (byte) 0;
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj njVar = nj.this;
            byte b2 = (byte) (njVar.H + 1);
            njVar.H = b2;
            if (b2 == 20 && njVar.f8505h == 129 && u0.b.f17320f != 0) {
                u0.d.U1(0);
                l0.b0.o0(nj.this.I);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            nj.this.p3((byte) -110, u0.b.i3);
            if (u0.b.D == 9) {
                nj.this.p3((byte) -110, ProxyProperties.LOCAL_EXCL_LIST);
            }
        }
    }

    public static void a3() {
        int[] iArr = new int[16];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= 16) {
                break;
            }
            iArr[i3] = 32;
            i3++;
        }
        iArr[0] = 14;
        iArr[1] = 145;
        iArr[2] = b3();
        if (u0.b.f17306a0 == 1) {
            iArr[3] = 2;
        } else {
            iArr[3] = 0;
        }
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                iArr[4] = 48;
                iArr[5] = 49;
                iArr[6] = 32;
                int i6 = w0.d.f17797i;
                iArr[7] = i6 / 10000 != 0 ? (i6 / 10000) + 48 : 32;
                iArr[8] = ((i6 % 10000) / 1000) + 48;
                iArr[9] = ((i6 % 1000) / 100) + 48;
                iArr[10] = 46;
                iArr[11] = ((i6 % 100) / 10) + 48;
            } else {
                iArr[4] = 49;
                iArr[5] = 48;
                iArr[6] = 32;
                int i7 = w0.d.f17797i;
                if (i7 / 1000 == 0) {
                    iArr[7] = (i7 / 100) + 48;
                    iArr[8] = ((i7 % 100) / 10) + 48;
                    iArr[9] = (i7 % 10) + 48;
                } else {
                    iArr[7] = (i7 / 1000) + 48;
                    iArr[8] = ((i7 % 1000) / 100) + 48;
                    iArr[9] = ((i7 % 100) / 10) + 48;
                    iArr[10] = (i7 % 10) + 48;
                }
            }
        } else if (i4 != 2) {
            if (i4 != 4) {
                if ((i4 == 8 || i4 == 9) && u0.b.s3 != 0) {
                    int i8 = u0.b.r3 % 1000;
                    int i9 = i8 / 100;
                    iArr[4] = i9 == 0 ? 48 : i9 + 48;
                    int i10 = (i8 % 100) / 10;
                    iArr[5] = i10 == 0 ? 48 : i10 + 48;
                    int i11 = i8 % 10;
                    iArr[6] = i11 == 0 ? 48 : i11 + 48;
                    int i12 = u0.b.s3 % 1000;
                    int i13 = i12 / 100;
                    iArr[13] = i13 == 0 ? 48 : i13 + 48;
                    int i14 = (i12 % 100) / 10;
                    iArr[14] = i14 == 0 ? 48 : i14 + 48;
                    int i15 = i12 % 10;
                    iArr[15] = i15 != 0 ? i15 + 48 : 48;
                }
            } else if (o0.e.C != 0) {
                iArr[4] = 84;
                int i16 = o0.e.B % 10000;
                iArr[5] = (i16 / 1000) + 48;
                int i17 = (i16 % 100) / 10;
                int i18 = i16 % 1000;
                if (i17 != 0) {
                    i18 /= 10;
                }
                iArr[6] = i18 + 48;
                iArr[7] = i17 + 48;
                iArr[8] = (i16 % 10) + 48;
                int i19 = o0.e.f16794r;
                int i20 = (i19 / 60) % 60;
                iArr[9] = 32;
                iArr[10] = (i20 / 10) + 48;
                iArr[11] = (i20 % 10) + 48;
                iArr[12] = 32;
                int i21 = i19 % 60;
                iArr[13] = (i21 / 10) + 48;
                iArr[14] = (i21 % 10) + 48;
            }
        } else if (h0.c.E == 5) {
            int i22 = h0.c.P / 1000;
            int i23 = i22 / 60;
            iArr[8] = (i23 / 10) + 48;
            iArr[9] = (i23 % 10) + 48;
            int i24 = ((byte) i22) % DhcpPacket.DHCP_VENDOR_CLASS_ID;
            iArr[10] = (i24 / 10) + 48;
            iArr[11] = (i24 % 10) + 48;
        }
        int[] iArr2 = new int[17];
        iArr2[0] = 227;
        while (i2 < 16) {
            int i25 = i2 + 1;
            iArr2[i25] = (byte) iArr[i2];
            i2 = i25;
        }
        z.k.s(iArr2);
    }

    public static byte b3() {
        switch (u0.b.D) {
            case 0:
                return (byte) 9;
            case 1:
                int i2 = w0.d.f17796h;
                if (i2 - 65536 == 0) {
                    return (byte) 1;
                }
                if (1 == i2 - 65536 || 2 == i2 - 65536) {
                    return (byte) 2;
                }
                if (i2 + 0 == 0) {
                    return (byte) 4;
                }
                return 1 == i2 - 0 ? (byte) 5 : (byte) 0;
            case 2:
                return (byte) 10;
            case 3:
                return (byte) -123;
            case 4:
                int i3 = o0.e.H;
                if (i3 == 1) {
                    return (byte) 7;
                }
                if (i3 == 2) {
                    return (byte) 14;
                }
                return i3 == 3 ? (byte) 13 : (byte) 0;
            case 5:
                return DhcpPacket.DHCP_HOST_NAME;
            case 6:
                return (byte) 8;
            case 7:
                return (byte) 11;
            case 8:
            case 10:
                return (byte) 13;
            case 9:
            case 11:
            default:
                return (byte) 0;
            case 12:
                return (byte) -2;
            case 13:
                return (byte) -1;
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
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        c3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    c3(1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        c3(2);
                    }
                } else if (nt.f8645g[11] == 0) {
                    c3(2);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        c3(4);
                    }
                } else if (nt.f8645g[13] == 0) {
                    c3(4);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        c3(5);
                    }
                } else if (nt.f8645g[65] == 0) {
                    c3(5);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        c3(6);
                    }
                } else if (nt.f8645g[16] == 0) {
                    c3(6);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        c3(7);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    c3(7);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    c3(12);
                } else {
                    c3(11);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    c3(14);
                } else {
                    c3(13);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    c3(16);
                } else {
                    c3(15);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f8521x, 1);
        o1.h.f16865a.a(this.C, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8312g = 1;
        mtVar.f8311f = 1;
        mtVar.f8320o = 1;
        switch (nt.f8633a) {
            case 1638843:
                mtVar.f8314i = 0;
                break;
            case 1769915:
            case 1835451:
            case 3735998:
            case 4391355:
            case 15139259:
            case 15532475:
            case 15598011:
                qt.z(this.D);
                this.f7886a.f8314i = 1;
                break;
            case 4456891:
                qt.z(this.D);
                if (!o1.q0.v()) {
                    this.f7886a.f8314i = 1;
                }
                break;
            case 4522427:
            case 5964219:
            case 6160827:
            case 6226363:
            case 6291899:
            case 6357435:
                qt.z(this.D);
                this.f7886a.f8314i = 0;
                break;
        }
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        qt.z(this.f8519v);
        h0.d.f2464c.a(this.N, 1);
        o1.y yVar = h0.d.f2462a;
        yVar.a(this.O, 1);
        yVar.a(this.N, 1);
        u0.c.f17388o.a(this.J, 1);
        u0.c.f17389p.a(this.L, 1);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.a(this.K, 1);
        yVar2.a(this.J, 1);
        yVar2.a(this.L, 1);
        w0.e.f17815a.a(this.f8519v, 1);
        w0.e.f17819e.a(this.f8519v, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42};
    }

    /* JADX WARN: Code duplicated, block: B:64:0x027d  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2;
        int[][] iArr2;
        int i4;
        int i5;
        byte b3;
        int[][] iArr3;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        byte b4 = bArr[i2 + 1];
        if (b4 == -123) {
            int i12 = i2 + 3;
            qt.y0(123, (bArr[i12] >> 0) & 1);
            qt.y0(124, (bArr[i12] >> 1) & 3);
            qt.y0(125, (bArr[i12] >> 3) & 1);
            qt.y0(126, (bArr[i12] >> 4) & 1);
            qt.y0(127, (bArr[i12] >> 5) & 1);
            return;
        }
        if (b4 == -108) {
            qt.y0(119, bArr[i2 + 2] & 255);
            return;
        }
        if (b4 == -90) {
            qt.y0(102, bArr[i2 + 2] & 63);
            qt.y0(103, bArr[i2 + 3] & 255);
            qt.y0(104, bArr[i2 + 4] & 255);
            qt.y0(105, bArr[i2 + 5] & 255);
            qt.y0(106, bArr[i2 + 6] & 255);
            qt.y0(107, bArr[i2 + 7] & 255);
            int i13 = i2 + 8;
            qt.y0(108, (bArr[i13] >> 1) & 3);
            qt.y0(109, (bArr[i13] >> 0) & 1);
            return;
        }
        if (b4 == -32) {
            switch (bArr[i2 + 2]) {
                case 1:
                    byte b5 = bArr[i2 + 3];
                    if (b5 == 1) {
                        if (u0.b.D != 1) {
                            o1.u.x0();
                        } else {
                            w0.f.J(28, 27);
                        }
                        break;
                    } else if (b5 == 2) {
                        if (u0.b.D != 1) {
                            o1.u.x0();
                        } else {
                            w0.f.J(28, 28);
                        }
                        break;
                    } else if (b5 == 3) {
                        if (u0.b.D != 1) {
                            o1.u.x0();
                        } else {
                            w0.f.J(28, 30);
                        }
                        break;
                    } else if (b5 == 4) {
                        if (u0.b.D != 1) {
                            o1.u.x0();
                        } else {
                            w0.f.J(28, 31);
                        }
                        break;
                    } else if (b5 == 5) {
                        if (u0.b.D != 1) {
                            o1.u.x0();
                        } else {
                            w0.f.J(28, 29);
                        }
                        break;
                    }
                    break;
                case 2:
                    int i14 = (bArr[i2 + 3] * 100) + bArr[i2 + 4];
                    int i15 = w0.d.f17796h;
                    if (i15 == 0 || i15 == 1) {
                        w0.f.J(28, 13, i14);
                    } else {
                        w0.f.J(28, 30);
                    }
                    break;
                case 3:
                    int i16 = (bArr[i2 + 3] * 100) + bArr[i2 + 4];
                    int i17 = w0.d.f17796h;
                    if (i17 == 65536 || i17 == 65537 || i17 == 65538) {
                        w0.f.J(28, 13, i16);
                    } else {
                        w0.f.J(28, 27);
                    }
                    break;
                case 4:
                    w0.f.J(28, 7, bArr[i2 + 3]);
                    break;
                case 5:
                    byte b6 = bArr[i2 + 3];
                    if (b6 == 1) {
                        l0.b0.l0(3, 0);
                        l0.b0.l0(3, 1);
                        break;
                    } else if (b6 == 2) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        break;
                    }
                    break;
                case 6:
                    a.i.I(u0.b.D, bArr[i2 + 3]);
                    break;
                case 7:
                    byte b7 = bArr[i2 + 3];
                    if (b7 == 1) {
                        l0.b0.l0(36, 0);
                        l0.b0.l0(36, 1);
                        break;
                    } else if (b7 == 2) {
                        l0.b0.l0(37, 0);
                        l0.b0.l0(37, 1);
                        break;
                    }
                    break;
            }
            return;
        }
        if (b4 == -24) {
            qt.y0(98, bArr[i2 + 4] & 255);
            int i18 = i2 + 2;
            if ((bArr[i18] & 3) == 2) {
                qt.y0(Process.MEDIA_UID, 0);
            } else if ((bArr[i18] & 3) == 1) {
                qt.y0(Process.MEDIA_UID, 2);
            } else {
                qt.y0(Process.MEDIA_UID, -1);
            }
            if (nt.f8633a == 1769915) {
                if ((bArr[i2 + 5] & 1) == 1) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            return;
        }
        if (b4 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 65) {
            u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
            u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
            u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
            u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
            int i19 = i2 + 6;
            int i20 = bArr[i19] & 255;
            int i21 = i2 + 7;
            int i22 = bArr[i21] & 255;
            int i23 = i2 + 8;
            int i24 = bArr[i23] & 255;
            int i25 = i2 + 9;
            int i26 = bArr[i25] & 255;
            if (l0.c0.f13013g != i20 || l0.c0.f13014h != i22 || l0.c0.f13015i != i24 || l0.c0.f13016j != i26) {
                l0.c0.f13013g = i20;
                l0.c0.f13014h = i22;
                l0.c0.f13015i = i24;
                l0.c0.f13016j = i26;
                if (u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
            }
            u0.d.D2(l0.h0.o(bArr[i19] & 255));
            u0.d.E2(l0.h0.o(bArr[i21] & 255));
            u0.d.F2(l0.h0.o(bArr[i23] & 255));
            u0.d.G2(l0.h0.o(bArr[i25] & 255));
            return;
        }
        if (b4 == 17) {
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            this.f8500c = b8 & 255;
            int i27 = 0;
            while (true) {
                iArr = this.f8506i;
                if (i27 >= iArr.length) {
                    break;
                }
                int i28 = this.f8500c;
                if (i28 == iArr[i27][0]) {
                    if (i28 == 0) {
                        break;
                    }
                    this.f8499b = i27;
                    break;
                }
                i27++;
            }
            int i29 = this.f8500c;
            if (i29 != 5) {
                if (i29 != 6) {
                    if ((b9 & 255) == 0) {
                        int i30 = this.f8499b;
                        if (i30 < iArr.length && i30 != 255) {
                            l0.b0.l0(iArr[i30][1], 1);
                            l0.b0.o0(this.G);
                            this.F = (byte) 0;
                        }
                        this.f8499b = 255;
                    } else if (i27 < iArr.length && (b2 = this.F) == 0) {
                        this.F = (byte) (b2 + 1);
                        l0.b0.l0(iArr[i27][1], 0);
                        l0.b0.a(this.G);
                    }
                } else if ((b9 & 255) == 1) {
                    if (a.i.k("persist.fyt.canbus_key_next", 0) == 1) {
                        c.e.d().c(574);
                    } else {
                        c.e.d().c(575);
                    }
                }
            } else if ((b9 & 255) == 1) {
                if (a.i.k("persist.fyt.canbus_key_next", 0) == 1) {
                    c.e.d().c(575);
                } else {
                    c.e.d().c(574);
                }
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        if (b4 == 18) {
            byte b10 = bArr[i2 + 4];
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(2, (b10 >> 7) & 1);
                qt.y0(1, (b10 >> 6) & 1);
            } else {
                qt.y0(1, (b10 >> 7) & 1);
                qt.y0(2, (b10 >> 6) & 1);
            }
            qt.y0(3, (b10 >> 5) & 1);
            qt.y0(4, (b10 >> 4) & 1);
            qt.y0(5, (b10 >> 3) & 1);
            return;
        }
        if (b4 == 33) {
            if (SystemProperties.getInt("persist.fyt.hiworldbuttontype", 0) == 1) {
                this.f8509l = bArr[i2 + 2] & 255;
                byte b11 = bArr[i2 + 3];
                int i31 = 0;
                while (true) {
                    iArr3 = this.f8513p;
                    if (i31 >= iArr3.length) {
                        break;
                    }
                    int i32 = this.f8509l;
                    if (i32 == iArr3[i31][0]) {
                        if (i32 == 0) {
                            break;
                        }
                        this.f8508k = i31;
                        break;
                    }
                    i31++;
                }
                if ((b11 & 255) != 0 && this.f8510m == 0) {
                    if (i31 < iArr3.length) {
                        l0.b0.l0(iArr3[i31][1], 0);
                        this.f8510m = 1;
                        return;
                    }
                    return;
                }
                int i33 = this.f8508k;
                if (i33 < iArr3.length) {
                    i6 = 255;
                    if (i33 != 255) {
                        l0.b0.l0(iArr3[i33][1], 1);
                    }
                } else {
                    i6 = 255;
                }
                this.f8508k = i6;
                this.f8510m = 0;
                return;
            }
            this.f8501d = bArr[i2 + 2] & 255;
            byte b12 = bArr[i2 + 3];
            int i34 = 0;
            while (true) {
                iArr2 = this.f8507j;
                if (i34 >= iArr2.length) {
                    break;
                }
                int i35 = this.f8501d;
                if (i35 == iArr2[i34][0]) {
                    if (i35 == 0) {
                        break;
                    }
                    this.f8502e = i34;
                    break;
                }
                i34++;
            }
            int i36 = this.f8501d;
            if (i36 == 0) {
                if (this.f8505h != 1) {
                    int i37 = this.f8502e;
                    if (i37 < iArr2.length) {
                        i4 = 255;
                        if (i37 != 255) {
                            l0.b0.l0(iArr2[i37][1], 1);
                            l0.b0.o0(this.G);
                            this.F = (byte) 0;
                        }
                    } else {
                        i4 = 255;
                    }
                    this.f8502e = i4;
                } else if (this.H < 20) {
                    if (u0.b.f17320f == 0) {
                        u0.d.U1(1);
                    } else {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                }
                this.H = (byte) 0;
                this.f8504g = 0;
                this.f8505h = 0;
                l0.b0.o0(this.I);
                return;
            }
            if (i36 == 1) {
                if (this.f8504g != b12) {
                    this.f8504g = b12;
                    if (b12 == 1) {
                        l0.b0.a(this.I);
                        this.f8505h = this.f8501d;
                        return;
                    }
                    return;
                }
                return;
            }
            if ((b12 & 255) != 0) {
                if (i34 >= iArr2.length || (b3 = this.F) != 0) {
                    return;
                }
                this.F = (byte) (b3 + 1);
                l0.b0.l0(iArr2[i34][1], 0);
                l0.b0.a(this.G);
                return;
            }
            int i38 = this.f8502e;
            if (i38 < iArr2.length) {
                i5 = 255;
                if (i38 != 255) {
                    l0.b0.l0(iArr2[i38][1], 1);
                    l0.b0.o0(this.G);
                    this.F = (byte) 0;
                }
            } else {
                i5 = 255;
            }
            this.f8502e = i5;
            return;
        }
        if (b4 == 34) {
            if (SystemProperties.getInt("persist.fyt.hiworldbuttontype", 0) != 1) {
                byte b13 = bArr[i2 + 2];
                byte b14 = bArr[i2 + 3];
                if (b13 == 1) {
                    if (b14 > 0) {
                        for (int i39 = 0; i39 < b14; i39++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        return;
                    }
                    if (b14 < 0) {
                        for (int i40 = 0; i40 < 0 - b14; i40++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        return;
                    }
                    return;
                }
                if (b13 != 2) {
                    return;
                }
                if (b14 > 0) {
                    for (int i41 = 0; i41 < b14; i41++) {
                        l0.b0.l0(31, 0);
                    }
                    l0.b0.l0(31, 1);
                    return;
                }
                if (b14 < 0) {
                    for (int i42 = 0; i42 < 0 - b14; i42++) {
                        l0.b0.l0(30, 0);
                    }
                    l0.b0.l0(30, 1);
                    return;
                }
                return;
            }
            byte b15 = bArr[i2 + 2];
            byte b16 = bArr[i2 + 3];
            if (b15 != 1) {
                if (b15 == 2 && b16 != (i7 = this.f8512o)) {
                    if (b16 > i7) {
                        for (int i43 = 0; i43 < b16 - this.f8512o; i43++) {
                            l0.b0.l0(31, 0);
                            l0.b0.l0(31, 1);
                        }
                    } else if (b16 < i7) {
                        for (int i44 = 0; i44 < this.f8512o - b16; i44++) {
                            l0.b0.l0(30, 0);
                            l0.b0.l0(30, 1);
                        }
                    }
                    this.f8512o = b16;
                    return;
                }
                return;
            }
            int i45 = this.f8511n;
            if (b16 != i45) {
                if (b16 > i45) {
                    for (int i46 = 0; i46 < b16 - this.f8511n; i46++) {
                        l0.b0.l0(7, 0);
                        l0.b0.l0(7, 1);
                    }
                } else if (b16 < i45) {
                    for (int i47 = 0; i47 < this.f8511n - b16; i47++) {
                        l0.b0.l0(8, 0);
                        l0.b0.l0(8, 1);
                    }
                }
                this.f8511n = b16;
                return;
            }
            return;
        }
        if (b4 != 49) {
            if (b4 == 50) {
                qt.y0(1032, (bArr[i2 + 5] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
            if (b4 == 97) {
                qt.y0(101, bArr[i2 + 4] & 255);
                int i48 = i2 + 2;
                qt.y0(120, (bArr[i48] >> 5) & 1);
                qt.y0(121, (bArr[i48] >> 4) & 1);
                qt.y0(122, (bArr[i48] >> 0) & 1);
                qt.y0(128, bArr[i2 + 11] & 255);
                return;
            }
            if (b4 == 98) {
                int i49 = i2 + 2;
                qt.y0(111, 3 & (bArr[i49] >> 1));
                qt.y0(112, (bArr[i49] >> 0) & 1);
                qt.y0(113, bArr[i2 + 3] & 255);
                qt.y0(114, bArr[i2 + 5] & 255);
                return;
            }
            if (b4 == 103) {
                byte b17 = bArr[i2 + 3];
                qt.y0(100, (b17 >> 2) & 1);
                qt.y0(115, (b17 >> 0) & 1);
                qt.y0(116, (b17 >> 1) & 1);
                qt.y0(117, (b17 >> 3) & 1);
                qt.y0(118, (b17 >> 4) & 1);
                return;
            }
            if (b4 != 104) {
                return;
            }
            byte b18 = bArr[i2 + 3];
            int i50 = (b18 >> 4) & 1;
            qt.y0(37, i50);
            qt.y0(110, (b18 >> 0) & 1);
            this.f8517t = i50;
            q3(this.f8518u);
            return;
        }
        byte b19 = bArr[i2 + 2];
        byte b20 = bArr[i2 + 3];
        byte b21 = bArr[i2 + 4];
        byte b22 = bArr[i2 + 5];
        byte b23 = bArr[i2 + 6];
        byte b24 = bArr[i2 + 7];
        int i51 = i2 + 8;
        byte b25 = bArr[i51];
        int i52 = i2 + 9;
        byte b26 = bArr[i52];
        byte b27 = bArr[i2 + 10];
        byte b28 = bArr[i2 + 11];
        byte b29 = bArr[i2 + 12];
        this.f8518u = bArr[i2 + 13] & 255;
        qt.y0(10, (b19 >> 6) & 1);
        qt.y0(14, (b19 >> 2) & 1);
        qt.y0(53, (b20 >> 6) & 1);
        qt.y0(66, (b20 >> 5) & 1);
        int[] iArr4 = new int[1];
        iArr4[0] = ((b20 >> 4) & 1) == 1 ? 0 : 1;
        qt.y0(12, iArr4);
        qt.y0(13, (b20 >> 3) & 1);
        qt.y0(17, (b20 >> 1) & 1);
        qt.y0(11, (b20 >> 0) & 1);
        qt.y0(73, (b21 >> 6) & 3);
        qt.y0(16, (b21 >> 5) & 1);
        qt.y0(65, (b21 >> 4) & 1);
        qt.y0(30, (b21 >> 2) & 3);
        qt.y0(29, (b21 >> 0) & 3);
        qt.y0(32, (b22 >> 2) & 3);
        qt.y0(31, (b22 >> 0) & 3);
        int i53 = b23 & 255;
        if (i53 == 1) {
            i8 = 0;
            i9 = 0;
            i10 = 0;
            i11 = 1;
        } else if (i53 == 2) {
            i11 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 1;
        } else if (i53 == 3) {
            i11 = 0;
            i8 = 0;
            i10 = 0;
            i9 = 1;
        } else if (i53 == 5) {
            i11 = 0;
            i10 = 0;
            i8 = 1;
            i9 = 1;
        } else if (i53 != 6) {
            switch (i53) {
                case 11:
                    i11 = 0;
                    i8 = 0;
                    i9 = 0;
                    i10 = 1;
                    break;
                case 12:
                    i11 = 0;
                    i8 = 0;
                    i9 = 1;
                    i10 = i9;
                    break;
                case 13:
                    i11 = 0;
                    i9 = 0;
                    i8 = 1;
                    i10 = 1;
                    break;
                case 14:
                    i11 = 0;
                    i8 = 1;
                    i9 = i8;
                    i10 = i9;
                    break;
                default:
                    i11 = 0;
                    i8 = 0;
                    i9 = i8;
                    i10 = i9;
                    break;
            }
        } else {
            i11 = 0;
            i9 = 0;
            i10 = 0;
            i8 = 1;
        }
        qt.y0(49, i11);
        qt.y0(19, i8);
        qt.y0(20, i9);
        qt.y0(18, i10);
        qt.y0(21, b24 & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b25 = bArr[i52];
            b26 = bArr[i51];
        }
        byte b30 = b26;
        int i54 = b25 & 255;
        if (i54 == 254) {
            qt.y0(27, -2);
        } else if (i54 != 255) {
            qt.y0(27, i54 * 5);
        } else {
            qt.y0(27, -3);
        }
        int i55 = b30 & 255;
        if (i55 == 254) {
            qt.y0(28, -2);
        } else if (i55 != 255) {
            qt.y0(28, i55 * 5);
        } else {
            qt.y0(28, -3);
        }
        qt.y0(67, (b27 >> 7) & 1);
        qt.y0(42, (b27 >> 6) & 1);
        qt.y0(44, b28 & 255);
        qt.y0(40, 255 & b29);
        q3(this.f8518u);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8521x);
        l0.b0.p0(this.f8522y);
        u0.c.f17397x.d(this.E);
        qt.q0(this.f8519v);
        h0.d.f2464c.d(this.N);
        o1.y yVar = h0.d.f2462a;
        yVar.d(this.O);
        yVar.d(this.N);
        u0.c.f17388o.d(this.J);
        u0.c.f17389p.d(this.L);
        qt.q0(this.D);
        w0.e.f17815a.d(this.f8519v);
        w0.e.f17819e.d(this.f8519v);
        o1.h.f16865a.d(this.C);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 129) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, (byte) iArr[0], (byte) iArr[1]);
        }
        if (i2 == 17) {
            z.k.s(227, 2, 61, (byte) iArr[0], (byte) iArr[1]);
            return;
        }
        if (i2 == 1005) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = iArr[0];
            if (i3 == 0) {
                z.k.s(227, 2, -14, 8, nt.f8645g[1013] == 0 ? 0 : 1);
                return;
            } else {
                if (i3 != 2) {
                    return;
                }
                z.k.s(227, 2, -14, 9, nt.f8645g[1013] == 2 ? 0 : 1);
                return;
            }
        }
        switch (i2) {
            case 4:
                z.k.s(227, 2, 109, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 5:
                z.k.s(227, 2, -14, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 6:
                z.k.s(227, 2, 108, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 7:
                z.k.s(227, 4, 111, (byte) iArr[0], (byte) iArr[1], 0, 0);
                break;
            case 8:
                z.k.s(227, 2, -83, (byte) iArr[0], (byte) iArr[1]);
                break;
            case 9:
                z.k.s(227, 2, -118, (byte) iArr[0], (byte) iArr[1]);
                break;
        }
    }

    public final void c3(int i2) {
        z.k.s(227, 2, 61, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 2, 61, i2, 0);
    }

    public final void p3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() < 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void q3(int i2) {
        u0.d.A3(this.f8517t == 0 ? ((i2 * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 32768 : (i2 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
    }

    public final void r3(String str) {
        if (str == null) {
            return;
        }
        int length = str.length() <= 24 ? str.length() : 24;
        byte[] bArr = new byte[30];
        byte[] bytes = str.getBytes();
        for (int i2 = length; i2 < 30; i2++) {
            bArr[i2] = 32;
        }
        for (int i3 = 0; i3 < length; i3++) {
            bArr[i3] = bytes[i3];
        }
        int[] iArr = new int[31];
        iArr[0] = -29;
        iArr[1] = 27;
        iArr[2] = -51;
        switch (h0.c.E) {
            case 0:
                iArr[3] = 6;
                break;
            case 1:
                iArr[3] = 6;
                break;
            case 2:
                iArr[3] = 0;
                break;
            case 3:
                iArr[3] = 2;
                break;
            case 4:
                iArr[3] = 1;
                break;
            case 5:
                iArr[3] = 4;
                break;
            case 6:
                iArr[3] = 6;
                break;
            default:
                iArr[3] = -51;
                break;
        }
        iArr[4] = 0;
        String str2 = h0.c.f2454s;
        if (str2 == null) {
            iArr[5] = 0;
        } else {
            iArr[5] = Integer.valueOf(str2).intValue();
        }
        for (int i4 = 0; i4 < length; i4++) {
            iArr[i4 + 6] = bArr[i4];
        }
        z.k.s(iArr);
    }
}
