package androidx.core.util;

/* JADX INFO: loaded from: classes2.dex */
public final class RunnableKt {
    public static final Runnable asRunnable(u.c cVar) {
        t.b.h(cVar, "<this>");
        return new ContinuationRunnable(cVar);
    }
}
