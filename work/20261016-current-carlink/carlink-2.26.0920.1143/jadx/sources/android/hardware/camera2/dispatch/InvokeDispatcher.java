package android.hardware.camera2.dispatch;

import android.hardware.camera2.utils.UncheckedThrow;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class InvokeDispatcher<T> implements Dispatchable<T> {
    private static final String TAG = "InvocationSink";
    private final T mTarget;

    public InvokeDispatcher(T t2) {
        this.mTarget = (T) Preconditions.checkNotNull(t2, "target must not be null");
    }

    @Override // android.hardware.camera2.dispatch.Dispatchable
    public Object dispatch(Method method, Object[] objArr) throws Throwable {
        try {
            return method.invoke(this.mTarget, objArr);
        } catch (IllegalAccessException e2) {
            Log.wtf(TAG, "IllegalAccessException while invoking " + method, e2);
            return null;
        } catch (IllegalArgumentException e3) {
            Log.wtf(TAG, "IllegalArgumentException while invoking " + method, e3);
            return null;
        } catch (InvocationTargetException e4) {
            UncheckedThrow.throwAnyException(e4.getTargetException());
            return null;
        }
    }
}
