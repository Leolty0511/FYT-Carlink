package android.speech.tts;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractSynthesisCallback implements SynthesisCallback {
    protected final boolean mClientIsUsingV2;

    public AbstractSynthesisCallback(boolean z2) {
        this.mClientIsUsingV2 = z2;
    }

    public int errorCodeOnStop() {
        return this.mClientIsUsingV2 ? -2 : -1;
    }

    @Override // android.speech.tts.SynthesisCallback
    public /* synthetic */ void rangeStart(int i2, int i3, int i4) {
        a.a(this, i2, i3, i4);
    }

    public abstract void stop();
}
