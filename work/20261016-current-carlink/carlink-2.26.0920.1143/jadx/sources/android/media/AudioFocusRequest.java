package android.media;

import android.accessibilityservice.c;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class AudioFocusRequest {
    private static final AudioAttributes FOCUS_DEFAULT_ATTR = new AudioAttributes.Builder().setUsage(1).build();
    private final AudioAttributes mAttr;
    private final int mFlags;
    private final int mFocusGain;
    private final AudioManager.OnAudioFocusChangeListener mFocusListener;
    private final Handler mListenerHandler;

    public static final boolean isValidFocusGain(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4;
    }

    public boolean acceptsDelayedFocusGain() {
        return (this.mFlags & 1) == 1;
    }

    public AudioAttributes getAudioAttributes() {
        return this.mAttr;
    }

    public int getFlags() {
        return this.mFlags;
    }

    public int getFocusGain() {
        return this.mFocusGain;
    }

    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.mFocusListener;
    }

    public Handler getOnAudioFocusChangeListenerHandler() {
        return this.mListenerHandler;
    }

    public boolean locksFocus() {
        return (this.mFlags & 4) == 4;
    }

    public boolean willPauseWhenDucked() {
        return (this.mFlags & 2) == 2;
    }

    private AudioFocusRequest(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, AudioAttributes audioAttributes, int i2, int i3) {
        this.mFocusListener = onAudioFocusChangeListener;
        this.mListenerHandler = handler;
        this.mFocusGain = i2;
        this.mAttr = audioAttributes;
        this.mFlags = i3;
    }

    public static final class Builder {
        private AudioAttributes mAttr;
        private boolean mDelayedFocus;
        private int mFocusGain;
        private AudioManager.OnAudioFocusChangeListener mFocusListener;
        private boolean mFocusLocked;
        private Handler mListenerHandler;
        private boolean mPausesOnDuck;

        public Builder(int i2) {
            this.mAttr = AudioFocusRequest.FOCUS_DEFAULT_ATTR;
            this.mPausesOnDuck = false;
            this.mDelayedFocus = false;
            this.mFocusLocked = false;
            setFocusGain(i2);
        }

        public AudioFocusRequest build() {
            boolean z2 = this.mDelayedFocus;
            if ((z2 || this.mPausesOnDuck) && this.mFocusListener == null) {
                throw new IllegalStateException("Can't use delayed focus or pause on duck without a listener");
            }
            return new AudioFocusRequest(this.mFocusListener, this.mListenerHandler, this.mAttr, this.mFocusGain, (z2 ? 1 : 0) | 0 | (this.mPausesOnDuck ? 2 : 0) | (this.mFocusLocked ? 4 : 0));
        }

        public Builder setAcceptsDelayedFocusGain(boolean z2) {
            this.mDelayedFocus = z2;
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            if (audioAttributes == null) {
                throw new NullPointerException("Illegal null AudioAttributes");
            }
            this.mAttr = audioAttributes;
            return this;
        }

        public Builder setFocusGain(int i2) {
            if (!AudioFocusRequest.isValidFocusGain(i2)) {
                throw new IllegalArgumentException(c.d("Illegal audio focus gain type ", i2));
            }
            this.mFocusGain = i2;
            return this;
        }

        public Builder setLocksFocus(boolean z2) {
            this.mFocusLocked = z2;
            return this;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
            if (onAudioFocusChangeListener == null) {
                throw new NullPointerException("Illegal null focus listener");
            }
            this.mFocusListener = onAudioFocusChangeListener;
            this.mListenerHandler = null;
            return this;
        }

        public Builder setOnAudioFocusChangeListenerInt(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.mFocusListener = onAudioFocusChangeListener;
            this.mListenerHandler = handler;
            return this;
        }

        public Builder setWillPauseWhenDucked(boolean z2) {
            this.mPausesOnDuck = z2;
            return this;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            if (onAudioFocusChangeListener != null && handler != null) {
                this.mFocusListener = onAudioFocusChangeListener;
                this.mListenerHandler = handler;
                return this;
            }
            throw new NullPointerException("Illegal null focus listener or handler");
        }

        public Builder(AudioFocusRequest audioFocusRequest) {
            this.mAttr = AudioFocusRequest.FOCUS_DEFAULT_ATTR;
            this.mPausesOnDuck = false;
            this.mDelayedFocus = false;
            this.mFocusLocked = false;
            if (audioFocusRequest != null) {
                this.mAttr = audioFocusRequest.mAttr;
                this.mFocusListener = audioFocusRequest.mFocusListener;
                this.mListenerHandler = audioFocusRequest.mListenerHandler;
                this.mFocusGain = audioFocusRequest.mFocusGain;
                this.mPausesOnDuck = audioFocusRequest.willPauseWhenDucked();
                this.mDelayedFocus = audioFocusRequest.acceptsDelayedFocusGain();
                return;
            }
            throw new IllegalArgumentException("Illegal null AudioFocusRequest");
        }
    }
}
