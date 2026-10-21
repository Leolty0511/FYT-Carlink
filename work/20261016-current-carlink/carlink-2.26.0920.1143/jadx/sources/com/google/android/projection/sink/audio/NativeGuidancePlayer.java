package com.google.android.projection.sink.audio;

import android.content.Context;
import com.google.android.projection.protocol.GalReceiver;

/* JADX INFO: loaded from: classes3.dex */
public class NativeGuidancePlayer extends NativeAudioPlayerBase {
    private boolean mStopping;

    private NativeGuidancePlayer(AudioFocusManager audioFocusManager) {
        super(audioFocusManager);
        this.mStopping = false;
    }

    public static NativeGuidancePlayer createGuidancePlayer(Context context, AudioFocusManager audioFocusManager, int i2) {
        NativeGuidancePlayer nativeGuidancePlayer = new NativeGuidancePlayer(audioFocusManager);
        nativeGuidancePlayer.init(context, i2, false);
        return nativeGuidancePlayer;
    }

    @Override // com.google.android.projection.sink.audio.AudioFocusManager.FocusChangeListener
    public void onPhoneFocusChange(int i2, boolean z2) {
        if ((i2 == GalReceiver.AUDIO_FOCUS_STATE_GAIN || i2 == GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT) && !this.mStopping) {
            stop();
        }
    }

    @Override // com.google.android.projection.sink.audio.NativeAudioPlayerBase
    public void play() {
        if (!isPlaying()) {
            getAudioFocusManager().notifyCarGuidancePlayStart(true);
        }
        super.play();
    }

    @Override // com.google.android.projection.sink.audio.NativeAudioPlayerBase
    public void stop() {
        if (isPlaying()) {
            this.mStopping = true;
            getAudioFocusManager().notifyCarGuidancePlayEnd();
        }
        super.stop();
        this.mStopping = false;
    }
}
