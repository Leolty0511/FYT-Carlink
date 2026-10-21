package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.drm.DrmManagerClient;
import android.media.videoeditor.MediaProperties;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ud extends lt {
    public static int[] Z = {1, 1, 2, 3, 4, 5, 8, 9, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1};

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f10987a0 = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f10988b0 = 0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f10989c0 = 0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f10990d0 = 0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f10991e0 = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10992b;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public n f11008r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10993c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f10994d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 13}, new int[]{16, 21}, new int[]{17, 21}, new int[]{18, 25}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 12}, new int[]{22, 64}, new int[]{23, 2}, new int[]{24, 6}, new int[]{25, 63}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 38}, new int[]{35, 5}, new int[]{36, 18}, new int[]{37, 24}, new int[]{38, 5}, new int[]{40, 1}, new int[]{41, 1}, new int[]{42, 25}, new int[]{43, 29}, new int[]{44, 31}, new int[]{45, 30}, new int[]{46, 7}, new int[]{47, 8}, new int[]{176, 34}, new int[]{177, 35}, new int[]{178, 32}, new int[]{179, 33}, new int[]{180, 6}, new int[]{181, 29}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[][] f10995e = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 2}, new int[]{8, 13}, new int[]{16, 21}, new int[]{17, 21}, new int[]{18, 0}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 12}, new int[]{22, 64}, new int[]{23, 68}, new int[]{24, 6}, new int[]{25, 55}, new int[]{32, 7}, new int[]{33, 8}, new int[]{34, 38}, new int[]{35, 5}, new int[]{36, 18}, new int[]{37, 24}, new int[]{38, 5}, new int[]{40, 18}, new int[]{41, 1}, new int[]{42, 25}, new int[]{43, 29}, new int[]{44, 31}, new int[]{45, 30}, new int[]{46, 7}, new int[]{47, 8}, new int[]{176, 34}, new int[]{177, 35}, new int[]{178, 32}, new int[]{179, 33}, new int[]{180, 6}, new int[]{181, 29}};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte f10996f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f10997g = new e();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10998h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10999i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11000j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f11001k = new f();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f11002l = new g();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f11003m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f11004n = new h();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11005o = 5;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f11006p = new i();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f11007q = new j();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f11009s = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f11010t = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11011u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f11012v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f11013w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f11014x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f11015y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f11016z = 0;
    public int A = 0;
    public int B = 0;
    public int C = 0;
    public boolean D = false;
    public int E = 255;
    public int F = 255;
    public Runnable G = new k();
    public int H = -1;
    public Runnable I = new l();
    public long J = -1;
    public int K = -1;
    public Runnable L = new m();
    public o1.g0 M = new o1.g0(getClass().getSimpleName(), 32);
    public final int N = 1;
    public final int O = 2;
    public final int P = 3;
    public final int Q = 4;
    public final int R = 5;
    public Runnable S = new a();
    public Runnable T = new b();
    public Runnable U = new c();
    public int V = -1;
    public boolean W = false;
    public String X = ProxyProperties.LOCAL_EXCL_LIST;
    public Runnable Y = new d();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = y0.f.f18037c;
            if (nt.f8637c == 1) {
                if (i2 > 28) {
                    i2 = 28;
                } else if (i2 > 31) {
                    i2 = 31;
                }
            }
            z.k.s(227, -60, 1, i2);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ud.this.H3((byte) 112, u0.b.i3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ud.this.H3((byte) 113, u0.b.j3);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2;
            int i2 = h0.c.E;
            int i3 = 3;
            boolean z3 = true;
            boolean z4 = i2 == 5 || i2 == 3 || i2 == 4;
            if (i2 != 3) {
                if (i2 != 4) {
                    i3 = i2 != 5 ? 0 : 2;
                } else {
                    i3 = 1;
                }
            }
            if (ud.this.V != i3) {
                ud.this.V = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (ud.this.X.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                ud.this.X = h0.c.f2437h;
                if (ud.this.X == null) {
                    ud.this.X = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (z3) {
                ud udVar = ud.this;
                udVar.N3(udVar.V, ud.this.X);
                if (ud.this.W != z4) {
                    ud.this.W = z4;
                    ud.this.V = 0;
                }
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ud udVar = ud.this;
            byte b2 = (byte) (udVar.f10996f + 1);
            udVar.f10996f = b2;
            if (b2 > 6) {
                l0.b0.o0(udVar.f10997g);
                ud.this.f10996f = (byte) 0;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ud udVar = ud.this;
            int i2 = udVar.f11000j;
            if (i2 > 0) {
                udVar.f11000j = i2 - 1;
            }
            if (udVar.f11000j <= 0) {
                l0.b0.p0(udVar.f11001k);
                qt.a(0);
                z.k.s(227, 167, 1, 16);
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.q();
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o == 0) {
                if (ud.this.C == 1) {
                    z.k.s(227, 169, 2, 1, 0);
                }
                ud udVar = ud.this;
                udVar.C = 0;
                udVar.D = false;
            }
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ud.this.f11007q);
            ud.this.f11005o = 5;
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ud udVar = ud.this;
            int i2 = udVar.f11005o - 1;
            udVar.f11005o = i2;
            if (i2 <= 0) {
                l0.b0.p0(udVar.f11007q);
                ud.this.f11005o = 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, 144, 2, 48, 0);
                ud udVar2 = ud.this;
                udVar2.K3(udVar2.M.b(1, 1));
                ud udVar3 = ud.this;
                udVar3.I3(udVar3.M.b(2, 0));
                ud udVar4 = ud.this;
                udVar4.J3(udVar4.M.b(3, 0));
                ud udVar5 = ud.this;
                udVar5.M3(udVar5.M.b(4, 0));
                if (nt.f8637c != 20) {
                    return;
                }
                ud udVar6 = ud.this;
                udVar6.L3(udVar6.M.b(5, 0));
                ud udVar7 = ud.this;
                udVar7.C = 0;
                udVar7.D = false;
            }
        }
    }

    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ud udVar = ud.this;
            udVar.F = udVar.b3(u0.b.f17359s0);
            if (ud.this.F != ud.this.E) {
                ud udVar2 = ud.this;
                int i2 = udVar2.B;
                if (i2 == 0) {
                    z.k.s(227, -55, 6, i2, udVar2.F, 0, 0, 0, 0);
                }
                ud udVar3 = ud.this;
                udVar3.E = udVar3.F;
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = h0.c.P / 1000;
            ud udVar = ud.this;
            if (udVar.H != i2) {
                udVar.H = i2;
                udVar.O3(i2);
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 6000;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (ud.this.J != millis || ud.this.K != i2) {
                ud.this.J = millis;
                ud.this.K = i2;
                z.k.s(227, -90, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (((byte) time.hour) & 127) | ((i2 << 7) & 128), (byte) time.minute, 0, 0);
                if (nt.f8637c != 25) {
                    z.k.s(227, -112, 2, 16, 0);
                }
            }
            switch (nt.f8637c) {
                case 4:
                case 5:
                case 9:
                case 10:
                case 36:
                    z.k.s(227, -18, 2, 4, 1);
                    break;
                case 6:
                case 7:
                    z.k.s(227, -18, 2, 4, 2);
                    break;
                case 8:
                case 20:
                case 29:
                case 42:
                    z.k.s(227, -18, 2, 4, 3);
                    break;
                case 11:
                case 12:
                    z.k.s(227, -18, 2, 4, 4);
                    break;
                case 13:
                case 14:
                case 26:
                case 55:
                    z.k.s(227, -18, 2, 4, 5);
                    break;
                case 15:
                    z.k.s(227, -18, 2, 4, 6);
                    break;
                case 16:
                case 39:
                    z.k.s(227, -18, 2, 4, 7);
                    break;
                case 18:
                    z.k.s(227, -18, 2, 4, 8);
                    break;
                case 19:
                    z.k.s(227, -18, 2, 4, 9);
                    break;
                case 22:
                    z.k.s(227, -18, 2, 4, 10);
                    break;
                case 23:
                case 31:
                    z.k.s(227, -18, 2, 4, 11);
                    break;
                case 25:
                    z.k.s(227, -18, 2, 4, 12);
                    break;
                case 27:
                    z.k.s(227, -18, 2, 4, 13);
                    break;
                case 28:
                    z.k.s(227, -18, 2, 4, 14);
                    break;
                case 32:
                    z.k.s(227, -18, 2, 4, 16);
                    break;
                case 33:
                    z.k.s(227, -18, 2, 4, 15);
                    break;
                case 35:
                    z.k.s(227, -18, 2, 4, 18);
                    break;
                case 37:
                    z.k.s(227, -18, 2, 4, 19);
                    break;
                case 38:
                    z.k.s(227, -18, 2, 4, 20);
                    break;
                case 40:
                    z.k.s(227, -18, 2, 4, 21);
                    break;
                case 43:
                    z.k.s(227, -18, 2, 4, 1);
                    break;
                case 44:
                    z.k.s(227, -18, 2, 4, 2);
                    break;
                case 45:
                case 46:
                    z.k.s(227, -18, 2, 4, 4);
                    break;
                case 52:
                    z.k.s(227, -18, 2, 4, 17);
                    break;
                case 53:
                    z.k.s(227, -18, 2, 4, 22);
                    break;
                case 54:
                    z.k.s(227, -18, 2, 4, 32);
                    break;
            }
        }
    }

    public class n extends BroadcastReceiver {
        public n() {
        }

        /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[Catch: Exception -> 0x0188, TryCatch #0 {Exception -> 0x0188, blocks: (B:20:0x0096, B:22:0x009e, B:26:0x00ab, B:28:0x00af, B:32:0x00c1, B:34:0x00c9, B:36:0x00d7, B:38:0x00dd, B:39:0x00e5, B:41:0x00eb, B:43:0x00f9, B:44:0x0108, B:46:0x0112, B:47:0x011a, B:49:0x0124, B:50:0x0141, B:52:0x014b, B:53:0x0154, B:55:0x015e, B:56:0x0167, B:58:0x0171, B:60:0x0177, B:62:0x0182, B:29:0x00b6), top: B:67:0x0096 }] */
        /* JADX WARN: Failed to find 'out' block for switch in B:26:0x00ab. Please report as an issue. */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z2;
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if ("com.syu.canbus.fb.click".equals(action)) {
                try {
                    int i2 = u0.b.f17347o;
                    if (i2 == 0) {
                        z.k.s(227, 169, 2, 1, 1);
                        ud udVar = ud.this;
                        udVar.C = 1;
                        udVar.D = true;
                        qt.a(1);
                    } else if (i2 == 1) {
                        ud udVar2 = ud.this;
                        if (udVar2.C == 0) {
                            udVar2.C = 1;
                            z.k.s(227, 169, 2, 1, 1);
                        } else {
                            z.k.s(227, 169, 2, 1, 0);
                            ud udVar3 = ud.this;
                            udVar3.C = 0;
                            if (udVar3.D) {
                                udVar3.D = false;
                                qt.a(0);
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (!"AUTONAVI_STANDARD_BROADCAST_SEND".equals(action) || extras == null) {
                return;
            }
            try {
                if (extras.getInt("KEY_TYPE") != 10019) {
                    z2 = false;
                } else {
                    int i3 = extras.getInt("EXTRA_STATE");
                    if (i3 != 2 && i3 != 39) {
                        switch (i3) {
                            case 8:
                            case 10:
                                ud udVar4 = ud.this;
                                udVar4.B = 1;
                                udVar4.A = 1;
                                break;
                            case 9:
                            case 11:
                            case 12:
                                ud udVar5 = ud.this;
                                udVar5.B = 0;
                                udVar5.A = 0;
                                break;
                            default:
                                z2 = false;
                                break;
                        }
                    } else {
                        ud udVar6 = ud.this;
                        udVar6.B = 0;
                        udVar6.A = 0;
                    }
                    z2 = true;
                }
                if (extras.getInt("KEY_TYPE") == 10001) {
                    if (!ud.this.f11009s.equals(extras.getString("CUR_ROAD_NAME")) && extras.getString("CUR_ROAD_NAME") != null) {
                        ud.this.f11009s = extras.getString("CUR_ROAD_NAME");
                    }
                    if (extras.getString("NEXT_ROAD_NAME") != null && !ud.this.f11010t.equals(extras.getString("NEXT_ROAD_NAME"))) {
                        ud.this.f11010t = extras.getString("NEXT_ROAD_NAME");
                        ud udVar7 = ud.this;
                        udVar7.c3(udVar7.f11010t);
                    }
                    if (ud.this.f11012v != extras.getInt("SEG_REMAIN_DIS")) {
                        ud.this.f11012v = extras.getInt("SEG_REMAIN_DIS");
                    }
                    if (ud.this.f11011u != extras.getInt("ROUTE_REMAIN_DIS")) {
                        ud.this.f11011u = extras.getInt("ROUTE_REMAIN_DIS");
                        ud.this.f11015y = ((extras.getInt("ROUTE_ALL_DIS") - extras.getInt("ROUTE_REMAIN_DIS")) * 100) / extras.getInt("ROUTE_ALL_DIS");
                        z2 = true;
                    }
                    if (ud.this.f11013w != extras.getInt("CAR_DIRECTION")) {
                        ud.this.f11013w = extras.getInt("CAR_DIRECTION");
                        z2 = true;
                    }
                    if (ud.this.f11014x != extras.getInt("ROUTE_ALL_TIME")) {
                        ud.this.f11014x = extras.getInt("ROUTE_ALL_TIME");
                        z2 = true;
                    }
                    if (ud.this.f11016z != extras.getInt("ICON") && extras.getInt("KEY_TYPE") == 10001) {
                        ud.this.f11016z = extras.getInt("ICON");
                        z2 = true;
                    }
                }
                if (z2) {
                    ud.this.d3();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }

        public /* synthetic */ n(ud udVar, e eVar) {
            this();
        }
    }

    public final void H3(byte b2, String str) {
        if (str == null) {
            return;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length <= 24 ? bytes.length : 24;
        int[] iArr = new int[length + 4];
        iArr[0] = -29;
        iArr[1] = b2;
        iArr[2] = (byte) (length + 1);
        iArr[3] = 18;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[4 + i2] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void I3(int i2) {
        f10988b0 = i2;
        z.k.s(227, 198, 2, 6, i2);
        qt.y0(104, i2);
        int iB = this.M.b(2, 0);
        int i3 = f10988b0;
        if (iB != i3) {
            this.M.g(2, i3);
        }
    }

    public final void J3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 2) {
            i2 = 2;
        }
        f10989c0 = i2;
        z.k.s(227, 198, 2, 8, i2);
        qt.y0(106, i2);
        int iB = this.M.b(3, 0);
        int i3 = f10989c0;
        if (iB != i3) {
            this.M.g(3, i3);
        }
    }

    public final void K3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 3) {
            i2 = 3;
        }
        int i3 = i2 + 1;
        f10987a0 = i3;
        z.k.s(227, 167, 1, (byte) i3);
        qt.y0(Process.MEDIA_UID, i2);
        int iB = this.M.b(1, 0);
        int i4 = f10987a0;
        if (iB != i4) {
            this.M.g(1, i4);
        }
    }

    public final void L3(int i2) {
        qt.y0(197, i2);
        f10991e0 = i2;
        if (i2 == 1) {
            Intent intent = new Intent("android.fyt.screenbutton.CanbusShow");
            intent.setPackage("com.fyt.screenbutton");
            App.c().startService(intent);
        } else if (i2 == 0) {
            Intent intent2 = new Intent("android.fyt.screenbutton.CanbusHide");
            intent2.setPackage("com.fyt.screenbutton");
            App.c().startService(intent2);
        }
        int iB = this.M.b(5, 0);
        int i3 = f10991e0;
        if (iB != i3) {
            this.M.g(5, i3);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    public final void M3(int i2) {
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > 1) {
            i2 = 1;
        }
        f10990d0 = i2;
        qt.y0(142, i2);
        int iB = this.M.b(4, 0);
        int i3 = f10990d0;
        if (iB != i3) {
            this.M.g(4, i3);
        }
    }

    public final void N3(int i2, String str) {
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

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        a.f.p().t(LogType.CANBUS, "Air codeCmd = " + iArr[0] + "      value = " + iArr[1]);
        if (i2 == 38) {
            if (iArr[1] == 1) {
                if (nt.f8645g[12] == 0) {
                    a3(4);
                    return;
                }
                return;
            } else {
                if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    a3(5);
                    return;
                }
                return;
            }
        }
        if (i2 == 39) {
            if (iArr[1] == -1) {
                a3(11);
                return;
            } else {
                a3(12);
                return;
            }
        }
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(13);
                return;
            } else {
                a3(14);
                return;
            }
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(15);
                return;
            } else {
                a3(16);
                return;
            }
        }
        if (i2 == 64) {
            int i3 = iArr[1];
            if (i3 == 0) {
                z.k.s(227, 198, 2, 54, 0);
                return;
            } else if (i3 == 1) {
                z.k.s(227, 198, 2, 54, 1);
                return;
            } else {
                if (i3 != 2) {
                    return;
                }
                z.k.s(227, 198, 2, 54, 2);
                return;
            }
        }
        if (i2 == 67) {
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
        if (i2 != 68) {
            switch (i2) {
                case 33:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[10] == 1) {
                            a3(0);
                        }
                    } else if (nt.f8645g[10] == 0) {
                        a3(0);
                    }
                    break;
                case 34:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[11] == 1) {
                            a3(1);
                        }
                    } else if (nt.f8645g[11] == 0) {
                        a3(1);
                    }
                    break;
                case 35:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[13] == 1) {
                            a3(2);
                        }
                    } else if (nt.f8645g[13] == 0) {
                        a3(2);
                    }
                    break;
                case 36:
                    if (iArr[1] == 0) {
                        if (nt.f8645g[65] == 1) {
                            a3(6);
                        }
                    } else if (nt.f8645g[65] == 0) {
                        a3(6);
                    }
                    break;
            }
            return;
        }
        if (iArr[1] == 1) {
            z.k.s(227, -53, 2, 2, 0);
            return;
        }
        if (iArr[1] == 2) {
            z.k.s(227, -53, 2, 2, 1);
            return;
        }
        if (iArr[1] == 3) {
            z.k.s(227, -53, 2, 3, 0);
            return;
        }
        if (iArr[1] == 4) {
            z.k.s(227, -53, 2, 3, 1);
            return;
        }
        if (iArr[1] == 5) {
            z.k.s(227, -53, 2, 4, 0);
            return;
        }
        if (iArr[1] == 6) {
            z.k.s(227, -53, 2, 4, 1);
            return;
        }
        if (iArr[1] == 7) {
            z.k.s(227, -53, 2, 5, 0);
            return;
        }
        if (iArr[1] == 8) {
            z.k.s(227, -53, 2, 5, 1);
            return;
        }
        if (iArr[1] == 9) {
            z.k.s(227, -53, 2, 6, 0);
            return;
        }
        if (iArr[1] == 10) {
            z.k.s(227, -53, 2, 6, 1);
        } else if (iArr[1] == 11) {
            z.k.s(227, -53, 2, 1, 0);
        } else if (iArr[1] == 12) {
            z.k.s(227, -53, 2, 1, 1);
        }
    }

    public final void O3(int i2) {
        if (h0.c.E == 5) {
            byte b2 = (byte) i2;
            int i3 = b2 / 3600;
            z.k.s(-29, -61, 4, b2 % DhcpPacket.DHCP_VENDOR_CLASS_ID, (b2 % 3600) / 60, i3, i3 / 24);
        }
    }

    @Override // k0.lt
    public void S2() {
        int i2;
        if (nt.a() && (i2 = nt.f8637c) != 15 && i2 != 17 && i2 != 25) {
            w0.e.f17815a.a(this.f11002l, 1);
            w0.e.f17819e.a(this.f11002l, 1);
            u0.c.f17374a.a(this.f11002l, 1);
            u0.c.f17393t.a(this.f11002l, 1);
            u0.c.f17392s.a(this.f11002l, 1);
            l0.b0.b(this.f11002l);
            y0.g.f18094d.a(this.S, 1);
        }
        this.M.a();
        u0.c.f17386m.a(this.f11006p, 1);
        qt.z(this.L);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8319n = 0;
        mtVar.f8314i = 0;
        e eVar = null;
        switch (nt.f8637c) {
            case 1:
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 16:
            case 18:
            case 22:
            case 23:
            case 26:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 52:
            case 53:
            case 54:
            case 55:
                mtVar.f8314i = 1;
                u0.c.f17388o.a(this.T, 1);
                u0.c.f17389p.a(this.U, 1);
                h0.d.f2464c.a(this.Y, 1);
                h0.d.f2462a.a(this.Y, 1);
                h0.d.f2465d.a(this.I, 1);
                break;
            case 2:
            case 15:
            case 21:
            case 24:
            case 27:
            case 40:
                mtVar.f8306a = null;
                break;
            case 8:
            case 20:
            case 29:
            case 42:
            case 45:
            case 46:
                mtVar.f8319n = 1;
                mtVar.f8314i = 1;
                u0.c.f17388o.a(this.T, 1);
                u0.c.f17389p.a(this.U, 1);
                h0.d.f2464c.a(this.Y, 1);
                h0.d.f2462a.a(this.Y, 1);
                h0.d.f2465d.a(this.I, 1);
                break;
            case 28:
                u0.c.f17388o.a(this.T, 1);
                u0.c.f17389p.a(this.U, 1);
                h0.d.f2464c.a(this.Y, 1);
                h0.d.f2462a.a(this.Y, 1);
                h0.d.f2465d.a(this.I, 1);
                break;
            case 41:
            case 47:
            case 48:
                mtVar.f8314i = 1;
                break;
            case 43:
            case 44:
            case 50:
            case 51:
                mtVar.f8306a = new String[]{"com.syu.canbus"};
                mtVar.f8310e = 1;
                mtVar.f8311f = 1;
                mtVar.f8319n = 1;
                mtVar.f8312g = 1;
                mtVar.f8314i = 1;
                u0.c.f17388o.a(this.T, 1);
                u0.c.f17389p.a(this.U, 1);
                h0.d.f2464c.a(this.Y, 1);
                h0.d.f2462a.a(this.Y, 1);
                h0.d.f2465d.a(this.I, 1);
                o1.h.f16865a.a(this.G, 1);
                this.f11008r = new n(this, eVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("AUTONAVI_STANDARD_BROADCAST_SEND");
                App.c().registerReceiver(this.f11008r, intentFilter);
                d3();
                break;
            case 49:
                mtVar.f8306a = null;
                mtVar.f8314i = 1;
                break;
        }
        if (nt.f8637c == 20) {
            this.f7886a.f8313h = 2;
            u0.c.f17379f.a(this.f11004n, 1);
            this.f11008r = new n(this, eVar);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("com.syu.canbus.fb.click");
            App.c().registerReceiver(this.f11008r, intentFilter2);
        } else {
            this.f7886a.f8313h = 0;
        }
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 41, 42, 67, 55, 56, 68, 64};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int[][] iArr2;
        byte b2;
        int i4;
        int i5;
        int i6;
        int i7;
        byte b3 = bArr[i2];
        if (b3 == 16) {
            int i8 = bArr[i2 + 3] & 255;
            if (i8 != 255 && i8 != 0) {
                u0.d.A3((i8 * 5) + 450);
                return;
            }
            u0.d.A3(0);
        }
        if (b3 == 41) {
            if (this.f11003m) {
                return;
            }
            qt.m(bArr[i2 + 2] & 255, bArr[i2 + 3] & 255, 32768, false, GLES10.GL_TEXTURE_ENV_MODE);
            return;
        }
        if (b3 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 50) {
            qt.y0(196, bArr[i2 + 2] & 255);
            return;
        }
        if (b3 == 125) {
            int i9 = bArr[i2 + 2] & 255;
            if (i9 != 1) {
                if (i9 == 3) {
                    int i10 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                    qt.y0(1031, i10);
                    o1.x.C(nt.f8643f, 1049, new int[]{1, i10}, null, null);
                    return;
                } else {
                    if (i9 != 8) {
                        return;
                    }
                    qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                    this.f11003m = true;
                    return;
                }
            }
            if (nt.f8637c == 20 && f10990d0 == 1) {
                int i11 = i2 + 3;
                int i12 = (bArr[i11] >> 3) & 1;
                this.f10998h = i12;
                int i13 = (bArr[i11] >> 4) & 1;
                this.f10999i = i13;
                if (i12 == 1 || i13 == 1) {
                    u0.d.I3(23, 0);
                    qt.a(1);
                    z.k.s(227, 167, 1, 17);
                    this.f11000j = 5;
                    l0.b0.p0(this.f11001k);
                } else {
                    l0.b0.b(this.f11001k);
                }
            }
            if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                int i14 = i2 + 3;
                l0.c0.b((bArr[i14] >> 3) & 1, (bArr[i14] >> 4) & 1, 0);
                return;
            } else {
                int i15 = i2 + 3;
                l0.c0.a((bArr[i15] >> 3) & 1, (bArr[i15] >> 4) & 1, 0);
                return;
            }
        }
        switch (b3) {
            case 32:
                if (nt.a()) {
                    byte b4 = bArr[i2 + 2];
                    byte b5 = bArr[i2 + 3];
                    int i16 = nt.f8637c;
                    if (i16 != 4 && i16 != 36) {
                        this.f10993c = b4 & 255;
                        int i17 = 0;
                        while (true) {
                            iArr2 = this.f10994d;
                            if (i17 < iArr2.length) {
                                int i18 = this.f10993c;
                                if (i18 != iArr2[i17][0]) {
                                    i17++;
                                } else if (i18 != 0) {
                                    this.f10992b = i17;
                                }
                            }
                        }
                        int i19 = this.f10993c;
                        if (i19 == 5) {
                            if ((b5 & 255) == 1) {
                                if (nt.f8637c != 25) {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                } else if (h0.c.E != 4) {
                                    l0.b0.l0(12, 0);
                                    l0.b0.l0(12, 1);
                                } else {
                                    l0.b0.l0(18, 0);
                                    l0.b0.l0(18, 1);
                                }
                            }
                            break;
                        } else if (i19 != 39) {
                            if (i19 != 32) {
                                if (i19 != 33) {
                                    switch (i19) {
                                        case 44:
                                            for (int i20 = 0; i20 < (b5 & 255); i20++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                            break;
                                        case 45:
                                            for (int i21 = 0; i21 < (b5 & 255); i21++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                            break;
                                        case 46:
                                            break;
                                        case 47:
                                            break;
                                        default:
                                            int i22 = b5 & 255;
                                            if (i22 != 1) {
                                                if (i22 == 0) {
                                                    int i23 = this.f10992b;
                                                    if (i23 < iArr2.length && i23 != 255) {
                                                        l0.b0.l0(iArr2[i23][1], 1);
                                                        l0.b0.o0(this.f10997g);
                                                        this.f10996f = (byte) 0;
                                                    }
                                                    this.f10992b = 255;
                                                }
                                                break;
                                            } else if (i17 < iArr2.length && (b2 = this.f10996f) == 0) {
                                                this.f10996f = (byte) (b2 + 1);
                                                l0.b0.l0(iArr2[i17][1], 0);
                                                l0.b0.a(this.f10997g);
                                                break;
                                            }
                                            break;
                                    }
                                }
                                for (int i24 = 0; i24 < (b5 & 255); i24++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            }
                            for (int i25 = 0; i25 < (b5 & 255); i25++) {
                                l0.b0.l0(7, 0);
                            }
                            l0.b0.l0(7, 1);
                            break;
                        } else if ((b5 & 255) == 1 && !o1.u.S("com.syu.carlink")) {
                            o1.u.g("com.syu.carlink");
                            break;
                        }
                    } else {
                        this.f10993c = b4 & 255;
                        int i26 = 0;
                        while (true) {
                            iArr = this.f10995e;
                            if (i26 < iArr.length) {
                                int i27 = this.f10993c;
                                if (i27 != iArr[i26][0]) {
                                    i26++;
                                } else if (i27 != 0) {
                                    this.f10992b = i26;
                                }
                            }
                        }
                        int i28 = this.f10993c;
                        if (i28 != 32) {
                            if (i28 != 33) {
                                if (i28 != 39) {
                                    switch (i28) {
                                        case 44:
                                            for (int i29 = 0; i29 < (b5 & 255); i29++) {
                                                l0.b0.l0(31, 0);
                                            }
                                            l0.b0.l0(31, 1);
                                            break;
                                        case 45:
                                            for (int i30 = 0; i30 < (b5 & 255); i30++) {
                                                l0.b0.l0(30, 0);
                                            }
                                            l0.b0.l0(30, 1);
                                            break;
                                        case 46:
                                            break;
                                        case 47:
                                            break;
                                        default:
                                            int i31 = b5 & 255;
                                            if (i31 == 1) {
                                                if (i26 < iArr.length) {
                                                    l0.b0.l0(iArr[i26][1], 0);
                                                }
                                            } else if (i31 == 0) {
                                                int i32 = this.f10992b;
                                                if (i32 < iArr.length && i32 != 255) {
                                                    l0.b0.l0(iArr[i32][1], 1);
                                                }
                                                this.f10992b = 255;
                                            }
                                            break;
                                    }
                                } else if ((b5 & 255) == 1 && !o1.u.S("com.syu.carlink")) {
                                    o1.u.g("com.syu.carlink");
                                    break;
                                }
                            }
                            for (int i33 = 0; i33 < (b5 & 255); i33++) {
                                l0.b0.l0(8, 0);
                            }
                            l0.b0.l0(8, 1);
                        }
                        for (int i34 = 0; i34 < (b5 & 255); i34++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    }
                }
                break;
            case 33:
                byte b6 = bArr[i2 + 2];
                byte b7 = bArr[i2 + 3];
                byte b8 = bArr[i2 + 4];
                int i35 = i2 + 5;
                byte b9 = bArr[i35];
                int i36 = i2 + 6;
                byte b10 = bArr[i36];
                qt.y0(53, (b6 >> 7) & 1);
                qt.y0(11, (b6 >> 6) & 1);
                qt.y0(12, (b6 >> 4) & 1);
                qt.y0(13, (b6 >> 3) & 1);
                qt.y0(14, (b6 >> 2) & 1);
                qt.y0(16, (b6 >> 1) & 1);
                qt.y0(65, (b6 >> 0) & 1);
                qt.y0(68, (b7 >> 7) & 1);
                int i37 = b7 & 127;
                switch (i37) {
                    case 1:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        break;
                    case 2:
                        i5 = 0;
                        i6 = 0;
                        i7 = 1;
                        i4 = 1;
                        break;
                    case 3:
                        i7 = 0;
                        i5 = 0;
                        i6 = 0;
                        i4 = 1;
                        break;
                    case 4:
                        i7 = 0;
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 5:
                        i7 = 0;
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 6:
                        i7 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 1;
                        break;
                    default:
                        i7 = 0;
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        break;
                }
                qt.y0(77, i37);
                qt.y0(19, i7);
                qt.y0(20, i4);
                qt.y0(18, i5);
                qt.y0(15, i6);
                if ((b8 & 255) == 0) {
                    qt.y0(10, 0);
                } else {
                    qt.y0(10, 1);
                }
                qt.y0(17, (b8 >> 6) & 1);
                qt.y0(21, b8 & DhcpPacket.DHCP_DOMAIN_NAME);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    b9 = bArr[i36];
                    b10 = bArr[i35];
                }
                byte b11 = b10;
                int i38 = b9 & 255;
                if (i38 == 0) {
                    qt.y0(27, -2);
                } else if (i38 == 30) {
                    qt.y0(27, -3);
                } else if (i38 <= 0 || i38 >= 30) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, (i38 * 5) + 175);
                }
                int i39 = b11 & 255;
                if (i39 == 0) {
                    qt.y0(28, -2);
                } else if (i39 == 30) {
                    qt.y0(28, -3);
                } else if (i39 <= 0 || i39 >= 30) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, (i39 * 5) + 175);
                }
                int i40 = i2 + 7;
                qt.y0(29, (bArr[i40] >> 6) & 3);
                qt.y0(30, (bArr[i40] >> 4) & 3);
                qt.y0(88, (bArr[i40] >> 2) & 3);
                qt.y0(89, (bArr[i40] >> 0) & 3);
                break;
            case 34:
                u0.d.R2(l0.c0.e1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.e1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.e1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.e1(bArr[i2 + 5] & 255));
                break;
            case 35:
                int i41 = i2 + 2;
                int i42 = bArr[i41] & 255;
                int i43 = i2 + 3;
                int i44 = bArr[i43] & 255;
                int i45 = i2 + 4;
                int i46 = bArr[i45] & 255;
                int i47 = i2 + 5;
                int i48 = bArr[i47] & 255;
                if (i42 == 0 && i44 == 0 && i46 == 0 && i48 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i42 || l0.c0.f13014h != i44 || l0.c0.f13015i != i46 || l0.c0.f13016j != i48) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i42;
                l0.c0.f13014h = i44;
                l0.c0.f13015i = i46;
                l0.c0.f13016j = i48;
                u0.d.D2(l0.c0.e1(bArr[i41] & 255));
                u0.d.E2(l0.c0.e1(bArr[i43] & 255));
                u0.d.F2(l0.c0.e1(bArr[i45] & 255));
                u0.d.G2(l0.c0.e1(bArr[i47] & 255));
                break;
            case 36:
                byte b12 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(2, (b12 >> 6) & 1);
                    qt.y0(1, (b12 >> 7) & 1);
                } else {
                    qt.y0(2, (b12 >> 7) & 1);
                    qt.y0(1, (b12 >> 6) & 1);
                }
                qt.y0(4, (b12 >> 5) & 1);
                qt.y0(3, (b12 >> 4) & 1);
                qt.y0(5, (b12 >> 3) & 1);
                break;
            default:
                switch (b3) {
                    case 64:
                        int i49 = i2 + 2;
                        if (bArr[i49] == 0) {
                            qt.y0(98, bArr[i2 + 3]);
                        } else if (bArr[i49] == 1) {
                            qt.y0(99, bArr[i2 + 3]);
                        } else if (bArr[i49] == 2) {
                            qt.y0(100, bArr[i2 + 3]);
                        } else if (bArr[i49] == 3) {
                            qt.y0(101, bArr[i2 + 3]);
                        } else if (bArr[i49] == 4) {
                            qt.y0(102, bArr[i2 + 3]);
                        } else if (bArr[i49] == 5) {
                            qt.y0(103, bArr[i2 + 3]);
                        } else if (bArr[i49] == 6) {
                            qt.y0(104, bArr[i2 + 3]);
                        } else if (bArr[i49] == 7) {
                            qt.y0(105, bArr[i2 + 3]);
                        } else if (bArr[i49] == 9) {
                            qt.y0(107, bArr[i2 + 3]);
                        } else if (bArr[i49] == 10) {
                            qt.y0(108, bArr[i2 + 3]);
                        } else if (bArr[i49] == 11) {
                            qt.y0(109, bArr[i2 + 3]);
                        } else if (bArr[i49] == 12) {
                            qt.y0(110, bArr[i2 + 3]);
                        } else if (bArr[i49] == 13) {
                            qt.y0(111, bArr[i2 + 3]);
                        } else if (bArr[i49] == 14) {
                            qt.y0(112, bArr[i2 + 3]);
                        } else if (bArr[i49] == 15) {
                            qt.y0(113, bArr[i2 + 3]);
                        } else if (bArr[i49] == 16) {
                            qt.y0(114, bArr[i2 + 3]);
                        } else if (bArr[i49] == 17) {
                            qt.y0(115, bArr[i2 + 3]);
                        } else if (bArr[i49] == 18) {
                            qt.y0(116, bArr[i2 + 3]);
                        } else if (bArr[i49] == 19) {
                            qt.y0(117, bArr[i2 + 3]);
                        } else if (bArr[i49] == 20) {
                            qt.y0(118, bArr[i2 + 3]);
                        } else if (bArr[i49] == 21) {
                            qt.y0(119, bArr[i2 + 3]);
                        } else if (bArr[i49] == 22) {
                            qt.y0(120, bArr[i2 + 3]);
                        } else if (bArr[i49] == 23) {
                            qt.y0(121, bArr[i2 + 3]);
                        } else if (bArr[i49] == 24) {
                            qt.y0(122, bArr[i2 + 3]);
                        } else if (bArr[i49] == 25) {
                            qt.y0(123, bArr[i2 + 3]);
                        } else if (bArr[i49] == 26) {
                            qt.y0(124, bArr[i2 + 3]);
                        } else if (bArr[i49] == 27) {
                            qt.y0(125, bArr[i2 + 3]);
                        } else if (bArr[i49] == 28) {
                            qt.y0(126, bArr[i2 + 3]);
                        } else if (bArr[i49] == 29) {
                            qt.y0(127, bArr[i2 + 3]);
                        } else if (bArr[i49] == 30) {
                            qt.y0(128, bArr[i2 + 3]);
                        } else if (bArr[i49] == 31) {
                            qt.y0(129, bArr[i2 + 3]);
                        } else if (bArr[i49] == 32) {
                            qt.y0(130, bArr[i2 + 3]);
                        } else if (bArr[i49] == 33) {
                            qt.y0(131, bArr[i2 + 3]);
                        } else if (bArr[i49] == 34) {
                            qt.y0(132, bArr[i2 + 3]);
                        } else if (bArr[i49] == 35) {
                            qt.y0(133, bArr[i2 + 3]);
                        } else if (bArr[i49] == 36) {
                            qt.y0(134, bArr[i2 + 3]);
                        } else if (bArr[i49] == 37) {
                            qt.y0(135, bArr[i2 + 3]);
                        } else if (bArr[i49] == 38) {
                            qt.y0(136, bArr[i2 + 3]);
                        } else if (bArr[i49] == 39) {
                            qt.y0(137, bArr[i2 + 3]);
                        } else if (bArr[i49] == 40) {
                            qt.y0(138, bArr[i2 + 3]);
                        } else if (bArr[i49] == 41) {
                            qt.y0(139, bArr[i2 + 3]);
                        } else if (bArr[i49] == 42) {
                            qt.y0(140, bArr[i2 + 3]);
                        } else if (bArr[i49] == 43) {
                            qt.y0(158, bArr[i2 + 3]);
                        } else if (bArr[i49] == 44) {
                            qt.y0(159, bArr[i2 + 3]);
                        } else if (bArr[i49] == 45) {
                            qt.y0(160, bArr[i2 + 3]);
                        } else if (bArr[i49] == 46) {
                            qt.y0(161, bArr[i2 + 3]);
                        } else if (bArr[i49] == 47) {
                            qt.y0(162, bArr[i2 + 3]);
                        } else if ((bArr[i49] & 255) == 254) {
                            qt.y0(141, bArr[i2 + 3]);
                        }
                        int i50 = nt.f8637c;
                        if (i50 == 26 || i50 == 55) {
                            if (bArr[i49] == 48) {
                                qt.y0(154, bArr[i2 + 3]);
                            } else if (bArr[i49] == 49) {
                                qt.y0(155, bArr[i2 + 3]);
                            } else if (bArr[i49] == 50) {
                                qt.y0(156, bArr[i2 + 3]);
                            } else if (bArr[i49] == 51) {
                                qt.y0(157, bArr[i2 + 3]);
                            } else if (bArr[i49] == 52) {
                                qt.y0(163, bArr[i2 + 3]);
                            } else if (bArr[i49] == 53) {
                                qt.y0(164, bArr[i2 + 3]);
                            } else if (bArr[i49] == 54) {
                                int i51 = i2 + 3;
                                qt.y0(175, (bArr[i51] >> 2) & 63);
                                qt.y0(176, (bArr[i51] >> 0) & 3);
                            }
                        } else if (bArr[i49] == 48) {
                            qt.y0(166, bArr[i2 + 3]);
                        } else if (bArr[i49] == 49) {
                            qt.y0(167, bArr[i2 + 3]);
                        } else if (bArr[i49] == 50) {
                            qt.y0(168, bArr[i2 + 3]);
                        } else if (bArr[i49] == 51) {
                            qt.y0(169, bArr[i2 + 3]);
                        } else if (bArr[i49] == 52) {
                            qt.y0(170, bArr[i2 + 3]);
                        } else if (bArr[i49] == 53) {
                            qt.y0(171, bArr[i2 + 3]);
                        } else if (bArr[i49] == 54) {
                            qt.y0(172, bArr[i2 + 3]);
                        } else if (bArr[i49] == 55) {
                            qt.y0(173, bArr[i2 + 3]);
                        } else if (bArr[i49] == 56) {
                            qt.y0(174, bArr[i2 + 3]);
                        } else if (bArr[i49] == 58) {
                            qt.y0(151, bArr[i2 + 3]);
                        }
                        break;
                    case 65:
                        int i52 = i2 + 2;
                        if (((bArr[i52] >> 7) & 1) == 1) {
                            qt.y0(143, 1);
                        } else {
                            qt.y0(143, 2);
                        }
                        qt.y0(144, (bArr[i52] >> 5) & 1);
                        qt.y0(145, (bArr[i52] >> 4) & 1);
                        qt.y0(146, (bArr[i52] >> 3) & 1);
                        qt.y0(147, (bArr[i52] >> 2) & 1);
                        qt.y0(148, (bArr[i52] >> 1) & 1);
                        qt.y0(149, (bArr[i52] >> 0) & 1);
                        qt.y0(150, bArr[i2 + 3] & 255);
                        qt.y0(151, bArr[i2 + 4] & 255);
                        qt.y0(153, bArr[i2 + 7] & 255);
                        qt.y0(165, bArr[i2 + 8] & 255);
                        qt.y0(152, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                        break;
                    case 66:
                        if (nt.f8637c == 46) {
                            if (bArr[i2 + 2] != 0) {
                                qt.a(1);
                            } else {
                                qt.a(0);
                            }
                        }
                        break;
                    case 67:
                        int i53 = i2 + 2;
                        qt.y0(177, (bArr[i53] >> 3) & 1);
                        qt.y0(178, (bArr[i53] >> 2) & 1);
                        qt.y0(179, (bArr[i53] >> 1) & 1);
                        qt.y0(180, (bArr[i53] >> 0) & 1);
                        int i54 = i2 + 3;
                        qt.y0(181, (bArr[i54] >> 3) & 1);
                        qt.y0(182, (bArr[i54] >> 0) & 7);
                        qt.y0(183, (bArr[i2 + 4] >> 0) & 255);
                        int i55 = i2 + 5;
                        qt.y0(184, (bArr[i55] >> 1) & 1);
                        qt.y0(185, (bArr[i55] >> 0) & 1);
                        int i56 = i2 + 6;
                        qt.y0(186, (bArr[i56] >> 4) & 1);
                        qt.y0(187, (bArr[i56] >> 3) & 1);
                        qt.y0(188, (bArr[i56] >> 2) & 1);
                        qt.y0(189, (bArr[i56] >> 1) & 1);
                        qt.y0(190, (bArr[i56] >> 0) & 1);
                        int i57 = i2 + 7;
                        qt.y0(191, (bArr[i57] >> 2) & 1);
                        qt.y0(192, (bArr[i57] >> 1) & 1);
                        qt.y0(193, (bArr[i57] >> 0) & 1);
                        qt.y0(194, (bArr[i2 + 8] >> 0) & 255);
                        qt.y0(195, (bArr[i2 + 9] >> 0) & 255);
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.M.j();
        w0.e.f17815a.d(this.f11002l);
        w0.e.f17819e.d(this.f11002l);
        u0.c.f17374a.d(this.f11002l);
        u0.c.f17393t.d(this.f11002l);
        u0.c.f17392s.d(this.f11002l);
        l0.b0.p0(this.f11002l);
        qt.q0(this.L);
        u0.c.f17388o.d(this.T);
        u0.c.f17389p.d(this.U);
        y0.g.f18094d.d(this.S);
        h0.d.f2464c.d(this.Y);
        h0.d.f2462a.d(this.Y);
        h0.d.f2465d.d(this.I);
        u0.c.f17386m.d(this.f11006p);
        l0.b0.p0(this.f11007q);
        Intent intent = new Intent("android.fyt.screenbutton.CanbusHide");
        intent.setPackage("com.fyt.screenbutton");
        App.c().startService(intent);
        u0.c.f17379f.d(this.f11004n);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 198) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "C_CHANGE_PANORAMA  ==== " + iArr[0]);
            if (u0.b.f17347o == 0) {
                z.k.s(227, 167, 1, 17);
                qt.a(1);
                this.C = 0;
                return;
            } else {
                if (nt.f8633a != 20) {
                    z.k.s(227, 167, 1, 16);
                    qt.a(0);
                }
                if (this.C == 1) {
                    z.k.s(227, 169, 2, 1, 0);
                    this.C = 0;
                    z.k.s(227, 167, 1, 17);
                } else {
                    z.k.s(227, 167, 1, 16);
                    qt.a(0);
                    this.C = 0;
                }
                this.D = false;
                return;
            }
        }
        if (i2 == 1005) {
            a.f.p().t(LogType.CANBUS, "C_CAMERA_MODE  ==== " + iArr[0]);
            if (iArr.length >= 1) {
                int i3 = iArr[0] & 255;
                if (i3 == 254) {
                    z.k.s(227, -87, 2, 1, 1);
                    return;
                } else if (i3 != 255) {
                    K3(iArr[0]);
                    return;
                } else {
                    z.k.s(227, -87, 2, 1, 0);
                    return;
                }
            }
            return;
        }
        if (i2 == 1029) {
            int i4 = nt.f8637c;
            if (i4 != 26 && i4 != 55) {
                int iW = (iArr[1] * 1280) / a.f.w();
                int i5 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, -87, 5, 0, (iW >> 8) & 255, (iW >> 0) & 255, (i5 >> 8) & 255, (i5 >> 0) & 255);
                    return;
                }
                return;
            }
            int iW2 = (iArr[1] * 1920) / a.f.w();
            int i6 = (iArr[2] * MediaProperties.HEIGHT_720) / a.f.i();
            if (iArr[0] == 1) {
                z.k.s(227, 161, 5, 0, (iW2 >> 8) & 255, iW2 & 255, (i6 >> 8) & 255, i6 & 255);
                return;
            } else {
                if (iArr[0] == 0) {
                    z.k.s(227, 161, 5, 1, (iW2 >> 8) & 255, iW2 & 255, (i6 >> 8) & 255, i6 & 255);
                    return;
                }
                return;
            }
        }
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length >= 2) {
                    int i7 = iArr[0];
                    if (i7 != 6) {
                        if (i7 != 8) {
                            switch (i7) {
                                case i.a.Theme_dialogTitleDecorLayout /* 253 */:
                                    z.k.s(227, 198, 2, -2, (byte) iArr[1]);
                                    break;
                                case 254:
                                    z.k.s(227, 198, 2, -1, (byte) iArr[1]);
                                    break;
                                case 255:
                                    M3(iArr[1]);
                                    break;
                                default:
                                    z.k.s(227, 198, 2, (byte) iArr[0], (byte) iArr[1]);
                                    a.i.a0(100L);
                                    z.k.s(227, -112, 2, 64, iArr[0]);
                                    break;
                            }
                        } else {
                            J3(iArr[1]);
                            break;
                        }
                    } else {
                        I3(iArr[1]);
                        break;
                    }
                }
                break;
            case 1:
                if (iArr != null) {
                    z.k.s(227, 168, 2, (byte) iArr[0], (byte) iArr[1]);
                }
                break;
            case 2:
                if (iArr != null) {
                    z.k.s(227, 199, 2, (byte) iArr[0], (byte) iArr[1]);
                }
                break;
            case 3:
                if (iArr != null) {
                    z.k.s(227, 144, 2, (byte) iArr[0], (byte) iArr[1]);
                }
                break;
            case 4:
                if (iArr != null) {
                    z.k.s(227, 169, 2, (byte) iArr[0], (byte) iArr[1]);
                }
                break;
            case 5:
                if (iArr != null) {
                    z.k.s(227, -87, 5, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4]);
                }
                break;
            case 6:
                if (iArr != null) {
                    L3(iArr[0]);
                }
                break;
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 168, 2, i2, 1);
        a.i.a0(100L);
        z.k.s(227, 168, 2, i2, 0);
    }

    public final int b3(int i2) {
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

    public final void c3(String str) {
        if (str == null) {
            str = "  ";
        }
        byte[] bytes = str.getBytes();
        int[] iArr = new int[(bytes.length & 255) + 4];
        iArr[0] = -29;
        iArr[1] = -54;
        iArr[2] = (byte) (bytes.length + 1);
        iArr[3] = 0;
        for (int i2 = 0; i2 < bytes.length; i2++) {
            iArr[4 + i2] = bytes[i2];
        }
        z.k.s(iArr);
    }

    public final void d3() {
        int i2 = this.f11016z;
        if (i2 > 0) {
            int[] iArr = Z;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = this.f11012v;
            z.k.s(227, 201, 6, this.B, this.F, i3 & 255, (i3 >> 8) & 255, (i3 >> 16) & 255, iArr[i2]);
        }
    }
}
