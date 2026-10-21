package o1;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<Runnable> f17016a = new ArrayList<>();

    public void a(Runnable runnable, int i2) {
        synchronized (this.f17016a) {
            try {
                if (runnable == null) {
                    return;
                }
                if (this.f17016a == null) {
                    this.f17016a = new ArrayList<>();
                }
                if (!this.f17016a.contains(runnable)) {
                    this.f17016a.add(runnable);
                }
                if (i2 == 1) {
                    runnable.run();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b() {
        synchronized (this.f17016a) {
            this.f17016a.clear();
        }
    }

    public void c() {
        synchronized (this.f17016a) {
            Iterator it = new ArrayList(this.f17016a).iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
    }

    public void d(Runnable runnable) {
        synchronized (this.f17016a) {
            try {
                if (runnable == null) {
                    return;
                }
                ArrayList<Runnable> arrayList = this.f17016a;
                if (arrayList != null) {
                    arrayList.remove(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
