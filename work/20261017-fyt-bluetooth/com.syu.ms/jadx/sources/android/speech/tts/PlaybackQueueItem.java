package android.speech.tts;

/* JADX INFO: loaded from: classes.dex */
abstract class PlaybackQueueItem implements Runnable {
    private final Object mCallerIdentity;
    private final TextToSpeechService.UtteranceProgressDispatcher mDispatcher;

    public PlaybackQueueItem(TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj) {
        this.mDispatcher = utteranceProgressDispatcher;
        this.mCallerIdentity = obj;
    }

    public Object getCallerIdentity() {
        return this.mCallerIdentity;
    }

    public TextToSpeechService.UtteranceProgressDispatcher getDispatcher() {
        return this.mDispatcher;
    }

    @Override // java.lang.Runnable
    public abstract void run();

    public abstract void stop(boolean z2);
}
