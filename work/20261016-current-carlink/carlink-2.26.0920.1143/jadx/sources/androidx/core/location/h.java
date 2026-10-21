package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f307b;
    public final /* synthetic */ Executor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f309e;

    public /* synthetic */ h(Object obj, Executor executor, int i2, int i3) {
        this.f307b = i3;
        this.f309e = obj;
        this.c = executor;
        this.f308d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f307b;
        int i3 = this.f308d;
        Executor executor = this.c;
        Object obj = this.f309e;
        switch (i2) {
            case 0:
                ((LocationManagerCompat.GpsStatusTransport) obj).lambda$onGpsStatusChanged$2(executor, i3);
                break;
            default:
                ((LocationManagerCompat.PreRGnssStatusTransport) obj).lambda$onFirstFix$2(executor, i3);
                break;
        }
    }
}
