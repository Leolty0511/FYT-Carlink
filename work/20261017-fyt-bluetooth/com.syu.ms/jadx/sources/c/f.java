package c;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static f f382d = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray<b> f383a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SparseArray<a> f384b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray<a> f385c = new SparseArray<>();

    public interface a {
        boolean a();
    }

    public interface b<T> {
        boolean a(T t2);
    }

    public static f b() {
        return f382d;
    }

    public <T> boolean a(int i2, T t2) {
        b bVar;
        if (this.f383a.indexOfKey(i2) >= 0 && (bVar = this.f383a.get(i2)) != null) {
            return bVar.a(t2);
        }
        return false;
    }

    public boolean c(int i2) {
        a aVar;
        if (this.f384b.indexOfKey(i2) >= 0 && (aVar = this.f384b.get(i2)) != null) {
            return aVar.a();
        }
        return false;
    }

    public boolean d(int i2) {
        return e(this.f385c, i2);
    }

    public final boolean e(SparseArray<a> sparseArray, int i2) {
        boolean zA = false;
        if (sparseArray == null) {
            return false;
        }
        synchronized (sparseArray) {
            if (sparseArray.indexOfKey(i2) < 0) {
                return false;
            }
            a aVar = sparseArray.get(i2);
            if (aVar != null) {
                zA = aVar.a();
            }
            return zA;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0012 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:12:0x0014 A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:6:0x0006, B:8:0x000c, B:13:0x0017, B:12:0x0014), top: B:17:0x0006 }] */
    public final void f(SparseArray<a> sparseArray, int i2, a aVar) {
        if (sparseArray == null) {
            return;
        }
        synchronized (sparseArray) {
            if (aVar == null) {
                try {
                    if (sparseArray.indexOfKey(i2) >= 0) {
                        sparseArray.remove(i2);
                    } else if (aVar != null) {
                        sparseArray.put(i2, aVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else if (aVar != null) {
                sparseArray.put(i2, aVar);
            }
        }
    }

    public void g(int i2, b bVar) {
        if (bVar == null && this.f383a.indexOfKey(i2) >= 0) {
            this.f383a.remove(i2);
        } else if (bVar != null) {
            this.f383a.put(i2, bVar);
        }
    }

    public void h(int i2, a aVar) {
        if (aVar == null && this.f384b.indexOfKey(i2) >= 0) {
            this.f384b.remove(i2);
        } else if (aVar != null) {
            this.f384b.put(i2, aVar);
        }
    }

    public void i(int i2, a aVar) {
        f(this.f385c, i2, aVar);
    }
}
