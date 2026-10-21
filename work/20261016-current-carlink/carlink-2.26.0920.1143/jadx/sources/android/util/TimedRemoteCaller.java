package android.util;

import android.os.SystemClock;
import com.android.internal.annotations.GuardedBy;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TimedRemoteCaller<T> {
    public static final long DEFAULT_CALL_TIMEOUT_MILLIS = 5000;
    private final long mCallTimeoutMillis;

    @GuardedBy("mLock")
    private int mSequenceCounter;
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private final SparseIntArray mAwaitedCalls = new SparseIntArray(1);

    @GuardedBy("mLock")
    private final SparseArray<T> mReceivedCalls = new SparseArray<>(1);

    public TimedRemoteCaller(long j2) {
        this.mCallTimeoutMillis = j2;
    }

    public final T getResultTimed(int i2) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        while (true) {
            try {
                synchronized (this.mLock) {
                    if (this.mReceivedCalls.indexOfKey(i2) >= 0) {
                        return this.mReceivedCalls.removeReturnOld(i2);
                    }
                    long jUptimeMillis2 = this.mCallTimeoutMillis - (SystemClock.uptimeMillis() - jUptimeMillis);
                    if (jUptimeMillis2 <= 0) {
                        this.mAwaitedCalls.delete(i2);
                        throw new TimeoutException("No response for sequence: " + i2);
                    }
                    this.mLock.wait(jUptimeMillis2);
                }
            } catch (InterruptedException unused) {
            }
        }
    }

    public final int onBeforeRemoteCall() {
        int i2;
        synchronized (this.mLock) {
            do {
                i2 = this.mSequenceCounter;
                this.mSequenceCounter = i2 + 1;
            } while (this.mAwaitedCalls.get(i2) != 0);
            this.mAwaitedCalls.put(i2, 1);
        }
        return i2;
    }

    public final void onRemoteMethodResult(T t2, int i2) {
        synchronized (this.mLock) {
            if (this.mAwaitedCalls.get(i2) != 0) {
                this.mAwaitedCalls.delete(i2);
                this.mReceivedCalls.put(i2, t2);
                this.mLock.notifyAll();
            }
        }
    }
}
