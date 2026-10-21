package com.google.android.projection.sink.video;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes3.dex */
public class VideoLatencyChecker {
    private static final boolean DBG = false;
    private static final int FRAME_SIZE_MULTIPLIER = 4;
    private static final int FRAME_SIZE_THRESHOLD = 4096;
    private static final long LATENCY_IGNORE_ABOVE_THIS = 500;
    private static final int NO_LATENCY_CHECK_PERIOD = 2;
    private static final int NUM_FRAMES_FOR_AVERAGE_SIZE = 2;
    private static final String TAG = "AHU.VIDEO";
    private long mDecodingStartTimeMs;
    private final int[] mFrameSizes = new int[2];
    private int mCurrentFrameLocation = 0;
    private int mAverageFrameSize = 0;
    private int mFrameSize = 0;
    private int mNoLatencyCheckCounter = 0;
    private long mInputEventTimeMsVideo = 0;
    private long mPresentationTimeUs = 0;
    private boolean mVideoLatencyCheckOngoing = false;
    private long mLatestVideoLatency = 0;

    public long getLatestLatency() {
        long j2 = this.mLatestVideoLatency;
        if (j2 > LATENCY_IGNORE_ABOVE_THIS) {
            return 0L;
        }
        return j2;
    }

    public synchronized void onDecodingFinish(long j2) {
        if (j2 == this.mPresentationTimeUs) {
            this.mLatestVideoLatency = System.currentTimeMillis() - this.mInputEventTimeMsVideo;
            this.mVideoLatencyCheckOngoing = false;
            this.mInputEventTimeMsVideo = 0L;
        }
    }

    public synchronized void onDecodingStart(int i2, long j2) {
        int i3 = this.mNoLatencyCheckCounter;
        if (i3 > 0) {
            this.mNoLatencyCheckCounter = i3 - 1;
            return;
        }
        int i4 = this.mAverageFrameSize;
        if (i4 <= 0 || !this.mVideoLatencyCheckOngoing || i2 <= i4 * 4 || i2 <= 4096) {
            int[] iArr = this.mFrameSizes;
            int i5 = this.mCurrentFrameLocation;
            this.mAverageFrameSize = i4 + ((i2 - iArr[i5]) / 2);
            iArr[i5] = i2;
            int i6 = i5 + 1;
            this.mCurrentFrameLocation = i6;
            if (i6 >= 2) {
                this.mCurrentFrameLocation = 0;
            }
        } else {
            this.mDecodingStartTimeMs = System.currentTimeMillis();
            this.mPresentationTimeUs = j2;
            this.mNoLatencyCheckCounter = 2;
            this.mFrameSize = i2;
        }
    }

    public synchronized void onInputEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mVideoLatencyCheckOngoing = false;
            this.mNoLatencyCheckCounter = 0;
        } else {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!this.mVideoLatencyCheckOngoing) {
                this.mInputEventTimeMsVideo = jCurrentTimeMillis;
                this.mVideoLatencyCheckOngoing = true;
            }
        }
    }
}
