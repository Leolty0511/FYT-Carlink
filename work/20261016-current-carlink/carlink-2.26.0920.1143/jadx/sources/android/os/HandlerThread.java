package android.os;

/* JADX INFO: loaded from: classes.dex */
public class HandlerThread extends Thread {
    private Handler mHandler;
    Looper mLooper;
    int mPriority;
    int mTid;

    public HandlerThread(String str) {
        super(str);
        this.mTid = -1;
        this.mPriority = 0;
    }

    public Looper getLooper() {
        if (!isAlive()) {
            return null;
        }
        synchronized (this) {
            while (isAlive() && this.mLooper == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
        }
        return this.mLooper;
    }

    public Handler getThreadHandler() {
        if (this.mHandler == null) {
            this.mHandler = new Handler(getLooper());
        }
        return this.mHandler;
    }

    public int getThreadId() {
        return this.mTid;
    }

    public void onLooperPrepared() {
    }

    public boolean quit() {
        Looper looper = getLooper();
        if (looper == null) {
            return false;
        }
        looper.quit();
        return true;
    }

    public boolean quitSafely() {
        Looper looper = getLooper();
        if (looper == null) {
            return false;
        }
        looper.quitSafely();
        return true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.mTid = Process.myTid();
        Looper.prepare();
        synchronized (this) {
            this.mLooper = Looper.myLooper();
            notifyAll();
        }
        Process.setThreadPriority(this.mPriority);
        onLooperPrepared();
        Looper.loop();
        this.mTid = -1;
    }

    public HandlerThread(String str, int i2) {
        super(str);
        this.mTid = -1;
        this.mPriority = i2;
    }
}
