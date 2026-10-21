package android.companion;

import android.app.PendingIntent;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f54b;
    public final /* synthetic */ CompanionDeviceManager.CallbackProxy c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f55d;

    public /* synthetic */ a(CompanionDeviceManager.CallbackProxy callbackProxy, Object obj, int i2) {
        this.f54b = i2;
        this.c = callbackProxy;
        this.f55d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f54b;
        CompanionDeviceManager.CallbackProxy callbackProxy = this.c;
        Object obj = this.f55d;
        switch (i2) {
            case 0:
                callbackProxy.lambda$onSuccess$0((PendingIntent) obj);
                break;
            default:
                callbackProxy.lambda$onFailure$1((CharSequence) obj);
                break;
        }
    }
}
