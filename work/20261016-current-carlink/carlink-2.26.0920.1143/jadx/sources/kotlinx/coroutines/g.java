package kotlinx.coroutines;

import g0.h;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends b {
    public static final /* synthetic */ int c = 0;

    static {
        new g();
    }

    @Override // kotlinx.coroutines.b
    public final void a(u.g gVar, Runnable runnable) {
        android.renderscript.a.h(gVar.get(h.f911b));
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // kotlinx.coroutines.b
    public final String toString() {
        return "Dispatchers.Unconfined";
    }
}
