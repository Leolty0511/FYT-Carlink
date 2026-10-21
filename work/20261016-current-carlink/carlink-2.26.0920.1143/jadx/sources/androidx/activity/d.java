package androidx.activity;

import android.window.OnBackInvokedCallback;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements OnBackInvokedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f268a;

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        this.f268a.run();
    }
}
