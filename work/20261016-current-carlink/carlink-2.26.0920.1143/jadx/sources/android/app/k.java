package android.app;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40b;
    public final /* synthetic */ KeyguardManager.KeyguardDismissCallback c;

    public /* synthetic */ k(KeyguardManager.KeyguardDismissCallback keyguardDismissCallback, int i2) {
        this.f40b = i2;
        this.c = keyguardDismissCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40b;
        KeyguardManager.KeyguardDismissCallback keyguardDismissCallback = this.c;
        switch (i2) {
            case 0:
                keyguardDismissCallback.onDismissError();
                break;
            case 1:
                keyguardDismissCallback.onDismissCancelled();
                break;
            default:
                keyguardDismissCallback.onDismissSucceeded();
                break;
        }
    }
}
