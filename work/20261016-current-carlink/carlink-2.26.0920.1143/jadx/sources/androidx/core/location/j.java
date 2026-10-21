package androidx.core.location;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f313b;
    public final /* synthetic */ LocationManagerCompat.LocationListenerTransport c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f314d;

    public /* synthetic */ j(LocationManagerCompat.LocationListenerTransport locationListenerTransport, String str, int i2) {
        this.f313b = i2;
        this.c = locationListenerTransport;
        this.f314d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f313b;
        String str = this.f314d;
        LocationManagerCompat.LocationListenerTransport locationListenerTransport = this.c;
        switch (i2) {
            case 0:
                locationListenerTransport.lambda$onProviderEnabled$4(str);
                break;
            default:
                locationListenerTransport.lambda$onProviderDisabled$5(str);
                break;
        }
    }
}
