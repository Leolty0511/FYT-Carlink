package android.app;

import android.os.Binder;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f44b;
    public final /* synthetic */ boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Binder f45d;

    public /* synthetic */ p(Binder binder, boolean z2, int i2) {
        this.f44b = i2;
        this.f45d = binder;
        this.c = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f44b;
        boolean z2 = this.c;
        Binder binder = this.f45d;
        switch (i2) {
            case 0:
                ((VrManager.CallbackEntry.AnonymousClass1) binder).lambda$onVrStateChanged$0(z2);
                break;
            default:
                ((VrManager.CallbackEntry.AnonymousClass2) binder).lambda$onPersistentVrStateChanged$0(z2);
                break;
        }
    }
}
