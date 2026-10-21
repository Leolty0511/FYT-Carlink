package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidXContinuationConsumer<T> extends AtomicBoolean implements Consumer<T> {
    private final u.c continuation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidXContinuationConsumer(u.c cVar) {
        super(false);
        t.b.h(cVar, "continuation");
        this.continuation = cVar;
    }

    @Override // androidx.core.util.Consumer
    public void accept(T t2) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.m64constructorimpl(t2));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationConsumer(resultAccepted = " + get() + ')';
    }
}
