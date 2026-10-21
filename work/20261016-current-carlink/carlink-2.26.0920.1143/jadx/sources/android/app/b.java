package android.app;

import android.content.res.Configuration;
import android.view.ViewRootImpl;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements ViewRootImpl.ActivityConfigCallback, Window.OnWindowSwipeDismissedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f12a;

    public /* synthetic */ b(Object obj) {
        this.f12a = obj;
    }

    @Override // android.view.ViewRootImpl.ActivityConfigCallback
    public final void onConfigurationChanged(Configuration configuration, int i2) {
        ((ActivityThread.ActivityClientRecord) this.f12a).lambda$new$0(configuration, i2);
    }

    @Override // android.view.Window.OnWindowSwipeDismissedCallback
    public final void onWindowSwipeDismissed() {
        ((Dialog) this.f12a).lambda$new$0();
    }
}
