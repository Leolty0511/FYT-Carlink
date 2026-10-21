package o;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public final class a extends HandlerThread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f16686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Handler f16687b;

    public a() {
        super("android.bg", 10);
    }

    public static void a() {
        if (f16686a == null) {
            a aVar = new a();
            f16686a = aVar;
            aVar.start();
            f16687b = new Handler(f16686a.getLooper());
        }
    }

    public static Handler b() {
        Handler handler;
        synchronized (a.class) {
            a();
            handler = f16687b;
        }
        return handler;
    }
}
