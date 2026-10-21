package com.google.android.projection.sink.audio;

import android.content.Context;
import com.google.android.projection.protocol.GalReceiver;

/* JADX INFO: loaded from: classes3.dex */
public class NativeMusicPlayer extends NativeAudioPlayerBase {
    private boolean mStopping;

    private NativeMusicPlayer(AudioFocusManager audioFocusManager) {
        super(audioFocusManager);
        this.mStopping = false;
    }

    public static NativeMusicPlayer createMusicPlayer(Context context, AudioFocusManager audioFocusManager, int i2) {
        NativeMusicPlayer nativeMusicPlayer = new NativeMusicPlayer(audioFocusManager);
        nativeMusicPlayer.init(context, i2, true);
        return nativeMusicPlayer;
    }

    @Override // com.google.android.projection.sink.audio.AudioFocusManager.FocusChangeListener
    public void onPhoneFocusChange(int i2, boolean z2) {
        if (i2 == GalReceiver.AUDIO_FOCUS_STATE_GAIN || i2 == GalReceiver.AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY) {
            if (this.mStopping) {
                return;
            }
            stop();
            return;
        }
        if (i2 == GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT) {
            if (isPlaying()) {
                if (z2) {
                    doDuck();
                    return;
                } else {
                    pause();
                    return;
                }
            }
            return;
        }
        if (i2 == GalReceiver.AUDIO_FOCUS_STATE_LOSS) {
            if (isPlaying()) {
                undoDuck();
                resume();
                return;
            }
            return;
        }
        if (i2 == GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY && isPlaying()) {
            doDuck();
        }
    }

    @Override // com.google.android.projection.sink.audio.NativeAudioPlayerBase
    public void play() {
        if (!isPlaying()) {
            getAudioFocusManager().notifyCarMusicPlayStart();
        }
        super.play();
    }

    @Override // com.google.android.projection.sink.audio.NativeAudioPlayerBase
    public void stop() {
        if (isPlaying()) {
            this.mStopping = true;
            getAudioFocusManager().notifyCarMusicPlayEnd();
        }
        super.stop();
        this.mStopping = false;
    }
}
