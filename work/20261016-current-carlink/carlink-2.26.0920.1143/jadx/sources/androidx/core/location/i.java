package androidx.core.location;

import android.location.GnssStatus;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f310b;
    public final /* synthetic */ Executor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f311d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f312e;

    public /* synthetic */ i(Object obj, Executor executor, Object obj2, int i2) {
        this.f310b = i2;
        this.f311d = obj;
        this.c = executor;
        this.f312e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f310b;
        Executor executor = this.c;
        Object obj = this.f312e;
        Object obj2 = this.f311d;
        switch (i2) {
            case 0:
                ((LocationManagerCompat.GpsStatusTransport) obj2).lambda$onGpsStatusChanged$3(executor, (GnssStatusCompat) obj);
                break;
            default:
                ((LocationManagerCompat.PreRGnssStatusTransport) obj2).lambda$onSatelliteStatusChanged$3(executor, (GnssStatus) obj);
                break;
        }
    }
}
