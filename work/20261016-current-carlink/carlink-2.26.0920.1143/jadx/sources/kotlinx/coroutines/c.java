package kotlinx.coroutines;

import e0.j;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f1013a;

    static {
        Iterator itF = android.renderscript.a.f();
        t.b.h(itF, "<this>");
        j jVar = new j(itF, 1);
        boolean z2 = jVar instanceof e0.a;
        e0.g aVar = jVar;
        if (!z2) {
            aVar = new e0.a(jVar);
        }
        f1013a = kotlin.sequences.b.I(aVar);
    }

    public static final void a(EmptyCoroutineContext emptyCoroutineContext, Throwable th) {
        Throwable runtimeException;
        Iterator it = f1013a.iterator();
        while (it.hasNext()) {
            try {
                ((g0.a) it.next()).handleException(emptyCoroutineContext, th);
            } catch (Throwable th2) {
                Thread threadCurrentThread = Thread.currentThread();
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadCurrentThread.getUncaughtExceptionHandler();
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    kotlin.a.a(runtimeException, th);
                }
                uncaughtExceptionHandler.uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        try {
            kotlin.a.a(th, new DiagnosticCoroutineContextException(emptyCoroutineContext));
            Result.m64constructorimpl(s.c.f1105a);
        } catch (Throwable th3) {
            Result.m64constructorimpl(kotlin.a.b(th3));
        }
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }
}
