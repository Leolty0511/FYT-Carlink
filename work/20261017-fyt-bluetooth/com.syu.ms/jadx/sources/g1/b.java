package g1;

import a.i;
import android.source.Util;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f2387b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2388a;

    public b() {
        if (g.e.a() == 1) {
            this.f2388a = Util.openDev(14);
        }
        Thread thread = new Thread(this);
        thread.setName("BackCarMonitor");
        thread.start();
    }

    public static b a() {
        return f2387b;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            if (g.e.a() == 1) {
                if (Util.isEnteredCarback(this.f2388a)) {
                    u0.d.C(1);
                } else {
                    u0.d.C(0);
                }
            }
            i.a0(100L);
        }
    }
}
