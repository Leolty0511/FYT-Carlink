package android.media;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class VolumeProvider {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private Callback mCallback;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;

    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProvider volumeProvider);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ControlType {
    }

    public VolumeProvider(int i2, int i3, int i4) {
        this.mControlType = i2;
        this.mMaxVolume = i3;
        this.mCurrentVolume = i4;
    }

    public final int getCurrentVolume() {
        return this.mCurrentVolume;
    }

    public final int getMaxVolume() {
        return this.mMaxVolume;
    }

    public final int getVolumeControl() {
        return this.mControlType;
    }

    public void onAdjustVolume(int i2) {
    }

    public void onSetVolumeTo(int i2) {
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public final void setCurrentVolume(int i2) {
        this.mCurrentVolume = i2;
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onVolumeChanged(this);
        }
    }
}
