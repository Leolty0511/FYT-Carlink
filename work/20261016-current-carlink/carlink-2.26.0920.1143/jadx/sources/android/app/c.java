package android.app;

import android.util.ArrayMap;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13b;
    public final /* synthetic */ Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f14d;

    public /* synthetic */ c(Object obj, Object obj2, int i2) {
        this.f13b = i2;
        this.c = obj;
        this.f14d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f13b;
        Object obj = this.f14d;
        Object obj2 = this.c;
        switch (i2) {
            case 0:
                ((ActivityTransitionCoordinator) obj2).lambda$scheduleSetSharedElementEnd$0((ArrayList) obj);
                break;
            case 1:
                ((ActivityTransitionState) obj2).lambda$startExitBackTransition$0((Activity) obj);
                break;
            case 2:
                ((EnterTransitionCoordinator) obj2).lambda$triggerViewsReady$0((ArrayMap) obj);
                break;
            default:
                ((ExitTransitionCoordinator) obj2).lambda$startSharedElementExit$0((ArrayList) obj);
                break;
        }
    }
}
