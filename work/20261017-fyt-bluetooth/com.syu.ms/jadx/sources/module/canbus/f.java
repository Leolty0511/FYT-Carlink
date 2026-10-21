package module.canbus;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.net.wifi.WifiStateMachine;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import k0.lt;
import k0.mt;
import k0.nt;
import k0.qt;
import o1.o0;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class f extends lt implements o1.q {

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f13991n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f13992o0 = 3;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f13993p0 = 3;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f13994q0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f13996s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f13997t0;
    public p A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14001b;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int[] f13995r0 = {1, 1, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1};

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final int[] f13998u0 = {0, 2, 3, 5, 6, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40};

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final o1.f<o> f13999v0 = new o1.f<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14003c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14005d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14007e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f14009f = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{6, 12}, new int[]{7, 2}, new int[]{9, 18}, new int[]{10, 26}, new int[]{21, 6}, new int[]{22, 29}, new int[]{135, 25}, new int[]{32, 56}, new int[]{33, 56}, new int[]{34, -1}, new int[]{35, -1}, new int[]{36, 74}, new int[]{37, -1}, new int[]{38, 75}, new int[]{39, 40}, new int[]{40, 41}, new int[]{41, 42}, new int[]{42, 43}, new int[]{43, 44}, new int[]{44, 45}, new int[]{45, 8}, new int[]{46, 7}, new int[]{47, 30}, new int[]{48, 31}, new int[]{49, 3}, new int[]{50, 4}, new int[]{51, 12}, new int[]{64, 53}, new int[]{65, 66}, new int[]{66, 64}, new int[]{67, 1}, new int[]{68, 25}, new int[]{69, 9}, new int[]{70, 81}, new int[]{71, 1}, new int[]{72, 80}, new int[]{73, 12}, new int[]{74, 72}, new int[]{75, 58}, new int[]{76, 14}, new int[]{77, 55}, new int[]{78, 71}, new int[]{79, 12}, new int[]{80, 38}, new int[]{81, 11}, new int[]{82, 1}, new int[]{96, 34}, new int[]{97, -1}, new int[]{98, 33}, new int[]{99, -1}, new int[]{100, 35}, new int[]{101, -1}, new int[]{102, 32}, new int[]{103, -1}, new int[]{112, 29}, new int[]{113, 6}, new int[]{114, 1}, new int[]{115, 9}, new int[]{116, 30}, new int[]{117, 31}, new int[]{145, 16}, new int[]{146, 4}, new int[]{147, 3}, new int[]{148, 37}, new int[]{149, 28}, new int[]{150, 27}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f14011g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14013h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14015i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f14017j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f14019k = new RunnableC0077f();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f14021l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f14023m = new g();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f14025n = new h();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public o1.g0 f14026o = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f14027p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f14028q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f14029r = 3;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f14030s = 4;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f14031t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f14032u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f14033v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Runnable f14034w = new i();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14035x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f14036y = new j();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Runnable f14037z = new k();
    public String B = ProxyProperties.LOCAL_EXCL_LIST;
    public String C = ProxyProperties.LOCAL_EXCL_LIST;
    public int D = 0;
    public int E = 0;
    public int F = 0;
    public int G = 0;
    public int H = 0;
    public int I = 0;
    public int J = 0;
    public int K = 0;
    public int L = 255;
    public int M = 255;
    public Runnable N = new l();
    public Runnable O = new m();
    public int P = -1;
    public int Q = -1;
    public int R = -1;
    public Runnable S = new n();
    public Runnable T = new a();
    public Runnable U = new b();
    public int V = 0;
    public String W = ProxyProperties.LOCAL_EXCL_LIST;
    public String X = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable Y = new c();
    public Runnable Z = new d();

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f14000a0 = false;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f14002b0 = -1;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f14004c0 = false;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public String f14006d0 = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int[] f14008e0 = {34, 204};

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f14010f0 = 0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final byte[] f14012g0 = new byte[1024];

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f14014h0 = 0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f14016i0 = 0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f14018j0 = 0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f14020k0 = 100;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public Runnable f14022l0 = new e();

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f14024m0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.V3((byte) 112, u0.b.i3);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            f fVar = f.this;
            int i3 = fVar.V + 1;
            fVar.V = i3;
            if (i3 % 2 == 1 && ((i2 = u0.b.D) == 9 || i2 == 8 || i2 == 3)) {
                String str = u0.b.i3;
                if (str != null && !fVar.W.equals(str)) {
                    f.this.V3((byte) 112, u0.b.i3);
                    f.this.W = u0.b.i3;
                }
                String str2 = u0.b.j3;
                if (str2 != null && !f.this.X.equals(str2)) {
                    f.this.V3((byte) 113, u0.b.j3);
                    f.this.X = u0.b.j3;
                }
            }
            f fVar2 = f.this;
            if (fVar2.V > 2) {
                fVar2.V = 0;
            }
            int i4 = nt.f8637c;
            if (i4 == 5 || i4 == 6 || i4 == 7) {
                z.k.s(227, -18, 2, 89, 22);
            } else if (i4 == 22 || i4 == 23) {
                z.k.s(227, -18, 2, 89, 17);
            }
        }
    }

    public class d implements Runnable {
        public d() {
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
            if (f.this.f14002b0 != i2) {
                f.this.f14002b0 = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (f.this.f14006d0.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                f.this.f14006d0 = h0.c.f2437h;
                if (f.this.f14006d0 == null) {
                    f.this.f14006d0 = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                f fVar = f.this;
                fVar.e4(fVar.f14002b0, f.this.f14006d0);
                if (f.this.f14004c0 != z4) {
                    f.this.f14004c0 = z4;
                    f.this.f14002b0 = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (nt.a()) {
                if (f.this.f14020k0 > 100) {
                    f.H3(f.this);
                    if (f.this.f14024m0 == f.this.f14020k0 / 100) {
                        f.this.f14024m0 = 0;
                        return;
                    }
                }
                int i2 = u0.b.f17306a0;
                int i3 = u0.b.f17320f;
                int i4 = y0.f.f18055i;
                if (i2 == 0 || i3 == 0 || i4 == 1) {
                    int unused = f.f13997t0 = f.f13998u0[0];
                } else {
                    int unused2 = f.f13997t0 = f.f13998u0[o0.a(y0.f.f18037c, 0, 36)];
                }
                if (f.this.f7886a.f8307b != 1 || f.f13996s0 == f.f13997t0) {
                    return;
                }
                f.this.d4();
            }
        }
    }

    /* JADX INFO: renamed from: module.canbus.f$f, reason: collision with other inner class name */
    public class RunnableC0077f implements Runnable {
        public RunnableC0077f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = f.this;
            int i2 = fVar.f14017j;
            if (i2 > 0) {
                fVar.f14017j = i2 - 1;
            }
            if (fVar.f14017j != 0 || fVar.f14011g) {
                return;
            }
            fVar.f14011g = true;
            z.k.s(227, -57, 1, 1);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.a3();
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.c3();
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f14033v) {
                z.k.s(227, -30, 2, 0, f.f13994q0);
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(f.this.f14037z);
            f fVar = f.this;
            fVar.f14035x = 5;
            fVar.f14033v = false;
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = f.this;
            int i2 = fVar.f14035x - 1;
            fVar.f14035x = i2;
            if (i2 <= 0) {
                l0.b0.p0(fVar.f14037z);
                f.this.f14035x = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                f fVar2 = f.this;
                fVar2.b4(fVar2.f14026o.b(2, 3));
                f fVar3 = f.this;
                fVar3.c4(fVar3.f14026o.b(3, 3));
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = f.this;
            fVar.M = fVar.g3(u0.b.f17359s0);
            if (f.this.M != f.this.L) {
                f fVar2 = f.this;
                int i2 = fVar2.K;
                if (i2 == 0) {
                    z.k.s(227, -55, 5, i2, fVar2.M, 0, 0, 0);
                }
                f fVar3 = f.this;
                fVar3.L = fVar3.M;
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.d4();
        }
    }

    public class n implements Runnable {
        public n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            boolean zIs24HourFormat = DateFormat.is24HourFormat(App.c());
            if (f.this.P == time.hour && f.this.Q == time.minute && f.this.R == zIs24HourFormat) {
                return;
            }
            z.k.s(227, -56, 4, time.minute, time.hour, zIs24HourFormat ? 1 : 0, 0);
            f.this.P = time.hour;
            f.this.Q = time.minute;
            f.this.R = zIs24HourFormat ? 1 : 0;
        }
    }

    public static class o implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14052a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14053b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14054c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f14055d;

        public o(int i2, int i3) {
            this.f14052a = i2;
            this.f14055d = i3;
        }

        public synchronized void a(int i2) {
            this.f14053b = i2;
            if (!this.f14054c) {
                this.f14054c = true;
                o1.k.a().postDelayed(this, this.f14055d);
            }
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            z.k.s(227, 131, 2, this.f14052a, this.f14053b);
            this.f14054c = false;
        }
    }

    public class p extends BroadcastReceiver {
        public p() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0044 A[Catch: Exception -> 0x00f6, TryCatch #0 {Exception -> 0x00f6, blocks: (B:5:0x0022, B:7:0x002c, B:11:0x0039, B:13:0x003d, B:14:0x0044, B:16:0x004b, B:18:0x0053, B:20:0x0061, B:22:0x0067, B:23:0x0076, B:25:0x0080, B:26:0x0088, B:28:0x0092, B:29:0x00af, B:31:0x00b9, B:32:0x00c2, B:34:0x00cc, B:35:0x00d5, B:37:0x00df, B:39:0x00e5, B:41:0x00f0), top: B:46:0x0022 }] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                boolean z2 = false;
                if (extras.getInt("KEY_TYPE") == 10019) {
                    int i2 = extras.getInt("EXTRA_STATE");
                    if (i2 != 2 && i2 != 39) {
                        switch (i2) {
                            case 8:
                            case 10:
                                f fVar = f.this;
                                fVar.K = 1;
                                fVar.J = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                f fVar2 = f.this;
                                fVar2.K = 0;
                                fVar2.J = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        f fVar3 = f.this;
                        fVar3.K = 0;
                        fVar3.J = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!f.this.B.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        f.this.B = extras.getString("CUR_ROAD_NAME");
                        f fVar4 = f.this;
                        fVar4.i3(fVar4.B);
                    }
                    if (f.this.E != extras.getInt("SEG_REMAIN_DIS")) {
                        f.this.E = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (f.this.D != extras.getInt("ROUTE_REMAIN_DIS")) {
                        f.this.D = extras.getInt("ROUTE_REMAIN_DIS");
                        f.this.H = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (f.this.F != extras.getInt("CAR_DIRECTION")) {
                        f.this.F = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (f.this.G != extras.getInt("ROUTE_ALL_TIME")) {
                        f.this.G = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (f.this.I != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        f.this.I = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    f.this.j3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ p(f fVar, RunnableC0077f runnableC0077f) {
            this();
        }
    }

    public static /* synthetic */ int H3(f fVar) {
        int i2 = fVar.f14024m0;
        fVar.f14024m0 = i2 + 1;
        return i2;
    }

    public static void U3(int i2, int i3) {
        o oVarC = f13999v0.c(i2);
        if (oVarC != null) {
            oVarC.a(i3);
        }
    }

    public static void f4(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
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
    public void N2() {
        if (nt.f8637c != 4) {
            y0.f.C0 = 18;
        } else {
            y0.f.C0 = 30;
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
                if (h3()) {
                    f3(161, 1);
                    return;
                } else {
                    e3(9);
                    return;
                }
            }
            if (h3()) {
                f3(161, 0);
                return;
            }
            e3(10);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                if (h3()) {
                    f3(162, 1);
                    return;
                } else {
                    e3(11);
                    return;
                }
            }
            if (h3()) {
                f3(162, 0);
                return;
            } else {
                e3(12);
                return;
            }
        }
        if (i2 == 64) {
            int i3 = iArr[1];
            if (i3 == 0) {
                if (nt.f8645g[5] == 1) {
                    z.k.s(227, -57, 1, 1);
                    return;
                }
                return;
            } else {
                if (i3 == 1 && nt.f8645g[5] == 0) {
                    z.k.s(227, -57, 1, 1);
                    return;
                }
                return;
            }
        }
        if (i2 == 68) {
            if (h3()) {
                if (iArr[1] == 1) {
                    z.k.s(227, -29, 1, 4);
                    return;
                }
                if (iArr[1] == 2) {
                    z.k.s(227, -29, 1, 3);
                    return;
                }
                if (iArr[1] == 3) {
                    z.k.s(227, -29, 1, 6);
                    return;
                }
                if (iArr[1] == 4) {
                    z.k.s(227, -29, 1, 5);
                    return;
                }
                if (iArr[1] == 5) {
                    z.k.s(227, -29, 1, 8);
                    return;
                }
                if (iArr[1] == 6) {
                    z.k.s(227, -29, 1, 7);
                    return;
                }
                if (iArr[1] == 7) {
                    z.k.s(227, -29, 1, 10);
                    return;
                }
                if (iArr[1] == 8) {
                    z.k.s(227, -29, 1, 9);
                    return;
                }
                if (iArr[1] == 9 || iArr[1] == 10) {
                    return;
                }
                if (iArr[1] == 11) {
                    z.k.s(227, -29, 1, 2);
                    return;
                }
                if (iArr[1] == 12) {
                    z.k.s(227, -29, 1, 1);
                    return;
                }
                if (iArr[1] == 15) {
                    if (nt.f8645g[5] == 1) {
                        z.k.s(227, -57, 1, 1);
                        return;
                    }
                    return;
                } else {
                    if (iArr[1] == 16 && nt.f8645g[5] == 0) {
                        z.k.s(227, -57, 1, 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1 && h3()) {
                        f3(168, 1);
                        break;
                    }
                } else if (nt.f8645g[10] == 0 && h3()) {
                    f3(169, 1);
                    break;
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        if (!h3()) {
                            e3(16);
                        } else {
                            f3(164, 0);
                        }
                    }
                } else if (nt.f8645g[11] == 0) {
                    if (!h3()) {
                        e3(16);
                    } else {
                        f3(164, 1);
                    }
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        if (!h3()) {
                            e3(2);
                        } else {
                            f3(169, 0);
                        }
                    }
                } else if (nt.f8645g[13] == 0) {
                    if (!h3()) {
                        e3(2);
                    } else {
                        f3(169, 1);
                    }
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (h3()) {
                        int[] iArr2 = nt.f8645g;
                        if (iArr2[65] == 1) {
                            f3(166, 0);
                        } else if (iArr2[15] == 1) {
                            e3(3);
                        }
                    }
                } else if (h3()) {
                    int[] iArr3 = nt.f8645g;
                    if (iArr3[65] == 0) {
                        f3(166, 1);
                    } else if (iArr3[15] == 0) {
                        e3(3);
                    }
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (h3()) {
                        int[] iArr4 = nt.f8645g;
                        if (iArr4[16] == 1) {
                            f3(167, 0);
                        } else if (iArr4[38] == 1) {
                            e3(4);
                        }
                    }
                } else if (h3()) {
                    int[] iArr5 = nt.f8645g;
                    if (iArr5[16] == 0) {
                        f3(167, 1);
                    } else if (iArr5[38] == 0) {
                        e3(4);
                    }
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        if (!h3()) {
                            e3(6);
                        } else {
                            f3(165, 0);
                        }
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    if (!h3()) {
                        e3(5);
                    } else {
                        f3(165, 1);
                    }
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    if (!h3()) {
                        e3(21);
                    } else {
                        f3(160, 0);
                    }
                } else if (!h3()) {
                    e3(20);
                } else {
                    f3(160, 1);
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x014a  */
    /* JADX WARN: Code duplicated, block: B:23:0x014d  */
    @Override // k0.lt
    public void S2() {
        this.f14026o.a();
        a4(this.f14026o.b(1, 0));
        u0.c.f17386m.a(this.f14036y, 1);
        qt.z(this.f14023m);
        y0.g.f18094d.a(this.f14025n, 1);
        y0.g.f18095e.a(this.f14025n, 1);
        w0.e.f17815a.a(this.f14023m, 1);
        w0.e.f17819e.a(this.f14023m, 1);
        u0.c.f17374a.a(this.f14023m, 1);
        qt.z(this.Y);
        qt.z(this.f14034w);
        qt.z(this.S);
        u0.c.f17388o.a(this.T, 1);
        h0.d.f2464c.a(this.Z, 1);
        h0.d.f2462a.a(this.Z, 1);
        mt mtVar = this.f7886a;
        mtVar.f8320o = 0;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8307b = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        mtVar.f8314i = 0;
        mtVar.f8313h = 0;
        int i2 = nt.f8637c;
        RunnableC0077f runnableC0077f = null;
        if (i2 == 1 || i2 == 2) {
            mtVar.f8313h = 1;
        } else if (i2 == 3) {
            mtVar.f8314i = 1;
        } else if (i2 == 4) {
            mtVar.f8310e = 1;
            mtVar.f8311f = 1;
            mtVar.f8312g = 0;
            mtVar.f8307b = 1;
            mtVar.f8308c = 0;
            mtVar.f8309d = 0;
            mtVar.f8314i = 0;
            mtVar.f8314i = 1;
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            if (nt.a()) {
                init();
                l0.b0.a(this.f14022l0);
                W3();
            }
        } else if (i2 != 11 && i2 != 13) {
            switch (i2) {
                case 15:
                    mtVar.f8313h = 1;
                    break;
                case 16:
                case 18:
                case 20:
                    mtVar.f8311f = 0;
                    mtVar.f8312g = 0;
                    mtVar.f8313h = 0;
                    mtVar.f8306a = new String[]{"com.syu.canbus"};
                    o1.h.f16865a.a(this.N, 1);
                    this.A = new p(this, runnableC0077f);
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                    App.c().registerReceiver(this.A, intentFilter);
                    j3();
                    break;
                case 17:
                case 19:
                case 21:
                    mtVar.f8311f = 0;
                    mtVar.f8312g = 0;
                    mtVar.f8313h = 1;
                    mtVar.f8306a = new String[]{"com.syu.canbus"};
                    o1.h.f16865a.a(this.N, 1);
                    this.A = new p(this, runnableC0077f);
                    IntentFilter intentFilter2 = new IntentFilter();
                    intentFilter2.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                    App.c().registerReceiver(this.A, intentFilter2);
                    j3();
                    break;
                case 22:
                case 23:
                    mtVar.f8314i = 1;
                    break;
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                    o1.h.f16865a.a(this.N, 1);
                    this.A = new p(this, runnableC0077f);
                    IntentFilter intentFilter3 = new IntentFilter();
                    intentFilter3.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                    App.c().registerReceiver(this.A, intentFilter3);
                    j3();
                    this.f7886a.f8314i = 1;
                    break;
            }
        } else {
            mtVar.f8313h = 1;
        }
        int i3 = nt.f8637c;
        if (i3 == 0 || i3 == 2) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 68, 67, 55, 56, 64};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        byte b2 = bArr[i2];
        boolean z2 = false;
        if (b2 == -111) {
            int i11 = i2 + 2;
            int i12 = bArr[i11] & 255;
            int i13 = this.f14021l;
            if (i13 != i12) {
                if (i12 != 0) {
                    if (y0.f.f18055i != 1) {
                        l0.b0.l0(12, 0);
                        l0.b0.l0(12, 1);
                    }
                } else if (i13 == 1 && i12 == 0 && y0.f.f18055i == 1) {
                    l0.b0.l0(12, 0);
                    l0.b0.l0(12, 1);
                }
                qt.y0(112, bArr[i11] & 255);
                this.f14021l = i12;
            }
            return;
        }
        if (b2 == -106) {
            switch (bArr[i2 + 2] & 255) {
                case 50:
                    int i14 = i2 + 3;
                    if (this.f14013h != (bArr[i14] & 255)) {
                        int i15 = bArr[i14] & 255;
                        this.f14013h = i15;
                        if (i15 == 1) {
                            if (!qt.i0().equals("com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi")) {
                                X3("com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi");
                            }
                        } else if (qt.i0().equals("com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi")) {
                            o1.u.k();
                        }
                    }
                    qt.y0(210, bArr[i14] & 255);
                    break;
                case 51:
                    qt.y0(211, bArr[i2 + 3] & 255);
                    break;
                case 52:
                    qt.y0(212, bArr[i2 + 3] & 255);
                    break;
                case 53:
                    qt.y0(213, bArr[i2 + 3] & 255);
                    break;
                case 54:
                    qt.y0(214, bArr[i2 + 3] & 255);
                    break;
                case 55:
                    qt.y0(215, bArr[i2 + 3] & 255);
                    break;
            }
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 56) {
            int i16 = i2 + 6;
            qt.y0(123, bArr[i16] & 255);
            int i17 = i2 + 7;
            qt.y0(124, bArr[i17] & 255);
            int i18 = i2 + 8;
            qt.y0(125, bArr[i18] & 255);
            int i19 = i2 + 9;
            qt.y0(126, bArr[i19] & 255);
            int i20 = bArr[i16] & 255;
            int i21 = bArr[i17] & 255;
            int i22 = bArr[i18] & 255;
            int i23 = bArr[i19] & 255;
            o1.x[] xVarArr = nt.f8643f;
            o1.x.C(xVarArr, 1049, new int[]{8, ((i20 * 68) / 100) | GLES10.GL_MODULATE}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{8, ((i21 * 68) / 100) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{8, ((i22 * 68) / 100) | GLES10.GL_TEXTURE_ENV}, null, null);
            o1.x.C(xVarArr, 1049, new int[]{8, ((i23 * 68) / 100) | 9216}, null, null);
            return;
        }
        if (b2 == 96) {
            if ((bArr[i2 + 2] & 255) == 48) {
                qt.y0(150, bArr[i2 + 3] & 255);
                return;
            }
            return;
        }
        if (b2 == 125) {
            int i24 = bArr[i2 + 2] & 255;
            if (i24 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i25 = i2 + 3;
                    l0.c0.b((bArr[i25] >> 3) & 1, (bArr[i25] >> 4) & 1, 0);
                } else {
                    int i26 = i2 + 3;
                    l0.c0.a((bArr[i26] >> 3) & 1, (bArr[i26] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i24 == 240) {
                qt.y0(193, bArr[i2 + 3] & 255);
                qt.y0(194, bArr[i2 + 4] & 255);
                qt.y0(195, bArr[i2 + 5] & 255);
                qt.y0(196, bArr[i2 + 6] & 255);
                qt.y0(197, bArr[i2 + 7] & 255);
                qt.y0(198, bArr[i2 + 8] & 255);
                return;
            }
            if (i24 == 3) {
                int i27 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i27);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i27}, null, null);
                return;
            }
            if (i24 == 4) {
                int i28 = (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 6] & 255)) / 10;
                o1.x[] xVarArr2 = nt.f8643f;
                o1.x.C(xVarArr2, 1049, new int[]{5, i28}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{20, ((bArr[i2 + 5] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 3] & 255)}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{21, ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 8] & 255)}, null, null);
                o1.x.C(xVarArr2, 1049, new int[]{22, (bArr[i2 + 11] & 255) | ((bArr[i2 + 13] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280)}, null, null);
                return;
            }
            if (i24 == 5) {
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    int i29 = i2 + 3;
                    qt.y0(2, (bArr[i29] >> 6) & 1);
                    qt.y0(1, (bArr[i29] >> 7) & 1);
                } else {
                    int i30 = i2 + 3;
                    qt.y0(1, (bArr[i30] >> 6) & 1);
                    qt.y0(2, (bArr[i30] >> 7) & 1);
                }
                int i31 = i2 + 3;
                qt.y0(3, (bArr[i31] >> 4) & 1);
                qt.y0(4, (bArr[i31] >> 5) & 1);
                qt.y0(5, (bArr[i31] >> 3) & 1);
                qt.y0(0, (bArr[i31] >> 2) & 1);
                return;
            }
            if (i24 == 6) {
                o1.x[] xVarArr3 = nt.f8643f;
                int i32 = i2 + 3;
                o1.x.C(xVarArr3, 1049, new int[]{12, (bArr[i32] >> 6) & 1}, null, null);
                o1.x.C(xVarArr3, 1049, new int[]{3, (bArr[i32] >> 0) & 1}, null, null);
                o1.x.C(xVarArr3, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i24 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f14031t = true;
                return;
            } else {
                if (i24 != 9) {
                    return;
                }
                o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i2 + 4] & 255) - 40}, null, null);
                return;
            }
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
            qt.y0(113, b3);
            qt.y0(108, b4);
            qt.y0(109, b5);
            qt.y0(110, b6);
            qt.y0(111, b7);
            qt.y0(103, b8);
            qt.y0(104, b9);
            qt.y0(105, b10);
            qt.y0(106, b11);
            if (nt.a()) {
                f13996s0 = o0.a(b3 & 255, 0, 40);
                return;
            }
            return;
        }
        if (b2 == -108) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            byte b14 = bArr[i2 + 4];
            byte b15 = bArr[i2 + 5];
            qt.y0(98, b14 & 255);
            qt.y0(99, b12 & 255);
            qt.y0(100, b13 & 255);
            qt.y0(101, b15 & 255);
            return;
        }
        if (b2 == 64) {
            d3(bArr[i2 + 2]);
            return;
        }
        if (b2 == 65) {
            int i33 = i2 + 2;
            qt.y0(114, (bArr[i33] >> 7) & 1);
            qt.y0(115, (bArr[i33] >> 6) & 1);
            qt.y0(116, (bArr[i33] >> 5) & 1);
            qt.y0(117, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(118, ((bArr[i2 + 5] << 8) & 65280) | (bArr[i2 + 6] & 255));
            qt.y0(119, ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            int i34 = i2 + 9;
            int i35 = i2 + 10;
            qt.y0(120, ((bArr[i34] << 8) & 65280) | (bArr[i35] & 255));
            int i36 = ((bArr[i34] << 8) & 65280) | (bArr[i35] & 255);
            u0.d.B3((32768 & i36) != 0 ? 1000 - (65536 - i36) : i36 + 1000);
            qt.y0(121, ((bArr[i2 + 11] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
            qt.y0(122, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
            qt.y0(152, bArr[i2 + 16] & 255);
            qt.y0(153, bArr[i2 + 17] & 255);
            int i37 = i2 + 18;
            qt.y0(156, bArr[i37] & 255);
            qt.y0(154, 255 & bArr[i2 + 19]);
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                l0.c0.b((bArr[i37] >> 4) & 1, (bArr[i37] >> 5) & 1, 0);
                return;
            } else {
                l0.c0.a((bArr[i37] >> 4) & 1, (bArr[i37] >> 5) & 1, 0);
                return;
            }
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b16 = bArr[i2 + 2];
                    byte b17 = bArr[i2 + 3];
                    this.f14003c = b16 & 255;
                    int i38 = 0;
                    while (true) {
                        int[][] iArr = this.f14009f;
                        if (i38 < iArr.length) {
                            int i39 = this.f14003c;
                            if (i39 != iArr[i38][0]) {
                                i38++;
                            } else if (i39 != 0) {
                                this.f14001b = i38;
                            }
                        }
                    }
                    int i40 = this.f14005d;
                    int i41 = this.f14003c;
                    if (i40 != i41) {
                        if (i41 == 0 && ((i40 == 9 || i40 == 10 || i40 == 7) && this.f14017j > 0)) {
                            this.f14017j = -1;
                            l0.b0.o0(this.f14019k);
                            this.f14011g = false;
                        }
                        this.f14005d = this.f14003c;
                    }
                    int i42 = this.f14003c;
                    if (i42 != 7) {
                        if (i42 != 22) {
                            if (i42 == 9) {
                                if (this.f14015i != b17) {
                                    this.f14015i = b17;
                                    if (b17 == 1) {
                                        this.f14011g = false;
                                        this.f14017j = -1;
                                        l0.b0.o0(this.f14019k);
                                    } else if (b17 == 2) {
                                        this.f14017j = 25;
                                        l0.b0.a(this.f14019k);
                                    } else if (b17 == 0) {
                                        if (this.f14011g) {
                                            this.f14011g = false;
                                        } else if (h0.c.E == 4 || u0.i.l3().r3()) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else {
                                            l0.b0.l0(13, 0);
                                            l0.b0.l0(13, 1);
                                        }
                                        this.f14017j = -1;
                                        l0.b0.o0(this.f14019k);
                                    }
                                }
                            } else if (i42 != 10) {
                                int i43 = b17 & 255;
                                if (i43 == 1) {
                                    int[][] iArr2 = this.f14009f;
                                    if (i38 < iArr2.length) {
                                        l0.b0.l0(iArr2[i38][1], 0);
                                    }
                                } else if (i43 == 0) {
                                    int i44 = this.f14001b;
                                    int[][] iArr3 = this.f14009f;
                                    if (i44 < iArr3.length && i44 != 255) {
                                        l0.b0.l0(iArr3[i44][1], 1);
                                    }
                                    this.f14001b = 255;
                                }
                            } else if (this.f14015i != b17) {
                                this.f14015i = b17;
                                if (b17 == 1) {
                                    this.f14011g = false;
                                    this.f14017j = -1;
                                    l0.b0.o0(this.f14019k);
                                } else if (b17 == 2) {
                                    this.f14017j = 25;
                                    l0.b0.a(this.f14019k);
                                } else if (b17 == 0) {
                                    if (this.f14011g) {
                                        this.f14011g = false;
                                    } else {
                                        int i45 = h0.c.E;
                                        if (i45 == 3 || i45 == 4 || i45 == 5 || u0.i.l3().r3()) {
                                            l0.b0.l0(26, 0);
                                            l0.b0.l0(26, 1);
                                        } else {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        }
                                    }
                                    this.f14017j = -1;
                                    l0.b0.o0(this.f14019k);
                                }
                            }
                            break;
                        } else if ((b17 & 255) == 1) {
                            switch (nt.f8633a) {
                                case WifiStateMachine.CMD_SET_COUNTRY_CODE /* 131152 */:
                                case 393296:
                                case 458832:
                                case 589904:
                                case 720976:
                                case 852048:
                                case 983120:
                                case 1114192:
                                case 1245264:
                                case 1376336:
                                    z.k.s(227, -57, 1, 1);
                                    break;
                                default:
                                    if (u0.b.D == 1) {
                                        l0.b0.l0(12, 0);
                                        l0.b0.l0(12, 1);
                                    } else {
                                        l0.b0.l0(29, 0);
                                        l0.b0.l0(29, 1);
                                    }
                                    break;
                            }
                        }
                    } else {
                        if (this.f14015i != b17) {
                            this.f14015i = b17;
                            if (b17 == 1) {
                                this.f14011g = false;
                                this.f14017j = -1;
                                l0.b0.o0(this.f14019k);
                            } else if (b17 == 2) {
                                this.f14017j = 25;
                                l0.b0.a(this.f14019k);
                            } else if (b17 == 0) {
                                if (this.f14011g) {
                                    this.f14011g = false;
                                } else {
                                    l0.b0.l0(2, 0);
                                    l0.b0.l0(2, 1);
                                }
                                this.f14017j = -1;
                                l0.b0.o0(this.f14019k);
                            }
                        }
                        break;
                    }
                }
                break;
            case 33:
                if (!h3()) {
                    int i46 = bArr[i2 + 2] & 255;
                    int i47 = bArr[i2 + 3] & 255;
                    int i48 = bArr[i2 + 6] & 255;
                    switch ((i46 >> 5) & 7) {
                        case 1:
                            i4 = 0;
                            i5 = 0;
                            i6 = 1;
                            break;
                        case 2:
                            i4 = 0;
                            i6 = 1;
                            i5 = i6;
                            break;
                        case 3:
                            i4 = 0;
                            i6 = 0;
                            i5 = 1;
                            break;
                        case 4:
                            i6 = 0;
                            i4 = 1;
                            i5 = 1;
                            break;
                        case 5:
                            i6 = 0;
                            i5 = 0;
                            i4 = 1;
                            break;
                        case 6:
                            i5 = 0;
                            i4 = 1;
                            i6 = 1;
                            break;
                        case 7:
                            i4 = 1;
                            i6 = i4;
                            i5 = i6;
                            break;
                        default:
                            i4 = 0;
                            i6 = i4;
                            i5 = i6;
                            break;
                    }
                    qt.y0(18, i4);
                    qt.y0(19, i6);
                    qt.y0(20, i5);
                    qt.y0(13, (i46 >> 4) & 1);
                    if (((i46 >> 3) & 1) != 0) {
                        qt.y0(12, 0);
                    } else if (((i46 >> 2) & 1) != 0) {
                        qt.y0(12, 1);
                    }
                    qt.y0(11, (i46 >> 1) & 1);
                    qt.y0(10, (i46 >> 0) & 1);
                    qt.y0(21, (i47 >> 4) & 15);
                    qt.y0(65, (i47 >> 2) & 1);
                    qt.y0(16, (i47 >> 1) & 1);
                    qt.y0(14, (i47 >> 0) & 1);
                    int i49 = i2 + 4;
                    int i50 = bArr[i49] & 255;
                    int i51 = i2 + 5;
                    int i52 = bArr[i51] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i50 = bArr[i51] & 255;
                        i52 = bArr[i49] & 255;
                    }
                    int i53 = (i50 >> 2) & 63;
                    if (i53 == 0) {
                        qt.y0(27, -1);
                    } else if (i53 <= 15) {
                        qt.y0(27, -2);
                    } else if (i53 >= 49) {
                        qt.y0(27, -3);
                    } else {
                        qt.y0(27, i53);
                    }
                    int i54 = (i52 >> 2) & 63;
                    if (i54 == 0) {
                        qt.y0(28, -1);
                    } else if (i54 <= 15) {
                        qt.y0(28, -2);
                    } else if (i54 >= 49) {
                        qt.y0(28, -3);
                    } else {
                        qt.y0(28, i54);
                    }
                    qt.y0(72, (bArr[i49] >> 1) & 1);
                    qt.y0(76, (bArr[i49] >> 0) & 1);
                    qt.y0(37, (bArr[i51] >> 1) & 1);
                    if (i48 != 0) {
                        if (i48 < 80) {
                            i7 = 400;
                            z2 = true;
                        } else {
                            i7 = -400;
                        }
                        u0.d.A3(z2 ? 1000 - i7 : i7 + 1000);
                    } else {
                        u0.d.A3(0);
                    }
                } else {
                    int i55 = i2 + 2;
                    qt.y0(10, (bArr[i55] >> 7) & 1);
                    qt.y0(11, (bArr[i55] >> 6) & 1);
                    qt.y0(12, (bArr[i55] >> 5) & 1);
                    qt.y0(53, (bArr[i55] >> 4) & 1);
                    qt.y0(13, (bArr[i55] >> 3) & 1);
                    qt.y0(62, (bArr[i55] >> 2) & 1);
                    qt.y0(16, (bArr[i55] >> 1) & 1);
                    qt.y0(65, (bArr[i55] >> 0) & 1);
                    int i56 = bArr[i2 + 3] & 255;
                    if (i56 != 0) {
                        if (i56 == 1) {
                            i8 = 0;
                            i10 = 1;
                        } else if (i56 == 2) {
                            i8 = 0;
                            i10 = 0;
                            i9 = 1;
                        } else if (i56 != 3) {
                            i8 = 0;
                            i10 = 0;
                        } else {
                            i10 = 0;
                            i8 = 1;
                            i9 = 1;
                        }
                        i9 = i10;
                    } else {
                        i8 = 0;
                        i9 = 0;
                        i10 = 1;
                    }
                    qt.y0(18, i8);
                    qt.y0(19, i10);
                    qt.y0(20, i9);
                    qt.y0(21, bArr[i2 + 4] & 255);
                    int i57 = i2 + 5;
                    int i58 = bArr[i57] & 255;
                    int i59 = i2 + 6;
                    int i60 = bArr[i59] & 255;
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        i58 = bArr[i59] & 255;
                        i60 = bArr[i57] & 255;
                    }
                    if (i58 == 0) {
                        qt.y0(27, -2);
                    } else if (i58 == 255) {
                        qt.y0(27, -3);
                    } else if (i58 == 254) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i58);
                    }
                    if (i60 == 0) {
                        qt.y0(28, -2);
                    } else if (i60 == 255) {
                        qt.y0(28, -3);
                    } else if (i60 == 254) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, i60);
                    }
                    int i61 = i2 + 7;
                    qt.y0(29, (bArr[i61] >> 4) & 3);
                    qt.y0(30, (bArr[i61] >> 0) & 3);
                    qt.y0(31, (bArr[i61] >> 6) & 3);
                    qt.y0(32, (bArr[i61] >> 2) & 3);
                    qt.y0(66, (bArr[i2 + 10] >> 7) & 1);
                    int i62 = i2 + 8;
                    qt.y0(127, (bArr[i62] >> 6) & 3);
                    qt.y0(128, (bArr[i62] >> 4) & 3);
                    qt.y0(129, (bArr[i62] >> 0) & 15);
                    int i63 = i2 + 9;
                    qt.y0(130, (bArr[i63] >> 6) & 3);
                    qt.y0(131, (bArr[i63] >> 4) & 3);
                    qt.y0(132, (bArr[i63] >> 0) & 15);
                }
                break;
            case 34:
                u0.d.R2(l0.c0.P0(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.P0(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.P0(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.P0(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i64 = i2 + 2;
                int i65 = bArr[i64] & 255;
                int i66 = i2 + 3;
                int i67 = bArr[i66] & 255;
                int i68 = i2 + 4;
                int i69 = bArr[i68] & 255;
                int i70 = i2 + 5;
                int i71 = bArr[i70] & 255;
                if (i65 == 0 && i67 == 0 && i69 == 0 && i71 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i65 || l0.c0.f13014h != i67 || l0.c0.f13015i != i69 || l0.c0.f13016j != i71) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                u0.d.D2(l0.c0.P0(bArr[i64] & 255));
                u0.d.E2(l0.c0.P0(bArr[i66] & 255));
                u0.d.F2(l0.c0.P0(bArr[i68] & 255));
                u0.d.G2(l0.c0.P0(bArr[i70] & 255));
                break;
            default:
                switch (b2) {
                    case 39:
                        int i72 = i2 + 2;
                        qt.y0(146, (bArr[i72] >> 1) & 1);
                        qt.y0(147, (bArr[i72] >> 0) & 1);
                        qt.y0(148, ((bArr[i2 + 3] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(149, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] << 8) & 65280));
                        break;
                    case 40:
                        byte b18 = bArr[i2 + 2];
                        if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                            qt.y0(2, (b18 >> 6) & 1);
                            qt.y0(1, (b18 >> 7) & 1);
                        } else {
                            qt.y0(1, (b18 >> 6) & 1);
                            qt.y0(2, (b18 >> 7) & 1);
                        }
                        qt.y0(3, (b18 >> 4) & 1);
                        qt.y0(4, (b18 >> 5) & 1);
                        qt.y0(5, (b18 >> 3) & 1);
                        qt.y0(0, (b18 >> 2) & 1);
                        break;
                    case 41:
                        if (h3()) {
                            qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 1700);
                        } else if (!this.f14031t) {
                            qt.l(bArr[i2 + 3], bArr[i2 + 2], false, 5400);
                        }
                        break;
                    default:
                        switch (b2) {
                            case 67:
                                if (h3()) {
                                    int i73 = i2 + 2;
                                    qt.y0(133, (bArr[i73] >> 7) & 1);
                                    qt.y0(134, (bArr[i73] >> 5) & 1);
                                    qt.y0(135, (bArr[i73] >> 4) & 1);
                                    int i74 = i2 + 3;
                                    qt.y0(136, (bArr[i74] >> 7) & 1);
                                    qt.y0(137, (bArr[i74] >> 0) & 127);
                                    int i75 = i2 + 4;
                                    qt.y0(138, (bArr[i75] >> 7) & 1);
                                    qt.y0(139, (bArr[i75] >> 0) & 127);
                                    int i76 = i2 + 5;
                                    qt.y0(140, (bArr[i76] >> 7) & 1);
                                    qt.y0(141, (bArr[i76] >> 0) & 127);
                                    int i77 = i2 + 6;
                                    qt.y0(142, (bArr[i77] >> 7) & 1);
                                    qt.y0(143, (bArr[i77] >> 6) & 1);
                                    qt.y0(144, (bArr[i77] >> 5) & 1);
                                    qt.y0(145, (bArr[i77] >> 4) & 1);
                                }
                                break;
                            case 68:
                                qt.x0(155, new String(bArr, i2 + 2, i3 - 2));
                                break;
                            case 69:
                                qt.y0(199, bArr[i2 + 2] & 255);
                                qt.y0(200, bArr[i2 + 3] & 255);
                                int i78 = i2 + 7;
                                qt.y0(201, ((bArr[i2 + 4] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 5] << 8) & 65280) | (bArr[i78] & 255));
                                qt.y0(202, ((bArr[i78] << 8) & 65280) | (bArr[i2 + 8] & 255));
                                qt.y0(203, ((bArr[i2 + 9] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255));
                                qt.y0(204, ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255));
                                qt.y0(205, ((bArr[i2 + 14] << 8) & 65280) | (bArr[i2 + 15] & 255));
                                qt.y0(206, ((bArr[i2 + 16] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 17] << 8) & 65280) | (bArr[i2 + 18] & 255));
                                qt.y0(207, bArr[i2 + 19] & 3);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public final void V3(byte b2, String str) {
        if (str == null) {
            return;
        }
        int length = str.length();
        if (length > 29) {
            length = 29;
        }
        int i2 = length << 1;
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < length; i3++) {
            int iCodePointAt = str.codePointAt(i3);
            int i4 = i3 << 1;
            bArr[i4 + 1] = (byte) ((iCodePointAt >> 8) & 255);
            bArr[i4] = (byte) (iCodePointAt & 255);
        }
        int[] iArr = new int[(i2 & 255) + 4];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (i2 + 1);
        iArr[3] = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[4 + i5] = bArr[i5];
        }
        z.k.s(iArr);
    }

    @Override // k0.lt
    public void W2() {
        this.f14026o.j();
        u0.c.f17386m.d(this.f14036y);
        l0.b0.p0(this.f14037z);
        qt.q0(this.f14023m);
        o1.y yVar = y0.g.f18094d;
        yVar.d(this.f14025n);
        y0.g.f18095e.d(this.f14025n);
        w0.e.f17815a.d(this.f14023m);
        w0.e.f17819e.d(this.f14023m);
        u0.c.f17374a.d(this.f14023m);
        qt.q0(this.Y);
        l0.b0.o0(this.f14022l0);
        qt.q0(this.S);
        u0.c.f17388o.d(this.T);
        h0.d.f2464c.d(this.Z);
        h0.d.f2462a.d(this.Z);
        yVar.d(this.O);
        o1.h.f16865a.d(this.N);
        qt.q0(this.f14034w);
    }

    public final void W3() {
        Z2(y0.f.f18037c);
        R2(null);
    }

    public final void X3(String str) {
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", str);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(274857984);
        App.c().startActivity(intent);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 216) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    public void Y3(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        if (bArr[i2] != 85) {
            return;
        }
        byte b2 = bArr[i2 + 2];
        byte b3 = bArr[i2 + 3];
        byte b4 = bArr[i2 + 4];
        byte b5 = bArr[i2 + 5];
        byte b6 = bArr[i2 + 6];
        byte b7 = bArr[i2 + 7];
        byte b8 = bArr[i2 + 8];
        int i7 = b2 & 255;
        if (i7 == 16) {
            qt.y0(27, -2);
        } else if (i7 == 80) {
            qt.y0(27, -3);
        } else if (i7 > 16 && i7 < 80) {
            qt.y0(27, i7);
        }
        int i8 = b3 & 255;
        if (i8 == 16) {
            qt.y0(28, -2);
        } else if (i8 == 80) {
            qt.y0(28, -3);
        } else if (i8 > 16 && i8 < 80) {
            qt.y0(28, i8);
        }
        qt.y0(21, b4 & DhcpPacket.DHCP_DOMAIN_NAME & 255);
        switch ((b4 >> 4) & 15) {
            case 1:
                i5 = 0;
                i6 = 0;
                i4 = 1;
                break;
            case 2:
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i4 = 0;
                i5 = 1;
                i6 = i5;
                break;
            case 5:
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 6:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 7:
                i4 = 1;
                i5 = i4;
                i6 = i5;
                break;
            default:
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
        }
        qt.y0(19, i4);
        qt.y0(20, i5);
        qt.y0(18, i6);
        qt.y0(29, b5 & 3);
        qt.y0(31, (b5 >> 2) & 3);
        qt.y0(30, (b5 >> 4) & 3);
        qt.y0(32, (b5 >> 6) & 3);
        qt.y0(13, b6 & 1);
        qt.y0(11, (b6 >> 1) & 1);
        qt.y0(14, (b6 >> 2) & 1);
        qt.y0(53, (b6 >> 4) & 1);
        qt.y0(65, (b6 >> 5) & 1);
        qt.y0(38, (b6 >> 6) & 1);
        qt.y0(15, (b6 >> 7) & 1);
        qt.y0(12, (b7 >> 0) & 3);
        qt.y0(67, (b7 >> 3) & 1);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 111) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            }
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, -57, 1, 1);
            return;
        }
        switch (i2) {
            case 0:
                if (T2(iArr, 2)) {
                    if (iArr[0] != 49) {
                        z.k.s(227, 131, 2, iArr[0], iArr[1]);
                    } else {
                        a4(iArr[1]);
                    }
                }
                break;
            case 1:
                f4(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f14008e0[this.f14010f0 % 2], 37, 2, -86, 0});
                f4(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f14008e0[this.f14010f0 % 2], 37, 2, -86, 0});
                f4(new byte[]{46, DhcpPacket.DHCP_LEASE_TIME, 5, (byte) iArr[0], (byte) this.f14008e0[this.f14010f0 % 2], 37, 2, -86, 0});
                break;
            case 2:
                z.k.s(227, -31, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                break;
            case 3:
                z.k.s(227, -31, 2, iArr[0], iArr[1]);
                break;
            case 4:
                if (iArr[0] == 34) {
                    c4(iArr[1]);
                } else if (iArr[0] != 35) {
                    z.k.s(227, -112, 2, iArr[0], iArr[1]);
                } else {
                    b4(iArr[1]);
                }
                break;
            case 5:
                z.k.s(227, -32, 2, iArr[0], iArr[1]);
                break;
            case 6:
                Z3(iArr[0]);
                this.f14033v = true;
                break;
        }
    }

    @Override // k0.lt
    public void Z2(int i2) {
        if (nt.a() && this.f7886a.f8307b == 1) {
            f13997t0 = f13998u0[o0.a(i2, 0, 36)];
        }
    }

    public final void Z3(int i2) {
        f13994q0 = i2;
        z.k.s(227, -30, 2, 0, i2);
        qt.y0(188, f13994q0);
        int iB = this.f14026o.b(4, 0);
        int i3 = f13994q0;
        if (iB != i3) {
            this.f14026o.g(4, i3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x006b  */
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
            } else if (i6 == 0) {
                iArr[4] = 17;
            } else if (i6 == 1) {
                iArr[4] = 18;
            }
            iArr[5] = i4 & 255;
            iArr[6] = (i4 >> 8) & 255;
            int i7 = i5 % 6;
            if (i7 != 0 || i5 == 0) {
                iArr[7] = i7;
            } else {
                iArr[7] = 6;
            }
            iArr[8] = 0;
            iArr[9] = 0;
        } else if (i3 == 3) {
            int i8 = u0.b.r3;
            iArr[4] = i8 & 255;
            iArr[5] = (i8 >> 8) & 255;
            int i9 = u0.b.s3;
            iArr[6] = i9 & 255;
            iArr[7] = (i9 >> 8) & 255;
            int i10 = u0.b.t3;
            iArr[8] = i10 / 60;
            iArr[9] = i10 % 60;
        } else if (i3 != 4) {
            if (i3 == 8 || i3 == 9) {
                int i11 = u0.b.r3;
                iArr[4] = i11 & 255;
                iArr[5] = (i11 >> 8) & 255;
                int i12 = u0.b.s3;
                iArr[6] = i12 & 255;
                iArr[7] = (i12 >> 8) & 255;
                int i13 = u0.b.t3;
                iArr[8] = i13 / 60;
                iArr[9] = i13 % 60;
            }
        } else if (o0.e.H == 1) {
            iArr[4] = 0;
            iArr[5] = o0.e.B & 255;
            iArr[6] = o0.e.C & 255;
            int i14 = o0.e.f16794r;
            iArr[7] = i14 / BatchedScanSettings.MAX_INTERVAL_SEC;
            iArr[8] = (i14 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            iArr[9] = i14 % 60;
        } else {
            int i15 = o0.e.C;
            iArr[4] = i15 & 255;
            iArr[5] = (i15 >> 8) & 255;
            int i16 = o0.e.B;
            iArr[6] = i16 & 255;
            iArr[7] = (i16 >> 8) & 255;
            int i17 = o0.e.f16794r;
            iArr[8] = i17 / 60;
            iArr[9] = i17 % 60;
        }
        int[] iArr2 = new int[11];
        iArr2[0] = 227;
        while (i2 < 10) {
            int i18 = i2 + 1;
            iArr2[i18] = iArr[i2];
            i2 = i18;
        }
        z.k.s(iArr2);
    }

    public final void a4(int i2) {
        f13991n0 = i2;
        qt.y0(107, i2);
        int iB = this.f14026o.b(1, 0);
        int i3 = f13991n0;
        if (iB != i3) {
            this.f14026o.g(1, i3);
        }
        z.k.s(227, 131, 2, 49, f13991n0);
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
        if (this.f14014h0 + bArr.length > 1024) {
            this.f14014h0 = 0;
            this.f14016i0 = 0;
            this.f14018j0 = 0;
        }
        System.arraycopy(bArr, 0, this.f14012g0, this.f14014h0, bArr.length);
        int length = this.f14014h0 + bArr.length;
        this.f14014h0 = length;
        int i5 = this.f14018j0;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f14012g0[1];
            int i6 = 2;
            while (true) {
                i4 = this.f14018j0;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f14012g0[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f14012g0;
            if (b3 == bArr2[i4]) {
                Y3(bArr2, 1, bArr2[2] + 2);
                this.f14016i0 = this.f14018j0 + 1;
            } else {
                this.f14016i0 = 2;
            }
            this.f14018j0 = 0;
        }
        int i7 = this.f14014h0 - 2;
        while (true) {
            i2 = this.f14016i0;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f14012g0;
            if (bArr3[i2] == 46) {
                if (this.f14018j0 > 512) {
                    this.f14018j0 = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 3;
                    this.f14018j0 = i8;
                    if (i8 >= this.f14014h0) {
                        this.f14018j0 = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i9 = i2 + 2;
                    while (true) {
                        i3 = this.f14018j0;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f14012g0[i9]);
                        i9++;
                    }
                    byte b5 = (byte) (b4 ^ 255);
                    byte[] bArr4 = this.f14012g0;
                    if (b5 == bArr4[i3]) {
                        int i10 = this.f14016i0;
                        Y3(bArr4, i10 + 1, bArr4[i10 + 2] + 2);
                        this.f14016i0 = this.f14018j0;
                    } else {
                        this.f14016i0++;
                    }
                    this.f14018j0 = 0;
                }
            }
            this.f14016i0++;
        }
        if (i2 != 0) {
            int i11 = this.f14014h0 - i2;
            this.f14014h0 = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f14012g0;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f14016i0 = 0;
        }
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
                iArr[3] = 16;
                break;
            case 4:
                int i2 = o0.e.H;
                if (i2 == 1) {
                    iArr[2] = 2;
                    iArr[3] = 16;
                } else if (i2 == 2 || i2 == 3) {
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
                iArr[3] = 255;
                break;
            default:
                int i3 = u0.b.f17306a0;
                if (i3 == 0) {
                    iArr[2] = 0;
                    iArr[3] = 0;
                } else if (i3 == 1) {
                    iArr[2] = 7;
                    iArr[3] = 48;
                }
                break;
        }
        if (s0.m("sys.carlink.type", 0) <= 0 || !o1.u.S("com.syu.carlink")) {
            return;
        }
        iArr[2] = 18;
        iArr[3] = 0;
    }

    public final void b4(int i2) {
        f13992o0 = i2;
        z.k.s(227, -112, 2, 35, i2);
        qt.y0(181, f13992o0);
        int iB = this.f14026o.b(2, 0);
        int i3 = f13992o0;
        if (iB != i3) {
            this.f14026o.g(2, i3);
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

    public final void c4(int i2) {
        f13993p0 = i2;
        z.k.s(227, -112, 2, 34, i2);
        qt.y0(182, f13993p0);
        int iB = this.f14026o.b(3, 0);
        int i3 = f13993p0;
        if (iB != i3) {
            this.f14026o.g(3, i3);
        }
    }

    public final void d3(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 9:
                if (u0.b.D != 1) {
                    l0.b0.l0(24, 0);
                    l0.b0.l0(24, 1);
                } else if (i2 == 1) {
                    l0.b0.l0(75, 0);
                    l0.b0.l0(75, 1);
                } else if (i2 == 2) {
                    l0.b0.l0(74, 0);
                    l0.b0.l0(74, 1);
                } else if (i2 == 3) {
                    l0.b0.l0(74, 0);
                    l0.b0.l0(74, 1);
                } else if (i2 == 9) {
                    l0.b0.l0(74, 0);
                    l0.b0.l0(74, 1);
                }
                break;
            case 4:
                l0.b0.l0(22, 0);
                l0.b0.l0(22, 1);
                break;
            case 5:
            case 6:
            case 10:
                l0.b0.l0(54, 0);
                l0.b0.l0(54, 1);
                break;
            case 7:
                l0.b0.l0(76, 0);
                l0.b0.l0(76, 1);
                break;
            case 8:
                l0.b0.l0(53, 0);
                l0.b0.l0(53, 1);
                break;
            case 11:
                l0.b0.l0(5, 0);
                l0.b0.l0(5, 1);
                break;
            case 12:
                if (!o1.u.S("com.syu.carlink")) {
                    o1.u.g("com.syu.carlink");
                }
                break;
        }
    }

    public final synchronized void d4() {
        if (this.f7886a.f8307b == 0) {
            return;
        }
        int i2 = f13996s0;
        int i3 = f13997t0;
        if (i2 < i3) {
            U3(33, 33);
        } else if (i2 > i3) {
            U3(33, 49);
        }
    }

    public final void e3(int i2) {
        Z0(1, new int[]{i2}, null, null);
    }

    public final void e4(int i2, String str) {
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
        if (i2 == 1) {
            for (int i3 = 0; i3 < str.length(); i3++) {
                iArr[5 + i3] = (byte) charArray[i3];
            }
        }
        z.k.s(iArr);
    }

    public final void f3(int i2, int i3) {
        z.k.s(227, 2, 224, (byte) i2, (byte) i3);
    }

    public final int g3(int i2) {
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

    public final boolean h3() {
        switch (nt.f8637c) {
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
                return true;
            case 22:
            case 23:
            default:
                return false;
        }
    }

    public final void i3(String str) {
        if (str == null) {
            str = " ";
        }
        try {
            byte[] bytes = str.getBytes("GB2312");
            int length = bytes.length;
            int[] iArr = new int[length + 4];
            iArr[0] = -29;
            iArr[1] = -54;
            iArr[2] = bytes.length + 1;
            iArr[3] = 2;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2 + 4] = bytes[i2];
            }
            z.k.s(iArr);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void init() {
        f13999v0.f(33, new o(33, 100));
    }

    public final void j3() {
        int i2 = this.I;
        if (i2 > 0) {
            int[] iArr = f13995r0;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.E;
            z.k.s(227, 201, 6, this.K, this.M, i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, iArr[i2]);
        }
    }
}
