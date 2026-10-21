package android.webkit;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
abstract class WebSyncManager implements Runnable {
    public static final String LOGTAG = "websync";
    private static int SYNC_LATER_INTERVAL = 300000;
    private static final int SYNC_MESSAGE = 101;
    private static int SYNC_NOW_INTERVAL = 100;
    public WebViewDatabase mDataBase;
    public Handler mHandler;
    private int mStartSyncRefCount;
    private Thread mSyncThread;
    private String mThreadName;

    public class SyncHandler extends Handler {
        private SyncHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 101) {
                WebSyncManager.this.syncFromRamToFlash();
                sendMessageDelayed(obtainMessage(101), WebSyncManager.SYNC_LATER_INTERVAL);
            }
        }
    }

    public WebSyncManager(Context context, String str) {
        this(str);
    }

    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("doesn't implement Cloneable");
    }

    public void onSyncInit() {
    }

    public void resetSync() {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.removeMessages(101);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(101), SYNC_LATER_INTERVAL);
    }

    @Override // java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.mHandler = new SyncHandler();
        onSyncInit();
        Process.setThreadPriority(10);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(101), SYNC_LATER_INTERVAL);
        Looper.loop();
    }

    public void startSync() {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        int i2 = this.mStartSyncRefCount + 1;
        this.mStartSyncRefCount = i2;
        if (i2 == 1) {
            this.mHandler.sendMessageDelayed(handler.obtainMessage(101), SYNC_LATER_INTERVAL);
        }
    }

    public void stopSync() {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        int i2 = this.mStartSyncRefCount - 1;
        this.mStartSyncRefCount = i2;
        if (i2 == 0) {
            handler.removeMessages(101);
        }
    }

    public void sync() {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.removeMessages(101);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(101), SYNC_NOW_INTERVAL);
    }

    public abstract void syncFromRamToFlash();

    public WebSyncManager(String str) {
        this.mThreadName = str;
        Thread thread = new Thread(this);
        this.mSyncThread = thread;
        thread.setName(this.mThreadName);
        this.mSyncThread.start();
    }
}
