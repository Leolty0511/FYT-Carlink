package kotlinx.coroutines;

import java.io.Closeable;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f extends b implements Closeable {
    static {
        ExecutorCoroutineDispatcher$Key$1 executorCoroutineDispatcher$Key$1 = new l() { // from class: kotlinx.coroutines.ExecutorCoroutineDispatcher$Key$1
            @Override // z.l
            public final f invoke(u.e eVar) {
                if (eVar instanceof f) {
                    return (f) eVar;
                }
                return null;
            }
        };
        t.b.h(b.f1012b, "baseKey");
        t.b.h(executorCoroutineDispatcher$Key$1, "safeCast");
    }
}
