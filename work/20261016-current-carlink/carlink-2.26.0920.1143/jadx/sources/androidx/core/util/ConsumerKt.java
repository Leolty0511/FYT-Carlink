package androidx.core.util;

import android.widget.d;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(24)
public final class ConsumerKt {
    @RequiresApi(24)
    public static final <T> java.util.function.Consumer<T> asConsumer(u.c cVar) {
        t.b.h(cVar, "<this>");
        return d.e(new ContinuationConsumer(cVar));
    }
}
