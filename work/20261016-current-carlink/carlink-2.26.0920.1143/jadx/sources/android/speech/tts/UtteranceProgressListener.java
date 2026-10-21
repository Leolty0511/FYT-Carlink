package android.speech.tts;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UtteranceProgressListener {
    public static UtteranceProgressListener from(final TextToSpeech.OnUtteranceCompletedListener onUtteranceCompletedListener) {
        return new UtteranceProgressListener() { // from class: android.speech.tts.UtteranceProgressListener.1
            @Override // android.speech.tts.UtteranceProgressListener
            public synchronized void onDone(String str) {
                onUtteranceCompletedListener.onUtteranceCompleted(str);
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onError(String str) {
                onUtteranceCompletedListener.onUtteranceCompleted(str);
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onStart(String str) {
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onStop(String str, boolean z2) {
                onUtteranceCompletedListener.onUtteranceCompleted(str);
            }
        };
    }

    public void onAudioAvailable(String str, byte[] bArr) {
    }

    public void onBeginSynthesis(String str, int i2, int i3, int i4) {
    }

    public abstract void onDone(String str);

    @Deprecated
    public abstract void onError(String str);

    public void onError(String str, int i2) {
        onError(str);
    }

    public void onRangeStart(String str, int i2, int i3, int i4) {
        onUtteranceRangeStart(str, i2, i3);
    }

    public abstract void onStart(String str);

    public void onStop(String str, boolean z2) {
    }

    @Deprecated
    public void onUtteranceRangeStart(String str, int i2, int i3) {
    }
}
