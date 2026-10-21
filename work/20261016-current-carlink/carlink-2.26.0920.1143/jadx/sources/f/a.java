package f;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f807b;
    public final /* synthetic */ long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ k f808d;

    public a(k kVar, int i2, long j2) {
        this.f808d = kVar;
        this.f807b = i2;
        this.c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f808d.k(this.f807b, 1, SystemClock.uptimeMillis(), this.c);
    }
}
