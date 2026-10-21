package android.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Singleton<T> {
    private T mInstance;

    public abstract T create();

    public final T get() {
        T t2;
        synchronized (this) {
            if (this.mInstance == null) {
                this.mInstance = create();
            }
            t2 = this.mInstance;
        }
        return t2;
    }
}
