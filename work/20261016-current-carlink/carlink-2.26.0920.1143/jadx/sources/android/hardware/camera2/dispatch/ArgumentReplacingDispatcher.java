package android.hardware.camera2.dispatch;

import com.android.internal.util.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class ArgumentReplacingDispatcher<T, TArg> implements Dispatchable<T> {
    private final int mArgumentIndex;
    private final TArg mReplaceWith;
    private final Dispatchable<T> mTarget;

    public ArgumentReplacingDispatcher(Dispatchable<T> dispatchable, int i2, TArg targ) {
        this.mTarget = (Dispatchable) Preconditions.checkNotNull(dispatchable, "target must not be null");
        this.mArgumentIndex = Preconditions.checkArgumentNonnegative(i2, "argumentIndex must not be negative");
        this.mReplaceWith = (TArg) Preconditions.checkNotNull(targ, "replaceWith must not be null");
    }

    private static Object[] arrayCopy(Object[] objArr) {
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        for (int i2 = 0; i2 < length; i2++) {
            objArr2[i2] = objArr[i2];
        }
        return objArr2;
    }

    @Override // android.hardware.camera2.dispatch.Dispatchable
    public Object dispatch(Method method, Object[] objArr) {
        if (objArr.length > this.mArgumentIndex) {
            objArr = arrayCopy(objArr);
            objArr[this.mArgumentIndex] = this.mReplaceWith;
        }
        return this.mTarget.dispatch(method, objArr);
    }
}
