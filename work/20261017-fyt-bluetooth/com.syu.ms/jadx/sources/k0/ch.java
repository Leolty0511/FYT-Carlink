package k0;

import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.BatteryStats;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import com.syu.jni.ToolsJni;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ch extends lt {
    public static int L = 0;
    public static int M = 0;
    public static int N = 0;
    public static int O = 0;
    public static int P = 255;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4034c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4035d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 76}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{12, 9}, new int[]{13, 82}, new int[]{14, 33}, new int[]{15, 32}, new int[]{16, 6}, new int[]{17, -1}, new int[]{18, -1}, new int[]{19, -1}, new int[]{20, -1}, new int[]{21, 24}, new int[]{22, 1}, new int[]{23, 54}, new int[]{24, 0}, new int[]{25, 13}, new int[]{26, 58}, new int[]{27, 5}, new int[]{29, 38}, new int[]{32, 36}, new int[]{33, 74}, new int[]{34, 75}, new int[]{35, 25}, new int[]{36, 54}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4036e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4037f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4038g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4039h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f4040i = new c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f4041j = new d();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4042k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f4043l = new e();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4044m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4045n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4046o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f4047p = new f();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f4048q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4049r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f4050s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f4051t = new h();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f4052u = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f4053v = 13;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f4054w = 7;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f4055x = 2;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public o1.g0 f4056y = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f4057z = 0;
    public Runnable A = new i();
    public Runnable B = new j();
    public int C = 0;
    public Runnable D = new k();
    public long E = -1;
    public byte F = -1;
    public float G = 0.0f;
    public int H = 255;
    public int I = 255;
    public Runnable J = new a();
    public Runnable K = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ch.this.G = u0.b.f17359s0;
            o1.b0.i("GPS: " + u0.b.f17359s0);
            if (ch.this.G > 360.0f) {
                ch.f3(ch.this, 360.0f);
            }
            if (ch.this.G < 0.0f) {
                ch.f3(ch.this, 360.0f);
                ch chVar = ch.this;
                chVar.G = 360.0f - Math.abs(chVar.G);
            }
            if ((ch.this.G <= 22.5d && ch.this.G >= 0.0f) || (ch.this.G >= 337.5d && ch.this.G <= 360.0f)) {
                ch.this.I = 1;
            } else if (ch.this.G > 22.5d && ch.this.G < 67.5d) {
                ch.this.I = 2;
            } else if (ch.this.G >= 67.5d && ch.this.G <= 112.5d) {
                ch.this.I = 3;
            } else if (ch.this.G > 112.5d && ch.this.G < 157.5d) {
                ch.this.I = 4;
            } else if (ch.this.G >= 157.5d && ch.this.G <= 202.5d) {
                ch.this.I = 5;
            } else if (ch.this.G > 202.5d && ch.this.G < 247.5d) {
                ch.this.I = 6;
            } else if (ch.this.G >= 247.5d && ch.this.G <= 292.5d) {
                ch.this.I = 7;
            } else if (ch.this.G <= 292.5d || ch.this.G >= 337.5d) {
                ch.this.I = 0;
            } else {
                ch.this.I = 8;
            }
            if (ch.this.I != ch.this.H) {
                z.k.s(227, -58, 2, 16, ch.this.I);
                ch chVar2 = ch.this;
                chVar2.H = chVar2.I;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.H();
            a.f.p().t(LogType.CANBUS, "appId_prev === " + ch.P + "    DataMain.sAppId === " + u0.b.D);
            switch (nt.f8633a) {
                case 9830855:
                case 9896391:
                case 9961927:
                case 10289607:
                case 12583367:
                case 13500871:
                    int i2 = ch.P;
                    int i3 = u0.b.D;
                    if (i2 != i3) {
                        if (i3 != 13) {
                            z.k.s(227, -126, 3, 0, 0, 0);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                            qt.y0(151, 0);
                            ch chVar = ch.this;
                            if (chVar.f4044m) {
                                chVar.a3(false);
                            }
                        }
                        ch.P = u0.b.D;
                    }
                    break;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 10 || i2 == 9) {
                ch.this.u3((byte) -56, u0.b.i3);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            int i2 = w0.d.f17796h;
            if (i2 < 65536 || i2 > 65538) {
                str = ((((((ProxyProperties.LOCAL_EXCL_LIST + ((w0.d.f17797i / 1000) % 10)) + ((w0.d.f17797i / 100) % 10)) + ((w0.d.f17797i / 10) % 10)) + (w0.d.f17797i % 10)) + 'K') + DateFormat.HOUR) + DateFormat.TIME_ZONE;
            } else if (w0.d.f17797i / 10000 == 0) {
                str = (((((((ProxyProperties.LOCAL_EXCL_LIST + ((w0.d.f17797i / 1000) % 10)) + ((w0.d.f17797i / 100) % 10)) + '.') + ((w0.d.f17797i / 10) % 10)) + (w0.d.f17797i % 10)) + DateFormat.MONTH) + DateFormat.HOUR) + DateFormat.TIME_ZONE;
            } else {
                str = ((((((((ProxyProperties.LOCAL_EXCL_LIST + (w0.d.f17797i / 10000)) + ((w0.d.f17797i / 1000) % 10)) + ((w0.d.f17797i / 100) % 10)) + '.') + ((w0.d.f17797i / 10) % 10)) + (w0.d.f17797i % 10)) + DateFormat.MONTH) + DateFormat.HOUR) + DateFormat.TIME_ZONE;
            }
            ch.this.u3((byte) -56, str);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            int i3 = ch.this.f4042k;
            if (i2 != i3) {
                if (i3 == 13) {
                    switch (nt.f8633a) {
                        case 1900998:
                        case 6291895:
                        case 6422967:
                        case 9830855:
                        case 9896391:
                        case 9961927:
                        case 10289607:
                        case 12517831:
                        case 12583367:
                        case 13500871:
                            if (ch.O == 1) {
                                z.k.s(227, 165, 2, 1, 0);
                            }
                            break;
                    }
                }
                ch.this.f4042k = u0.b.D;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ch.this.f4046o = y0.f.Q0;
            if (u0.b.D != 13 && !o1.u.a0()) {
                ch chVar = ch.this;
                if (chVar.f4044m) {
                    chVar.a3(false);
                    return;
                }
                return;
            }
            int i2 = y0.f.Q0;
            if (i2 != 0) {
                if (i2 != 1) {
                    return;
                }
                ch.this.a3(true);
            } else if (u0.b.j4 == 0) {
                ch.this.a3(false);
            }
        }
    }

    public class g implements o1.p {
        public g() {
        }

        @Override // o1.p
        public void d(Object obj) {
            ch chVar = ch.this;
            int i2 = chVar.f4048q;
            int i3 = y0.f.T0;
            if (i2 != i3) {
                chVar.f4048q = i3;
                int i4 = h0.c.E;
                if (i4 == 3 || i4 == 4 || i4 == 5) {
                    return;
                }
                if (u0.b.D != 13 && !o1.u.a0()) {
                    ch chVar2 = ch.this;
                    if (chVar2.f4044m) {
                        chVar2.a3(false);
                        return;
                    }
                    return;
                }
                int i5 = y0.f.T0;
                if (i5 != 0) {
                    if (i5 != 1) {
                        return;
                    }
                    ch.this.a3(true);
                } else if (y0.f.Q0 == 0) {
                    ch.this.a3(false);
                }
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 255, 1, 10);
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 9830855:
                case 9896391:
                case 9961927:
                case 10289607:
                case 12583367:
                case 13500871:
                    SystemProperties.set("persist.lesc.video.ignore", "false");
                    qt.y0(151, 0);
                    String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
                    if ("6521".equals(str)) {
                        ToolsJni.cmd_31_fan_en(0);
                    } else if ("6316".equals(str) || "6312".equals(str)) {
                        ToolsJni.cmd_251_Normal_Io_Set(13, 0);
                    } else if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
                        ToolsJni.cmd_251_Normal_Io_Set(14, 0);
                    } else {
                        ToolsJni.cmd_251_Normal_Io_Set(5, 0);
                    }
                    break;
            }
            l0.b0.b(ch.this.B);
            ch.this.f4057z = 5;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ch chVar = ch.this;
            int i2 = chVar.f4057z - 1;
            chVar.f4057z = i2;
            if (i2 <= 0) {
                l0.b0.p0(chVar.B);
                ch.this.f4057z = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            ch chVar2 = ch.this;
            chVar2.x3(chVar2.f4056y.b(1, 0));
            ch chVar3 = ch.this;
            chVar3.v3(chVar3.f4056y.b(2, 0));
            if (u0.b.f17306a0 == 1) {
                switch (nt.f8633a) {
                    case 1900998:
                    case 6291895:
                    case 9896391:
                    case 9961927:
                    case 10289607:
                        z.k.s(227, 198, 2, 19, 1);
                        break;
                    case 2556358:
                    case 3408311:
                    case 6226359:
                    case 6422967:
                    case 9830855:
                        z.k.s(227, 198, 2, 19, 0);
                        break;
                    case 12517831:
                    case 12583367:
                    case 13500871:
                        z.k.s(227, 198, 2, 19, 2);
                        break;
                }
                switch (nt.f8633a) {
                    case 1900998:
                    case 6422967:
                    case 9830855:
                    case 9896391:
                    case 9961927:
                    case 10289607:
                    case 12517831:
                    case 12583367:
                    case 13500871:
                        if (qt.n0("/sys/fytver/fyt_bin_version").contains("Ls18") || qt.n0("/sys/fytver/fyt_bin_version").contains("Lt18")) {
                            ch chVar4 = ch.this;
                            chVar4.w3(chVar4.f4056y.b(13, 0));
                            ch chVar5 = ch.this;
                            chVar5.y3(chVar5.f4056y.b(7, 0));
                        }
                        break;
                }
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            if (ch.this.E != millis || ch.this.F != b2) {
                ch.this.E = millis;
                ch.this.F = b2;
                byte b3 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
                byte b4 = (byte) (time.month + 1);
                byte b5 = (byte) time.monthDay;
                byte b6 = (byte) time.hour;
                byte b7 = (byte) time.minute;
                if (b2 == 1) {
                    z.k.s(227, 198, 6, 0, 0, 0, 0, 0, 0);
                } else if (b2 == 0) {
                    z.k.s(227, 198, 6, 0, 1, 0, 0, 0, 0);
                }
                z.k.s(227, 198, 6, 1, b3, b4, b5, b6, b7);
            }
            int i2 = u0.b.D;
            if (i2 != 8 && i2 != 10) {
                ch.this.C = 0;
                return;
            }
            ch chVar = ch.this;
            int i3 = chVar.C + 1;
            chVar.C = i3;
            if (i3 > 4) {
                chVar.u3((byte) -56, u0.b.i3);
                ch.this.C = 0;
            }
        }
    }

    public static /* synthetic */ float f3(ch chVar, float f2) {
        float f3 = chVar.G % f2;
        chVar.G = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f4056y.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 1;
        mtVar.f8315j = 0;
        mtVar.f8319n = 0;
        mtVar.f8320o = 1;
        mtVar.f8314i = 0;
        switch (nt.f8633a) {
            case 1900998:
            case 6422967:
            case 12517831:
                mtVar.f8317l = 1;
                if ((a.f.w() == 1920 && a.f.i() == 720) || ((a.f.w() == 1920 && a.f.i() == 860) || (a.f.w() == 2400 && a.f.i() == 896))) {
                    this.f7886a.f8314i = 1;
                }
                break;
            case 6291895:
                mtVar.f8317l = 1;
                break;
            case 9830855:
            case 9896391:
            case 9961927:
            case 10289607:
            case 12583367:
            case 13500871:
                mtVar.f8317l = 1;
                if ((a.f.w() == 1920 && a.f.i() == 720) || ((a.f.w() == 1920 && a.f.i() == 860) || (a.f.w() == 2400 && a.f.i() == 896))) {
                    this.f7886a.f8314i = 1;
                }
                y0.g.f18110t.a(this.f4047p, 1);
                y0.g.f18101k.a(new g());
                break;
            default:
                mtVar.f8317l = 0;
                break;
        }
        u0.c.f17386m.a(this.A, 1);
        qt.z(this.D);
        o1.y yVar = w0.e.f17815a;
        yVar.a(this.K, 1);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.a(this.K, 1);
        o1.y yVar3 = u0.c.f17392s;
        yVar3.a(this.K, 1);
        o1.h.f16865a.a(this.J, 1);
        yVar.a(this.f4041j, 1);
        w0.e.f17819e.a(this.f4041j, 1);
        yVar3.a(this.f4040i, 1);
        u0.c.f17388o.a(this.f4040i, 1);
        yVar2.a(this.f4043l, 1);
        qt.x(this.f4051t);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        char c2;
        byte b2;
        int[][] iArr;
        byte b3;
        byte b4 = bArr[i2];
        if (b4 == 10) {
            qt.j(bArr[i2 + 3], bArr[i2 + 4], (bArr[i2 + 2] & 1) != 1 ? 1 : 0, 480);
        }
        if (b4 == 31) {
            int i4 = i2 + 2;
            qt.y0(131, (bArr[i4] >> 0) & 15);
            qt.y0(132, (bArr[i4] >> 6) & 1);
            qt.y0(133, (bArr[i4] >> 7) & 1);
            int i5 = i2 + 3;
            qt.y0(134, (bArr[i5] >> 0) & 1);
            qt.y0(135, (bArr[i5] >> 1) & 1);
            qt.y0(136, (bArr[i5] >> 2) & 1);
            qt.y0(137, (bArr[i5] >> 3) & 1);
            qt.y0(138, (bArr[i5] >> 4) & 1);
            qt.y0(139, (bArr[i5] >> 5) & 1);
            qt.y0(140, bArr[i2 + 4] & 255);
            qt.y0(141, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
            return;
        }
        if (b4 == 56) {
            qt.y0(113, bArr[i2 + 2] & 255);
            int i6 = i2 + 3;
            qt.y0(114, (bArr[i6] >> 4) & 15);
            qt.y0(115, (bArr[i6] >> 3) & 1);
            qt.y0(116, (bArr[i6] >> 2) & 1);
            qt.y0(117, (bArr[i6] >> 1) & 1);
            qt.y0(118, (bArr[i6] >> 0) & 1);
            int i7 = i2 + 4;
            qt.y0(119, (bArr[i7] >> 7) & 1);
            qt.y0(120, (bArr[i7] >> 5) & 3);
            qt.y0(121, (bArr[i7] >> 4) & 1);
            qt.y0(122, (bArr[i7] >> 3) & 1);
            qt.y0(123, (bArr[i7] >> 2) & 1);
            qt.y0(124, (bArr[i7] >> 0) & 3);
            qt.y0(125, bArr[i2 + 5] & 255);
            return;
        }
        if (b4 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 64) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            if (b5 == 0) {
                int i8 = b6 & 255;
                if (i8 == 6) {
                    l0.b0.l0(3, 0);
                    l0.b0.l0(3, 1);
                    return;
                } else {
                    if (i8 == 7) {
                        l0.b0.l0(4, 0);
                        l0.b0.l0(4, 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b4 == 65) {
            int i9 = nt.f8633a;
            if (i9 == 1900998 || i9 == 2556358 || i9 == 9896391) {
                return;
            }
            int i10 = i2 + 3;
            if (this.f4050s != ((bArr[i10] >> 7) & 1)) {
                int i11 = (bArr[i10] >> 7) & 1;
                this.f4050s = i11;
                if (i11 == 1) {
                    qt.a(1);
                    c2 = 0;
                } else {
                    c2 = 0;
                    qt.a(0);
                }
            } else {
                c2 = 0;
            }
            int[] iArr2 = new int[1];
            iArr2[c2] = bArr[i2 + 2] & 255;
            qt.y0(Process.MEDIA_UID, iArr2);
            return;
        }
        switch (b4) {
            case 1:
                if (u0.b.f17357r0 == 0) {
                    int i12 = i2 + 2;
                    if (this.f4036e == ((bArr[i12] >> 2) & 1)) {
                        b2 = 6;
                        if (this.f4037f == ((bArr[i12] >> 6) & 1)) {
                        }
                    } else {
                        b2 = 6;
                    }
                    int i13 = (bArr[i12] >> 2) & 1;
                    this.f4036e = i13;
                    int i14 = (bArr[i12] >> b2) & 1;
                    this.f4037f = i14;
                    if (i13 == 1 || i14 == 1) {
                        if (!this.f4038g && !o1.u.a0()) {
                            this.f4038g = true;
                            qt.y0(151, 1);
                            SystemProperties.set("persist.lesc.video.ignore", "true");
                            a.i.a0(400L);
                            o1.u.z();
                            int i15 = (int) (y0.f.f18085x == 0 ? ((y0.f.f18037c * y0.f.R) / y0.f.S) + 0.5f : 0.0f);
                            this.f4039h = y0.f.f18037c;
                            a.f.p().t(LogType.CANBUS, "HandlerSound.volSrc 111 === " + i15 + "------ SrcVolPre === " + this.f4039h);
                            y0.h.t0(i15);
                        }
                        u0.d.C2(0);
                        break;
                    } else if (i13 == 0 && i14 == 0) {
                        if (this.f4038g && o1.u.a0()) {
                            qt.y0(151, 0);
                            y0.h.t0(this.f4039h);
                            a.i.a0(350L);
                            SystemProperties.set("persist.lesc.video.ignore", "false");
                        }
                        this.f4038g = false;
                        break;
                    }
                }
                break;
            case 2:
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                this.f4034c = b7 & 255;
                int i16 = 0;
                while (true) {
                    iArr = this.f4035d;
                    if (i16 < iArr.length) {
                        int i17 = this.f4034c;
                        if (i17 != iArr[i16][0]) {
                            i16++;
                        } else if (i17 != 0) {
                            this.f4033b = i16;
                        }
                    }
                }
                int i18 = this.f4034c;
                if (i18 != 64) {
                    if (i18 != 65) {
                        switch (i18) {
                            case 17:
                                for (int i19 = 0; i19 < (b8 & 255); i19++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                                break;
                            case 18:
                                for (int i20 = 0; i20 < (b8 & 255); i20++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                                break;
                            case 19:
                                break;
                            case 20:
                                break;
                            default:
                                int i21 = b8 & 255;
                                if (i21 == 1) {
                                    if (i16 < iArr.length) {
                                        l0.b0.l0(iArr[i16][1], 0);
                                    }
                                } else if (i21 == 0) {
                                    int i22 = this.f4033b;
                                    if (i22 < iArr.length && i22 != 255) {
                                        l0.b0.l0(iArr[i22][1], 1);
                                    }
                                    this.f4033b = 255;
                                }
                                break;
                        }
                    }
                    int i23 = 0;
                    int i24 = 0;
                    while (i24 < (b8 & 255)) {
                        l0.b0.l0(80, i23);
                        i24++;
                        i23 = 0;
                    }
                    l0.b0.l0(80, 1);
                }
                for (int i25 = 0; i25 < (b8 & 255); i25++) {
                    l0.b0.l0(81, 0);
                }
                l0.b0.l0(81, 1);
                break;
            case 3:
                int i26 = bArr[i2 + 2] & 255;
                int i27 = bArr[i2 + 3] & 255;
                qt.y0(10, (i26 >> 7) & 1);
                qt.y0(11, (i26 >> 6) & 1);
                qt.y0(12, (i26 >> 5) & 1);
                qt.y0(13, (i26 >> 4) & 1);
                qt.y0(26, (i26 >> 3) & 1);
                qt.y0(62, (i26 >> 2) & 1);
                qt.y0(65, (i26 >> 1) & 1);
                qt.y0(16, (i26 >> 0) & 1);
                qt.y0(18, (i27 >> 7) & 1);
                qt.y0(19, (i27 >> 6) & 1);
                qt.y0(20, (i27 >> 5) & 1);
                qt.y0(49, (i27 >> 4) & 1);
                qt.y0(21, i27 & 15);
                int i28 = i2 + 4;
                int i29 = bArr[i28] & 255;
                int i30 = i2 + 5;
                int i31 = bArr[i30] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i29 = bArr[i30] & 255;
                    i31 = bArr[i28] & 255;
                }
                if (i29 == 0) {
                    b3 = 0;
                    qt.y0(27, -2);
                } else {
                    b3 = 0;
                    if (i29 == 255) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i29);
                    }
                }
                if (i31 == 0) {
                    int[] iArr3 = new int[1];
                    iArr3[b3] = -2;
                    qt.y0(28, iArr3);
                } else if (i31 == 255) {
                    int[] iArr4 = new int[1];
                    iArr4[b3] = -3;
                    qt.y0(28, iArr4);
                } else {
                    int[] iArr5 = new int[1];
                    iArr5[b3] = i31;
                    qt.y0(28, iArr5);
                }
                int[] iArr6 = new int[1];
                int i32 = i2 + 6;
                iArr6[b3] = (bArr[i32] >> 5) & 1;
                qt.y0(98, iArr6);
                int[] iArr7 = new int[1];
                iArr7[b3] = (bArr[i32] >> 4) & 1;
                qt.y0(99, iArr7);
                int[] iArr8 = new int[1];
                iArr8[b3] = (bArr[i32] >> 3) & 1;
                qt.y0(53, iArr8);
                int[] iArr9 = new int[1];
                iArr9[b3] = (bArr[i32] >> 2) & 1;
                qt.y0(100, iArr9);
                int[] iArr10 = new int[1];
                iArr10[b3] = (bArr[i32] >> 1) & 1;
                qt.y0(101, iArr10);
                int[] iArr11 = new int[1];
                iArr11[b3] = (bArr[i32] >> b3) & 1;
                qt.y0(37, iArr11);
                int[] iArr12 = new int[1];
                int i33 = i2 + 7;
                iArr12[b3] = (bArr[i33] >> 6) & 3;
                qt.y0(29, iArr12);
                int[] iArr13 = new int[1];
                iArr13[b3] = (bArr[i33] >> 4) & 3;
                qt.y0(31, iArr13);
                int[] iArr14 = new int[1];
                iArr14[b3] = (bArr[i33] >> 2) & 3;
                qt.y0(30, iArr14);
                int[] iArr15 = new int[1];
                iArr15[b3] = (bArr[i33] >> b3) & 3;
                qt.y0(32, iArr15);
                int[] iArr16 = new int[1];
                int i34 = i2 + 8;
                iArr16[b3] = (bArr[i34] >> 7) & 1;
                qt.y0(22, iArr16);
                int[] iArr17 = new int[1];
                iArr17[b3] = (bArr[i34] >> 6) & 1;
                qt.y0(23, iArr17);
                int[] iArr18 = new int[1];
                iArr18[b3] = (bArr[i34] >> 5) & 1;
                qt.y0(24, iArr18);
                int[] iArr19 = new int[1];
                iArr19[b3] = (bArr[i34] >> 4) & 1;
                qt.y0(50, iArr19);
                int[] iArr20 = new int[1];
                iArr20[b3] = bArr[i34] & DhcpPacket.DHCP_DOMAIN_NAME;
                qt.y0(25, iArr20);
                int[] iArr21 = new int[1];
                int i35 = i2 + 9;
                iArr21[b3] = (bArr[i35] >> 7) & 1;
                qt.y0(102, iArr21);
                int[] iArr22 = new int[1];
                iArr22[b3] = (bArr[i35] >> 6) & 1;
                qt.y0(103, iArr22);
                int[] iArr23 = new int[1];
                iArr23[b3] = (bArr[i35] >> 5) & 1;
                qt.y0(104, iArr23);
                int[] iArr24 = new int[1];
                iArr24[b3] = (bArr[i35] >> 4) & 1;
                qt.y0(105, iArr24);
                int[] iArr25 = new int[1];
                iArr25[b3] = (bArr[i35] >> 3) & 1;
                qt.y0(106, iArr25);
                int[] iArr26 = new int[1];
                iArr26[b3] = (bArr[i35] >> 2) & 1;
                qt.y0(107, iArr26);
                int[] iArr27 = new int[1];
                iArr27[b3] = (bArr[i35] >> 1) & 1;
                qt.y0(108, iArr27);
                int[] iArr28 = new int[1];
                iArr28[b3] = (bArr[i35] >> b3) & 1;
                qt.y0(109, iArr28);
                break;
            case 4:
                u0.d.R2(l0.c0.E0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.E0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.E0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.E0(bArr[i2 + 5] & 255));
                break;
            case 5:
                int i36 = i2 + 2;
                int i37 = bArr[i36] & 255;
                int i38 = i2 + 3;
                int i39 = bArr[i38] & 255;
                int i40 = i2 + 4;
                int i41 = bArr[i40] & 255;
                int i42 = i2 + 5;
                int i43 = bArr[i42] & 255;
                if (i37 == 0 && i39 == 0 && i41 == 0 && i43 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i37 || l0.c0.f13014h != i39 || l0.c0.f13015i != i41 || l0.c0.f13016j != i43) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i37;
                l0.c0.f13014h = i39;
                l0.c0.f13015i = i41;
                l0.c0.f13016j = i43;
                u0.d.D2(l0.c0.E0(bArr[i36] & 255));
                u0.d.E2(l0.c0.E0(bArr[i38] & 255));
                u0.d.F2(l0.c0.E0(bArr[i40] & 255));
                u0.d.G2(l0.c0.E0(bArr[i42] & 255));
                break;
            case 6:
                int i44 = bArr[i2 + 2] & 255;
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (i44 >> 6) & 1);
                    qt.y0(1, (i44 >> 7) & 1);
                } else {
                    qt.y0(2, (i44 >> 7) & 1);
                    qt.y0(1, (i44 >> 6) & 1);
                }
                qt.y0(4, (i44 >> 5) & 1);
                qt.y0(3, (i44 >> 4) & 1);
                qt.y0(5, (i44 >> 3) & 1);
                qt.y0(0, (i44 >> 2) & 1);
                break;
            default:
                switch (b4) {
                    case 52:
                        byte b9 = bArr[i2 + 2];
                        if (b9 == 0) {
                            qt.y0(152, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(153, (16711680 & (bArr[i2 + 6] << 16)) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                            qt.y0(154, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                            qt.y0(155, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                            break;
                        } else if (b9 == 1) {
                            qt.y0(156, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(157, (16711680 & (bArr[i2 + 6] << 16)) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                            qt.y0(158, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                            qt.y0(159, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                            break;
                        }
                        break;
                    case 53:
                        int i45 = i2 + 6;
                        int i46 = i2 + 7;
                        qt.y0(110, ((bArr[i45] << 8) & 65280) | (bArr[i46] & 255));
                        qt.y0(1032, ((bArr[i45] << 8) & 65280) | (bArr[i46] & 255));
                        int i47 = i2 + 8;
                        if ((bArr[i47] & 255) == 0) {
                            u0.d.A3(0);
                        } else {
                            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? ((((bArr[i47] & 255) * 9) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : ((bArr[i47] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        }
                        if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                            int i48 = i2 + 2;
                            l0.c0.b((bArr[i48] >> 5) & 1, (bArr[i48] >> 4) & 1, 0);
                        } else {
                            int i49 = i2 + 2;
                            l0.c0.a((bArr[i49] >> 5) & 1, (bArr[i49] >> 4) & 1, 0);
                        }
                        qt.y0(111, (16711680 & (bArr[i2 + 10] << 16)) | ((bArr[i2 + 9] << 24) & (-16777216)) | ((bArr[i2 + 11] << 8) & 65280) | ((bArr[i2 + 12] << 0) & 255));
                        int i50 = i2 + 4;
                        int i51 = i2 + 5;
                        qt.y0(150, ((bArr[i50] << 8) & 65280) | (bArr[i51] & 255));
                        o1.x.C(nt.f8643f, 1049, new int[]{5, (bArr[i51] & 255) | ((bArr[i50] << 8) & 65280)}, null, null);
                        break;
                    case 54:
                        int i52 = i2 + 2;
                        qt.y0(142, bArr[i52] & 255);
                        int i53 = i2 + 3;
                        qt.y0(143, bArr[i53] & 255);
                        int i54 = i2 + 4;
                        qt.y0(144, bArr[i54] & 255);
                        int i55 = i2 + 5;
                        qt.y0(145, bArr[i55] & 255);
                        qt.y0(146, bArr[i2 + 6] & 255);
                        qt.y0(147, bArr[i2 + 7] & 255);
                        int i56 = i2 + 8;
                        qt.y0(148, bArr[i56] & 255);
                        qt.y0(149, bArr[i2 + 9] & 255);
                        int i57 = bArr[i56] & 255;
                        if (i57 == 0 || i57 == 1) {
                            o1.x[] xVarArr = nt.f8643f;
                            int i58 = ((i57 & 15) << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK;
                            o1.x.C(xVarArr, 1049, new int[]{8, (bArr[i52] & 255) | i58 | 256}, null, null);
                            o1.x.C(xVarArr, 1049, new int[]{8, (bArr[i53] & 255) | i58 | 512}, null, null);
                            o1.x.C(xVarArr, 1049, new int[]{8, i58 | 768 | (bArr[i54] & 255)}, null, null);
                            o1.x.C(xVarArr, 1049, new int[]{8, (bArr[i55] & 255) | i58 | 1024}, null, null);
                            break;
                        } else if (i57 == 2) {
                            o1.x[] xVarArr2 = nt.f8643f;
                            int i59 = ((i57 & 15) << 12) & BatteryStats.HistoryItem.STATE_DATA_CONNECTION_MASK;
                            o1.x.C(xVarArr2, 1049, new int[]{8, ((bArr[i52] & 255) * 4) | i59 | 256}, null, null);
                            o1.x.C(xVarArr2, 1049, new int[]{8, i59 | 512 | ((bArr[i53] & 255) * 4)}, null, null);
                            o1.x.C(xVarArr2, 1049, new int[]{8, ((bArr[i54] & 255) * 4) | i59 | 768}, null, null);
                            o1.x.C(xVarArr2, 1049, new int[]{8, ((bArr[i55] & 255) * 4) | i59 | 1024}, null, null);
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f4056y.j();
        u0.c.f17386m.d(this.A);
        l0.b0.p0(this.B);
        qt.q0(this.D);
        o1.y yVar = w0.e.f17815a;
        yVar.d(this.K);
        o1.y yVar2 = u0.c.f17374a;
        yVar2.d(this.K);
        o1.y yVar3 = u0.c.f17392s;
        yVar3.d(this.K);
        o1.h.f16865a.d(this.J);
        yVar.d(this.f4041j);
        w0.e.f17819e.d(this.f4041j);
        yVar3.d(this.f4040i);
        u0.c.f17388o.d(this.f4040i);
        yVar2.d(this.f4043l);
        qt.o0(this.f4051t);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 160) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                int i3 = iArr[0] & 255;
                if (i3 == 18) {
                    x3(iArr[1]);
                    return;
                }
                if (i3 == 248) {
                    v3(iArr[1]);
                    return;
                }
                if (i3 == 250) {
                    w3(iArr[1]);
                    return;
                } else if (i3 != 254) {
                    z.k.s(227, 198, 2, iArr[0], iArr[1]);
                    return;
                } else {
                    y3(iArr[1]);
                    return;
                }
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 2)) {
                z.k.s(227, 168, 2, iArr[0], iArr[1]);
            }
        } else if (i2 == 2) {
            if (T2(iArr, 5)) {
                z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            }
        } else if (i2 != 3) {
            if (i2 != 1005) {
                return;
            }
            z.k.s(227, 201, 1, iArr[0] + 1);
        } else if (T2(iArr, 2)) {
            z.k.s(227, 130, 3, iArr[0], iArr[1], 0);
        }
    }

    public final void a3(boolean z2) {
        if (u0.b.f17306a0 == 0) {
            return;
        }
        n1.b bVarP = a.f.p();
        LogType logType = LogType.CANBUS;
        bVarP.t(logType, "flag 1111111=== " + z2);
        if (this.f4044m == z2) {
            return;
        }
        this.f4044m = z2;
        a.f.p().t(logType, "SoundChangeTo 222222=== " + this.f4044m);
        String str = SystemProperties.get("ro.fyt.platform", ProxyProperties.LOCAL_EXCL_LIST);
        if ("6521".equals(str)) {
            if (z2) {
                ToolsJni.cmd_31_fan_en(1);
                return;
            } else {
                ToolsJni.cmd_31_fan_en(0);
                return;
            }
        }
        if ("6316".equals(str) || "6312".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(13, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(13, 0);
                return;
            }
        }
        if ("6315".equals(str) || "6318".equals(str) || "6319".equals(str)) {
            if (z2) {
                ToolsJni.cmd_251_Normal_Io_Set(14, 1);
                return;
            } else {
                ToolsJni.cmd_251_Normal_Io_Set(14, 0);
                return;
            }
        }
        if (z2) {
            ToolsJni.cmd_251_Normal_Io_Set(5, 1);
        } else {
            ToolsJni.cmd_251_Normal_Io_Set(5, 0);
        }
    }

    public final void u3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length() <= 9 ? str.length() : 9;
        int i2 = length * 2;
        int[] iArr = new int[i2 + 4];
        iArr[0] = 227;
        iArr[1] = b2;
        iArr[2] = i2 + 1;
        iArr[3] = 17;
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            iArr[i4 + 5] = (iCodePointAt >> 8) & 255;
            iArr[i4 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void v3(int i2) {
        qt.y0(130, i2);
        O = i2;
        int iB = this.f4056y.b(2, 0);
        int i3 = O;
        if (iB != i3) {
            this.f4056y.g(2, i3);
        }
    }

    public final void w3(int i2) {
        qt.y0(128, i2);
        M = i2;
        int iB = this.f4056y.b(13, 0);
        int i3 = M;
        if (iB != i3) {
            this.f4056y.g(13, i3);
        }
    }

    public final void x3(int i2) {
        qt.y0(127, i2);
        z.k.s(227, 198, 2, 18, i2);
        L = i2;
        int iB = this.f4056y.b(1, 0);
        int i3 = L;
        if (iB != i3) {
            this.f4056y.g(1, i3);
        }
    }

    public final void y3(int i2) {
        qt.y0(129, i2);
        N = i2;
        f1.q qVarE = f1.o.g().e(15);
        if (qVarE != null && (qVarE instanceof f1.l)) {
            int i3 = N;
            if (i3 == 0) {
                ((f1.l) qVarE).d0(-1);
            } else if (i3 == 1) {
                ((f1.l) qVarE).d0(222);
            } else if (i3 == 2) {
                ((f1.l) qVarE).d0(218);
            } else if (i3 == 3) {
                ((f1.l) qVarE).d0(219);
            }
        }
        int iB = this.f4056y.b(7, 0);
        int i4 = N;
        if (iB != i4) {
            this.f4056y.g(7, i4);
        }
    }
}
