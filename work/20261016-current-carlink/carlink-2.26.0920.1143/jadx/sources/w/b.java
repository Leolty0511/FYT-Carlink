package w;

import a0.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    public void a(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        t.b.h(th, "cause");
        t.b.h(th2, "exception");
        Method method = a.f1116a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public d b() {
        return new a0.c();
    }
}
