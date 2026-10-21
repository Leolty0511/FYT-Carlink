package com.google.android.projection.sink.audio;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes3.dex */
public class AudioLatencyChecker {
    private static final int MIN_AUDIO_LATENCY = 100;
    private long mLastPresentationTimeUs;
    private long mLatestLatency;
    private long mInputEventTimeMs = 0;
    private boolean mLatencyCheckOngoing = false;

    public long getLatestLatency() {
        return this.mLatestLatency;
    }

    public void onDecoded(long j2) {
        if (j2 == this.mLastPresentationTimeUs && this.mLatencyCheckOngoing && j2 != 0) {
            this.mLatencyCheckOngoing = false;
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mInputEventTimeMs;
            if (jCurrentTimeMillis > 100) {
                this.mLatestLatency = jCurrentTimeMillis;
            }
            this.mLastPresentationTimeUs = 0L;
        }
    }

    public synchronized void onInputEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mLatencyCheckOngoing = false;
            return;
        }
        this.mInputEventTimeMs = System.currentTimeMillis();
        this.mLastPresentationTimeUs = 0L;
        this.mLatencyCheckOngoing = true;
    }

    public void onReceived(long j2) {
        if (this.mLastPresentationTimeUs == 0) {
            this.mLastPresentationTimeUs = j2;
        }
    }
}
