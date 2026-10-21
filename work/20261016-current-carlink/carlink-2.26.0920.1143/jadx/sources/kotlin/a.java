package kotlin;

import kotlin.jvm.internal.d;
import t.b;
import w.c;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {
    public static final void a(Throwable th, Throwable th2) {
        b.h(th, "<this>");
        b.h(th2, "exception");
        if (th != th2) {
            c.f1117a.a(th, th2);
        }
    }

    public static final Result.Failure b(Throwable th) {
        b.h(th, "exception");
        return new Result.Failure(th);
    }

    public static final s.a c(z.a aVar) {
        b.h(aVar, "initializer");
        d dVar = null;
        return new SynchronizedLazyImpl(aVar, dVar, 2, dVar);
    }

    public static final void d(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }
}
