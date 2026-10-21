package android.util;

import android.os.SystemClock;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public abstract class TimedRemoteCaller<T> {
    public static final long DEFAULT_CALL_TIMEOUT_MILLIS = 5000;
    private static final int UNDEFINED_SEQUENCE = -1;
    private final long mCallTimeoutMillis;
    private T mResult;
    private int mSequenceCounter;
    private final Object mLock = new Object();
    private int mReceivedSequence = -1;
    private int mAwaitedSequence = -1;

    public TimedRemoteCaller(long j2) {
        this.mCallTimeoutMillis = j2;
    }

    private boolean waitForResultTimedLocked(int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (this.mReceivedSequence != i2) {
            try {
                long jUptimeMillis2 = this.mCallTimeoutMillis - (SystemClock.uptimeMillis() - jUptimeMillis);
                if (jUptimeMillis2 <= 0) {
                    return false;
                }
                this.mLock.wait(jUptimeMillis2);
            } catch (InterruptedException unused) {
            }
        }
        return true;
    }

    public final T getResultTimed(int i2) {
        T t2;
        synchronized (this.mLock) {
            if (!waitForResultTimedLocked(i2)) {
                throw new TimeoutException("No reponse for sequence: " + i2);
            }
            t2 = this.mResult;
            this.mResult = null;
        }
        return t2;
    }

    public final int onBeforeRemoteCall() {
        int i2;
        synchronized (this.mLock) {
            i2 = this.mSequenceCounter;
            this.mSequenceCounter = i2 + 1;
            this.mAwaitedSequence = i2;
        }
        return i2;
    }

    public final void onRemoteMethodResult(T t2, int i2) {
        synchronized (this.mLock) {
            if (i2 == this.mAwaitedSequence) {
                this.mReceivedSequence = i2;
                this.mResult = t2;
                this.mLock.notifyAll();
            }
        }
    }
}
