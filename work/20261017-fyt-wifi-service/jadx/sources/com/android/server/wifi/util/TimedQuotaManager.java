package com.android.server.wifi.util;

import com.android.server.wifi.Clock;

/* JADX INFO: loaded from: classes.dex */
public class TimedQuotaManager {
    private final Clock mClock;
    private final long mPeriodMillis;
    private final long mQuota;
    private final long mStartTimeMillis;
    private long mLastPeriod = 0;
    private long mConsumedQuota = 0;

    public TimedQuotaManager(Clock clock, long quota, long periodMillis) {
        this.mClock = clock;
        this.mQuota = quota;
        this.mPeriodMillis = periodMillis;
        this.mStartTimeMillis = clock.getElapsedSinceBootMillis();
    }

    public boolean requestQuota() {
        long currentPeriod = getCurrentPeriod();
        if (this.mLastPeriod < currentPeriod) {
            this.mLastPeriod = currentPeriod;
            this.mConsumedQuota = 0L;
        }
        long j = this.mConsumedQuota;
        if (j < this.mQuota) {
            this.mConsumedQuota = j + 1;
            return true;
        }
        return false;
    }

    private long getCurrentPeriod() {
        return (this.mClock.getElapsedSinceBootMillis() - this.mStartTimeMillis) / this.mPeriodMillis;
    }

    public String toString() {
        return "TimedQuotaManager{mQuota=" + this.mQuota + ", mPeriodMillis=" + this.mPeriodMillis + ", mStartTimeMillis=" + this.mStartTimeMillis + ", mLastPeriod=" + this.mLastPeriod + ", mConsumedQuota=" + this.mConsumedQuota + '}';
    }
}
