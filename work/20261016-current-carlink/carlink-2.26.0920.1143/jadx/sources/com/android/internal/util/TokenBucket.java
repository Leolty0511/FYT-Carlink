package com.android.internal.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes3.dex */
public class TokenBucket {
    private int mAvailable;
    private final int mCapacity;
    private final int mFillDelta;
    private long mLastFill;

    public TokenBucket(int i2, int i3, int i4) {
        this.mFillDelta = Preconditions.checkArgumentPositive(i2, "deltaMs must be strictly positive");
        int iCheckArgumentPositive = Preconditions.checkArgumentPositive(i3, "capacity must be strictly positive");
        this.mCapacity = iCheckArgumentPositive;
        this.mAvailable = Math.min(Preconditions.checkArgumentNonnegative(i4), iCheckArgumentPositive);
        this.mLastFill = scaledTime();
    }

    private void fill() {
        long jScaledTime = scaledTime();
        this.mAvailable = Math.min(this.mCapacity, this.mAvailable + ((int) (jScaledTime - this.mLastFill)));
        this.mLastFill = jScaledTime;
    }

    private long scaledTime() {
        return SystemClock.elapsedRealtime() / ((long) this.mFillDelta);
    }

    public int available() {
        fill();
        return this.mAvailable;
    }

    public int capacity() {
        return this.mCapacity;
    }

    public boolean get() {
        return get(1) == 1;
    }

    public boolean has() {
        fill();
        return this.mAvailable > 0;
    }

    public void reset(int i2) {
        Preconditions.checkArgumentNonnegative(i2);
        this.mAvailable = Math.min(i2, this.mCapacity);
        this.mLastFill = scaledTime();
    }

    public int get(int i2) {
        fill();
        if (i2 <= 0) {
            return 0;
        }
        int i3 = this.mAvailable;
        if (i2 > i3) {
            this.mAvailable = 0;
            return i3;
        }
        this.mAvailable = i3 - i2;
        return i2;
    }

    public TokenBucket(int i2, int i3) {
        this(i2, i3, i3);
    }
}
