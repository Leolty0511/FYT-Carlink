package x;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes4.dex */
public class b extends w.b {
    @Override // w.b
    public final void a(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        t.b.h(th, "cause");
        t.b.h(th2, "exception");
        Integer num = a.f1118a;
        if (num == null || num.intValue() >= 19) {
            th.addSuppressed(th2);
        } else {
            super.a(th, th2);
        }
    }
}
