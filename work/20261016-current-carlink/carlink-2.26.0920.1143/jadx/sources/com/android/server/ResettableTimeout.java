package com.android.server;

import android.os.ConditionVariable;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
abstract class ResettableTimeout {
    private ConditionVariable mLock = new ConditionVariable();
    private volatile long mOffAt;
    private volatile boolean mOffCalled;
    private Thread mThread;

    public class T extends Thread {
        private T() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            long jUptimeMillis;
            ResettableTimeout.this.mLock.open();
            while (true) {
                synchronized (this) {
                    jUptimeMillis = ResettableTimeout.this.mOffAt - SystemClock.uptimeMillis();
                    if (jUptimeMillis <= 0) {
                        ResettableTimeout.this.mOffCalled = true;
                        ResettableTimeout.this.off();
                        ResettableTimeout.this.mThread = null;
                        return;
                    }
                }
                try {
                    Thread.sleep(jUptimeMillis);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public void cancel() {
        synchronized (this) {
            this.mOffAt = 0L;
            Thread thread = this.mThread;
            if (thread != null) {
                thread.interrupt();
                this.mThread = null;
            }
            if (!this.mOffCalled) {
                this.mOffCalled = true;
                off();
            }
        }
    }

    public void go(long j2) {
        boolean z2;
        synchronized (this) {
            this.mOffAt = SystemClock.uptimeMillis() + j2;
            Thread thread = this.mThread;
            if (thread == null) {
                this.mLock.close();
                T t2 = new T();
                this.mThread = t2;
                t2.start();
                this.mLock.block();
                z2 = false;
                this.mOffCalled = false;
            } else {
                thread.interrupt();
                z2 = true;
            }
            on(z2);
        }
    }

    public abstract void off();

    public abstract void on(boolean z2);
}
