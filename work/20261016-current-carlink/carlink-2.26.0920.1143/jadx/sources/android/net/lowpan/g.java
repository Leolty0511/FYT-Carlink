package android.net.lowpan;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f102b;
    public final /* synthetic */ LowpanManager.AnonymousClass2 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ILowpanInterface f103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LowpanManager.Callback f104e;

    public /* synthetic */ g(LowpanManager.AnonymousClass2 anonymousClass2, ILowpanInterface iLowpanInterface, LowpanManager.Callback callback, int i2) {
        this.f102b = i2;
        this.c = anonymousClass2;
        this.f103d = iLowpanInterface;
        this.f104e = callback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f102b;
        LowpanManager.AnonymousClass2 anonymousClass2 = this.c;
        LowpanManager.Callback callback = this.f104e;
        ILowpanInterface iLowpanInterface = this.f103d;
        switch (i2) {
            case 0:
                anonymousClass2.lambda$onInterfaceAdded$0(iLowpanInterface, callback);
                break;
            default:
                anonymousClass2.lambda$onInterfaceRemoved$1(iLowpanInterface, callback);
                break;
        }
    }
}
