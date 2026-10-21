package android.hardware.camera2.dispatch;

import com.android.internal.util.Preconditions;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BroadcastDispatcher<T> implements Dispatchable<T> {
    private final List<Dispatchable<T>> mDispatchTargets;

    @SafeVarargs
    public BroadcastDispatcher(Dispatchable<T>... dispatchableArr) {
        this.mDispatchTargets = Arrays.asList((Object[]) Preconditions.checkNotNull(dispatchableArr, "dispatchTargets must not be null"));
    }

    @Override // android.hardware.camera2.dispatch.Dispatchable
    public Object dispatch(Method method, Object[] objArr) {
        Iterator<Dispatchable<T>> it = this.mDispatchTargets.iterator();
        Object obj = null;
        boolean z2 = false;
        while (it.hasNext()) {
            Object objDispatch = it.next().dispatch(method, objArr);
            if (!z2) {
                z2 = true;
                obj = objDispatch;
            }
        }
        return obj;
    }
}
