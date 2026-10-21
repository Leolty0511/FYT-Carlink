package android.app;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16b;
    public final /* synthetic */ Object c;

    public /* synthetic */ f(Object obj, int i2) {
        this.f16b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f16b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((EnterTransitionCoordinator) obj).lambda$sendSharedElementDestination$1();
                break;
            case 1:
                FragmentTransition.setViewVisibility((ArrayList) obj, 4);
                break;
            case 2:
                ((LoadedApk.ReceiverDispatcher.Args) obj).lambda$getRunnable$0();
                break;
            case 3:
                ((Dialog) obj).dismissDialog();
                break;
            default:
                ((Fragment) obj).callStartTransitionListener();
                break;
        }
    }
}
