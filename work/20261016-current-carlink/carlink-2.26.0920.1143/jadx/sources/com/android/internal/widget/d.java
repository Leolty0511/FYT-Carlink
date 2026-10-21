package com.android.internal.widget;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f378b;
    public final /* synthetic */ Object c;

    public /* synthetic */ d(Object obj, int i2) {
        this.f378b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f378b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((FloatingToolbar.FloatingToolbarPopup.AnonymousClass13) obj).lambda$onAnimationEnd$0();
                break;
            case 1:
                ((SwipeDismissLayout.AnonymousClass1) obj).lambda$onReceive$0();
                break;
            default:
                ((LockPatternUtils.CheckCredentialProgressCallback) obj).onEarlyMatched();
                break;
        }
    }
}
