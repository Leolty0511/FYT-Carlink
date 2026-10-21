package o1;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f16940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f16941b;

    public int a() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f16941b = jElapsedRealtime;
        return (int) (jElapsedRealtime - this.f16940a);
    }

    public void b() {
        this.f16940a = SystemClock.elapsedRealtime();
    }

    public boolean c(int i2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f16941b = jElapsedRealtime;
        if (jElapsedRealtime - this.f16940a < i2) {
            return false;
        }
        this.f16940a = jElapsedRealtime;
        return true;
    }
}
