package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.a;
import t.b;
import u.c;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(31)
final class ContinuationOutcomeReceiver<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver<R, E> {
    private final c continuation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContinuationOutcomeReceiver(c cVar) {
        super(false);
        b.h(cVar, "continuation");
        this.continuation = cVar;
    }

    @Override // android.os.OutcomeReceiver
    public void onError(E e2) {
        b.h(e2, "error");
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.m64constructorimpl(a.b(e2)));
        }
    }

    @Override // android.os.OutcomeReceiver
    public void onResult(R r2) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.m64constructorimpl(r2));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
