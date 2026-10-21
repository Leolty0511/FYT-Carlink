package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import androidx.core.location.o;
import t.b;
import u.c;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(31)
public final class OutcomeReceiverKt {
    @RequiresApi(31)
    public static final <R, E extends Throwable> OutcomeReceiver<R, E> asOutcomeReceiver(c cVar) {
        b.h(cVar, "<this>");
        return o.j(new ContinuationOutcomeReceiver(cVar));
    }
}
