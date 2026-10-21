package c;

import android.os.SystemClock;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final LinkedList<Integer> f374g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static e f375h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f376a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SparseArray<List<d>> f377b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray<d> f378c = new SparseArray<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f379d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f380e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LinkedList<Object> f381f = new LinkedList<>();

    static {
        LinkedList<Integer> linkedList = new LinkedList<>();
        f374g = linkedList;
        linkedList.add(25);
        linkedList.add(24);
        linkedList.add(569);
        linkedList.add(570);
        linkedList.add(4);
        linkedList.add(3);
        f375h = new e();
    }

    public e() {
        g(new c());
    }

    public static e d() {
        return f375h;
    }

    public void a(int i2, d dVar) {
        if (dVar == null) {
            return;
        }
        synchronized (this.f377b) {
            List<d> list = this.f377b.get(i2, new ArrayList());
            if (!list.contains(dVar)) {
                list.add(dVar);
            }
            this.f377b.put(i2, list);
        }
    }

    public e b() {
        this.f380e = 0L;
        return this;
    }

    public boolean c(int i2) {
        if (!k(i2)) {
            return true;
        }
        boolean zE = e(this.f377b, i2);
        if (zE) {
            return zE;
        }
        d dVar = this.f376a;
        return dVar == null ? false : dVar.b(i2);
    }

    public final boolean e(SparseArray<List<d>> sparseArray, int i2) {
        boolean zB = false;
        if (sparseArray == null) {
            return false;
        }
        synchronized (sparseArray) {
            if (sparseArray.indexOfKey(i2) < 0) {
                return false;
            }
            Iterator<d> it = sparseArray.get(i2, new ArrayList()).iterator();
            while (it.hasNext() && !(zB = it.next().b(i2))) {
            }
            return zB;
        }
    }

    public void f(int i2, d dVar) {
        if (dVar == null) {
            return;
        }
        synchronized (this.f377b) {
            List<d> list = this.f377b.get(i2, null);
            if (list == null) {
                return;
            }
            if (list.contains(dVar)) {
                list.remove(dVar);
            }
        }
    }

    public void g(d dVar) {
        this.f376a = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0012 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:12:0x0014 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:6:0x0006, B:8:0x000c, B:13:0x0017, B:12:0x0014), top: B:17:0x0006 }] */
    public final void h(SparseArray<d> sparseArray, int i2, d dVar) {
        if (sparseArray == null) {
            return;
        }
        synchronized (sparseArray) {
            if (dVar == null) {
                try {
                    if (sparseArray.indexOfKey(i2) >= 0) {
                        sparseArray.remove(i2);
                    } else if (dVar != null) {
                        sparseArray.put(i2, dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else if (dVar != null) {
                sparseArray.put(i2, dVar);
            }
        }
    }

    public void i(int i2, d dVar) {
        a(i2, dVar);
    }

    public void j(int i2, d dVar) {
        h(this.f378c, i2, dVar);
    }

    public boolean k(int i2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i3 = this.f379d;
        long j2 = 500;
        if (!(i2 != i3) && f374g.contains(Integer.valueOf(i3))) {
            j2 = 150;
        }
        this.f379d = i2;
        boolean z2 = jElapsedRealtime - this.f380e >= j2;
        if (z2) {
            this.f380e = jElapsedRealtime;
        }
        return z2;
    }
}
