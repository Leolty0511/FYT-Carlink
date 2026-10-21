package k0;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.hardware.Camera;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;
import java.util.List;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class x3 extends lt implements o1.q {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f11948m0 = 0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f11949n0 = 0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f11950o0 = 128;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f11951p0 = 128;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f11952q0 = 128;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f11953r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int[] f11954s0 = {0, 0, 6, 2, 7, 1, 5, 3, 5, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 0};
    public p C;
    public o1.o W;
    public o1.o X;
    public o1.o Y;
    public o1.o Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11956b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11964f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11958c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f11960d = 255;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f11962e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 18}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 34}, new int[]{12, 35}, new int[]{13, 5}, new int[]{14, 16}, new int[]{15, 13}, new int[]{16, 13}, new int[]{64, -1}, new int[]{128, 25}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f11966g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f11968h = {new int[]{1, 54}, new int[]{2, 24}, new int[]{3, 18}, new int[]{4, 55}, new int[]{6, 5}, new int[]{7, 6}, new int[]{8, 1}, new int[]{9, -1}, new int[]{10, 34}, new int[]{11, 35}, new int[]{12, 32}, new int[]{13, 33}, new int[]{14, 16}, new int[]{16, 7}, new int[]{17, 8}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f11970i = new byte[1024];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11972j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11974k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11976l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11978m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f11979n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f11980o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f11981p = new g();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public o1.g0 f11982q = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f11983r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f11984s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f11985t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f11986u = 4;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f11987v = 5;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f11988w = 6;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f11989x = new h();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f11990y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f11991z = 0;
    public int A = 0;
    public int B = 0;
    public String D = ProxyProperties.LOCAL_EXCL_LIST;
    public String E = ProxyProperties.LOCAL_EXCL_LIST;
    public int F = 0;
    public int G = 0;
    public int H = 0;
    public int I = 0;
    public int J = 0;
    public int K = 0;
    public int L = 0;
    public int M = 0;
    public int N = 255;
    public int O = 11;
    public Runnable P = new i();
    public Runnable Q = new j();
    public int R = 0;
    public int S = 0;
    public int T = 0;
    public int U = 0;
    public boolean V = false;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public long f11955a0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f11957b0 = 0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Runnable f11959c0 = new o();

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Runnable f11961d0 = new a();

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f11963e0 = -1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public Runnable f11965f0 = new b();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Runnable f11967g0 = new c();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Runnable f11969h0 = new d();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f11971i0 = new e();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f11973j0 = 0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public Runnable f11975k0 = new f();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f11977l0 = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x3 x3Var = x3.this;
            int i2 = x3Var.f11957b0 - 1;
            x3Var.f11957b0 = i2;
            if (i2 <= 0) {
                l0.b0.p0(x3Var.f11961d0);
                x3.this.f11957b0 = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 80, 0);
                z.k.s(227, 144, 2, 127, 0);
                x3 x3Var2 = x3.this;
                x3Var2.u3(x3Var2.f11982q.b(6, 0));
                if (nt.f8633a != 3801227) {
                    return;
                }
                x3 x3Var3 = x3.this;
                x3Var3.s3(x3Var3.f11982q.b(3, 128), x3.this.f11982q.b(4, 128), x3.this.f11982q.b(5, 128));
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x3 x3Var = x3.this;
            int i2 = x3Var.f11963e0;
            int i3 = u0.b.f17347o;
            if (i2 != i3) {
                x3Var.f11963e0 = i3;
                if (i3 == 0) {
                    z.k.s(227, -126, 1, 0);
                    qt.a(0);
                }
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            if (nt.f8633a == 1114251) {
                long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
                int i2 = nt.f8645g[195];
                if (i2 != 0) {
                    x3 x3Var = x3.this;
                    long j2 = x3Var.f11955a0;
                    if (millis == j2 || millis - j2 < i2 * 30) {
                        qt.y0(196, 0);
                    } else {
                        x3Var.f11955a0 = millis;
                        qt.y0(196, 1);
                    }
                } else {
                    qt.y0(196, 0);
                }
            }
            byte b2 = (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN);
            byte b3 = (byte) (time.month + 1);
            byte b4 = (byte) time.monthDay;
            byte b5 = (byte) time.hour;
            byte b6 = (byte) time.minute;
            if (x3.f11953r0 == 1) {
                z.k.s(227, 166, 6, b2, b3, b4, b5, b6, (byte) time.second);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x3.b3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.D;
            if (i2 == 8 || i2 == 10) {
                x3.this.n3((byte) 112, u0.b.i3);
                x3.this.n3((byte) 113, u0.b.j3);
                x3.this.n3((byte) 114, u0.b.k3);
            } else {
                x3.this.n3((byte) 112, " ");
                x3.this.n3((byte) 113, " ");
                x3.this.n3((byte) 114, " ");
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x3.this.f11973j0 == 0) {
                z.k.s(227, -112, 1, 33);
                x3.v3(new byte[]{46, -112, 1, 33, 0});
            }
            x3 x3Var = x3.this;
            int i2 = x3Var.f11973j0;
            if (i2 > 0) {
                x3Var.f11973j0 = i2 - 1;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x3 x3Var = x3.this;
            byte b2 = (byte) (x3Var.f11980o + 1);
            x3Var.f11980o = b2;
            if (b2 > 5) {
                l0.b0.o0(x3Var.f11981p);
                x3.this.f11980o = (byte) 0;
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.E0;
            if (i2 == 243) {
                x3.this.p3(3);
            }
            if (i2 == 248) {
                x3.this.p3(10);
                return;
            }
            switch (i2) {
                case 250:
                    x3.this.p3(1);
                    break;
                case 251:
                    try {
                        Intent intent = new Intent();
                        intent.setComponent(new ComponentName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"));
                        intent.putExtra("onstar", Camera.Parameters.FLASH_MODE_ON);
                        intent.setFlags((intent.getFlags() & (-2097153)) | 268435456);
                        App.c().startActivity(intent);
                    } catch (Exception unused) {
                        return;
                    }
                    break;
                case 252:
                    x3.this.p3(4);
                    break;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x3 x3Var = x3.this;
            int i2 = x3Var.O;
            if (i2 >= 0) {
                x3Var.O = i2 - 1;
            }
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            switch (nt.f8633a) {
                case 139:
                    z.k.s(227, -18, 2, 112, 2);
                    break;
                case 131211:
                case 917643:
                case 983179:
                    z.k.s(227, -18, 2, 112, 4);
                    break;
                case 327819:
                    z.k.s(227, -18, 2, 82, 0);
                    break;
                case 458891:
                    z.k.s(227, -18, 2, 82, 5);
                    break;
                case 524427:
                    z.k.s(227, -18, 2, 112, 3);
                    break;
                case 589963:
                case 1638539:
                    z.k.s(227, -18, 2, 112, 1);
                    break;
                case 655499:
                case 1573003:
                    z.k.s(227, -18, 2, 112, 0);
                    break;
                case 721035:
                    z.k.s(227, -18, 2, 112, 5);
                    break;
                case 852107:
                    z.k.s(227, -18, 2, 112, 5);
                    break;
                case 1048715:
                    z.k.s(227, -18, 2, 112, 6);
                    break;
                case 1114251:
                    z.k.s(227, -18, 2, 112, 7);
                    break;
                case 1179787:
                case 1245323:
                case 4128907:
                    z.k.s(227, -18, 2, 112, 18);
                    break;
                case 1310859:
                    z.k.s(227, -18, 2, 112, 8);
                    break;
                case 1376395:
                    z.k.s(227, -18, 2, 112, 9);
                    break;
                case 1441931:
                case 3211403:
                    z.k.s(227, -18, 2, 112, 10);
                    break;
                case 1507467:
                    z.k.s(227, -18, 2, 112, 11);
                    break;
                case 1704075:
                    z.k.s(227, -18, 2, 112, 12);
                    break;
                case 1769611:
                case 1966219:
                    z.k.s(227, -18, 2, 112, 13);
                    break;
                case 1835147:
                case 3604619:
                    z.k.s(227, -18, 2, 112, 14);
                    break;
                case 2031755:
                case 3997835:
                    z.k.s(227, -18, 2, 112, 15);
                    break;
                case 2097291:
                case 2293899:
                    z.k.s(227, -18, 2, 112, 16);
                    break;
                case 2162827:
                    z.k.s(227, -18, 2, 112, 17);
                    break;
                case 2228363:
                case 2949259:
                    z.k.s(227, -18, 2, 112, 19);
                    break;
                case 2359435:
                    z.k.s(227, -18, 2, 112, 20);
                    break;
                case 2424971:
                case 3801227:
                    z.k.s(227, -18, 2, 112, 19);
                    break;
                case 2490507:
                    z.k.s(227, -18, 2, 112, 16);
                    break;
                case 2556043:
                    z.k.s(227, -18, 2, 112, 21);
                    break;
                case 2621579:
                    z.k.s(227, -18, 2, 112, 22);
                    break;
                case 2687115:
                    z.k.s(227, -18, 2, 112, 23);
                    break;
                case 2752651:
                    z.k.s(227, -18, 2, 112, 24);
                    break;
                case 2818187:
                    z.k.s(227, -18, 2, 112, 25);
                    break;
                case 3014795:
                    z.k.s(227, -18, 2, 112, 6);
                    break;
                case 3276939:
                    z.k.s(227, -18, 3, 112, 19, 0);
                    break;
                case 3342475:
                    z.k.s(227, -18, 2, 112, 33);
                    break;
                case 3408011:
                    z.k.s(227, -18, 2, 112, 34);
                    break;
                case 3473547:
                    z.k.s(227, -18, 2, 112, 35);
                    break;
                case 3539083:
                    z.k.s(227, -18, 2, 112, 32);
                    break;
                case 3670155:
                    z.k.s(227, -18, 2, 112, 36);
                    break;
                case 3735691:
                case 3932299:
                    z.k.s(227, -18, 2, 112, 37);
                    break;
                case 3866763:
                    z.k.s(227, -18, 3, 112, 19, 1);
                    break;
                case 4063371:
                    z.k.s(227, -18, 2, 112, 38);
                    break;
            }
        }
    }

    public class k implements o1.o {
        public k() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = i.a.Theme_actionModeWebSearchDrawable;
            e.e.f1624b.c();
            return true;
        }
    }

    public class l implements o1.o {
        public l() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            x3.this.p3(2);
            return true;
        }
    }

    public class m implements o1.o {
        public m() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 251;
            e.e.f1624b.c();
            return true;
        }
    }

    public class n implements o1.o {
        public n() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 1) {
                return true;
            }
            u0.b.E0 = 252;
            e.e.f1624b.c();
            return false;
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(x3.this.f11961d0);
            x3 x3Var = x3.this;
            x3Var.f11957b0 = 5;
            if (u0.b.f17306a0 == 1) {
                x3Var.V = false;
                x3Var.R = 0;
                x3Var.S = 0;
                x3Var.T = 0;
                x3Var.U = 0;
                if (nt.f8633a != 1114251) {
                    return;
                }
                x3Var.r3(x3Var.f11982q.b(2, 0));
                Time time = new Time(Time.getCurrentTimezone());
                time.setToNow();
                x3.this.f11955a0 = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            }
        }
    }

    public class p extends BroadcastReceiver {
        public p() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0042 A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:5:0x0020, B:7:0x002a, B:11:0x0037, B:13:0x003b, B:14:0x0042, B:16:0x0049, B:18:0x0051, B:20:0x005b, B:21:0x0063, B:23:0x006d, B:24:0x008a, B:26:0x0094, B:27:0x009d, B:29:0x00a7, B:30:0x00b0, B:32:0x00ba, B:34:0x00c0, B:35:0x00c9, B:37:0x00d1), top: B:42:0x0020 }] */
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
                                x3 x3Var = x3.this;
                                x3Var.M = 1;
                                x3Var.L = 1;
                                z2 = true;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                x3 x3Var2 = x3.this;
                                x3Var2.M = 0;
                                x3Var2.L = 0;
                                z2 = true;
                                break;
                        }
                    } else {
                        x3 x3Var3 = x3.this;
                        x3Var3.M = 0;
                        x3Var3.L = 0;
                        z2 = true;
                    }
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (x3.this.G != extras.getInt("SEG_REMAIN_DIS")) {
                        x3.this.G = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (x3.this.F != extras.getInt("ROUTE_REMAIN_DIS")) {
                        x3.this.F = extras.getInt("ROUTE_REMAIN_DIS");
                        x3.this.J = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (x3.this.H != extras.getInt("CAR_DIRECTION")) {
                        x3.this.H = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (x3.this.I != extras.getInt("ROUTE_ALL_TIME")) {
                        x3.this.I = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (x3.this.K != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        x3.this.K = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                x3 x3Var4 = x3.this;
                x3Var4.O = 11;
                if (z2) {
                    x3Var4.c3();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ p(x3 x3Var, g gVar) {
            this();
        }
    }

    public static void b3() {
        int i2 = u0.b.D;
        int i3 = 0;
        if (i2 != 1) {
            int[] iArr = {192, 2, 12, 0};
            if (i2 == 2) {
                iArr[2] = 5;
                iArr[3] = 64;
            } else if (i2 == 3) {
                iArr[2] = 11;
                iArr[3] = 64;
            } else if (i2 == 8 || i2 == 9) {
                iArr[2] = 8;
                iArr[3] = 19;
            }
            if (u0.b.f17306a0 == 0) {
                iArr[2] = 0;
            }
            int[] iArr2 = new int[5];
            iArr2[0] = 227;
            while (i3 < 4) {
                int i4 = i3 + 1;
                iArr2[i4] = iArr[i3];
                i3 = i4;
            }
            z.k.s(iArr2);
            return;
        }
        int[] iArr3 = new int[7];
        iArr3[0] = 192;
        iArr3[1] = 5;
        iArr3[2] = 1;
        iArr3[3] = 1;
        int i5 = w0.d.f17796h;
        if (i5 == 65536 || i5 == 65537 || i5 == 65538) {
            iArr3[4] = 0;
        } else if (i5 == 0 || i5 == 1) {
            iArr3[4] = 16;
        }
        int i6 = w0.d.f17797i;
        iArr3[5] = i6 & 255;
        iArr3[6] = (i6 >> 8) & 255;
        int[] iArr4 = new int[8];
        iArr4[0] = 227;
        while (i3 < 7) {
            int i7 = i3 + 1;
            iArr4[i7] = iArr3[i3];
            i3 = i7;
        }
        z.k.s(iArr4);
    }

    public static void v3(byte[] bArr) {
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
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(2, 3);
                return;
            }
            a3(1, 3);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(2, 4);
                return;
            } else {
                a3(1, 4);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] <= 17) {
                a3(1, 6);
                return;
            } else if (iArr[1] >= 32) {
                a3(255, 6);
                return;
            } else {
                a3(iArr[1] * 2, 6);
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] <= 17) {
                a3(1, 7);
                return;
            } else if (iArr[1] >= 32) {
                a3(255, 7);
                return;
            } else {
                a3(iArr[1] * 2, 7);
                return;
            }
        }
        if (i2 == 68) {
            if (iArr[1] == 10) {
                z.k.s(227, -128, 2, 11, 1);
                return;
            }
            if (iArr[1] == 9) {
                z.k.s(227, -128, 2, 11, 0);
                return;
            }
            if (iArr[1] == 1) {
                z.k.s(227, -128, 2, 12, 0);
                return;
            }
            if (iArr[1] == 2) {
                z.k.s(227, -128, 2, 12, 1);
                return;
            }
            if (iArr[1] == 3) {
                z.k.s(227, -128, 2, 13, 0);
                return;
            }
            if (iArr[1] == 4) {
                z.k.s(227, -128, 2, 13, 1);
                return;
            }
            if (iArr[1] == 5) {
                z.k.s(227, -128, 2, 14, 0);
                return;
            }
            if (iArr[1] == 6) {
                z.k.s(227, -128, 2, 14, 1);
                return;
            }
            if (iArr[1] == 7) {
                z.k.s(227, -128, 2, 15, 0);
                return;
            }
            if (iArr[1] == 8) {
                z.k.s(227, -128, 2, 15, 1);
                return;
            } else if (iArr[1] == 11) {
                z.k.s(227, -128, 2, 16, 0);
                return;
            } else {
                if (iArr[1] == 12) {
                    z.k.s(227, -128, 2, 16, 1);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(128, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    int i3 = nt.f8633a;
                    if (i3 == 1179787 || i3 == 1245323 || i3 == 4128907) {
                        a3(32, 0);
                    } else {
                        a3(2, 0);
                    }
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(2, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(2, 0);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(32, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(32, 0);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(16, 0);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(16, 0);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(4, 1);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(4, 1);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(1, 2);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(1, 2);
                }
                break;
            case 39:
                int i4 = nt.f8645g[21];
                int i5 = iArr[1];
                if (i5 == -2) {
                    if (i4 > 0) {
                        i4--;
                    }
                    a3((i4 << 4) & 240, 1);
                } else if (i5 == -1) {
                    if (i4 < 8) {
                        i4++;
                    }
                    a3((i4 << 4) & 240, 1);
                } else {
                    a3((iArr[1] << 4) & 240, 1);
                }
                break;
            default:
                switch (i2) {
                    case 59:
                        if (iArr[1] != 0) {
                            a3(64, 0);
                        }
                        break;
                    case 60:
                        if (iArr[1] == 0) {
                            if (nt.f8645g[76] == 1) {
                                a3(32, 5);
                            }
                        } else if (nt.f8645g[76] == 0) {
                            a3(32, 5);
                        }
                        break;
                    case 61:
                        if (iArr[1] != 0) {
                            a3(128, 1);
                            a3(255, 6);
                            a3(255, 7);
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        this.f11982q.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        mtVar.f8313h = 0;
        mtVar.f8317l = 0;
        qt.z(this.Q);
        qt.z(this.f11967g0);
        u0.c.f17386m.a(this.f11959c0, 1);
        g gVar = null;
        switch (nt.f8633a) {
            case 139:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = null;
                mtVar2.f8319n = 0;
                mtVar2.f8312g = 0;
                if (App.c().getResources().getConfiguration().orientation == 1) {
                    this.f7886a.f8312g = 0;
                    qt.y(this.f11975k0);
                }
                break;
            case 65675:
                mt mtVar3 = this.f7886a;
                mtVar3.f8306a = null;
                mtVar3.f8311f = 1;
                mtVar3.f8310e = 1;
                mtVar3.f8319n = 1;
                mtVar3.f8314i = 0;
                mtVar3.f8312g = 0;
                break;
            case 131211:
            case 983179:
                u0.c.f17379f.a(this.f11965f0, 1);
                mt mtVar4 = this.f7886a;
                mtVar4.f8306a = new String[]{"com.syu.canbus"};
                mtVar4.f8311f = 1;
                mtVar4.f8310e = 1;
                mtVar4.f8319n = 0;
                mtVar4.f8314i = 1;
                mtVar4.f8312g = 0;
                break;
            case 196747:
                mt mtVar5 = this.f7886a;
                mtVar5.f8306a = new String[]{"com.syu.canbus"};
                mtVar5.f8311f = 1;
                mtVar5.f8314i = 1;
                mtVar5.f8319n = 0;
                mtVar5.f8312g = 0;
                e.e.f1624b.a(this.f11989x, 1);
                this.W = e.c.f1617w;
                this.X = e.c.f1618x;
                this.Y = e.c.f1619y;
                this.Z = e.c.f1620z;
                e.c.f1617w = new k();
                e.c.f1618x = new l();
                e.c.f1620z = new m();
                e.c.f1619y = new n();
                break;
            case 262283:
                mt mtVar6 = this.f7886a;
                mtVar6.f8306a = null;
                mtVar6.f8310e = 1;
                mtVar6.f8311f = 1;
                mtVar6.f8312g = 0;
                mtVar6.f8313h = 1;
                mtVar6.f8319n = 0;
                break;
            case 327819:
                mt mtVar7 = this.f7886a;
                mtVar7.f8306a = new String[]{"com.syu.canbus"};
                mtVar7.f8310e = 1;
                mtVar7.f8311f = 1;
                mtVar7.f8312g = 0;
                mtVar7.f8319n = 0;
                break;
            case 393355:
                mt mtVar8 = this.f7886a;
                mtVar8.f8306a = null;
                mtVar8.f8310e = 1;
                mtVar8.f8311f = 1;
                mtVar8.f8312g = 0;
                mtVar8.f8313h = 0;
                mtVar8.f8319n = 0;
                break;
            case 524427:
            case 2883723:
                mt mtVar9 = this.f7886a;
                mtVar9.f8306a = new String[]{"com.syu.canbus"};
                mtVar9.f8310e = 1;
                mtVar9.f8311f = 1;
                mtVar9.f8314i = 0;
                mtVar9.f8312g = 0;
                break;
            case 589963:
            case 1638539:
                mt mtVar10 = this.f7886a;
                mtVar10.f8306a = new String[]{"com.syu.canbus"};
                mtVar10.f8310e = 1;
                mtVar10.f8311f = 1;
                mtVar10.f8314i = 1;
                mtVar10.f8312g = 0;
                break;
            case 655499:
            case 1573003:
            case 2621579:
            case 3342475:
            case 3670155:
                mt mtVar11 = this.f7886a;
                mtVar11.f8306a = new String[]{"com.syu.canbus"};
                mtVar11.f8310e = 1;
                mtVar11.f8311f = 1;
                mtVar11.f8314i = 1;
                mtVar11.f8312g = 0;
                break;
            case 721035:
            case 2031755:
            case 2097291:
            case 2293899:
            case 3539083:
                mt mtVar12 = this.f7886a;
                mtVar12.f8306a = new String[]{"com.syu.canbus"};
                mtVar12.f8310e = 1;
                mtVar12.f8311f = 1;
                mtVar12.f8314i = 1;
                mtVar12.f8312g = 0;
                this.C = new p(this, gVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter);
                l0.b0.b(this.P);
                c3();
                u0.c.f17388o.a(this.f11971i0, 1);
                u0.c.f17389p.a(this.f11971i0, 1);
                u0.c.f17390q.a(this.f11971i0, 1);
                l0.b0.b(this.f11969h0);
                break;
            case 786571:
                mt mtVar13 = this.f7886a;
                mtVar13.f8306a = null;
                mtVar13.f8310e = 1;
                mtVar13.f8311f = 1;
                mtVar13.f8314i = 1;
                mtVar13.f8312g = 0;
                break;
            case 852107:
                mt mtVar14 = this.f7886a;
                mtVar14.f8306a = new String[]{"com.syu.canbus"};
                mtVar14.f8310e = 1;
                mtVar14.f8311f = 1;
                mtVar14.f8314i = 1;
                mtVar14.f8312g = 0;
                this.C = new p(this, gVar);
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter2);
                l0.b0.b(this.P);
                c3();
                break;
            case 917643:
                mt mtVar15 = this.f7886a;
                mtVar15.f8306a = new String[]{"com.syu.canbus"};
                mtVar15.f8311f = 1;
                mtVar15.f8310e = 1;
                mtVar15.f8319n = 0;
                mtVar15.f8314i = 1;
                mtVar15.f8312g = 0;
                break;
            case 1048715:
                mt mtVar16 = this.f7886a;
                mtVar16.f8306a = new String[]{"com.syu.canbus"};
                mtVar16.f8310e = 1;
                mtVar16.f8311f = 1;
                mtVar16.f8314i = 0;
                mtVar16.f8312g = 0;
                break;
            case 1114251:
                mt mtVar17 = this.f7886a;
                mtVar17.f8306a = new String[]{"com.syu.canbus"};
                mtVar17.f8310e = 1;
                mtVar17.f8311f = 1;
                mtVar17.f8314i = 1;
                mtVar17.f8312g = 0;
                r3(this.f11982q.b(2, 0));
                break;
            case 1179787:
            case 2752651:
                mt mtVar18 = this.f7886a;
                mtVar18.f8306a = new String[]{"com.syu.canbus"};
                mtVar18.f8311f = 0;
                mtVar18.f8310e = 1;
                mtVar18.f8319n = 0;
                mtVar18.f8314i = 1;
                mtVar18.f8312g = 1;
                this.C = new p(this, gVar);
                IntentFilter intentFilter3 = new IntentFilter();
                intentFilter3.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter3);
                c3();
                l0.b0.b(this.P);
                l0.b0.b(this.f11969h0);
                break;
            case 1245323:
                mt mtVar19 = this.f7886a;
                mtVar19.f8306a = new String[]{"com.syu.canbus"};
                mtVar19.f8311f = 0;
                mtVar19.f8310e = 1;
                mtVar19.f8319n = 0;
                mtVar19.f8314i = 1;
                mtVar19.f8312g = 1;
                mtVar19.f8317l = 1;
                this.C = new p(this, gVar);
                IntentFilter intentFilter4 = new IntentFilter();
                intentFilter4.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter4);
                c3();
                l0.b0.b(this.P);
                l0.b0.b(this.f11969h0);
                break;
            case 1310859:
                mt mtVar20 = this.f7886a;
                mtVar20.f8306a = new String[]{"com.syu.canbus"};
                mtVar20.f8310e = 1;
                mtVar20.f8311f = 1;
                mtVar20.f8314i = 1;
                mtVar20.f8312g = 0;
                break;
            case 1376395:
                mt mtVar21 = this.f7886a;
                mtVar21.f8306a = null;
                mtVar21.f8310e = 1;
                mtVar21.f8311f = 1;
                mtVar21.f8314i = 0;
                mtVar21.f8312g = 0;
                break;
            case 1441931:
            case 3211403:
                mt mtVar22 = this.f7886a;
                mtVar22.f8306a = new String[]{"com.syu.canbus"};
                mtVar22.f8310e = 1;
                mtVar22.f8311f = 1;
                mtVar22.f8314i = 1;
                mtVar22.f8312g = 0;
                break;
            case 1507467:
                mt mtVar23 = this.f7886a;
                mtVar23.f8306a = new String[]{"com.syu.canbus"};
                mtVar23.f8310e = 1;
                mtVar23.f8311f = 1;
                mtVar23.f8314i = 1;
                mtVar23.f8312g = 0;
                break;
            case 1704075:
                mt mtVar24 = this.f7886a;
                mtVar24.f8306a = new String[]{"com.syu.canbus"};
                mtVar24.f8310e = 1;
                mtVar24.f8311f = 1;
                mtVar24.f8314i = 1;
                mtVar24.f8312g = 0;
                break;
            case 1769611:
            case 1966219:
                mt mtVar25 = this.f7886a;
                mtVar25.f8306a = new String[]{"com.syu.canbus"};
                mtVar25.f8310e = 1;
                mtVar25.f8311f = 1;
                mtVar25.f8314i = 1;
                mtVar25.f8312g = 0;
                break;
            case 1835147:
            case 3604619:
                mt mtVar26 = this.f7886a;
                mtVar26.f8306a = new String[]{"com.syu.canbus"};
                mtVar26.f8310e = 1;
                mtVar26.f8311f = 1;
                mtVar26.f8314i = 1;
                mtVar26.f8312g = 0;
                break;
            case 1900683:
            case 3014795:
                mt mtVar27 = this.f7886a;
                mtVar27.f8306a = null;
                mtVar27.f8311f = 1;
                mtVar27.f8310e = 1;
                mtVar27.f8319n = 0;
                mtVar27.f8314i = 0;
                mtVar27.f8312g = 0;
                break;
            case 2162827:
                mt mtVar28 = this.f7886a;
                mtVar28.f8306a = new String[]{"com.syu.canbus"};
                mtVar28.f8310e = 1;
                mtVar28.f8311f = 1;
                mtVar28.f8314i = 1;
                mtVar28.f8312g = 0;
                this.C = new p(this, gVar);
                IntentFilter intentFilter5 = new IntentFilter();
                intentFilter5.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter5);
                l0.b0.b(this.P);
                c3();
                break;
            case 2228363:
            case 2424971:
            case 2490507:
            case 2556043:
            case 2687115:
            case 2949259:
            case 3276939:
            case 3408011:
            case 3735691:
            case 3801227:
            case 3866763:
            case 3932299:
            case 4063371:
                mt mtVar29 = this.f7886a;
                mtVar29.f8306a = new String[]{"com.syu.canbus"};
                mtVar29.f8310e = 1;
                mtVar29.f8311f = 1;
                mtVar29.f8314i = 1;
                mtVar29.f8312g = 0;
                this.C = new p(this, gVar);
                IntentFilter intentFilter6 = new IntentFilter();
                intentFilter6.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter6);
                l0.b0.b(this.P);
                c3();
                u0.c.f17388o.a(this.f11971i0, 1);
                u0.c.f17389p.a(this.f11971i0, 1);
                u0.c.f17390q.a(this.f11971i0, 1);
                l0.b0.b(this.f11969h0);
                t3(this.f11982q.b(1, 0));
                break;
            case 2818187:
            case 3080331:
            case 3145867:
                mt mtVar30 = this.f7886a;
                mtVar30.f8306a = new String[]{"com.syu.canbus"};
                mtVar30.f8310e = 1;
                mtVar30.f8311f = 1;
                mtVar30.f8314i = 1;
                mtVar30.f8312g = 0;
                break;
            case 3997835:
                mt mtVar31 = this.f7886a;
                mtVar31.f8306a = new String[]{"com.syu.canbus"};
                mtVar31.f8310e = 1;
                mtVar31.f8311f = 1;
                mtVar31.f8314i = 1;
                mtVar31.f8312g = 0;
                mtVar31.f8313h = 2;
                this.C = new p(this, gVar);
                IntentFilter intentFilter7 = new IntentFilter();
                intentFilter7.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter7);
                l0.b0.b(this.P);
                c3();
                u0.c.f17388o.a(this.f11971i0, 1);
                u0.c.f17389p.a(this.f11971i0, 1);
                u0.c.f17390q.a(this.f11971i0, 1);
                l0.b0.b(this.f11969h0);
                break;
            case 4128907:
                mt mtVar32 = this.f7886a;
                mtVar32.f8306a = new String[]{"com.syu.canbus"};
                mtVar32.f8311f = 0;
                mtVar32.f8310e = 1;
                mtVar32.f8319n = 0;
                mtVar32.f8314i = 1;
                mtVar32.f8312g = 1;
                mtVar32.f8317l = 1;
                mtVar32.f8313h = 2;
                this.C = new p(this, gVar);
                IntentFilter intentFilter8 = new IntentFilter();
                intentFilter8.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.C, intentFilter8);
                c3();
                l0.b0.b(this.P);
                l0.b0.b(this.f11969h0);
                break;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 55, 56, 59, 60, 61, 68};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2;
        int[][] iArr2;
        int i5;
        byte b3;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        byte b4 = bArr[i2];
        if (b4 == 40) {
            int i16 = bArr[i2 + 2] & 255;
            int i17 = i16 & 127;
            int i18 = (i16 & 128) != 0 ? 1000 - (i17 * 10) : (i17 * 10) + 1000;
            if (i18 > 600) {
                u0.d.A3(i18);
                return;
            }
            u0.d.A3(0);
        }
        if (b4 == 48) {
            if (this.f11990y) {
                return;
            }
            qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 5445);
            return;
        }
        if (b4 == 67) {
            byte b5 = bArr[i2 + 2];
            byte b6 = bArr[i2 + 3];
            qt.y0(103, (b5 >> 7) & 1);
            qt.y0(104, (b5 >> 6) & 1);
            qt.y0(105, b5 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(106, (b6 >> 7) & 1);
            qt.y0(107, (b6 >> 6) & 1);
            qt.y0(108, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
            return;
        }
        if (b4 == 96) {
            qt.y0(231, bArr[i2 + 2] & 255);
            return;
        }
        if (b4 == 100) {
            int i19 = i2 + 2;
            qt.y0(222, (bArr[i19] >> 7) & 1);
            qt.y0(223, (bArr[i19] >> 6) & 1);
            qt.y0(224, (bArr[i19] >> 5) & 1);
            qt.y0(225, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(226, bArr[i2 + 5] & 255);
            qt.y0(227, bArr[i2 + 6] & 255);
            qt.y0(228, bArr[i2 + 7] & 255);
            return;
        }
        if (b4 == 125) {
            int i20 = bArr[i2 + 2] & 255;
            if (i20 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i21 = i2 + 3;
                    l0.c0.b((bArr[i21] >> 3) & 1, (bArr[i21] >> 4) & 1, 0);
                } else {
                    int i22 = i2 + 3;
                    l0.c0.a((bArr[i22] >> 3) & 1, (bArr[i22] >> 4) & 1, 0);
                }
                o1.x.C(nt.f8643f, 1049, new int[]{11, bArr[i2 + 3] & 255}, null, null);
                return;
            }
            if (i20 == 6) {
                o1.x[] xVarArr = nt.f8643f;
                int i23 = i2 + 3;
                o1.x.C(xVarArr, 1049, new int[]{12, (bArr[i23] >> 6) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{3, (bArr[i23] >> 0) & 1}, null, null);
                o1.x.C(xVarArr, 1049, new int[]{4, (bArr[i2 + 4] >> 0) & 15}, null, null);
                return;
            }
            if (i20 == 240) {
                qt.y0(i.a.Theme_preferenceHeaderPanelStyle, bArr[i2 + 3] & 255);
                qt.y0(248, bArr[i2 + 4] & 255);
                qt.y0(249, bArr[i2 + 5] & 255);
                qt.y0(250, bArr[i2 + 6] & 255);
                qt.y0(251, bArr[i2 + 7] & 255);
                qt.y0(252, bArr[i2 + 8] & 255);
                return;
            }
            if (i20 == 3) {
                int i24 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i24);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i24}, null, null);
                return;
            } else {
                if (i20 == 4) {
                    o1.x.C(nt.f8643f, 1049, new int[]{5, ((bArr[i2 + 6] & 255) | ((bArr[i2 + 7] << 8) & 65280)) / 10}, null, null);
                    return;
                }
                switch (i20) {
                    case 8:
                        qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                        this.f11990y = true;
                        break;
                    case 9:
                        int i25 = i2 + 4;
                        o1.x.C(nt.f8643f, 1049, new int[]{2, (bArr[i25] & 255) - 40}, null, null);
                        u0.d.A3(((bArr[i25] & 255) * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                        break;
                    case 10:
                        qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                        break;
                }
            }
        }
        if (b4 == 127) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b4 == 63) {
            if (f11948m0 == 1) {
                if (((bArr[i2 + 2] >> 6) & 1) == 1) {
                    if (o1.u.T(a.b.O)) {
                        return;
                    }
                    qt.t();
                    return;
                } else {
                    if (o1.u.T(a.b.O)) {
                        qt.f();
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b4 == 64) {
            int i26 = i2 + 2;
            byte b7 = bArr[i26];
            int i27 = i2 + 5;
            byte b8 = bArr[i27];
            if (nt.f8633a != 983179 && !qt.k0()) {
                if ((bArr[i26] & 1) != 0) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
            }
            int i28 = nt.f8633a;
            if (i28 == 852107 || i28 == 983179) {
                int i29 = i2 + 3;
                this.f11991z = bArr[i29];
                int i30 = i2 + 4;
                this.A = (bArr[i30] >> 6) & 1;
                this.B = (bArr[i30] >> 7) & 1;
                qt.y0(Process.MEDIA_UID, (bArr[i30] & 255) | ((bArr[i29] << 8) & 65280));
            } else if (i28 == 1245323) {
                qt.y0(Process.MEDIA_UID, (bArr[i27] & 255) | ((bArr[i2 + 3] << 8) & 65280));
            } else {
                qt.y0(Process.MEDIA_UID, (bArr[i2 + 3] << 8) & 65280);
            }
            qt.y0(145, (b8 >> 7) & 1);
            qt.y0(146, (b8 >> 6) & 1);
            qt.y0(147, (b8 >> 5) & 1);
            qt.y0(148, (b8 >> 4) & 1);
            qt.y0(149, (b8 >> 3) & 1);
            qt.y0(150, (b8 >> 2) & 1);
            return;
        }
        switch (b4) {
            case 32:
                if (nt.a()) {
                    byte b9 = bArr[i2 + 2];
                    byte b10 = bArr[i2 + 3];
                    this.f11958c = b9 & 255;
                    int i31 = 0;
                    while (true) {
                        iArr = this.f11962e;
                        if (i31 < iArr.length) {
                            int i32 = this.f11958c;
                            if (i32 == iArr[i31][0]) {
                                if (i32 != 0) {
                                    this.f11956b = i31;
                                }
                                this.f11960d = i32;
                            } else {
                                i31++;
                            }
                        }
                    }
                    if (this.f11960d != 15 || this.f11958c != 0) {
                        int i33 = this.f11958c;
                        if (i33 != -80) {
                            if (i33 != 64) {
                                if (i33 != 176) {
                                    if (i33 != 15) {
                                        if (i33 == 16) {
                                            if ((b10 & 255) == 1) {
                                                int i34 = h0.c.E;
                                                if (i34 != 3) {
                                                    if (i34 == 4) {
                                                        l0.b0.l0(18, 0);
                                                        l0.b0.l0(18, 1);
                                                    } else if (i34 != 5) {
                                                        l0.b0.l0(13, 0);
                                                        l0.b0.l0(13, 1);
                                                    }
                                                }
                                                l0.b0.l0(26, 0);
                                                l0.b0.l0(26, 1);
                                            }
                                            break;
                                        } else {
                                            int i35 = b10 & 255;
                                            if (i35 != 1) {
                                                if (i35 == 0) {
                                                    int i36 = this.f11956b;
                                                    if (i36 < iArr.length) {
                                                        i4 = 255;
                                                        if (i36 != 255) {
                                                            l0.b0.l0(iArr[i36][1], 1);
                                                            l0.b0.o0(this.f11981p);
                                                            this.f11980o = (byte) 0;
                                                        }
                                                    } else {
                                                        i4 = 255;
                                                    }
                                                    this.f11956b = i4;
                                                }
                                                break;
                                            } else if (i31 < iArr.length && (b2 = this.f11980o) == 0) {
                                                this.f11980o = (byte) (b2 + 1);
                                                l0.b0.l0(iArr[i31][1], 0);
                                                l0.b0.a(this.f11981p);
                                                break;
                                            }
                                        }
                                    } else {
                                        if (this.f11978m != b10) {
                                            this.f11978m = b10;
                                            if (b10 == 1) {
                                                this.f11979n = false;
                                            } else if (b10 == 2) {
                                                this.f11979n = true;
                                                l0.b0.l0(13, 0);
                                                l0.b0.l0(13, 1);
                                            }
                                        }
                                        break;
                                    }
                                }
                            } else {
                                if ((b10 & 255) == 1) {
                                    if (!o1.u.T(a.b.O)) {
                                        qt.t();
                                    } else if (o1.u.T(a.b.O)) {
                                        qt.f();
                                    }
                                }
                                break;
                            }
                        } else {
                            qt.y0(216, b10);
                            break;
                        }
                    } else {
                        if (this.f11979n) {
                            this.f11979n = false;
                        } else {
                            l0.b0.l0(2, 0);
                            l0.b0.l0(2, 1);
                        }
                        this.f11960d = this.f11958c;
                        break;
                    }
                }
                break;
            case 33:
                int i37 = nt.f8633a;
                if (i37 == 139) {
                    byte b11 = bArr[i2 + 2];
                    byte b12 = bArr[i2 + 3];
                    byte b13 = bArr[i2 + 6];
                    byte b14 = bArr[i2 + 7];
                    byte b15 = bArr[i2 + 8];
                    byte b16 = bArr[i2 + 9];
                    int i38 = (b11 >> 5) & 15;
                    if (i38 != 1) {
                        if (i38 == 2) {
                            i6 = 0;
                            i8 = 1;
                        } else if (i38 == 3) {
                            i6 = 0;
                            i8 = 0;
                            i7 = 1;
                        } else if (i38 == 4) {
                            i8 = 0;
                            i6 = 1;
                            i7 = 1;
                        } else if (i38 != 5) {
                            i6 = 0;
                            i8 = 0;
                        } else {
                            i8 = 0;
                            i7 = 0;
                            i6 = 1;
                        }
                        i7 = i8;
                    } else {
                        i6 = 0;
                        i7 = 0;
                        i8 = 1;
                    }
                    qt.y0(18, i6);
                    qt.y0(19, i8);
                    qt.y0(20, i7);
                    qt.y0(13, (b11 >> 4) & 1);
                    qt.y0(12, (b11 >> 2) & 1);
                    qt.y0(11, (b11 >> 1) & 1);
                    qt.y0(10, b11 & 1);
                    qt.y0(21, (b12 >> 4) & 15);
                    qt.y0(53, (b12 >> 3) & 1);
                    qt.y0(65, (b12 >> 2) & 1);
                    qt.y0(16, (b12 >> 1) & 1);
                    qt.y0(62, b12 & 1);
                    int i39 = i2 + 4;
                    byte b17 = bArr[i39];
                    int i40 = i2 + 5;
                    byte b18 = bArr[i40];
                    if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                        b17 = bArr[i40];
                        b18 = bArr[i39];
                    }
                    int i41 = (b17 >> 2) & 63;
                    if (i41 > 0 && i41 < 16) {
                        i9 = -2;
                    } else if (i41 <= 15 || i41 >= 49) {
                        i9 = (i41 <= 48 || i41 >= 64) ? -1 : -3;
                    } else {
                        i9 = (b15 & 1) == 0 ? (i41 * 5) + 80 : (i41 + 48) * 10;
                    }
                    qt.y0(27, i9);
                    qt.y0(29, b17 & 3);
                    int i42 = (b18 >> 2) & 63;
                    if (i42 > 0 && i42 < 16) {
                        i10 = -2;
                    } else if (i42 <= 15 || i42 >= 49) {
                        i10 = (i42 <= 48 || i42 >= 64) ? -1 : -3;
                    } else {
                        i10 = (b15 & 1) == 0 ? (i42 * 5) + 80 : (i42 + 48) * 10;
                    }
                    qt.y0(28, i10);
                    qt.y0(30, b18 & 3);
                    int i43 = b13 & 255;
                    if (i43 > 0 && i43 < 255) {
                        u0.d.A3(((b15 & 1) == 0 ? (i42 * 5) - 400 : ((i42 - 48) * 10) | 32768) + 1000);
                    }
                    qt.y0(44, (b14 >> 4) & 15);
                    qt.y0(39, (b14 >> 3) & 1);
                    qt.y0(67, (b14 >> 2) & 1);
                    qt.y0(54, (b14 >> 1) & 1);
                    qt.y0(58, (b14 >> 0) & 1);
                    int i44 = b15 >> 2;
                    if (i44 > 0 && i44 < 16) {
                        i11 = -2;
                    } else if (i44 <= 15 || i44 >= 49) {
                        i11 = (i44 <= 48 || i44 >= 64) ? -1 : -3;
                    } else {
                        i11 = (b15 & 1) == 0 ? (i44 * 5) + 80 : (i44 + 48) * 10;
                    }
                    qt.y0(40, i11);
                    qt.y0(37, (b15 >> 0) & 1);
                    break;
                } else if (i37 == 262283 || i37 == 3080331 || i37 == 3145867 || i37 == 327819 || i37 == 393355 || i37 == 458891) {
                    byte b19 = bArr[i2 + 2];
                    byte b20 = bArr[i2 + 3];
                    this.f11966g = b19 & 255;
                    int i45 = 0;
                    while (true) {
                        iArr2 = this.f11968h;
                        if (i45 < iArr2.length) {
                            int i46 = this.f11966g;
                            if (i46 != iArr2[i45][0]) {
                                i45++;
                            } else if (i46 != 0) {
                                this.f11964f = i45;
                            }
                        }
                    }
                    int i47 = this.f11966g;
                    if (i47 == 9) {
                        if ((b20 & 255) == 1) {
                            int i48 = u0.b.f17347o;
                            if (i48 == 1) {
                                qt.a(0);
                            } else if (i48 == 0) {
                                qt.a(1);
                            }
                        }
                        break;
                    } else if (i47 == 16) {
                        for (int i49 = 0; i49 < (b20 & 255); i49++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    } else if (i47 == 17) {
                        for (int i50 = 0; i50 < (b20 & 255); i50++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    } else {
                        int i51 = b20 & 255;
                        if (i51 != 1) {
                            if (i51 == 0) {
                                int i52 = this.f11964f;
                                if (i52 < iArr2.length) {
                                    i5 = 255;
                                    if (i52 != 255) {
                                        l0.b0.l0(iArr2[i52][1], 1);
                                        l0.b0.o0(this.f11981p);
                                        this.f11980o = (byte) 0;
                                    }
                                } else {
                                    i5 = 255;
                                }
                                this.f11964f = i5;
                            }
                            break;
                        } else if (i45 < iArr2.length && (b3 = this.f11980o) == 0) {
                            this.f11980o = (byte) (b3 + 1);
                            l0.b0.l0(iArr2[i45][1], 0);
                            l0.b0.a(this.f11981p);
                            break;
                        }
                    }
                }
                break;
            case 34:
                int i53 = i2 + 2;
                qt.y0(52, (bArr[i53] >> 7) & 1);
                qt.y0(76, (bArr[i53] >> 6) & 1);
                qt.y0(31, (bArr[i53] >> 2) & 3);
                qt.y0(32, (bArr[i53] >> 0) & 3);
                break;
            case 35:
                byte b21 = bArr[i2 + 2];
                byte b22 = bArr[i2 + 3];
                byte b23 = bArr[i2 + 4];
                byte b24 = bArr[i2 + 5];
                int i54 = i2 + 6;
                int i55 = bArr[i54] & 63;
                int i56 = i2 + 7;
                int i57 = bArr[i56] & 63;
                int i58 = bArr[i2 + 8] & 255;
                qt.y0(10, (b21 >> 7) & 1);
                qt.y0(11, (b21 >> 6) & 1);
                qt.y0(12, (b21 >> 5) & 1);
                qt.y0(53, (b21 >> 4) & 1);
                qt.y0(13, (b21 >> 3) & 1);
                qt.y0(14, (b21 >> 2) & 1);
                qt.y0(16, (b21 >> 1) & 1);
                qt.y0(65, b21 & 1);
                switch (b22) {
                    case 1:
                        i12 = 0;
                        i13 = 0;
                        i14 = 1;
                        break;
                    case 2:
                        i12 = 0;
                        i14 = 1;
                        i13 = i14;
                        break;
                    case 3:
                        i12 = 0;
                        i14 = 0;
                        i13 = 1;
                        break;
                    case 4:
                        i14 = 0;
                        i12 = 1;
                        i13 = 1;
                        break;
                    case 5:
                        i14 = 0;
                        i13 = 0;
                        i12 = 1;
                        break;
                    case 6:
                        i13 = 0;
                        i12 = 1;
                        i14 = 1;
                        break;
                    case 7:
                        i12 = 1;
                        i14 = i12;
                        i13 = i14;
                        break;
                    default:
                        i12 = 0;
                        i14 = i12;
                        i13 = i14;
                        break;
                }
                qt.y0(18, i12);
                qt.y0(19, i14);
                qt.y0(20, i13);
                qt.y0(77, b22);
                qt.y0(21, b23 & DhcpPacket.DHCP_DOMAIN_NAME);
                switch (nt.f8633a) {
                    case 589963:
                    case 655499:
                    case 721035:
                    case 786571:
                    case 852107:
                    case 917643:
                    case 983179:
                    case 1114251:
                    case 1179787:
                    case 1245323:
                    case 1310859:
                    case 1376395:
                    case 1441931:
                    case 1507467:
                    case 1573003:
                    case 1638539:
                    case 1704075:
                    case 1769611:
                    case 1835147:
                    case 1900683:
                    case 1966219:
                    case 2031755:
                    case 2097291:
                    case 2162827:
                    case 2228363:
                    case 2293899:
                    case 2424971:
                    case 2490507:
                    case 2556043:
                    case 2621579:
                    case 2687115:
                    case 2752651:
                    case 2949259:
                    case 3211403:
                    case 3276939:
                    case 3342475:
                    case 3408011:
                    case 3539083:
                    case 3604619:
                    case 3670155:
                    case 3735691:
                    case 3801227:
                    case 3866763:
                    case 3932299:
                    case 3997835:
                    case 4063371:
                    case 4128907:
                        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                            i15 = 63;
                            i55 = bArr[i56] & 63;
                            i57 = bArr[i54] & 63;
                        } else {
                            i15 = 63;
                        }
                        int i59 = i57;
                        if (i55 == 0) {
                            qt.y0(27, -2);
                        } else if (i55 != i15) {
                            qt.y0(27, i55);
                        } else {
                            qt.y0(27, -3);
                        }
                        if (i59 == 0) {
                            qt.y0(28, -2);
                        } else if (i59 != 63) {
                            qt.y0(28, i59);
                        } else {
                            qt.y0(28, -3);
                        }
                        break;
                    default:
                        if (b24 == 0) {
                            qt.y0(27, -2);
                        } else if (b24 != 17) {
                            qt.y0(27, b24 & 255);
                        } else {
                            qt.y0(27, -3);
                        }
                        break;
                }
                qt.y0(54, (i58 >> 7) & 1);
                qt.y0(179, (i58 >> 5) & 1);
                qt.y0(58, (i58 >> 4) & 3);
                qt.y0(29, (i58 >> 2) & 3);
                qt.y0(30, (i58 >> 0) & 3);
                int i60 = nt.f8633a;
                if (i60 == 589963 || i60 == 655499 || i60 == 1638539 || i60 == 1573003) {
                    qt.y0(109, ((bArr[i2 + 9] << 8) & 65280) | (bArr[i2 + 10] & 255));
                    qt.y0(110, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
                }
                break;
            case 36:
                byte b25 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b25 >> 7) & 1);
                    qt.y0(2, (b25 >> 6) & 1);
                } else {
                    qt.y0(1, (b25 >> 6) & 1);
                    qt.y0(2, (b25 >> 7) & 1);
                }
                qt.y0(4, (b25 >> 5) & 1);
                qt.y0(3, (b25 >> 4) & 1);
                qt.y0(5, (b25 >> 3) & 1);
                qt.y0(0, (b25 >> 2) & 1);
                break;
            case 37:
                if (nt.a()) {
                    u0.d.R2(l0.c0.L0(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.L0(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.L0(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.L0(bArr[i2 + 5] & 255));
                }
                break;
            case 38:
                if (nt.a()) {
                    int i61 = i2 + 2;
                    int i62 = bArr[i61] & 255;
                    int i63 = i2 + 3;
                    int i64 = bArr[i63] & 255;
                    int i65 = i2 + 4;
                    int i66 = bArr[i65] & 255;
                    int i67 = i2 + 5;
                    int i68 = bArr[i67] & 255;
                    if ((i62 == 0 || i62 > 7) && ((i64 == 0 || i64 > 7) && ((i66 == 0 || i66 > 7) && (i68 == 0 || i68 > 7)))) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i62 || l0.c0.f13014h != i64 || l0.c0.f13015i != i66 || l0.c0.f13016j != i68) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 8;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i62;
                    l0.c0.f13014h = i64;
                    l0.c0.f13015i = i66;
                    l0.c0.f13016j = i68;
                    u0.d.D2(l0.c0.M0(bArr[i61] & 255));
                    u0.d.E2(l0.c0.M0(bArr[i63] & 255));
                    u0.d.F2(l0.c0.M0(bArr[i65] & 255));
                    u0.d.G2(l0.c0.M0(bArr[i67] & 255));
                }
                break;
            default:
                switch (b4) {
                    case 78:
                        int i69 = bArr[i2 + 2] & 255;
                        if (i69 == 0) {
                            qt.y0(98, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 1) {
                            qt.y0(99, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 2) {
                            qt.y0(100, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 3) {
                            qt.y0(101, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 4) {
                            qt.y0(102, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 5) {
                            qt.y0(111, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 23) {
                            qt.y0(140, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 39) {
                            qt.y0(181, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 128) {
                            qt.y0(187, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 27) {
                            qt.y0(188, bArr[i2 + 3] & 255);
                            break;
                        } else if (i69 == 28) {
                            qt.y0(158, bArr[i2 + 3] & 255);
                            break;
                        } else {
                            switch (i69) {
                                case 8:
                                    int i70 = i2 + 3;
                                    qt.y0(156, bArr[i70] & 255);
                                    qt.y0(178, bArr[i70] & 255);
                                    break;
                                case 9:
                                    qt.y0(115, bArr[i2 + 3] & 255);
                                    break;
                                case 10:
                                    qt.y0(167, bArr[i2 + 3] & 255);
                                    break;
                                default:
                                    switch (i69) {
                                        case 17:
                                            qt.y0(117, bArr[i2 + 3] & 255);
                                            break;
                                        case 18:
                                            qt.y0(214, bArr[i2 + 3] & 255);
                                            break;
                                        case 19:
                                            qt.y0(136, bArr[i2 + 3] & 255);
                                            break;
                                        case 20:
                                            qt.y0(130, bArr[i2 + 3] & 255);
                                            break;
                                        default:
                                            switch (i69) {
                                                case 30:
                                                    qt.y0(175, bArr[i2 + 3] & 255);
                                                    break;
                                                case 31:
                                                    qt.y0(176, bArr[i2 + 3] & 255);
                                                    break;
                                                case 32:
                                                    qt.y0(177, bArr[i2 + 3] & 255);
                                                    break;
                                                case 33:
                                                    qt.y0(166, bArr[i2 + 3] & 255);
                                                    break;
                                                case 34:
                                                    qt.y0(173, bArr[i2 + 3] & 255);
                                                    break;
                                                case 35:
                                                    qt.y0(172, bArr[i2 + 3] & 255);
                                                    break;
                                                case 36:
                                                    qt.y0(174, bArr[i2 + 3] & 255);
                                                    break;
                                                default:
                                                    switch (i69) {
                                                        case 41:
                                                            qt.y0(182, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 42:
                                                            qt.y0(183, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 43:
                                                            qt.y0(184, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 44:
                                                            qt.y0(189, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 45:
                                                            qt.y0(190, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 46:
                                                            qt.y0(191, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 47:
                                                            qt.y0(192, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 48:
                                                            qt.y0(193, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 49:
                                                            qt.y0(197, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 50:
                                                            qt.y0(198, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 51:
                                                            qt.y0(199, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 52:
                                                            qt.y0(200, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 53:
                                                            qt.y0(201, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 54:
                                                            qt.y0(202, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 55:
                                                            qt.y0(203, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 56:
                                                            qt.y0(204, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 57:
                                                            qt.y0(205, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 58:
                                                            qt.y0(206, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 59:
                                                            qt.y0(207, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 60:
                                                            qt.y0(208, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 61:
                                                            qt.y0(209, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 62:
                                                            qt.y0(210, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 63:
                                                            qt.y0(211, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 64:
                                                            qt.y0(212, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 65:
                                                            qt.y0(213, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 66:
                                                            qt.y0(221, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 67:
                                                            qt.y0(240, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 68:
                                                            qt.y0(217, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 69:
                                                            qt.y0(218, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 70:
                                                            qt.y0(219, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 71:
                                                            qt.y0(220, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 72:
                                                            qt.y0(66, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 73:
                                                            qt.y0(76, bArr[i2 + 3] & 255);
                                                            break;
                                                        case 74:
                                                            qt.y0(17, bArr[i2 + 3] & 255);
                                                            break;
                                                        default:
                                                            switch (i69) {
                                                                case 85:
                                                                    qt.y0(229, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 86:
                                                                    qt.y0(230, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 87:
                                                                    qt.y0(232, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 88:
                                                                    qt.y0(233, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 89:
                                                                    qt.y0(234, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 90:
                                                                    qt.y0(235, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 91:
                                                                    qt.y0(236, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 92:
                                                                    qt.y0(i.a.Theme_actionModeShareDrawable, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 93:
                                                                    qt.y0(i.a.Theme_actionModeWebSearchDrawable, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 94:
                                                                    qt.y0(i.a.Theme_actionModePopupWindowStyle, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 95:
                                                                    qt.y0(i.a.Theme_preferenceFragmentStyle, bArr[i2 + 3] & 255);
                                                                    break;
                                                                case 96:
                                                                    qt.y0(i.a.Theme_preferencePanelStyle, bArr[i2 + 3] & 255);
                                                                    break;
                                                            }
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        }
                        break;
                    case 79:
                        int i71 = i2 + 2;
                        qt.y0(158, (bArr[i71] >> 6) & 3);
                        qt.y0(159, (bArr[i71] >> 4) & 3);
                        qt.y0(160, (bArr[i71] >> 2) & 3);
                        qt.y0(161, (bArr[i71] >> 1) & 1);
                        qt.y0(162, (bArr[i71] >> 0) & 1);
                        int i72 = i2 + 3;
                        qt.y0(163, (bArr[i72] >> 7) & 1);
                        qt.y0(164, (bArr[i72] >> 6) & 1);
                        qt.y0(165, (bArr[i72] >> 5) & 1);
                        qt.y0(166, (bArr[i72] >> 4) & 1);
                        qt.y0(167, (bArr[i72] >> 3) & 1);
                        qt.y0(168, (bArr[i72] >> 2) & 1);
                        qt.y0(169, (bArr[i72] >> 1) & 1);
                        qt.y0(170, (bArr[i72] >> 0) & 1);
                        qt.y0(171, bArr[i2 + 4] & 127);
                        qt.y0(215, bArr[i2 + 5] & 255);
                        break;
                    case 80:
                        int i73 = nt.f8633a;
                        if (i73 == 196747) {
                            int i74 = i2 + 2;
                            qt.y0(98, (bArr[i74] >> 7) & 1);
                            qt.y0(99, (bArr[i74] >> 6) & 1);
                            qt.y0(100, (bArr[i74] >> 5) & 1);
                            qt.y0(101, (bArr[i74] >> 4) & 1);
                            qt.y0(102, (bArr[i74] >> 3) & 1);
                        } else if (i73 == 721035 || i73 == 852107 || i73 == 917643 || i73 == 983179 || i73 == 2031755 || i73 == 3997835) {
                            int i75 = i2 + 3;
                            qt.y0(111, (bArr[i75] >> 7) & 1);
                            qt.y0(130, (bArr[i75] >> 6) & 1);
                        } else if (i73 == 1179787 || i73 == 1245323 || i73 == 4128907) {
                            int i76 = i2 + 4;
                            qt.y0(112, (bArr[i76] >> 7) & 1);
                            qt.y0(113, (bArr[i76] >> 6) & 1);
                            qt.y0(114, (bArr[i76] >> 5) & 1);
                            qt.y0(115, (bArr[i76] >> 4) & 1);
                            qt.y0(116, (bArr[i76] >> 3) & 1);
                            qt.y0(137, (bArr[i76] >> 2) & 1);
                            int i77 = i2 + 7;
                            qt.y0(138, (bArr[i77] >> 7) & 1);
                            qt.y0(139, (bArr[i77] >> 6) & 1);
                            qt.y0(140, (bArr[i77] >> 5) & 1);
                            qt.y0(141, (bArr[i77] >> 4) & 1);
                            qt.y0(142, (bArr[i77] >> 2) & 3);
                            qt.y0(143, (bArr[i77] >> 1) & 1);
                            qt.y0(144, (bArr[i77] >> 0) & 1);
                        } else if (i73 == 1573003 || i73 == 1638539 || i73 == 1769611 || i73 == 589963 || i73 == 655499 || i73 == 1966219) {
                            int i78 = i2 + 5;
                            qt.y0(117, (bArr[i78] >> 7) & 1);
                            qt.y0(172, (bArr[i78] >> 5) & 1);
                            qt.y0(173, (bArr[i78] >> 4) & 1);
                            qt.y0(174, (bArr[i78] >> 3) & 1);
                            qt.y0(175, (bArr[i78] >> 2) & 1);
                            qt.y0(176, (bArr[i78] >> 1) & 1);
                            qt.y0(177, (bArr[i78] >> 0) & 1);
                        } else if (i73 == 1114251) {
                            int i79 = i2 + 6;
                            qt.y0(131, (bArr[i79] >> 7) & 1);
                            qt.y0(132, (bArr[i79] >> 6) & 1);
                            qt.y0(133, (bArr[i79] >> 5) & 1);
                            qt.y0(134, (bArr[i79] >> 4) & 1);
                            qt.y0(135, (bArr[i79] >> 3) & 1);
                            qt.y0(136, (bArr[i79] >> 2) & 1);
                            qt.y0(178, (bArr[i79] >> 1) & 1);
                        } else if (i73 == 1310859 || i73 == 1507467 || i73 == 1704075) {
                            int i80 = i2 + 8;
                            qt.y0(151, (bArr[i80] >> 7) & 1);
                            qt.y0(152, (bArr[i80] >> 6) & 1);
                            qt.y0(153, (bArr[i80] >> 5) & 1);
                            qt.y0(154, (bArr[i80] >> 4) & 1);
                            qt.y0(155, (bArr[i80] >> 3) & 1);
                            qt.y0(156, (bArr[i80] >> 2) & 1);
                            qt.y0(157, (bArr[i80] >> 1) & 1);
                            qt.y0(136, (bArr[i80] >> 0) & 1);
                        }
                        break;
                    default:
                        switch (b4) {
                            case 82:
                                int i81 = i2 + 12;
                                int i82 = i2 + 2;
                                qt.y0(118, ((bArr[i81] >> 7) & 16 & 16) | ((bArr[i82] >> 4) & 15));
                                qt.y0(119, ((bArr[i81] >> 6) & 16 & 16) | ((bArr[i82] >> 0) & 15));
                                int i83 = i2 + 3;
                                qt.y0(120, ((bArr[i81] >> 5) & 16 & 16) | ((bArr[i83] >> 4) & 15));
                                qt.y0(121, (16 & (bArr[i81] >> 4) & 16) | ((bArr[i83] >> 0) & 15));
                                if (!this.V && (this.R != ((bArr[i82] >> 4) & 15) || this.S != ((bArr[i82] >> 0) & 15) || this.T != ((bArr[i83] >> 4) & 15) || this.U != ((bArr[i83] >> 0) & 15))) {
                                    int i84 = (bArr[i82] >> 4) & 15;
                                    this.R = i84;
                                    int i85 = (bArr[i82] >> 0) & 15;
                                    this.S = i85;
                                    int i86 = (bArr[i83] >> 4) & 15;
                                    this.T = i86;
                                    int i87 = (bArr[i83] >> 0) & 15;
                                    this.U = i87;
                                    if (i84 != 0 || i85 != 0 || i86 != 0 || i87 != 0) {
                                        o3();
                                        this.V = true;
                                    }
                                }
                                int i88 = i2 + 4;
                                qt.y0(122, bArr[i88] & 255);
                                int i89 = i2 + 5;
                                qt.y0(123, bArr[i89] & 255);
                                int i90 = i2 + 6;
                                qt.y0(124, bArr[i90] & 255);
                                int i91 = i2 + 7;
                                qt.y0(125, bArr[i91] & 255);
                                int i92 = bArr[i88] & 255;
                                int i93 = bArr[i89] & 255;
                                int i94 = bArr[i90] & 255;
                                int i95 = bArr[i91] & 255;
                                o1.x[] xVarArr2 = nt.f8643f;
                                o1.x.C(xVarArr2, 1049, new int[]{8, ((i92 * 1373) / 4000) | GLES10.GL_MODULATE}, null, null);
                                o1.x.C(xVarArr2, 1049, new int[]{8, ((i93 * 1373) / 4000) | GLES10.GL_TEXTURE_ENV_MODE}, null, null);
                                o1.x.C(xVarArr2, 1049, new int[]{8, ((i94 * 1373) / 4000) | GLES10.GL_TEXTURE_ENV}, null, null);
                                o1.x.C(xVarArr2, 1049, new int[]{8, 9216 | ((i95 * 1373) / 4000)}, null, null);
                                qt.y0(126, bArr[i2 + 8] & 255);
                                qt.y0(127, bArr[i2 + 9] & 255);
                                qt.y0(128, bArr[i2 + 10] & 255);
                                qt.y0(129, bArr[i2 + 11] & 255);
                                break;
                            case 83:
                                qt.y0(180, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                                break;
                            case 84:
                                qt.y0(186, bArr[i2 + 3] & 256);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f11982q.j();
        qt.q0(this.f11967g0);
        e.c.f1617w = this.W;
        e.c.f1618x = this.X;
        e.c.f1619y = this.Y;
        e.c.f1620z = this.Z;
        qt.q0(this.Q);
        u0.c.f17388o.d(this.f11971i0);
        u0.c.f17389p.d(this.f11971i0);
        u0.c.f17390q.d(this.f11971i0);
        qt.p0(this.f11975k0);
        w0.e.f17815a.d(this.f11969h0);
        l0.b0.p0(this.f11969h0);
        u0.c.f17386m.d(this.f11959c0);
        l0.b0.p0(this.f11961d0);
        u0.c.f17379f.d(this.f11965f0);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 253) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 13) {
            z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
            return;
        }
        if (i2 == 111) {
            if (T2(iArr, 2)) {
                z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                return;
            }
            return;
        }
        if (i2 == 1003) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            int i3 = nt.f8633a;
            if (i3 == 983179 || i3 == 3997835) {
                if (iArr[0] == 1) {
                    z.k.s(227, -126, 1, 0);
                    qt.a(0);
                    return;
                } else {
                    qt.a(1);
                    z.k.s(227, -126, 1, 1);
                    return;
                }
            }
            if (i3 == 852107 || i3 == 262283 || i3 == 3080331 || i3 == 4128907) {
                if (u0.b.f17347o == 1) {
                    z.k.s(227, -126, 1, 0);
                    return;
                } else {
                    z.k.s(227, -126, 1, 1);
                    return;
                }
            }
            if (iArr[0] == 1) {
                z.k.s(227, -126, 1, 0);
                return;
            } else {
                z.k.s(227, -126, 1, 1);
                return;
            }
        }
        if (i2 != 1005) {
            if (i2 != 1029) {
                switch (i2) {
                    case 0:
                        if (iArr != null && iArr.length > 0) {
                            if (App.c().getResources().getConfiguration().orientation == 1 && nt.f8633a == 139) {
                                q3(iArr);
                            } else {
                                z.k.s(227, -118, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                            }
                            break;
                        }
                        break;
                    case 1:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -128, 2, iArr[0], iArr[1]);
                            a.i.a0(100L);
                            z.k.s(227, -112, 2, 78, iArr[0]);
                            break;
                        }
                        break;
                    case 2:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -126, 1, iArr[0]);
                            break;
                        }
                        break;
                    case 3:
                        if (iArr != null && iArr.length > 2) {
                            z.k.s(227, -58, 3, iArr[0], iArr[1], iArr[2]);
                            break;
                        }
                        break;
                    case 4:
                        if (iArr != null && iArr.length > 0) {
                            t3(iArr[0]);
                            break;
                        }
                        break;
                    case 5:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                this.f11977l0++;
                            } else {
                                this.f11977l0 = 0;
                            }
                            qt.y0(194, this.f11977l0);
                            break;
                        }
                        break;
                    case 6:
                        if (iArr != null && iArr.length > 0) {
                            this.f11977l0 = 0;
                            r3(iArr[0]);
                            break;
                        }
                        break;
                    case 7:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -112, 2, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 8:
                        if (iArr != null && iArr.length > 0) {
                            z.k.s(227, -125, 2, iArr[0], iArr[1]);
                            break;
                        }
                        break;
                    case 9:
                        if (iArr != null && iArr.length > 0) {
                            s3(iArr[0], iArr[1], iArr[2]);
                            break;
                        }
                        break;
                    case 10:
                        if (iArr != null && iArr.length > 0) {
                            u3(iArr[0]);
                            break;
                        }
                        break;
                }
                return;
            }
        } else if (iArr != null && iArr.length > 0) {
            if (iArr[0] <= 1) {
                z.k.s(227, -126, 1, iArr[0] + 4);
            } else if (iArr[0] == 4) {
                if (this.B == 1) {
                    z.k.s(227, -126, 1, 7);
                } else {
                    z.k.s(227, -126, 1, 6);
                }
            } else if (iArr[0] == 5) {
                if (this.A == 1) {
                    z.k.s(227, -126, 1, 11);
                } else {
                    z.k.s(227, -126, 1, 10);
                }
            } else if (iArr[0] != 6) {
                z.k.s(227, -126, 1, iArr[0]);
            } else if (this.f11991z == 5) {
                z.k.s(227, -126, 1, 9);
            } else {
                z.k.s(227, -126, 1, 8);
            }
        }
        if (iArr == null || iArr.length < 3) {
            return;
        }
        if (nt.f8633a != 4128907) {
            if (iArr[0] == 0) {
                z.k.s(227, -125, 4, (iArr[1] >> 8) & 255, iArr[1] & 255, (iArr[2] >> 8) & 255, iArr[2] & 255);
                return;
            }
            return;
        }
        a.f.p().t(LogType.CANBUS, " FinalCanbus.C_CMD_360_TOUCH  touch_x == " + iArr[1] + "--------touch_y == " + iArr[2]);
        int iW = (iArr[1] * 1280) / a.f.w();
        int i4 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
        if (iArr[0] == 0) {
            z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, 1, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0, 0, 0, 0);
        } else if (iArr[0] == 1) {
            z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, 0, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0, 0, 0, 0);
        } else if (iArr[0] == 2) {
            z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, 1, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0, 0, 0, 0);
        }
    }

    public final void a3(int i2, int i3) {
        switch (i3) {
            case 0:
                z.k.s(227, -118, 8, i2, 0, 0, 0, 0, 0, 0, 0);
                break;
            case 1:
                z.k.s(227, -118, 8, 0, i2, 0, 0, 0, 0, 0, 0);
                break;
            case 2:
                z.k.s(227, -118, 8, 0, 0, i2, 0, 0, 0, 0, 0);
                break;
            case 3:
                z.k.s(227, -118, 8, 0, 0, 0, i2, 0, 0, 0, 0);
                break;
            case 4:
                z.k.s(227, -118, 8, 0, 0, 0, 0, i2, 0, 0, 0);
                break;
            case 5:
                z.k.s(227, -118, 8, 0, 0, 0, 0, 0, i2, 0, 0);
                break;
            case 6:
                z.k.s(227, -118, 8, 0, 0, 0, 0, 0, 0, i2, 0);
                break;
            case 7:
                z.k.s(227, -118, 8, 0, 0, 0, 0, 0, 0, 0, i2);
                break;
        }
        a.i.a0(50L);
        z.k.s(227, -118, 8, 0, 0, 0, 0, 0, 0, 0, 0);
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
        if (this.f11972j + bArr.length > 1024) {
            this.f11972j = 0;
            this.f11974k = 0;
            this.f11976l = 0;
        }
        System.arraycopy(bArr, 0, this.f11970i, this.f11972j, bArr.length);
        int length = this.f11972j + bArr.length;
        this.f11972j = length;
        int i5 = this.f11976l;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f11970i[1];
            int i6 = 2;
            while (true) {
                i4 = this.f11976l;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f11970i[i6]);
                i6++;
            }
            byte b3 = (byte) (b2 ^ 255);
            byte[] bArr2 = this.f11970i;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                z.a.f18158i.i(new byte[]{-1});
                this.f11974k = this.f11976l + 1;
            } else {
                this.f11974k = 1;
            }
            this.f11976l = 0;
        }
        int i7 = this.f11972j - 2;
        while (true) {
            i2 = this.f11974k;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f11970i;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f11976l = i8;
                int i9 = i8 + i2 + 3;
                this.f11976l = i9;
                if (i9 >= this.f11972j) {
                    this.f11976l = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f11976l;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f11970i[i10]);
                    i10++;
                }
                byte b5 = (byte) (b4 ^ 255);
                byte[] bArr4 = this.f11970i;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f11974k;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    z.a.f18158i.i(new byte[]{-1});
                    this.f11974k = this.f11976l;
                } else {
                    this.f11974k++;
                }
                this.f11976l = 0;
            }
            this.f11974k++;
        }
        if (i2 != 0) {
            int i12 = this.f11972j - i2;
            this.f11972j = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f11970i;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f11974k = 0;
        }
    }

    public final void c3() {
        int i2;
        int i3 = this.K;
        if (i3 > 0) {
            int[] iArr = f11954s0;
            if (i3 >= iArr.length) {
                return;
            }
            int i4 = this.G;
            int i5 = i4 * 10;
            int i6 = this.F;
            int i7 = i6 * 10;
            int i8 = this.I;
            int i9 = i8 / BatchedScanSettings.MAX_INTERVAL_SEC;
            int i10 = (i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60;
            if (i3 == 11 || i3 == 12 || i3 == 17 || i3 == 18) {
                i2 = 1;
            } else {
                i2 = i3 == 15 ? 2 : 0;
            }
            int i11 = (this.M == 0 && this.L == 0) ? 0 : 128;
            if (i6 > 1000) {
                i11 |= 32;
                i7 /= 1000;
            }
            if (i4 > 1000) {
                i11 |= 64;
                i5 /= 1000;
            }
            z.k.s(227, 176, 10, i11, i5 & 255, (i5 >> 8) & 255, i7 & 255, (i7 >> 8) & 255, i9 & 255, (i9 >> 8) & 255, i10 & 255, iArr[i3], i2);
        }
    }

    public String m3() {
        List<ActivityManager.RunningTaskInfo> runningTasks = a.f.d().getRunningTasks(2);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        try {
            return runningTasks.get(0).topActivity.getClassName();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void n3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int length = str.length() <= 10 ? str.length() : 10;
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

    public final void o3() {
        if (m3().equals("com.syu.carinfo.jili.YuanjingX3TireAct")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.jili.YuanjingX3TireAct");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void p3(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        switch (i2) {
            case 0:
                i3 = 128;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
            case 1:
                i3 = 2;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
            case 2:
                i3 = 1;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
            case 3:
                i3 = 16;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
            case 4:
                i4 = 4;
                i3 = 0;
                i5 = 0;
                i6 = i5;
                break;
            case 5:
            case 6:
            default:
                i3 = 0;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
            case 7:
                i6 = 2;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                break;
            case 8:
                i6 = 1;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                break;
            case 9:
                i3 = 64;
                i4 = 0;
                i5 = i4;
                i6 = i5;
                break;
            case 10:
                i5 = 1;
                i3 = 0;
                i4 = 0;
                i6 = 0;
                break;
        }
        z.k.s(227, -118, 4, i3, i4, i5, i6);
    }

    public final void q3(int[] iArr) {
        if (T2(iArr, 6)) {
            z.k.s(227, -57, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
            v3(new byte[]{46, -57, 6, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4], (byte) iArr[5], 0});
            if (iArr[0] == 0 && iArr[1] == 0 && iArr[2] == 0 && iArr[3] == 0 && iArr[4] == 0 && iArr[5] == 0) {
                a.i.a0(100L);
                v3(new byte[]{46, -112, 1, 33, 0});
            }
            this.f11973j0 = 1;
        }
    }

    public final void r3(int i2) {
        f11949n0 = i2;
        this.f11977l0 = 0;
        qt.y0(194, 0);
        qt.y0(196, 0);
        qt.y0(195, f11949n0);
        int iB = this.f11982q.b(2, 0);
        int i3 = f11949n0;
        if (iB != i3) {
            this.f11982q.g(2, i3);
        }
    }

    public final void s3(int i2, int i3, int i4) {
        f11950o0 = i2;
        qt.y0(237, i2);
        int iB = this.f11982q.b(3, 128);
        int i5 = f11950o0;
        if (iB != i5) {
            this.f11982q.g(3, i5);
        }
        f11951p0 = i3;
        qt.y0(238, i3);
        int iB2 = this.f11982q.b(4, 128);
        int i6 = f11951p0;
        if (iB2 != i6) {
            this.f11982q.g(4, i6);
        }
        f11952q0 = i4;
        qt.y0(239, i4);
        int iB3 = this.f11982q.b(5, 128);
        int i7 = f11952q0;
        if (iB3 != i7) {
            this.f11982q.g(5, i7);
        }
        z.k.s(227, -123, 3, f11950o0, f11951p0, f11952q0);
    }

    public final void t3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f11948m0 = i2;
        qt.y0(185, i2);
        int iB = this.f11982q.b(1, 0);
        int i3 = f11948m0;
        if (iB != i3) {
            this.f11982q.g(1, i3);
        }
    }

    public final void u3(int i2) {
        f11953r0 = i2;
        qt.y0(i.a.Theme_actionModeFindDrawable, i2);
        int iB = this.f11982q.b(6, 0);
        int i3 = f11953r0;
        if (iB != i3) {
            this.f11982q.g(6, i3);
        }
    }
}
