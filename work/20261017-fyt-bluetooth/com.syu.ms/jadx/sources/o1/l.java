package o1;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class l extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f16942a;

    static {
        HandlerThread handlerThread = new HandlerThread("HandlerRemove");
        handlerThread.start();
        f16942a = new l(handlerThread.getLooper());
    }

    public l(Looper looper) {
        super(looper);
    }

    public static l a() {
        return f16942a;
    }
}
