package android.os;

/* JADX INFO: loaded from: classes.dex */
public class ConditionVariable {
    private volatile boolean mCondition;

    public ConditionVariable() {
        this.mCondition = false;
    }

    public void block() {
        synchronized (this) {
            while (!this.mCondition) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public void close() {
        synchronized (this) {
            this.mCondition = false;
        }
    }

    public void open() {
        synchronized (this) {
            boolean z2 = this.mCondition;
            this.mCondition = true;
            if (!z2) {
                notifyAll();
            }
        }
    }

    public ConditionVariable(boolean z2) {
        this.mCondition = z2;
    }

    public boolean block(long j2) {
        boolean z2;
        if (j2 != 0) {
            synchronized (this) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j3 = j2 + jCurrentTimeMillis;
                while (!this.mCondition && jCurrentTimeMillis < j3) {
                    try {
                        wait(j3 - jCurrentTimeMillis);
                    } catch (InterruptedException unused) {
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                z2 = this.mCondition;
            }
            return z2;
        }
        block();
        return true;
    }
}
