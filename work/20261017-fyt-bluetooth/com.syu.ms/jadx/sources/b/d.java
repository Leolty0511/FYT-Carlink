package b;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ProxyProperties;
import android.os.IBinder;
import android.util.Log;
import app.App;
import java.util.HashMap;
import o1.l;
import o1.s0;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class d implements ServiceConnection {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static HashMap<String, d> f270i = new HashMap<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f271j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f272k = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f275c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f279g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f273a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f276d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f277e = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Runnable f280h = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.a().removeCallbacks(this);
            d dVar = d.this;
            if (!dVar.f277e || dVar.f276d) {
                return;
            }
            if (u0.b.f17306a0 == 1) {
                dVar.b();
            }
            l.a().postDelayed(this, 1000L);
        }
    }

    public d(String str, String str2, long j2) {
        this.f274b = ProxyProperties.LOCAL_EXCL_LIST;
        this.f275c = ProxyProperties.LOCAL_EXCL_LIST;
        this.f278f = 0L;
        this.f279g = 0;
        this.f274b = str;
        this.f275c = str2;
        this.f278f = j2;
        int i2 = f271j;
        int i3 = f272k;
        this.f279g = i2 - i3;
        if (j2 > 0) {
            f272k = i3 + 1;
        }
        f271j = i2 + 1;
        Log.e("Keeper", "ServiceKeeper pkg: " + str + " action: " + str2 + " ServiceKeeper Cnt:" + f271j);
    }

    public static boolean d(boolean z2, String str, String str2) {
        return e(z2, str, str2, 0L);
    }

    public static boolean e(boolean z2, String str, String str2, long j2) {
        if (s0.t(str) || s0.t(str2) || !u.k0(App.c(), str)) {
            return false;
        }
        d dVar = null;
        if (z2 && !f270i.containsKey(str)) {
            dVar = new d(str, str2, j2);
        } else if (!z2 && f270i.containsKey(str)) {
            dVar = f270i.get(str);
        }
        if (dVar != null) {
            dVar.c(z2);
        }
        return f270i.containsKey(str);
    }

    public final void b() {
        int i2 = this.f273a;
        if (i2 >= 6) {
            return;
        }
        this.f273a = i2 + 1;
        Log.e("Keeper", "ServiceKeeper pkg: " + this.f274b + " action: " + this.f275c + "  START BIND");
        Intent intent = new Intent(this.f275c);
        intent.setPackage(this.f274b);
        App.c().bindService(intent, this, 1);
    }

    public void c(boolean z2) {
        this.f277e = z2;
        if (!z2 || this.f276d) {
            if (z2 || !this.f276d) {
                return;
            }
            f();
            return;
        }
        this.f273a = 0;
        Log.e("Keeper", "ServiceKeeper pkg: " + this.f274b + " action: " + this.f275c + " keep Start!!");
        l lVarA = l.a();
        Runnable runnable = this.f280h;
        long j2 = this.f278f;
        if (j2 <= 0) {
            j2 = ((long) this.f279g) * 300;
        }
        lVarA.postDelayed(runnable, j2);
    }

    public final void f() {
        App.c().unbindService(this);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f276d = true;
        Log.e("Keeper", "ServiceKeeper pkg: " + this.f274b + " action: " + this.f275c + "  onServiceConnected!!");
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        Log.e("Keeper", "ServiceKeeper pkg: " + this.f274b + " action: " + this.f275c + "  onServiceDisconnected!!");
        this.f276d = false;
        if (this.f277e) {
            l.a().removeCallbacks(this.f280h);
            l.a().postDelayed(this.f280h, 1500L);
        }
    }
}
