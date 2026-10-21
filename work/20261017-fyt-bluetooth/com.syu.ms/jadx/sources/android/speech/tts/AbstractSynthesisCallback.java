package android.speech.tts;

/* JADX INFO: loaded from: classes.dex */
abstract class AbstractSynthesisCallback implements SynthesisCallback {
    public abstract boolean isDone();

    public abstract void stop();
}
