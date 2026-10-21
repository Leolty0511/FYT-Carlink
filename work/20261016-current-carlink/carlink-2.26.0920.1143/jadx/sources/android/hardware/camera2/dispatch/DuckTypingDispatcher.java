package android.hardware.camera2.dispatch;

import com.android.internal.util.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class DuckTypingDispatcher<TFrom, T> implements Dispatchable<TFrom> {
    private final MethodNameInvoker<T> mDuck;

    public DuckTypingDispatcher(Dispatchable<T> dispatchable, Class<T> cls) {
        Preconditions.checkNotNull(cls, "targetClass must not be null");
        Preconditions.checkNotNull(dispatchable, "target must not be null");
        this.mDuck = new MethodNameInvoker<>(dispatchable, cls);
    }

    @Override // android.hardware.camera2.dispatch.Dispatchable
    public Object dispatch(Method method, Object[] objArr) {
        return this.mDuck.invoke(method.getName(), objArr);
    }
}
