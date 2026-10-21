package android.speech.tts;

import android.os.SystemClock;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class EventLogger {
    private final int mCallerPid;
    private final int mCallerUid;
    private final SynthesisRequest mRequest;
    private final String mServiceApp;
    private long mPlaybackStartTime = -1;
    private volatile long mRequestProcessingStartTime = -1;
    private volatile long mEngineStartTime = -1;
    private volatile long mEngineCompleteTime = -1;
    private volatile boolean mError = false;
    private volatile boolean mStopped = false;
    private boolean mLogWritten = false;
    private final long mReceivedTime = SystemClock.elapsedRealtime();

    public EventLogger(SynthesisRequest synthesisRequest, int i2, int i3, String str) {
        this.mRequest = synthesisRequest;
        this.mCallerUid = i2;
        this.mCallerPid = i3;
        this.mServiceApp = str;
    }

    private String getLocaleString() {
        StringBuilder sb = new StringBuilder(this.mRequest.getLanguage());
        if (!TextUtils.isEmpty(this.mRequest.getCountry())) {
            sb.append('-');
            sb.append(this.mRequest.getCountry());
            if (!TextUtils.isEmpty(this.mRequest.getVariant())) {
                sb.append('-');
                sb.append(this.mRequest.getVariant());
            }
        }
        return sb.toString();
    }

    private int getUtteranceLength() {
        String text = this.mRequest.getText();
        if (text == null) {
            return 0;
        }
        return text.length();
    }

    public void onAudioDataWritten() {
        if (this.mPlaybackStartTime == -1) {
            this.mPlaybackStartTime = SystemClock.elapsedRealtime();
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

    public void onError() {
        this.mError = true;
    }

    public void onRequestProcessingStart() {
        this.mRequestProcessingStartTime = SystemClock.elapsedRealtime();
    }

    public void onStopped() {
        this.mStopped = false;
    }

    public void onWriteData() {
        if (this.mLogWritten) {
            return;
        }
        this.mLogWritten = true;
        SystemClock.elapsedRealtime();
        if (this.mError || this.mPlaybackStartTime == -1 || this.mEngineCompleteTime == -1) {
            EventLogTags.writeTtsSpeakFailure(this.mServiceApp, this.mCallerUid, this.mCallerPid, getUtteranceLength(), getLocaleString(), this.mRequest.getSpeechRate(), this.mRequest.getPitch());
        } else {
            if (this.mStopped) {
                return;
            }
            long j2 = this.mPlaybackStartTime - this.mReceivedTime;
            EventLogTags.writeTtsSpeakSuccess(this.mServiceApp, this.mCallerUid, this.mCallerPid, getUtteranceLength(), getLocaleString(), this.mRequest.getSpeechRate(), this.mRequest.getPitch(), this.mEngineStartTime - this.mRequestProcessingStartTime, this.mEngineCompleteTime - this.mRequestProcessingStartTime, j2);
        }
    }
}
