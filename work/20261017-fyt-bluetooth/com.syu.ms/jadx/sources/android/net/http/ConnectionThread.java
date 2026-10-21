package android.net.http;

import android.app.backup.FullBackup;
import android.content.Context;
import android.net.ProxyProperties;
import android.os.Process;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
class ConnectionThread extends Thread {
    public static final int WAIT_TICK = 1000;
    public static final int WAIT_TIMEOUT = 5000;
    public Connection mConnection;
    private RequestQueue.ConnectionManager mConnectionManager;
    private Context mContext;
    public long mCurrentThreadTime;
    private int mId;
    private RequestFeeder mRequestFeeder;
    private volatile boolean mRunning = true;
    public long mTotalThreadTime;
    private boolean mWaiting;

    public ConnectionThread(Context context, int i2, RequestQueue.ConnectionManager connectionManager, RequestFeeder requestFeeder) {
        this.mContext = context;
        setName("http" + i2);
        this.mId = i2;
        this.mConnectionManager = connectionManager;
        this.mRequestFeeder = requestFeeder;
    }

    public void requestStop() {
        synchronized (this.mRequestFeeder) {
            this.mRunning = false;
            this.mRequestFeeder.notify();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(1);
        this.mCurrentThreadTime = 0L;
        this.mTotalThreadTime = 0L;
        while (this.mRunning) {
            if (this.mCurrentThreadTime == -1) {
                this.mCurrentThreadTime = SystemClock.currentThreadTimeMillis();
            }
            Request request = this.mRequestFeeder.getRequest();
            if (request == null) {
                synchronized (this.mRequestFeeder) {
                    this.mWaiting = true;
                    try {
                        this.mRequestFeeder.wait();
                    } catch (InterruptedException unused) {
                    }
                    this.mWaiting = false;
                    if (this.mCurrentThreadTime != 0) {
                        this.mCurrentThreadTime = SystemClock.currentThreadTimeMillis();
                    }
                }
            } else {
                Connection connection = this.mConnectionManager.getConnection(this.mContext, request.mHost);
                this.mConnection = connection;
                connection.processRequests(request);
                if (!this.mConnection.getCanPersist() || !this.mConnectionManager.recycleConnection(this.mConnection)) {
                    this.mConnection.closeConnection();
                }
                this.mConnection = null;
                long j2 = this.mCurrentThreadTime;
                if (j2 > 0) {
                    long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
                    this.mCurrentThreadTime = jCurrentThreadTimeMillis;
                    this.mTotalThreadTime += jCurrentThreadTimeMillis - j2;
                }
            }
        }
    }

    @Override // java.lang.Thread
    public synchronized String toString() {
        String string;
        Connection connection = this.mConnection;
        string = connection == null ? ProxyProperties.LOCAL_EXCL_LIST : connection.toString();
        return "cid " + this.mId + " " + (this.mWaiting ? "w" : FullBackup.APK_TREE_TOKEN) + " " + string;
    }
}
