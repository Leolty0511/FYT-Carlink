package android.hardware.radio;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f85b;
    public final /* synthetic */ TunerCallbackAdapter c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f86d;

    public /* synthetic */ d(TunerCallbackAdapter tunerCallbackAdapter, boolean z2, int i2) {
        this.f85b = i2;
        this.c = tunerCallbackAdapter;
        this.f86d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f85b;
        boolean z2 = this.f86d;
        TunerCallbackAdapter tunerCallbackAdapter = this.c;
        switch (i2) {
            case 0:
                tunerCallbackAdapter.lambda$onEmergencyAnnouncement$4(z2);
                break;
            case 1:
                tunerCallbackAdapter.lambda$onBackgroundScanAvailabilityChange$6(z2);
                break;
            case 2:
                tunerCallbackAdapter.lambda$onTrafficAnnouncement$3(z2);
                break;
            default:
                tunerCallbackAdapter.lambda$onAntennaState$5(z2);
                break;
        }
    }
}
