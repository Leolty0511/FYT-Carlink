package com.google.android.projection.sink.audio;

import android.util.Log;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.GalVerificationVendorExtension;
import com.google.android.projection.sink.GalIntegration;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public class AudioFocusManager implements GalVerificationVendorExtension.AudioFocusManager {
    private static final boolean DBG = true;
    private static final String TAG = "AHU.AUDIO";
    private final GalIntegration mGal;
    private final boolean mUseRestrictedMode;
    private final LinkedList<FocusChangeListener> mListeners = new LinkedList<>();
    private volatile boolean mPhoneFocusEnabled = true;
    private boolean mCarPlayingHighPrioritySound = false;
    private volatile int mPhoneFocusState = GalReceiver.AUDIO_FOCUS_STATE_LOSS;
    private volatile boolean mCarMusicPlaying = false;
    private volatile boolean mCarGuidancePlaying = false;
    private volatile boolean mCarCanDuck = false;

    public interface FocusChangeListener {
        void onPhoneFocusChange(int i2, boolean z2);
    }

    public AudioFocusManager(GalIntegration galIntegration, boolean z2) {
        this.mGal = galIntegration;
        this.mUseRestrictedMode = z2;
    }

    private void notifyFocusStateToClients(int i2) {
        Log.i("AHU.AUDIO", "notifyFOcusStateToClients " + i2);
        Iterator<FocusChangeListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onPhoneFocusChange(i2, this.mCarCanDuck);
        }
    }

    private void setPhoneFocusState(int i2, boolean z2) {
        Log.i("AHU.AUDIO", "set phone focus state:" + i2);
        this.mGal.galReceiver.setAudioFocus(i2, z2);
        if (this.mPhoneFocusState != i2) {
            notifyFocusStateToClients(i2);
        }
        this.mPhoneFocusState = i2;
    }

    public synchronized boolean canCarContinueGuidance() {
        boolean z2 = false;
        if (this.mCarPlayingHighPrioritySound) {
            return false;
        }
        if (this.mPhoneFocusState != GalReceiver.AUDIO_FOCUS_STATE_GAIN && this.mPhoneFocusState != GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT) {
            z2 = true;
        }
        return z2;
    }

    public synchronized boolean canCarContinueMusic() {
        boolean z2 = false;
        if (this.mCarPlayingHighPrioritySound) {
            return false;
        }
        if (this.mCarCanDuck) {
            return true;
        }
        if (this.mPhoneFocusState != GalReceiver.AUDIO_FOCUS_STATE_GAIN && this.mPhoneFocusState != GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT && this.mPhoneFocusState != GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK) {
            z2 = true;
        }
        return z2;
    }

    public boolean canPhonePlay(int i2) {
        if (i2 == 1) {
            return true;
        }
        if (i2 == 3) {
            return this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN || this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT || this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY || this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK;
        }
        return this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN || this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT || this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY;
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtension.AudioFocusManager
    public synchronized void disablePhoneFocus() {
        this.mPhoneFocusEnabled = false;
        setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_LOSS, true);
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtension.AudioFocusManager
    public synchronized void enablePhoneFocus() {
        this.mPhoneFocusEnabled = true;
        setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN, true);
    }

    public synchronized void handleAudioFocusRequest(int i2) {
        Log.i("AHU.AUDIO", "onAudioFocusRequest, req:" + i2 + " highpriority:" + this.mCarPlayingHighPrioritySound);
        if (this.mUseRestrictedMode && !this.mPhoneFocusEnabled && i2 == GalReceiver.AUDIO_FOCUS_GAIN) {
            this.mCarMusicPlaying = false;
            setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN_MEDIA_ONLY, false);
        } else if (this.mCarPlayingHighPrioritySound || !this.mPhoneFocusEnabled) {
            setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_LOSS, false);
        } else {
            this.mCarCanDuck = false;
            if (i2 == GalReceiver.AUDIO_FOCUS_GAIN) {
                this.mCarMusicPlaying = false;
                setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN, false);
            } else if (i2 == GalReceiver.AUDIO_FOCUS_GAIN_TRANSIENT) {
                this.mCarMusicPlaying = false;
                if (this.mUseRestrictedMode) {
                    setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY, false);
                } else {
                    setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT, false);
                }
            } else if (i2 == GalReceiver.AUDIO_FOCUS_GAIN_TRANSIENT_MAY_DUCK) {
                this.mCarCanDuck = true;
                if (this.mUseRestrictedMode) {
                    setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT_GUIDANCE_ONLY, false);
                } else {
                    setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT, false);
                }
            } else if (i2 == GalReceiver.AUDIO_FOCUS_RELEASE) {
                setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_LOSS, false);
            } else {
                Log.i("AHU.AUDIO", "Unknown focus request " + i2);
            }
        }
    }

    public boolean isCarPlayingGuidance() {
        return this.mCarGuidancePlaying;
    }

    public boolean isCarPlayingHighPrioritySound() {
        return this.mCarPlayingHighPrioritySound;
    }

    public boolean isCarPlayingMusic() {
        return this.mCarMusicPlaying;
    }

    public synchronized void notifyCarGuidancePlayEnd() {
        Log.i("AHU.AUDIO", "notifyCarGuidancePlayEnd");
        this.mCarGuidancePlaying = false;
        if (this.mCarMusicPlaying) {
            return;
        }
        setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_GAIN, true);
    }

    public synchronized void notifyCarGuidancePlayStart(boolean z2) {
        Log.i("AHU.AUDIO", "notifyCarGuidancePlayStart");
        this.mCarGuidancePlaying = true;
        if (this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_LOSS) {
            return;
        }
        setPhoneFocusState(z2 ? GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK : GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT, true);
    }

    public synchronized void notifyCarHighPrioritySoundEnd() {
        Log.i("AHU.AUDIO", "notifyCarHighPrioritySoundEnd");
        this.mCarPlayingHighPrioritySound = false;
    }

    public synchronized void notifyCarHighPrioritySoundStart() {
        Log.i("AHU.AUDIO", "notifyCarHighPrioritySoundStart");
        this.mCarPlayingHighPrioritySound = true;
        if (this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN || this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_GAIN_TRANSIENT || this.mPhoneFocusState == GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK) {
            setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT, true);
        } else {
            notifyFocusStateToClients(this.mPhoneFocusState);
        }
    }

    public synchronized void notifyCarMusicPlayEnd() {
        Log.i("AHU.AUDIO", "notifyCarMusicPlayEnd");
        this.mCarMusicPlaying = false;
        if (this.mCarGuidancePlaying) {
            setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT, true);
        }
    }

    public synchronized void notifyCarMusicPlayStart() {
        Log.i("AHU.AUDIO", "notifyCarMusicPlayStart");
        this.mCarMusicPlaying = true;
        setPhoneFocusState(GalReceiver.AUDIO_FOCUS_STATE_LOSS, true);
    }

    public synchronized void registerFocusChangeListener(FocusChangeListener focusChangeListener) {
        this.mListeners.add(focusChangeListener);
    }

    @Override // com.google.android.projection.protocol.GalVerificationVendorExtension.AudioFocusManager
    public synchronized void setTransientLossState(int i2) {
        if (i2 != GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT && i2 != GalReceiver.AUDIO_FOCUS_STATE_LOSS_TRANSIENT_CAN_DUCK) {
            Log.e("AHU.AUDIO", String.format("Unknown transient loss focus state requested: %d", Integer.valueOf(i2)));
        } else {
            setPhoneFocusState(i2, false);
            this.mPhoneFocusEnabled = false;
        }
    }

    public synchronized void unregisterFocusChangeListener(FocusChangeListener focusChangeListener) {
        this.mListeners.remove(focusChangeListener);
    }
}
