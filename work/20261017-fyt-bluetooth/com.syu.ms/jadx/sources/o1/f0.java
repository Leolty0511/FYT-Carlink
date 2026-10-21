package o1;

import android.util.Log;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes2.dex */
public class f0 extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e0 f16853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public q f16854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16855c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16856d;

    public void a(boolean z2) {
        this.f16856d = z2;
        if (z2) {
            return;
        }
        synchronized (this) {
            notify();
        }
    }

    public synchronized void b() {
        this.f16855c = false;
        notify();
    }

    public synchronized void c() {
        this.f16853a = null;
        this.f16854b = null;
    }

    public synchronized void d(e0 e0Var, q qVar) {
        this.f16853a = e0Var;
        this.f16854b = qVar;
        start();
        notify();
    }

    public synchronized void e(q qVar) {
        this.f16854b = qVar;
        start();
        notify();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.f16855c) {
            e0 e0Var = this.f16853a;
            q qVar = this.f16854b;
            if (e0Var == null || qVar == null || this.f16856d) {
                synchronized (this) {
                    try {
                        try {
                            wait();
                        } catch (Exception e2) {
                            Log.e("Serial", "Exception : " + e2.getClass().getSimpleName());
                        }
                    } catch (InterruptedException unused) {
                        Log.e("Serial", "InterruptedException");
                    }
                }
            } else {
                if (e0Var.b()) {
                    Log.e("Serial", "perform read !!");
                }
                byte[] bArrD = e0Var.d();
                if (e0Var.b()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(" received data : ");
                    sb.append((bArrD == null || bArrD.length <= 0) ? "empty!!" : new String(bArrD, StandardCharsets.UTF_8));
                    Log.e("Serial", sb.toString());
                }
                qVar.b(bArrD);
            }
        }
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        if (!isAlive() && this.f16853a != null && this.f16854b != null) {
            super.start();
        }
    }
}
