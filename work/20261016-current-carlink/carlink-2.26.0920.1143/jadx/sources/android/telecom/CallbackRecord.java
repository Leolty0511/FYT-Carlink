package android.telecom;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
class CallbackRecord<T> {
    private final T mCallback;
    private final Handler mHandler;

    public CallbackRecord(T t2, Handler handler) {
        this.mCallback = t2;
        this.mHandler = handler;
    }

    public T getCallback() {
        return this.mCallback;
    }

    public Handler getHandler() {
        return this.mHandler;
    }
}
