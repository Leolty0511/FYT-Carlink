package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.Bundle;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class l1 extends lt {
    public static int K;
    public static int L;
    public static int[] M = {9, 9, 13, 8, 12, 7, 11, 8, 6, 9, 14, 2, 4, 1, 5, 15, 3, 2, 4, 8, 9};
    public static int N = 0;
    public static int O = 0;
    public int J;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7469g;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public h f7479q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public o1.g0 f7464b = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7465c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7466d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f7467e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f7468f = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7470h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f7471i = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 24}, new int[]{10, 25}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 5}, new int[]{20, 54}, new int[]{33, 7}, new int[]{34, 8}, new int[]{35, 29}, new int[]{36, 30}, new int[]{37, 31}, new int[]{38, 3}, new int[]{39, 4}, new int[]{40, 55}, new int[]{41, 1}, new int[]{42, 25}, new int[]{43, 64}, new int[]{44, 58}, new int[]{45, 18}, new int[]{46, 54}, new int[]{47, 38}, new int[]{48, 9}, new int[]{49, 29}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f7472j = {new int[]{0, -1}, new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 12}, new int[]{6, 2}, new int[]{7, 18}, new int[]{8, 26}, new int[]{9, 13}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7473k = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7474l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7475m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f7476n = new b();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f7477o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7478p = new c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f7480r = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f7481s = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f7482t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f7483u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f7484v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f7485w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f7486x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f7487y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f7488z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 255;
    public int D = 255;
    public Runnable E = new d();
    public final Runnable F = new e();
    public int G = 0;
    public Runnable H = new f();
    public Runnable I = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l1 l1Var = l1.this;
            int i2 = l1Var.f7473k;
            if (i2 > 0) {
                l1Var.f7473k = i2 - 1;
            }
            if (l1Var.f7473k <= 0) {
                l0.b0.o0(l1Var.f7474l);
                if (o1.u.T(a.b.O)) {
                    z.k.s(227, 133, 2, 4, 32);
                    z.k.s(227, 133, 2, 4, 0);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l1 l1Var = l1.this;
            int i2 = l1Var.f7475m;
            if (i2 > 0) {
                l1Var.f7475m = i2 - 1;
                return;
            }
            if (o1.u.T(a.b.O)) {
                z.k.s(227, 133, 2, 4, 32);
                z.k.s(227, 133, 2, 4, 0);
            }
            l0.b0.p0(l1.this.f7476n);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 1 || o1.u.S("com.syu.fourcamera2") || SystemProperties.getBoolean("persist.lsec.fourcamera2.show", false)) {
                z.k.s(227, 144, 2, 41, 0);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l1 l1Var = l1.this;
            l1Var.D = l1Var.c3(u0.b.f17359s0);
            if (l1.this.D != l1.this.C) {
                l1 l1Var2 = l1.this;
                l1Var2.C = l1Var2.D;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l1 l1Var = l1.this;
            l1Var.B = 0;
            l1Var.A = 0;
            l1Var.d3(0);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(l1.this.I);
            l1.this.G = 5;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l1 l1Var = l1.this;
            int i2 = l1Var.G - 1;
            l1Var.G = i2;
            if (i2 <= 0) {
                l0.b0.p0(l1Var.I);
                l1.this.G = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, -15, 1, 1);
                l1 l1Var2 = l1.this;
                l1Var2.v3(l1Var2.f7464b.b(1, 0));
                l1 l1Var3 = l1.this;
                l1Var3.u3(l1Var3.f7464b.b(2, 0));
                qt.y0(98, l1.this.f7464b.b(2, 1));
                qt.y0(99, l1.this.f7464b.b(3, 1));
                switch (nt.f8633a) {
                    case 393286:
                        z.k.s(227, -30, 1, 0);
                        break;
                    case 458822:
                        z.k.s(227, -30, 1, 1);
                        break;
                    case 524358:
                        z.k.s(227, -30, 1, 2);
                        break;
                    case 589894:
                        z.k.s(227, -30, 1, 3);
                        break;
                    case 655430:
                    case 1245254:
                    case 1310790:
                    case 1835078:
                        z.k.s(227, -30, 1, 4);
                        break;
                    case 983110:
                        z.k.s(227, -30, 1, 128);
                        break;
                    case 1048646:
                        z.k.s(227, -30, 1, 129);
                        break;
                    case 1114182:
                        z.k.s(227, -30, 1, 130);
                        break;
                    case 1179718:
                        z.k.s(227, -30, 1, 5);
                        break;
                }
            }
        }
    }

    public class h extends BroadcastReceiver {
        public h() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0042 A[Catch: Exception -> 0x011e, TryCatch #0 {Exception -> 0x011e, blocks: (B:5:0x0020, B:7:0x002a, B:11:0x0037, B:13:0x003b, B:14:0x0042, B:16:0x0049, B:18:0x0051, B:20:0x005f, B:22:0x0065, B:23:0x006d, B:25:0x0077, B:26:0x007f, B:29:0x008b, B:30:0x00a8, B:32:0x00b2, B:33:0x00bb, B:35:0x00c5, B:36:0x00ce, B:38:0x00d8, B:39:0x00e1, B:41:0x00eb, B:43:0x00f1, B:45:0x00fc), top: B:50:0x0020 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                int i2 = 0;
                if (extras.getInt("KEY_TYPE") == 10019) {
                    int i3 = extras.getInt("EXTRA_STATE");
                    if (i3 != 2 && i3 != 39) {
                        switch (i3) {
                            case 8:
                            case 10:
                                l1 l1Var = l1.this;
                                l1Var.B = 1;
                                l1Var.A = 1;
                                i2 = 1;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                l1 l1Var2 = l1.this;
                                l1Var2.B = 0;
                                l1Var2.A = 0;
                                i2 = 1;
                                break;
                        }
                    } else {
                        l1 l1Var3 = l1.this;
                        l1Var3.B = 0;
                        l1Var3.A = 0;
                        i2 = 1;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!l1.this.f7480r.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        l1.this.f7480r = extras.getString("CUR_ROAD_NAME");
                    }
                    if (l1.this.f7484v != extras.getInt("SEG_REMAIN_DIS")) {
                        l1.this.f7484v = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (l1.this.f7483u != extras.getInt("ROUTE_REMAIN_DIS")) {
                        l1.this.f7483u = extras.getInt("ROUTE_REMAIN_DIS");
                        l1.this.f7487y = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        i2 = 1;
                    }
                    if (l1.this.f7482t != extras.getInt("ROUTE_ALL_DIS")) {
                        l1.this.f7482t = extras.getInt("ROUTE_ALL_DIS");
                        i2 = 1;
                    }
                    if (l1.this.f7485w != extras.getInt("CAR_DIRECTION")) {
                        l1.this.f7485w = extras.getInt("CAR_DIRECTION");
                        i2 = 1;
                    }
                    if (l1.this.f7486x != extras.getInt("ROUTE_ALL_TIME")) {
                        l1.this.f7486x = extras.getInt("ROUTE_ALL_TIME");
                        i2 = 1;
                    }
                    if (l1.this.f7488z != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        l1.this.f7488z = extras.getInt("ICON");
                        i2 = 1;
                    }
                }
                if (i2 == 1) {
                    l1.this.d3(i2);
                    o1.j.e(o1.l.a(), l1.this.F);
                    o1.j.b(o1.l.a(), l1.this.F, 20000L);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ h(l1 l1Var, a aVar) {
            this();
        }
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(3);
                return;
            }
            a3(2);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(5);
                return;
            } else {
                a3(4);
                return;
            }
        }
        if (i2 == 67) {
            int i3 = nt.f8633a;
            if (i3 == 852038 || i3 == 1704006) {
                int i4 = iArr[1];
                if (i4 == 2) {
                    z.k.s(227, 167, 1, 1);
                    return;
                }
                if (i4 == 3) {
                    z.k.s(227, 167, 1, 2);
                    return;
                } else if (i4 == 4) {
                    z.k.s(227, 167, 1, 3);
                    return;
                } else {
                    if (i4 != 5) {
                        return;
                    }
                    z.k.s(227, 167, 1, 4);
                    return;
                }
            }
            return;
        }
        if (i2 == 68) {
            if (iArr[1] == 9) {
                z.k.s(227, -77, 1, 0);
                return;
            } else {
                if (iArr[1] == 10) {
                    z.k.s(227, -77, 1, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(10);
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
                        a3(25);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(25);
                }
                break;
            case 39:
                if (iArr[1] == -1) {
                    a3(10);
                } else if (iArr[1] == -2) {
                    a3(9);
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
        mtVar.f8313h = 0;
        mtVar.f8323r = 0;
        qt.x(this.f7478p);
        this.f7464b.a();
        u0.c.f17386m.a(this.H, 1);
        int i2 = nt.f8633a;
        a aVar = null;
        switch (i2) {
            case 852038:
            case 1835078:
                this.f7886a.f8313h = 2;
                break;
            case 1376326:
            case 1441862:
                this.f7886a.f8306a = null;
                break;
        }
        switch (i2) {
            case 393286:
            case 458822:
            case 524358:
            case 589894:
            case 655430:
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8314i = 0;
                    if (a.f.w() == 1080) {
                        this.f7886a.f8314i = 1;
                    }
                }
                o1.h.f16865a.a(this.E, 1);
                this.f7479q = new h(this, aVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.f7479q, intentFilter);
                break;
            case 1310790:
            case 1835078:
                this.f7886a.f8323r = 1;
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8314i = 0;
                    if (a.f.w() == 1080) {
                        this.f7886a.f8314i = 1;
                    }
                }
                o1.h.f16865a.a(this.E, 1);
                this.f7479q = new h(this, aVar);
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.f7479q, intentFilter2);
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 67, 68};
    }

    /* JADX WARN: Unexpected iteration count in SwitchBreakVisitor. Please report as an issue */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        switch (bArr[i2]) {
            case -46:
                qt.y0(104, bArr[i2 + 3] & 255);
                qt.y0(108, bArr[i2 + 4] & 255);
                qt.y0(105, bArr[i2 + 5] & 255);
                qt.y0(109, bArr[i2 + 6] & 255);
                qt.y0(106, bArr[i2 + 7] & 255);
                qt.y0(110, bArr[i2 + 8] & 255);
                qt.y0(107, bArr[i2 + 9] & 255);
                qt.y0(111, bArr[i2 + 10] & 255);
                break;
            case -1:
                qt.L(new String(bArr, i2 + 2, i3 - 2));
                break;
            case 11:
                int i9 = i2 + 2;
                u0.d.I2(l0.c0.G0((bArr[i9] >> 0) & 3));
                u0.d.K2(l0.c0.G0((bArr[i9] >> 0) & 3));
                u0.d.J2(l0.c0.G0((bArr[i9] >> 2) & 3));
                u0.d.H2(l0.c0.G0((bArr[i9] >> 2) & 3));
                u0.d.O2(l0.c0.G0((bArr[i9] >> 4) & 3));
                u0.d.Q2(l0.c0.G0((bArr[i9] >> 4) & 3));
                u0.d.P2(l0.c0.G0((bArr[i9] >> 6) & 3));
                u0.d.N2(l0.c0.G0((bArr[i9] >> 6) & 3));
                break;
            case 13:
                int i10 = i2 + 2;
                if ((bArr[i10] & 255) == 0 || (bArr[i10] & 255) == 255) {
                    u0.d.B3(0);
                } else {
                    u0.d.B3(((bArr[i10] & 255) * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                break;
            case 15:
                qt.y0(152, (bArr[i2 + 4] & 255) | ((bArr[i2 + 2] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 3] << 8) & 65280));
                break;
            case 17:
                qt.y0(153, bArr[i2 + 2] & 255);
                break;
            case 19:
                int i11 = i2 + 2;
                qt.y0(29, (bArr[i11] >> 0) & 15);
                qt.y0(31, (bArr[i11] >> 4) & 15);
                int i12 = i2 + 3;
                qt.y0(30, (bArr[i12] >> 0) & 15);
                qt.y0(32, (bArr[i12] >> 4) & 15);
                break;
            case 22:
                qt.y0(1031, (((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255)) / 16);
                break;
            case 32:
                if (nt.a()) {
                    byte b2 = bArr[i2 + 2];
                    byte b3 = bArr[i2 + 3];
                    int i13 = b2 & 255;
                    this.f7470h = i13;
                    switch (nt.f8633a) {
                        case 262214:
                        case 393286:
                        case 458822:
                        case 524358:
                        case 589894:
                        case 655430:
                        case 983110:
                        case 1048646:
                        case 1114182:
                        case 1179718:
                        case 1245254:
                        case 1310790:
                        case 1376326:
                        case 1441862:
                        case 1835078:
                            int i14 = 0;
                            while (true) {
                                iArr = this.f7472j;
                                if (i14 < iArr.length) {
                                    int i15 = this.f7470h;
                                    if (i15 != iArr[i14][0]) {
                                        i14++;
                                    } else if (i15 != 0) {
                                        this.f7469g = i14;
                                    }
                                }
                            }
                            if ((b3 & 255) == 0) {
                                int i16 = this.f7469g;
                                if (i16 < iArr.length && i16 != 255) {
                                    l0.b0.l0(iArr[i16][1], 1);
                                }
                                this.f7469g = 255;
                            } else if (i14 < iArr.length) {
                                l0.b0.l0(iArr[i14][1], 0);
                            }
                            break;
                        default:
                            switch (i13) {
                                case 33:
                                    for (int i17 = 0; i17 < (b3 & 255); i17++) {
                                        l0.b0.l0(7, 0);
                                    }
                                    l0.b0.l0(7, 1);
                                    break;
                                case 34:
                                    for (int i18 = 0; i18 < (b3 & 255); i18++) {
                                        l0.b0.l0(8, 0);
                                    }
                                    l0.b0.l0(8, 1);
                                    break;
                                case 35:
                                default:
                                    int i19 = 0;
                                    while (true) {
                                        iArr2 = this.f7471i;
                                        if (i19 < iArr2.length) {
                                            int i20 = this.f7470h;
                                            if (i20 != iArr2[i19][0]) {
                                                i19++;
                                            } else if (i20 != 0) {
                                                this.f7469g = i19;
                                            }
                                        }
                                    }
                                    if ((b3 & 255) == 0) {
                                        int i21 = this.f7469g;
                                        if (i21 < iArr2.length && i21 != 255) {
                                            l0.b0.l0(iArr2[i21][1], 1);
                                        }
                                        this.f7469g = 255;
                                    } else if (i19 < iArr2.length) {
                                        l0.b0.l0(iArr2[i19][1], 0);
                                    }
                                    break;
                                case 36:
                                    for (int i22 = 0; i22 < (b3 & 255); i22++) {
                                        l0.b0.l0(31, 0);
                                    }
                                    l0.b0.l0(31, 1);
                                    break;
                                case 37:
                                    for (int i23 = 0; i23 < (b3 & 255); i23++) {
                                        l0.b0.l0(30, 0);
                                    }
                                    l0.b0.l0(30, 1);
                                    break;
                            }
                            break;
                    }
                }
                break;
            case 33:
                byte b4 = bArr[i2 + 2];
                qt.y0(13, (b4 >> 4) & 1);
                qt.y0(11, (b4 >> 3) & 1);
                qt.y0(12, (b4 >> 2) & 1);
                qt.y0(65, (b4 >> 1) & 1);
                qt.y0(16, (b4 >> 0) & 1);
                qt.y0(21, bArr[i2 + 3]);
                int i24 = bArr[i2 + 4] & 255;
                int i25 = nt.f8633a;
                if (i25 == 262214 || i25 == 393286 || i25 == 458822 || i25 == 524358 || i25 == 589894 || i25 == 655430 || i25 == 983110 || i25 == 1048646 || i25 == 1114182 || i25 == 1179718 || i25 == 1245254 || i25 == 1310790 || i25 == 1835078 || i25 == 1376326 || i25 == 1441862) {
                    qt.y0(53, (b4 >> 6) & 1);
                    qt.y0(14, (b4 >> 5) & 1);
                } else {
                    qt.y0(53, (b4 >> 5) & 1);
                }
                if (i24 != 0) {
                    if (i24 == 1) {
                        i4 = 0;
                        i6 = 1;
                    } else if (i24 == 2) {
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                    } else if (i24 == 3) {
                        i6 = 0;
                        i5 = 0;
                        i4 = 1;
                    } else if (i24 != 4) {
                        i4 = 0;
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, i4);
                qt.y0(19, i6);
                qt.y0(20, i5);
                qt.y0(27, bArr[i2 + 5] & 255);
                qt.y0(28, bArr[i2 + 6] & 255);
                int i26 = nt.f8633a;
                if (i26 == 262214 || i26 == 393286 || i26 == 458822 || i26 == 524358 || i26 == 589894 || i26 == 655430 || i26 == 983110 || i26 == 1048646 || i26 == 1114182 || i26 == 1179718 || i26 == 1245254 || i26 == 1310790 || i26 == 1835078 || i26 == 1376326 || i26 == 1441862) {
                    int i27 = i2 + 7;
                    qt.y0(42, (bArr[i27] >> 7) & 1);
                    qt.y0(43, (bArr[i27] >> 6) & 1);
                    int i28 = (bArr[i27] >> 4) & 3;
                    if (i28 != 0) {
                        if (i28 == 1) {
                            i8 = 1;
                        } else if (i28 != 2) {
                            i8 = 0;
                        } else {
                            i8 = 0;
                            i7 = 1;
                        }
                        i7 = i8;
                    } else {
                        i7 = 0;
                        i8 = 1;
                    }
                    qt.y0(46, i8);
                    qt.y0(47, i7);
                    qt.y0(44, bArr[i2 + 8] & 255);
                    qt.y0(40, bArr[i2 + 9] & 255);
                }
                break;
            case 34:
                u0.d.R2(b3(bArr[i2 + 2] & 255));
                u0.d.S2(b3(bArr[i2 + 3] & 255));
                u0.d.T2(b3(bArr[i2 + 4] & 255));
                u0.d.U2(b3(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i29 = i2 + 2;
                int i30 = bArr[i29] & 255;
                int i31 = i2 + 3;
                int i32 = bArr[i31] & 255;
                int i33 = i2 + 4;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 5;
                int i36 = bArr[i35] & 255;
                if (i30 == 0 && i32 == 0 && i34 == 0 && i36 == 0) {
                    u0.d.C2(0);
                    if (nt.f8633a == 1835078 && u0.b.f17347o == 1) {
                        z.k.s(227, 176, 1, 0);
                    }
                } else if (l0.c0.f13013g != i30 || l0.c0.f13014h != i32 || l0.c0.f13015i != i34 || l0.c0.f13016j != i36) {
                    if (nt.f8633a == 1835078 && u0.b.f17347o == 0) {
                        z.k.s(227, 176, 1, 128);
                    }
                    if (u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 6;
                        l0.b0.b(l0.c0.f13018l);
                    }
                }
                l0.c0.f13013g = i30;
                l0.c0.f13014h = i32;
                l0.c0.f13015i = i34;
                l0.c0.f13016j = i36;
                u0.d.D2(b3(bArr[i29] & 255));
                u0.d.E2(b3(bArr[i31] & 255));
                u0.d.F2(b3(bArr[i33] & 255));
                u0.d.G2(b3(bArr[i35] & 255));
                break;
            case 41:
                int i37 = nt.f8633a;
                if (i37 == 262214 || i37 == 655430 || i37 == 917574 || i37 == 1179718 || i37 == 983110 || i37 == 1048646 || i37 == 1114182 || i37 == 393286 || i37 == 458822 || i37 == 524358 || i37 == 589894 || i37 == 1245254 || i37 == 1310790 || i37 == 1835078 || i37 == 1376326 || i37 == 1441862) {
                    qt.i(bArr[i2 + 2], bArr[i2 + 3], false, 6592);
                } else if (!this.f7477o) {
                    qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5500);
                }
                break;
            case 48:
                int i38 = (bArr[i2 + 2] >> 7) & 1;
                if (nt.f8633a == 1835078) {
                    if (i38 == 1) {
                        qt.a(1);
                    } else {
                        qt.a(0);
                    }
                    break;
                } else if (L == 1 && u0.b.f17347o == 0) {
                    if (i38 != 0) {
                        qt.t();
                    } else {
                        qt.f();
                    }
                    break;
                }
                break;
            case 49:
                if ((bArr[i2 + 2] & 128) != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                break;
            case 56:
                qt.y0(108, bArr[i2 + 2] & 255);
                qt.y0(109, bArr[i2 + 3] & 255);
                qt.y0(110, bArr[i2 + 4] & 255);
                qt.y0(111, bArr[i2 + 5] & 255);
                qt.y0(104, bArr[i2 + 6] & 255);
                qt.y0(105, bArr[i2 + 7] & 255);
                qt.y0(106, bArr[i2 + 8] & 255);
                qt.y0(107, bArr[i2 + 9] & 255);
                break;
            case 57:
                qt.y0(112, bArr[i2 + 2] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(113, bArr[i2 + 3] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(114, bArr[i2 + 4] & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(115, bArr[i2 + 5] & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case 58:
                byte b5 = bArr[i2 + 2];
                qt.y0(101, (b5 >> 7) & 1);
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 4) & 1);
                    qt.y0(2, (b5 >> 5) & 1);
                } else {
                    qt.y0(1, (b5 >> 5) & 1);
                    qt.y0(2, (b5 >> 4) & 1);
                }
                qt.y0(3, (b5 >> 3) & 1);
                qt.y0(4, (b5 >> 2) & 1);
                qt.y0(5, (b5 >> 1) & 1);
                qt.y0(0, (b5 >> 0) & 1);
                qt.y0(100, ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255));
                int i39 = nt.f8633a;
                if (i39 == 655430 || i39 == 1179718 || i39 == 917574 || i39 == 393286 || i39 == 458822 || i39 == 524358 || i39 == 589894 || i39 == 1245254 || i39 == 1310790 || i39 == 1835078 || i39 == 1376326 || i39 == 1441862) {
                    qt.y0(102, (bArr[i2 + 5] >> 7) & 1);
                }
                break;
            case 60:
                if (K != 0) {
                    int i40 = (bArr[i2 + 2] >> 6) & 1;
                    if (u0.b.f17347o == 0 && i40 != 0) {
                        this.f7475m = 5;
                        if (!o1.u.T(a.b.O)) {
                            l0.b0.b(this.f7476n);
                            z.k.s(227, 133, 2, 4, 32);
                            z.k.s(227, 133, 2, 4, 0);
                        }
                    }
                    break;
                }
                break;
            case 80:
                int i41 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 255) << 8);
                qt.y0(1032, i41);
                qt.y0(1032, i41);
                break;
            case 82:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                if (b6 == 1) {
                    int[] iArr3 = new int[1];
                    iArr3[0] = b7 != 1 ? 0 : 1;
                    qt.y0(102, iArr3);
                } else if (b6 == 0) {
                    int[] iArr4 = new int[1];
                    iArr4[0] = b7 != 1 ? 0 : 1;
                    qt.y0(116, iArr4);
                } else if (b6 == 2) {
                    int[] iArr5 = new int[1];
                    iArr5[0] = b7 != 1 ? 0 : 1;
                    qt.y0(117, iArr5);
                } else if (b6 == 3) {
                    int[] iArr6 = new int[1];
                    iArr6[0] = b7 != 1 ? 0 : 1;
                    qt.y0(118, iArr6);
                } else if (b6 == 4) {
                    int[] iArr7 = new int[1];
                    iArr7[0] = b7 != 1 ? 0 : 1;
                    qt.y0(119, iArr7);
                } else if (b6 == 5) {
                    int[] iArr8 = new int[1];
                    iArr8[0] = b7 != 1 ? 0 : 1;
                    qt.y0(120, iArr8);
                } else if (b6 == 6) {
                    int[] iArr9 = new int[1];
                    iArr9[0] = b7 != 1 ? 0 : 1;
                    qt.y0(121, iArr9);
                } else if (b6 == 7) {
                    int[] iArr10 = new int[1];
                    iArr10[0] = b7 != 1 ? 0 : 1;
                    qt.y0(122, iArr10);
                } else if (b6 == 8) {
                    int[] iArr11 = new int[1];
                    iArr11[0] = b7 != 1 ? 0 : 1;
                    qt.y0(123, iArr11);
                } else if (b6 == 9) {
                    int[] iArr12 = new int[1];
                    iArr12[0] = b7 != 1 ? 0 : 1;
                    qt.y0(124, iArr12);
                } else if (b6 == 10) {
                    qt.y0(125, b7);
                } else if (b6 == 11) {
                    qt.y0(126, b7);
                } else if (b6 == 12) {
                    int[] iArr13 = new int[1];
                    iArr13[0] = b7 != 1 ? 0 : 1;
                    qt.y0(127, iArr13);
                } else if (b6 == 13) {
                    qt.y0(128, b7);
                } else if (b6 == 14) {
                    qt.y0(129, b7);
                } else if (b6 == 15) {
                    qt.y0(130, b7);
                } else if (b6 == 16) {
                    int[] iArr14 = new int[1];
                    iArr14[0] = b7 != 1 ? 0 : 1;
                    qt.y0(131, iArr14);
                } else if (b6 == 17) {
                    int[] iArr15 = new int[1];
                    iArr15[0] = b7 != 1 ? 0 : 1;
                    qt.y0(132, iArr15);
                } else if (b6 == 18) {
                    qt.y0(133, b7);
                } else if (b6 == 19) {
                    int[] iArr16 = new int[1];
                    iArr16[0] = b7 != 1 ? 0 : 1;
                    qt.y0(134, iArr16);
                } else if (b6 == 20) {
                    int[] iArr17 = new int[1];
                    iArr17[0] = b7 != 1 ? 0 : 1;
                    qt.y0(135, iArr17);
                } else if (b6 == 21) {
                    qt.y0(136, b7);
                } else if (b6 == 22) {
                    qt.y0(137, b7);
                }
                break;
            case 102:
                int i42 = i2 + 2;
                qt.y0(118, (bArr[i42] >> 7) & 1);
                qt.y0(119, (bArr[i42] >> 6) & 1);
                qt.y0(120, (bArr[i42] >> 5) & 1);
                int i43 = i2 + 3;
                qt.y0(125, (bArr[i43] >> 5) & 7);
                qt.y0(126, (bArr[i43] >> 3) & 3);
                qt.y0(138, (bArr[i43] >> 2) & 1);
                int i44 = i2 + 4;
                qt.y0(117, (bArr[i44] >> 6) & 1);
                qt.y0(139, (bArr[i44] >> 5) & 1);
                qt.y0(140, (bArr[i44] >> 4) & 1);
                int i45 = i2 + 5;
                qt.y0(122, (bArr[i45] >> 7) & 1);
                qt.y0(123, (bArr[i45] >> 5) & 3);
                qt.y0(124, (bArr[i45] >> 4) & 1);
                int i46 = i2 + 6;
                qt.y0(141, (bArr[i46] >> 0) & 15);
                qt.y0(142, (bArr[i46] >> 0) & 255);
                int i47 = i2 + 8;
                qt.y0(143, (bArr[i47] >> 2) & 3);
                qt.y0(144, (bArr[i47] >> 1) & 1);
                qt.y0(145, (bArr[i47] >> 0) & 1);
                int i48 = i2 + 9;
                qt.y0(146, (bArr[i48] >> 3) & 1);
                qt.y0(147, (bArr[i48] >> 2) & 1);
                qt.y0(148, (bArr[i48] >> 1) & 1);
                qt.y0(149, (bArr[i48] >> 0) & 1);
                int i49 = i2 + 10;
                qt.y0(150, (bArr[i49] >> 1) & 1);
                qt.y0(151, (bArr[i49] >> 0) & 1);
                break;
            case 103:
                if (K != 0) {
                    if (qt.k0()) {
                        if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                            int i50 = i2 + 2;
                            l0.c0.b((bArr[i50] >> 1) & 1, (bArr[i50] >> 0) & 1, 0);
                        } else {
                            int i51 = i2 + 2;
                            l0.c0.a((bArr[i51] >> 1) & 1, (bArr[i51] >> 0) & 1, 0);
                        }
                        break;
                    } else {
                        byte b8 = bArr[i2 + 2];
                        int i52 = (b8 >> 1) & 1;
                        int i53 = (b8 >> 0) & 1;
                        if (nt.f8633a == 1835078) {
                            if (i52 == 1 || i53 == 1) {
                                if (u0.b.f17347o == 0) {
                                    z.k.s(227, 176, 1, 128);
                                }
                            } else if (u0.b.f17347o == 1) {
                                z.k.s(227, 176, 1, 0);
                            }
                            break;
                        } else if (u0.b.f17347o == 0) {
                            if (i52 != 0) {
                                if (!o1.u.T(a.b.O)) {
                                    qt.t();
                                }
                            } else if (o1.u.T(a.b.O)) {
                                qt.f();
                            }
                            break;
                        }
                    }
                }
                break;
            case 125:
                int i54 = bArr[i2 + 2] & 255;
                if (i54 == 1) {
                    int i55 = i2 + 3;
                    o1.x.C(nt.f8643f, 1049, new int[]{11, 255 & bArr[i55]}, null, null);
                    if (!qt.k0()) {
                        int i56 = (bArr[i55] >> 3) & 1;
                        if (K == 1) {
                            if (i56 == 1) {
                                this.f7473k = 20;
                                if (!o1.u.T(a.b.O)) {
                                    l0.b0.o0(this.f7474l);
                                    z.k.s(227, 133, 2, 4, 32);
                                    z.k.s(227, 133, 2, 4, 0);
                                }
                            } else {
                                l0.b0.a(this.f7474l);
                            }
                        }
                    } else if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                        l0.c0.b((bArr[i55] >> 3) & 1, (bArr[i55] >> 4) & 1, 0);
                    } else {
                        l0.c0.a((bArr[i55] >> 3) & 1, (bArr[i55] >> 4) & 1, 0);
                    }
                    break;
                } else if (i54 == 3) {
                    int i57 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                    qt.y0(1031, i57);
                    o1.x.C(nt.f8643f, 1049, new int[]{1, i57}, null, null);
                    break;
                } else if (i54 == 8) {
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.f7477o = true;
                    break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f7464b.j();
        int iB = this.f7464b.b(2, 0);
        int i2 = N;
        if (iB != i2) {
            this.f7464b.g(2, i2);
        }
        int iB2 = this.f7464b.b(3, 0);
        int i3 = O;
        if (iB2 != i3) {
            this.f7464b.g(3, i3);
        }
        u0.c.f17386m.d(this.H);
        l0.b0.p0(this.I);
        qt.o0(this.f7478p);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 155) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            if (nt.f8633a == 1835078) {
                if (u0.b.f17347o == 0) {
                    z.k.s(227, 176, 1, 128);
                    return;
                }
                z.k.s(227, 176, 1, 0);
            }
            if (u0.b.f17347o == 0) {
                switch (nt.f8633a) {
                    case 262214:
                    case 393286:
                    case 458822:
                    case 524358:
                    case 589894:
                    case 655430:
                    case 983110:
                    case 1048646:
                    case 1114182:
                    case 1179718:
                    case 1245254:
                    case 1310790:
                    case 1376326:
                    case 1441862:
                        if (!o1.u.T(a.b.O)) {
                            qt.t();
                        } else if (o1.u.T(a.b.O)) {
                            qt.f();
                        }
                        break;
                    case 852038:
                        z.k.s(227, 133, 2, 4, 64);
                        a.i.a0(200L);
                        z.k.s(227, 133, 2, 4, 0);
                        break;
                    default:
                        if (!o1.u.T(a.b.O)) {
                            z.k.s(227, 133, 2, 4, 32);
                            a.i.a0(200L);
                            z.k.s(227, 133, 2, 4, 0);
                        } else if (o1.u.T(a.b.O)) {
                            z.k.s(227, 133, 2, 4, 32);
                            a.i.a0(200L);
                            z.k.s(227, 133, 2, 4, 0);
                        }
                        break;
                }
            }
            return;
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int i3 = nt.f8633a;
                if (i3 != 852038 && i3 != 1704006) {
                    int iW = (iArr[1] * 800) / a.f.w();
                    int i4 = (iArr[2] * 480) / a.f.i();
                    z.k.s(227, 227, 5, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255);
                    return;
                }
                int i5 = iArr[1];
                int i6 = iArr[2];
                if (iArr[0] == 0) {
                    if (i5 < 360 && i6 < 150) {
                        z.k.s(227, 167, 1, 1);
                        return;
                    }
                    if (i5 < 200 && i6 < 450 && i6 > 200) {
                        z.k.s(227, 167, 1, 3);
                        return;
                    }
                    if (i5 < 450 && i5 > 220 && i6 < 450 && i6 > 200) {
                        z.k.s(227, 167, 1, 4);
                        return;
                    } else {
                        if (i5 >= 360 || i6 <= 480) {
                            return;
                        }
                        z.k.s(227, 167, 1, 2);
                        return;
                    }
                }
                return;
            }
            return;
        }
        switch (i2) {
            case 0:
                if (qt.l0(iArr, 1)) {
                    int i7 = nt.f8633a;
                    if (i7 == 655430 || i7 == 1179718 || i7 == 393286 || i7 == 458822 || i7 == 524358 || i7 == 589894) {
                        int i8 = iArr[0];
                        N = i8;
                        s3(i8);
                        r3(N, O, this.J);
                    } else {
                        if (iArr[0] < 1 || iArr[0] > 3) {
                            iArr[0] = 4;
                        }
                        int i9 = iArr[0];
                        N = i9;
                        q3(i9, O);
                        s3(N);
                    }
                }
                break;
            case 1:
                if (qt.l0(iArr, 1)) {
                    int i10 = nt.f8633a;
                    if (i10 == 655430 || i10 == 1179718 || i10 == 393286 || i10 == 458822 || i10 == 524358 || i10 == 589894 || i10 == 1310790 || i10 == 1835078) {
                        if (iArr[0] == 1) {
                            int i11 = iArr[1];
                            O = i11;
                            t3(i11);
                        } else if (iArr[0] == 2) {
                            this.J = iArr[1];
                        }
                        r3(N, O, this.J);
                    } else {
                        if (iArr[0] == 0 || iArr[0] == 1) {
                            O = iArr[0];
                        }
                        t3(O);
                        q3(N, O);
                    }
                }
                break;
            case 2:
                if (iArr != null && iArr.length > 0) {
                    z.k.s(227, iArr[0], 2, iArr[1], iArr[2]);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 0) {
                    v3(iArr[0]);
                    break;
                }
                break;
            case 4:
                if (T2(iArr, 2)) {
                    z.k.s(227, 224, 2, iArr[0], iArr[1]);
                }
                break;
            case 5:
                if (T2(iArr, 2)) {
                    z.k.s(227, 144, 2, iArr[0], iArr[1]);
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    u3(iArr[0]);
                    break;
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, -32, 2, i2, 1);
        a.i.a0(50L);
        z.k.s(227, -32, 2, i2, 0);
    }

    public final int b3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        if (i2 == 1) {
            return 9;
        }
        if (i2 != 2) {
            return i2 != 3 ? 15 : 0;
        }
        return 5;
    }

    public final int c3(int i2) {
        if (i2 > 360) {
            i2 %= MediaProperties.HEIGHT_360;
        }
        if (i2 < 0) {
            i2 = 360 - Math.abs(i2 % MediaProperties.HEIGHT_360);
        }
        double d2 = i2;
        if ((d2 <= 22.5d && i2 >= 0) || (d2 >= 337.5d && i2 <= 360)) {
            return 1;
        }
        if (d2 > 22.5d && d2 < 67.5d) {
            return 2;
        }
        if (d2 >= 67.5d && d2 <= 112.5d) {
            return 3;
        }
        if (d2 > 112.5d && d2 < 157.5d) {
            return 4;
        }
        if (d2 >= 157.5d && d2 <= 202.5d) {
            return 5;
        }
        if (d2 > 202.5d && d2 < 247.5d) {
            return 6;
        }
        if (d2 < 247.5d || d2 > 292.5d) {
            return (d2 <= 292.5d || d2 >= 337.5d) ? 15 : 8;
        }
        return 7;
    }

    public final void d3(int i2) {
        int i3 = this.f7488z;
        if (i3 > 0) {
            int[] iArr = M;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = this.f7483u;
            int i5 = this.f7482t;
            z.k.s(227, 132, 8, iArr[i3], i4 & 255, (i4 >> 8) & 255, (i4 >> 16) & 255, i5 & 255, (i5 >> 8) & 255, (i5 >> 16) & 255, i2);
        }
    }

    public final void q3(int i2, int i3) {
        z.k.s(227, -123, 2, (byte) N, (byte) O);
    }

    public final void r3(int i2, int i3, int i4) {
        z.k.s(227, -123, 2, (byte) N, (((O & 1) << 1) | (i4 & 1)) << 6);
    }

    public void s3(int i2) {
        N = i2;
        int iB = this.f7464b.b(2, 0);
        int i3 = N;
        if (iB != i3) {
            this.f7464b.g(2, i3);
        }
        qt.y0(98, N);
    }

    public void t3(int i2) {
        O = i2;
        int iB = this.f7464b.b(3, 0);
        int i3 = O;
        if (iB != i3) {
            this.f7464b.g(3, i3);
        }
        qt.y0(99, O);
    }

    public final void u3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        L = i2;
        qt.y0(154, i2);
        int iB = this.f7464b.b(2, 0);
        int i3 = L;
        if (iB != i3) {
            this.f7464b.g(2, i3);
        }
    }

    public final void v3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        K = i2;
        qt.y0(103, i2);
        int iB = this.f7464b.b(1, 0);
        int i3 = K;
        if (iB != i3) {
            this.f7464b.g(1, i3);
        }
    }
}
