package plugins;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import app.App;
import com.syu.jni.ToolsJni;
import java.util.HashMap;
import n0.g4;
import n0.j4;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class ZLink extends BroadcastReceiver implements o1.s {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static ZLink f17069u;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f17078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f17079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f17080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Handler f17081l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Looper f17082m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Runnable f17084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final c.d f17085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f17086q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Runnable f17087r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public o1.p f17088s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Runnable f17089t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f17070a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f17071b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17072c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f17073d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17074e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17075f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f17076g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17077h = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public HashMap<String, Runnable> f17083n = new HashMap<>();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y0.g.f18102l.c(new String[]{"com.zjinnova.zlink", "stop"});
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink = ZLink.this;
            if (zLink.f17075f) {
                return;
            }
            zLink.f17075f = true;
            if (zLink.f17071b) {
                zLink.b0(true);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink = ZLink.this;
            if (zLink.f17075f) {
                zLink.f17075f = false;
                zLink.b0(false);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink = ZLink.this;
            zLink.f17073d = true;
            if (zLink.f17076g && h0.c.f2423a == 1) {
                h0.c.f2425b.P(1);
            }
            if (!"carplay_wired".equals(ZLink.this.f17080k) && !"carplay_wireless".equals(ZLink.this.f17080k)) {
                "auto_wired".equals(ZLink.this.f17080k);
            }
            if (u0.b.D != 10) {
                u0.b.f17311c.c(10);
            }
            ZLink.this.f0();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink = ZLink.this;
            zLink.f17073d = false;
            if (zLink.f17076g && h0.c.f2423a == 1 && u0.b.f17320f == 1 && u0.b.f17306a0 == 1) {
                h0.c.f2425b.P(0);
            }
            ZLink.this.f0();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink.this.f17070a = true;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink = ZLink.this;
            if (zLink.f17070a) {
                zLink.f17070a = false;
            }
            if (zLink.f17071b) {
                zLink.f17071b = false;
                zLink.b0(zLink.f17075f);
            }
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.ZLINK, "HANDLE ==>> MAIN_PAGE_SHOW");
            if (g.f.r()) {
                return;
            }
            ZLink zLink = ZLink.this;
            if (!zLink.f17071b) {
                zLink.f17071b = true;
                if (!zLink.c0()) {
                    ZLink zLink2 = ZLink.this;
                    zLink2.b0(zLink2.f17075f);
                }
            }
            ZLink.this.f0();
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().t(LogType.ZLINK, "HANDLE ==>> MAIN_PAGE_HIDDEN");
            if (g.f.r()) {
                return;
            }
            ZLink zLink = ZLink.this;
            if (zLink.f17071b) {
                zLink.f17071b = false;
                if (!zLink.c0()) {
                    ZLink zLink2 = ZLink.this;
                    zLink2.b0(zLink2.f17075f);
                }
            }
            ZLink.this.f0();
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            ZLink.this.f17072c = true;
            if (y0.f.f18055i == 1) {
                y0.h.Z(0);
            }
            if (g.f.r()) {
                q1.a.f("/dev/zsender-fifo", "phone call on");
            }
        }
    }

    public class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17100a = -1;

        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.f17320f;
            int i3 = this.f17100a;
            if (i2 != i3) {
                this.f17100a = i2;
                if (i3 == 1 && i2 == 0) {
                    ZLink.this.h0("ACTION_EXIT");
                }
            }
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            ZLink.this.f17072c = false;
            if (g.f.r()) {
                q1.a.f("/dev/zsender-fifo", "phone call off");
            }
        }
    }

    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent("com.zjinnova.zlink");
            if (h0.c.E == 0) {
                intent.putExtra("command", "BT_DISCONNECTED");
            } else {
                intent.putExtra("command", "BT_CONNECTED");
            }
            App.c().sendBroadcast(intent);
        }
    }

    public class n extends c.d {
        public n() {
        }

        @Override // c.d
        public boolean b(int i2) {
            boolean z2 = false;
            int i3 = 6;
            if (i2 != 5) {
                if (i2 != 6) {
                    i3 = -1;
                } else if (ZLink.this.f17076g) {
                    z2 = true;
                } else {
                    h0.c.f2425b.h(1);
                    z2 = true;
                    i3 = -1;
                }
            } else if (ZLink.this.f17076g) {
                i3 = 5;
                z2 = true;
            } else {
                h0.c.f2425b.h(0);
                z2 = true;
                i3 = -1;
            }
            if (i3 > 0) {
                ZLink.this.i0(i3);
            }
            return z2;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink.this.b0(false);
        }
    }

    public class p implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f17106a = false;

        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17106a != ZLink.this.d0()) {
                this.f17106a = ZLink.this.d0();
            }
            n1.b bVarP = a.f.p();
            LogType logType = LogType.ZLINK;
            StringBuilder sb = new StringBuilder();
            sb.append("ZLINK CALL EVENT CHANGED seted:");
            sb.append(this.f17106a);
            sb.append("   event: ");
            sb.append(this.f17106a ? ZLink.this.f17085p : null);
            bVarP.t(logType, sb.toString());
            c.e.d().i(6, this.f17106a ? ZLink.this.f17085p : null);
            c.e.d().i(5, this.f17106a ? ZLink.this.f17085p : null);
        }
    }

    public class q implements o1.p {
        public q() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                if ("com.zjinnova.zlink".equals((String) obj)) {
                    a.f.p().t(LogType.ZLINK, "ZLINK IS KILLED Main Server Set HUB ENABLE 0");
                    ZLink zLink = ZLink.this;
                    Handler handler = zLink.f17081l;
                    if (handler != null) {
                        handler.post(zLink.f17086q);
                    }
                    ZLink zLink2 = ZLink.this;
                    if (zLink2.f17070a) {
                        zLink2.f17070a = false;
                    }
                    if (zLink2.f17071b) {
                        zLink2.f17071b = false;
                    }
                    zLink2.f17072c = false;
                }
            } catch (Exception unused) {
            }
        }
    }

    public class r implements Runnable {
        public r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink;
            Handler handler;
            if (u0.b.n4 == 1 || (handler = (zLink = ZLink.this).f17081l) == null) {
                return;
            }
            handler.post(zLink.f17086q);
        }
    }

    public class s implements Runnable {
        public s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink = ZLink.this;
            zLink.a0(zLink.f17078i);
        }
    }

    public class t implements Runnable {
        public t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ZLink zLink = ZLink.this;
            zLink.Z(zLink.f17079j);
        }
    }

    public class u implements Runnable {
        public u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ZLink.this.f17072c) {
                return;
            }
            y0.g.f18102l.c(new String[]{"com.zjinnova.zlink", "play"});
        }
    }

    public ZLink() {
        k kVar = new k();
        this.f17084o = kVar;
        this.f17085p = new n();
        this.f17086q = new o();
        this.f17087r = new p();
        this.f17088s = new q();
        r rVar = new r();
        this.f17089t = rVar;
        if (o1.u.k0(App.c(), "com.zjinnova.zlink")) {
            if (this.f17082m == null) {
                HandlerThread handlerThread = new HandlerThread("ZLink-handle");
                handlerThread.start();
                Looper looper = handlerThread.getLooper();
                this.f17082m = looper;
                this.f17081l = new Handler(looper);
            }
            e0();
            u0.c.f17381h.a(rVar, 1);
            u0.c.f17376c.a(kVar, 1);
        }
    }

    public static ZLink Y() {
        if (f17069u == null) {
            f17069u = new ZLink();
        }
        return f17069u;
    }

    @Override // o1.s
    public void R(boolean z2) {
        if (g.f.r()) {
            this.f17071b = z2;
            f0();
        }
    }

    public void X(Context context) {
        if (this.f17074e) {
            context.unregisterReceiver(this);
        }
    }

    public void Z(String str) {
        Runnable runnable;
        Handler handler;
        if (!this.f17083n.containsKey(str) || (runnable = this.f17083n.get(str)) == null || (handler = this.f17081l) == null) {
            return;
        }
        handler.post(runnable);
    }

    public void a0(String str) {
        Runnable runnable;
        Handler handler;
        if (!this.f17083n.containsKey(str) || (runnable = this.f17083n.get(str)) == null || (handler = this.f17081l) == null) {
            return;
        }
        handler.post(runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    public void b0(boolean z2) {
        ?? r8;
        if (this.f17077h || g.f.r()) {
            return;
        }
        if (u0.b.n4 != 1 && z2) {
            r8 = 0;
        }
        r8 = z2;
        r8 = z2;
        boolean z3 = ToolsJni.cmd_252_Normal_Io_Get(1) == 1;
        n1.b bVarP = a.f.p();
        LogType logType = LogType.ZLINK;
        bVarP.t(logType, " Set HUB ENABLE to state: " + z3 + " otg: " + ((boolean) r8));
        if (z3 == r8) {
            return;
        }
        a.f.p().t(logType, " Set HUB ENABLE to state == " + ((boolean) r8));
        ToolsJni.cmd_251_Normal_Io_Set(4, 1);
        a.i.a0(500L);
        ToolsJni.cmd_251_Normal_Io_Set(1, r8);
        a.i.a0(100L);
        ToolsJni.cmd_251_Normal_Io_Set(4, 0);
    }

    public boolean c0() {
        return g.f.c(9) && (j4.f16466d instanceof g4);
    }

    public boolean d0() {
        return this.f17073d && this.f17071b;
    }

    public void e0() {
        this.f17083n.put("MAIN_AUDIO_START", new u());
        this.f17083n.put("MAIN_AUDIO_STOP", new a());
        this.f17083n.put("SWITCHOTG", new b());
        this.f17083n.put("SWITCHHUB", new c());
        this.f17083n.put("CONNECTED", new d());
        this.f17083n.put("DISCONNECT", new e());
        this.f17083n.put("ENTER", new f());
        this.f17083n.put("EXIT", new g());
        this.f17083n.put("MAIN_PAGE_SHOW", new h());
        this.f17083n.put("MAIN_PAGE_HIDDEN", new i());
        this.f17083n.put("PHONE_CALL_ON", new j());
        this.f17083n.put("PHONE_CALL_OFF", new l());
        this.f17083n.put("REQ_OS_BT_STATUS", new m());
    }

    public void f0() {
        Handler handler = this.f17081l;
        if (handler != null) {
            handler.removeCallbacks(this.f17087r);
            this.f17081l.postDelayed(this.f17087r, 100L);
        }
    }

    public void g0(Context context) {
        context.registerReceiver(this, new IntentFilter("com.zjinnova.zlink"));
        a.b.f13d.a("com.zjinnova.zlink", this);
        this.f17074e = true;
    }

    public void h0(String str) {
        Intent intent = new Intent("com.zjinnova.zlink");
        intent.setPackage("com.zjinnova.zlink");
        intent.setFlags(32);
        intent.putExtra("command", str);
        Log.e("zlink", "============>>> sendCommand command: " + str);
        App.c().sendBroadcast(intent);
    }

    public void i0(int i2) {
        Intent intent = new Intent("com.zjinnova.zlink");
        intent.putExtra("command", "REQ_SPEC_FUNC_CMD");
        intent.putExtra("specFuncCode", i2);
        intent.setPackage("com.zjinnova.zlink");
        intent.setFlags(32);
        Log.e("zlink", "============>>> sendKeyEvent keyCode: " + i2);
        a.f.p().t(LogType.ZLINK, "HANDLE ==>> CALL EVENT CODE : " + i2);
        App.c().sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f17078i = intent.getStringExtra("status");
        this.f17079j = intent.getStringExtra("command");
        if ("CONNECTED".equals(this.f17078i) || "DISCONNECT".equals(this.f17078i)) {
            String stringExtra = intent.getStringExtra("phoneMode");
            this.f17080k = stringExtra;
            this.f17076g = "carplay_wired".equals(stringExtra) || "carplay_wireless".equals(this.f17080k);
        }
        Log.e("zlink", "------------  onReceive : status = " + this.f17078i + " command = " + this.f17079j + " phoneMode: " + this.f17080k + " isIphone: " + this.f17076g);
        a.f.p().t(LogType.ZLINK, "ZLINK status:" + this.f17078i + " command:" + this.f17079j + " phoneMode:" + this.f17080k);
        String str = this.f17078i;
        if (str != null && !str.isEmpty()) {
            this.f17081l.post(new s());
        }
        String str2 = this.f17079j;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        this.f17081l.post(new t());
    }
}
