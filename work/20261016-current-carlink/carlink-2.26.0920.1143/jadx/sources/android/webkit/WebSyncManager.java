package android.webkit;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
abstract class WebSyncManager implements Runnable {
    protected static final String LOGTAG = "websync";
    protected WebViewDatabase mDataBase;
    protected Handler mHandler;

    public WebSyncManager(Context context, String str) {
    }

    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("doesn't implement Cloneable");
    }

    public void onSyncInit() {
    }

    public void resetSync() {
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    public void startSync() {
    }

    public void stopSync() {
    }

    public void sync() {
    }

    public abstract void syncFromRamToFlash();
}
