package android.net.lowpan;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f92b;
    public final /* synthetic */ Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f93d;

    public /* synthetic */ a(Object obj, Object obj2, int i2) {
        this.f92b = i2;
        this.c = obj;
        this.f93d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f92b;
        Object obj = this.f93d;
        Object obj2 = this.c;
        switch (i2) {
            case 0:
                ((LowpanCommissioningSession.InternalCallback) obj2).lambda$onReceiveFromCommissioner$0((byte[]) obj);
                break;
            case 1:
                ((LowpanInterface.Callback) obj2).onLowpanIdentityChanged((LowpanIdentity) obj);
                break;
            default:
                ((LowpanScanner.Callback) obj2).onNetScanBeacon((LowpanBeaconInfo) obj);
                break;
        }
    }
}
