package android.net.http;

import android.os.SystemClock;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class HttpLog {
    private static final boolean DEBUG = false;
    private static final String LOGTAG = "http";
    public static final boolean LOGV = false;

    public static void e(String str) {
        Log.e(LOGTAG, str);
    }

    public static void v(String str) {
        Log.v(LOGTAG, SystemClock.uptimeMillis() + " " + Thread.currentThread().getName() + " " + str);
    }
}
