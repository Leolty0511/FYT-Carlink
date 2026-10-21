package android.net.lowpan;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f105b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h(Object obj, int i2) {
        this.f105b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f105b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((LowpanScanner.Callback) obj).onScanFinished();
                break;
            case 1:
                ((LowpanScanner.Callback) obj).onScanFinished();
                break;
            default:
                ((LowpanCommissioningSession) obj).lambda$lockedCleanup$0();
                break;
        }
    }
}
