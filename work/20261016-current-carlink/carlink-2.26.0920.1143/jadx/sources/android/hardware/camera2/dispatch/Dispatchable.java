package android.hardware.camera2.dispatch;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public interface Dispatchable<T> {
    Object dispatch(Method method, Object[] objArr);
}
