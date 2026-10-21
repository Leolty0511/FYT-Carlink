package android.speech.tts;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractEventLogger {
    protected final int mCallerPid;
    protected final int mCallerUid;
    protected final String mServiceApp;
    protected long mPlaybackStartTime = -1;
    private volatile long mRequestProcessingStartTime = -1;
    private volatile long mEngineStartTime = -1;
    private volatile long mEngineCompleteTime = -1;
    private boolean mLogWritten = false;
    protected final long mReceivedTime = SystemClock.elapsedRealtime();

    public AbstractEventLogger(int i2, int i3, String str) {
        this.mCallerUid = i2;
        this.mCallerPid = i3;
        this.mServiceApp = str;
    }

    public abstract void logFailure(int i2);

    public abstract void logSuccess(long j2, long j3, long j4);

    public void onAudioDataWritten() {
        if (this.mPlaybackStartTime == -1) {
            this.mPlaybackStartTime = SystemClock.elapsedRealtime();
        }
    }

    public void onCompleted(int i2) {
        if (this.mLogWritten) {
            return;
        }
        this.mLogWritten = true;
        SystemClock.elapsedRealtime();
        if (i2 != 0 || this.mPlaybackStartTime == -1 || this.mEngineCompleteTime == -1) {
            logFailure(i2);
        } else {
            logSuccess(this.mPlaybackStartTime - this.mReceivedTime, this.mEngineStartTime - this.mRequestProcessingStartTime, this.mEngineCompleteTime - this.mRequestProcessingStartTime);
        }
    }

    public void onEngineComplete() {
        this.mEngineCompleteTime = SystemClock.elapsedRealtime();
    }

    public void onEngineDataReceived() {
        if (this.mEngineStartTime == -1) {
            this.mEngineStartTime = SystemClock.elapsedRealtime();
        }
    }

    public void onRequestProcessingStart() {
        this.mRequestProcessingStartTime = SystemClock.elapsedRealtime();
    }
}
