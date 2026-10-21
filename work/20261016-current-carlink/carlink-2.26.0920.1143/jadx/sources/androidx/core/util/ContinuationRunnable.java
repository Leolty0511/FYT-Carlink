package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;

/* JADX INFO: loaded from: classes2.dex */
final class ContinuationRunnable extends AtomicBoolean implements Runnable {
    private final u.c continuation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContinuationRunnable(u.c cVar) {
        super(false);
        t.b.h(cVar, "continuation");
        this.continuation = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.m64constructorimpl(s.c.f1105a));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationRunnable(ran = " + get() + ')';
    }
}
