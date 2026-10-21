package androidx.core.os;

import z.a;

/* JADX INFO: loaded from: classes2.dex */
public final class HandlerKt$postAtTime$runnable$1 implements Runnable {
    final /* synthetic */ a $action;

    public HandlerKt$postAtTime$runnable$1(a aVar) {
        this.$action = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$action.invoke();
    }
}
