package d0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ConnectivityManager;
import android.os.IBinder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import o1.k;
import y.d;

/* JADX INFO: loaded from: classes.dex */
public class b implements ServiceConnection {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f1547f = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f1548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f1549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<d0.a> f1551d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f1552e = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f1548a != null) {
                b.this.f1550c = false;
                return;
            }
            Intent intent = new Intent("com.syu.ps.toolkit");
            intent.setPackage("com.syu.ps");
            b.this.f1549b.bindService(intent, b.f1547f, 1);
            k.a().postDelayed(this, new Random().nextInt(ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT) + 1000);
        }
    }

    /* JADX INFO: renamed from: d0.b$b, reason: collision with other inner class name */
    public class RunnableC0033b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public d0.a f1554a;

        public /* synthetic */ RunnableC0033b(b bVar, d0.a aVar, a aVar2) {
            this(aVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.a aVar;
            d dVar = b.this.f1548a;
            if (dVar == null || (aVar = this.f1554a) == null) {
                return;
            }
            aVar.O(dVar);
        }

        public RunnableC0033b(d0.a aVar) {
            this.f1554a = aVar;
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public d0.a f1556a;

        public /* synthetic */ c(b bVar, d0.a aVar, a aVar2) {
            this(aVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.a aVar = this.f1556a;
            if (aVar != null) {
                aVar.m1();
            }
        }

        public c(d0.a aVar) {
            this.f1556a = aVar;
        }
    }

    public static b h() {
        return f1547f;
    }

    public synchronized void e(d0.a aVar) {
        if (aVar != null) {
            if (!this.f1551d.contains(aVar)) {
                this.f1551d.add(aVar);
                if (this.f1548a != null) {
                    k.a().post(new RunnableC0033b(this, aVar, null));
                }
            }
        }
    }

    public void f(Context context) {
        g(context, 0L);
    }

    public final synchronized void g(Context context, long j2) {
        if (!this.f1550c && this.f1548a == null && context != null) {
            this.f1549b = context.getApplicationContext();
            this.f1550c = true;
            k.a().post(this.f1552e);
        }
    }

    public d i() {
        return this.f1548a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000c A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0008, B:7:0x000c), top: B:13:0x0003 }] */
    public synchronized void j(d0.a aVar) {
        if (aVar != null) {
            this.f1551d.remove(aVar);
            if (this.f1548a != null) {
                k.a().post(new c(this, aVar, null));
            }
        } else if (this.f1548a != null) {
            k.a().post(new c(this, aVar, null));
        }
        throw th;
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f1548a = d.a.J2(iBinder);
        Iterator<d0.a> it = this.f1551d.iterator();
        while (it.hasNext()) {
            k.a().post(new RunnableC0033b(this, it.next(), null));
        }
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceDisconnected(ComponentName componentName) {
        a aVar = null;
        this.f1548a = null;
        Iterator<d0.a> it = this.f1551d.iterator();
        while (it.hasNext()) {
            k.a().post(new c(this, it.next(), aVar));
        }
        if (this.f1551d.size() > 0) {
            g(this.f1549b, new Random().nextInt(ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT) + 1000);
        }
    }
}
