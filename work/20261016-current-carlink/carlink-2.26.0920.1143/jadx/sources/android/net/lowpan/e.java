package android.net.lowpan;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f98b;
    public final /* synthetic */ LowpanInterface.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f99d;

    public /* synthetic */ e(LowpanInterface.Callback callback, boolean z2, int i2) {
        this.f98b = i2;
        this.c = callback;
        this.f99d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f98b;
        boolean z2 = this.f99d;
        LowpanInterface.Callback callback = this.c;
        switch (i2) {
            case 0:
                callback.onConnectedChanged(z2);
                break;
            case 1:
                callback.onEnabledChanged(z2);
                break;
            default:
                callback.onUpChanged(z2);
                break;
        }
    }
}
