package android.speech.tts;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public interface SynthesisCallback {

    @Retention(RetentionPolicy.SOURCE)
    public @interface SupportedAudioFormat {
    }

    int audioAvailable(byte[] bArr, int i2, int i3);

    int done();

    void error();

    void error(int i2);

    int getMaxBufferSize();

    boolean hasFinished();

    boolean hasStarted();

    void rangeStart(int i2, int i3, int i4);

    int start(int i2, int i3, int i4);
}
