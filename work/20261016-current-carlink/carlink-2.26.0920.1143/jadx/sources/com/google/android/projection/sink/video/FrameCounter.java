package com.google.android.projection.sink.video;

import android.os.Handler;
import android.os.SystemClock;
import android.widget.TextView;

/* JADX INFO: loaded from: classes3.dex */
public final class FrameCounter {
    private static final boolean DBG = false;
    private static final int MIN_UPDATE_PERIOD_MS = 500;
    private static final String TAG = "AHU.VIDEO";
    private long lastFrame;
    private final TextView mFpsTextView;
    private long measureStartTime;
    private int numFramesMeasured;
    private final StringBuffer mFpsStringBuffer = new StringBuffer();
    private final Handler handler = new Handler();

    public FrameCounter(TextView textView) {
        this.mFpsTextView = textView;
    }

    public void onRenderFrame(long j2, long j3) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.lastFrame != 0) {
            long j4 = jElapsedRealtime - this.measureStartTime;
            if (j4 >= 500) {
                StringBuffer stringBuffer = this.mFpsStringBuffer;
                stringBuffer.append("FPS: ");
                stringBuffer.append((float) ((((double) this.numFramesMeasured) * 1000.0d) / j4));
                stringBuffer.append(", v-lat ");
                stringBuffer.append(j2);
                stringBuffer.append(", a-lat ");
                stringBuffer.append(j3);
                final String string = stringBuffer.toString();
                this.mFpsStringBuffer.delete(0, string.length());
                this.handler.post(new Runnable() { // from class: com.google.android.projection.sink.video.FrameCounter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FrameCounter.this.mFpsTextView.setText(string);
                        FrameCounter.this.mFpsTextView.invalidate();
                    }
                });
                this.numFramesMeasured = 0;
            }
        }
        int i2 = this.numFramesMeasured;
        if (i2 == 0) {
            this.measureStartTime = jElapsedRealtime;
        }
        this.numFramesMeasured = i2 + 1;
        this.lastFrame = jElapsedRealtime;
    }
}
