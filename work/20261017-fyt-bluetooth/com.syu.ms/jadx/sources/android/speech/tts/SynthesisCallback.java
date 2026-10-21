package android.speech.tts;

/* JADX INFO: loaded from: classes.dex */
public interface SynthesisCallback {
    int audioAvailable(byte[] bArr, int i2, int i3);

    int done();

    void error();

    int getMaxBufferSize();

    int start(int i2, int i3, int i4);
}
