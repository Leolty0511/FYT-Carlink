package android.hardware.camera2.dispatch;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class NullDispatcher<T> implements Dispatchable<T> {
    @Override // android.hardware.camera2.dispatch.Dispatchable
    public Object dispatch(Method method, Object[] objArr) {
        return null;
    }
}
