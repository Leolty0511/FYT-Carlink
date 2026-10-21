package android.hardware.camera2.dispatch;

import android.accessibilityservice.c;
import android.hardware.camera2.utils.UncheckedThrow;
import com.android.internal.util.Preconditions;
import java.lang.reflect.Method;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MethodNameInvoker<T> {
    private final ConcurrentHashMap<String, Method> mMethods = new ConcurrentHashMap<>();
    private final Dispatchable<T> mTarget;
    private final Class<T> mTargetClass;
    private final Method[] mTargetClassMethods;

    public MethodNameInvoker(Dispatchable<T> dispatchable, Class<T> cls) {
        this.mTargetClass = cls;
        this.mTargetClassMethods = cls.getMethods();
        this.mTarget = dispatchable;
    }

    public <K> K invoke(String str, Object... objArr) throws Throwable {
        Preconditions.checkNotNull(str, "methodName must not be null");
        Method method = this.mMethods.get(str);
        if (method == null) {
            for (Method method2 : this.mTargetClassMethods) {
                if (method2.getName().equals(str) && objArr.length == method2.getParameterTypes().length) {
                    this.mMethods.put(str, method2);
                    method = method2;
                    break;
                }
            }
            if (method == null) {
                StringBuilder sbV = c.v("Method ", str, " does not exist on class ");
                sbV.append(this.mTargetClass);
                throw new IllegalArgumentException(sbV.toString());
            }
        }
        try {
            return (K) this.mTarget.dispatch(method, objArr);
        } catch (Throwable th) {
            UncheckedThrow.throwAnyException(th);
            return null;
        }
    }
}
