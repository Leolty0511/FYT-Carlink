package com.android.internal.telephony;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes3.dex */
public class ExponentialBackoff {
    private long mCurrentDelayMs;
    private Handler mHandler;
    private long mMaximumDelayMs;
    private int mMultiplier;
    private int mRetryCounter;
    private Runnable mRunnable;
    private long mStartDelayMs;

    public ExponentialBackoff(long j2, long j3, int i2, Looper looper, Runnable runnable) {
        this(j2, j3, i2, new Handler(looper), runnable);
    }

    public long getCurrentDelay() {
        return this.mCurrentDelayMs;
    }

    public void notifyFailed() {
        int i2 = this.mRetryCounter + 1;
        this.mRetryCounter = i2;
        this.mCurrentDelayMs = (long) (((Math.random() + 1.0d) / 2.0d) * Math.min(this.mMaximumDelayMs, (long) (Math.pow(this.mMultiplier, i2) * this.mStartDelayMs)));
        this.mHandler.removeCallbacks(this.mRunnable);
        this.mHandler.postDelayed(this.mRunnable, this.mCurrentDelayMs);
    }

    public void start() {
        this.mRetryCounter = 0;
        this.mCurrentDelayMs = this.mStartDelayMs;
        this.mHandler.removeCallbacks(this.mRunnable);
        this.mHandler.postDelayed(this.mRunnable, this.mCurrentDelayMs);
    }

    public void stop() {
        this.mRetryCounter = 0;
        this.mHandler.removeCallbacks(this.mRunnable);
    }

    public ExponentialBackoff(long j2, long j3, int i2, Handler handler, Runnable runnable) {
        this.mRetryCounter = 0;
        this.mStartDelayMs = j2;
        this.mMaximumDelayMs = j3;
        this.mMultiplier = i2;
        this.mHandler = handler;
        this.mRunnable = runnable;
    }
}
