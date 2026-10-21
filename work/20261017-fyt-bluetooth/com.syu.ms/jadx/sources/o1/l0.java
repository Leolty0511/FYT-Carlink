package o1;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f16943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f16944b;

    public void a() {
        this.f16943a = SystemClock.elapsedRealtime();
    }

    public void b() {
        this.f16943a = 0L;
    }

    public boolean c(int i2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f16944b = jElapsedRealtime;
        return jElapsedRealtime - this.f16943a >= ((long) i2);
    }
}
