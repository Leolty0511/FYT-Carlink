package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ActivityResultContract<I, O> {

    public static final class SynchronousResult<T> {
        private final T value;

        public SynchronousResult(T t2) {
            this.value = t2;
        }

        public final T getValue() {
            return this.value;
        }
    }

    public abstract Intent createIntent(Context context, I i2);

    public SynchronousResult<O> getSynchronousResult(Context context, I i2) {
        b.h(context, "context");
        return null;
    }

    public abstract O parseResult(int i2, Intent intent);
}
