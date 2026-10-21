package android.speech.tts;

import android.os.ConditionVariable;

/* JADX INFO: loaded from: classes2.dex */
class SilencePlaybackQueueItem extends PlaybackQueueItem {
    private final ConditionVariable mCondVar;
    private final long mSilenceDurationMs;

    public SilencePlaybackQueueItem(TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj, long j2) {
        super(utteranceProgressDispatcher, obj);
        this.mCondVar = new ConditionVariable();
        this.mSilenceDurationMs = j2;
    }

    @Override // android.speech.tts.PlaybackQueueItem, java.lang.Runnable
    public void run() {
        getDispatcher().dispatchOnStart();
        long j2 = this.mSilenceDurationMs;
        if (j2 > 0 ? this.mCondVar.block(j2) : false) {
            getDispatcher().dispatchOnStop();
        } else {
            getDispatcher().dispatchOnSuccess();
        }
    }

    @Override // android.speech.tts.PlaybackQueueItem
    public void stop(int i2) {
        this.mCondVar.open();
    }
}
