package h0;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.lang.reflect.InvocationTargetException;
import kotlin.Result;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    private static volatile Choreographer choreographer;

    static {
        Object objM64constructorimpl;
        try {
            objM64constructorimpl = Result.m64constructorimpl(new a(a(Looper.getMainLooper())));
        } catch (Throwable th) {
            objM64constructorimpl = Result.m64constructorimpl(kotlin.a.b(th));
        }
        if (Result.m65isFailureimpl(objM64constructorimpl)) {
            objM64constructorimpl = null;
        }
    }

    public static final Handler a(Looper looper) throws IllegalAccessException, InvocationTargetException {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 16) {
            return new Handler(looper);
        }
        if (i2 < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        if (objInvoke != null) {
            return (Handler) objInvoke;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.os.Handler");
    }
}
