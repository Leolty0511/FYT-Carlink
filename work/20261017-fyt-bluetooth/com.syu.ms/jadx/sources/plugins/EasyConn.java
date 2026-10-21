package plugins;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import app.App;
import e.e;
import o1.p;
import o1.s0;
import o1.u;
import y0.j;

/* JADX INFO: loaded from: classes2.dex */
public class EasyConn extends BroadcastReceiver {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static EasyConn f17052i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f17053a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f17054b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17055c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f17056d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17057e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f17058f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f17059g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p f17060h = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D != 3) {
                EasyConn easyConn = EasyConn.this;
                if (!easyConn.f17054b || easyConn.f17057e) {
                    return;
                }
                easyConn.f17054b = false;
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17347o != 0) {
                EasyConn.this.c0("net.easyconn.BACKING_UP_START");
            } else {
                EasyConn.this.c0("net.easyconn.BACKING_UP_STOP");
            }
        }
    }

    public class c implements p {
        public c() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                if (s0.j((String) obj, "net.easyconn")) {
                    EasyConn easyConn = EasyConn.this;
                    easyConn.f17055c = false;
                    easyConn.e0(false);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            EasyConn.this.c0("net.easyconn.connect.checkstatus");
            EasyConn.this.c0("net.easyconn.link.checkstatus");
        }
    }

    public static EasyConn Z() {
        if (f17052i == null) {
            f17052i = new EasyConn();
        }
        return f17052i;
    }

    public final void a0(Intent intent) {
        String stringExtra = intent.getStringExtra("phoneNum");
        intent.getStringExtra("phoneName");
        intent.getStringExtra("bluetoothName");
        if (h0.c.f2425b == null || s0.t(stringExtra)) {
            return;
        }
        h0.c.f2425b.c(stringExtra);
    }

    public void b0(Context context) {
        u0.c.f17374a.a(this.f17058f, 1);
        u0.c.f17379f.a(this.f17059g, 1);
        e.f1625c.a(this.f17060h);
        IntentFilter intentFilter = new IntentFilter("net.easyconn.app.open");
        intentFilter.addAction("net.easyconn.app.quit");
        intentFilter.addAction("net.easyconn.link.in");
        intentFilter.addAction("net.easyconn.link.out");
        intentFilter.addAction("net.easyconn.app.resume");
        intentFilter.addAction("net.easyconn.app.pause");
        intentFilter.addAction("net.easyconn.bt.checkstatus");
        intentFilter.addAction("net.easyconn.a2dp.acquire");
        intentFilter.addAction("net.easyconn.a2dp.release");
        intentFilter.addAction("net.easyconn.mirror.in");
        intentFilter.addAction("net.easyconn.mirror.out");
        intentFilter.addAction("net.easyconn.iphone.resume");
        intentFilter.addAction("net.easyconn.iphone.pause");
        intentFilter.addAction("net.easyconn.bluetooth.call");
        intentFilter.addAction("net.easyconn.bt.setting");
        context.registerReceiver(this, intentFilter);
        this.f17056d = true;
        j.a3().l3("net.easyconn");
        o1.j.c(new d(), 1000L);
    }

    public final void c0(String str) {
        Log.e("EasyConn-", " send action : " + str);
        Intent intent = new Intent(str);
        intent.setPackage("net.easyconn");
        App.c().sendBroadcast(intent);
    }

    public void d0(boolean z2) {
        this.f17053a = z2;
    }

    public final void e0(boolean z2) {
        if (this.f17054b == z2) {
            return;
        }
        this.f17054b = z2;
        if (z2 && u0.b.D != 3) {
            u0.b.f17311c.c(3);
        } else {
            if (z2 || u0.b.D != 3) {
                return;
            }
            u0.b.f17311c.c(-1);
        }
    }

    public final void f0() {
        if (h0.c.E == 2) {
            c0("net.easyconn.bt.connected");
        } else {
            c0("net.easyconn.bt.opened");
        }
    }

    public final void g0() {
        if (this.f17053a || !this.f17055c || this.f17054b || u0.b.D == 10 || !f.b.f1841d.f1844c.h()) {
            return;
        }
        u0.b.f17311c.c(10);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.e("EasyConn-", "action: " + action + " intent: " + intent);
        action.hashCode();
        switch (action) {
            case "net.easyconn.app.pause":
                this.f17057e = false;
                break;
            case "net.easyconn.bt.checkstatus":
                f0();
                break;
            case "net.easyconn.a2dp.release":
                e0(false);
                break;
            case "net.easyconn.bt.setting":
                Intent intent2 = new Intent("com.syu.bt.act.ActBtPairDevices");
                intent2.setPackage("com.syu.bt");
                u.e(intent2);
                break;
            case "net.easyconn.app.quit":
            case "net.easyconn.link.out":
                this.f17055c = false;
                e0(false);
                break;
            case "net.easyconn.app.resume":
                this.f17057e = true;
                if (h0.c.N == 1 && this.f17054b) {
                    e0(true);
                    break;
                }
                break;
            case "net.easyconn.a2dp.acquire":
                e0(true);
                break;
            case "net.easyconn.iphone.resume":
                g0();
                break;
            case "net.easyconn.link.in":
                this.f17055c = true;
                break;
            case "net.easyconn.bluetooth.call":
                a0(intent);
                break;
        }
    }
}
