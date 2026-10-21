package android.hardware.camera2.utils;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes.dex */
public class Decorator<T> implements InvocationHandler {
    private final DecoratorListener mListener;
    private final T mObject;

    public interface DecoratorListener {
        void onAfterInvocation(Method method, Object[] objArr, Object obj);

        void onBeforeInvocation(Method method, Object[] objArr);

        boolean onCatchException(Method method, Object[] objArr, Throwable th);

        void onFinally(Method method, Object[] objArr);
    }

    private Decorator(T t2, DecoratorListener decoratorListener) {
        this.mObject = t2;
        this.mListener = decoratorListener;
    }

    public static <T> T newInstance(T t2, DecoratorListener decoratorListener) {
        return (T) Proxy.newProxyInstance(t2.getClass().getClassLoader(), t2.getClass().getInterfaces(), new Decorator(t2, decoratorListener));
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        Object objInvoke = null;
        try {
            try {
                this.mListener.onBeforeInvocation(method, objArr);
                objInvoke = method.invoke(this.mObject, objArr);
                this.mListener.onAfterInvocation(method, objArr, objInvoke);
            } catch (InvocationTargetException e2) {
                Throwable targetException = e2.getTargetException();
                if (!this.mListener.onCatchException(method, objArr, targetException)) {
                    throw targetException;
                }
            }
            this.mListener.onFinally(method, objArr);
            return objInvoke;
        } catch (Throwable th) {
            this.mListener.onFinally(method, objArr);
            throw th;
        }
    }
}
