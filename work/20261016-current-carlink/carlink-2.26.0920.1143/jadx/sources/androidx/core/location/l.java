package androidx.core.location;

import android.location.Location;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f316b;
    public final /* synthetic */ LocationManagerCompat.LocationListenerTransport c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f317d;

    public /* synthetic */ l(LocationManagerCompat.LocationListenerTransport locationListenerTransport, Object obj, int i2) {
        this.f316b = i2;
        this.c = locationListenerTransport;
        this.f317d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f316b;
        LocationManagerCompat.LocationListenerTransport locationListenerTransport = this.c;
        Object obj = this.f317d;
        switch (i2) {
            case 0:
                locationListenerTransport.lambda$onLocationChanged$1((List) obj);
                break;
            default:
                locationListenerTransport.lambda$onLocationChanged$0((Location) obj);
                break;
        }
    }
}
