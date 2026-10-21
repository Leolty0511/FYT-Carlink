package f;

import android.util.Log;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.ListenableScheduledFuture;
import com.google.common.util.concurrent.ListeningScheduledExecutorService;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements FutureCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f819a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f820b;
    public final Object c;

    public f(Method method, Method method2, Method method3) {
        this.f819a = method;
        this.f820b = method2;
        this.c = method3;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        Log.e("Auto", "Failed to open wifi ap ", th);
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        Log.i("Auto", "----------------------->>>>  wifi ap opened ");
        k kVar = (k) this.c;
        kVar.f837o = false;
        ListenableScheduledFuture listenableScheduledFuture = kVar.f846x;
        if (listenableScheduledFuture != null) {
            listenableScheduledFuture.cancel(true);
        }
        kVar.f846x = ((ListeningScheduledExecutorService) this.f819a).schedule((Runnable) this.f820b, 1000L, TimeUnit.MILLISECONDS);
    }

    public f(k kVar, ListeningScheduledExecutorService listeningScheduledExecutorService, j jVar) {
        this.c = kVar;
        this.f819a = listeningScheduledExecutorService;
        this.f820b = jVar;
    }
}
