package kotlinx.coroutines.android;

import android.os.Build;
import androidx.annotation.Keep;
import e.b;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import u.a;
import u.g;

/* JADX INFO: loaded from: classes4.dex */
@Keep
public final class AndroidExceptionPreHandler extends a implements g0.a {
    private volatile Object _preHandler;

    public AndroidExceptionPreHandler() {
        super(b.f752a);
        this._preHandler = this;
    }

    private final Method preHandler() {
        Object obj = this._preHandler;
        if (obj != this) {
            return (Method) obj;
        }
        Method method = null;
        try {
            boolean z2 = false;
            Method declaredMethod = Thread.class.getDeclaredMethod("getUncaughtExceptionPreHandler", new Class[0]);
            if (Modifier.isPublic(declaredMethod.getModifiers()) && Modifier.isStatic(declaredMethod.getModifiers())) {
                z2 = true;
            }
            if (z2) {
                method = declaredMethod;
            }
        } catch (Throwable unused) {
        }
        this._preHandler = method;
        return method;
    }

    @Override // g0.a
    public void handleException(g gVar, Throwable th) {
        int i2 = Build.VERSION.SDK_INT;
        if (26 <= i2 && i2 < 28) {
            Method methodPreHandler = preHandler();
            Object objInvoke = methodPreHandler == null ? null : methodPreHandler.invoke(null, new Object[0]);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = objInvoke instanceof Thread.UncaughtExceptionHandler ? (Thread.UncaughtExceptionHandler) objInvoke : null;
            if (uncaughtExceptionHandler == null) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
    }
}
