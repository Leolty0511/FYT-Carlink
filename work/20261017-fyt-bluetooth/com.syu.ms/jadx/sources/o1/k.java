package o1;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public class k extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f16939a;

    static {
        HandlerThread handlerThread = new HandlerThread("HandlerNotRemove");
        handlerThread.start();
        f16939a = new k(handlerThread.getLooper());
    }

    public k(Looper looper) {
        super(looper);
    }

    public static k a() {
        return f16939a;
    }
}
