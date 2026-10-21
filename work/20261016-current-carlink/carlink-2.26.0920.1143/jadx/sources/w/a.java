package w;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Method f1116a;

    /* JADX WARN: Code duplicated, block: B:13:0x0035  */
    static {
        Method method;
        boolean z2;
        Method[] methods = Throwable.class.getMethods();
        t.b.g(methods, "throwableMethods");
        int length = methods.length;
        int i2 = 0;
        while (true) {
            method = null;
            if (i2 >= length) {
                break;
            }
            Method method2 = methods[i2];
            if (t.b.a(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                t.b.g(parameterTypes, "it.parameterTypes");
                z2 = t.b.a(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class);
            }
            if (z2) {
                method = method2;
                break;
            }
            i2++;
        }
        f1116a = method;
        int length2 = methods.length;
        for (int i3 = 0; i3 < length2 && !t.b.a(methods[i3].getName(), "getSuppressed"); i3++) {
        }
    }
}
