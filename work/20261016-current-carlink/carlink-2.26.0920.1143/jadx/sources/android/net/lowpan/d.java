package android.net.lowpan;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f96b;
    public final /* synthetic */ LowpanInterface.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f97d;

    public /* synthetic */ d(LowpanInterface.Callback callback, String str, int i2) {
        this.f96b = i2;
        this.c = callback;
        this.f97d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f96b;
        String str = this.f97d;
        LowpanInterface.Callback callback = this.c;
        switch (i2) {
            case 0:
                callback.onRoleChanged(str);
                break;
            default:
                callback.onStateChanged(str);
                break;
        }
    }
}
