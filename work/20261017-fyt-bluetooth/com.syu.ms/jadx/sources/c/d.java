package c;

import android.os.Handler;
import android.os.SystemClock;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import o1.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f370b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SparseBooleanArray f372d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f369a = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray<a> f371c = new SparseArray<>();

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f373a;
    }

    public d() {
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f372d = sparseBooleanArray;
        sparseBooleanArray.append(0, true);
        this.f370b = m.a();
    }

    public boolean a(int i2, long j2) {
        int size = this.f372d.size();
        for (int i3 = 0; i3 <= size && i3 < 2; i3++) {
            int iKeyAt = this.f372d.keyAt(i3);
            int i4 = iKeyAt * 500;
            if (iKeyAt != 0 && j2 - ((long) i4) <= 500) {
                boolean zC = c(i2, iKeyAt);
                if (zC) {
                    this.f371c.delete(i2);
                }
                return zC;
            }
        }
        return false;
    }

    public abstract boolean b(int i2);

    public abstract boolean c(int i2, int i3);

    @Override // java.lang.Runnable
    public void run() {
        this.f370b.removeCallbacks(this);
        if (this.f371c.size() > 0) {
            this.f370b.postDelayed(this, 50L);
            int size = this.f371c.size();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            for (int i2 = 0; i2 < size; i2++) {
                if (a(this.f371c.keyAt(i2), jElapsedRealtime - this.f371c.valueAt(i2).f373a)) {
                    SparseArray<a> sparseArray = this.f371c;
                    sparseArray.remove(sparseArray.keyAt(i2));
                }
            }
        }
    }
}
