package android.app;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17b;
    public final /* synthetic */ EnterTransitionCoordinator.AnonymousClass3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bundle f18d;

    public /* synthetic */ g(EnterTransitionCoordinator.AnonymousClass3 anonymousClass3, Bundle bundle, int i2) {
        this.f17b = i2;
        this.c = anonymousClass3;
        this.f18d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17b;
        Bundle bundle = this.f18d;
        EnterTransitionCoordinator.AnonymousClass3 anonymousClass3 = this.c;
        switch (i2) {
            case 0:
                anonymousClass3.lambda$onSharedElementsReady$1(bundle);
                break;
            default:
                anonymousClass3.lambda$null$0(bundle);
                break;
        }
    }
}
