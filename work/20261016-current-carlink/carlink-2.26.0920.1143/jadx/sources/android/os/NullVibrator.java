package android.os;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class NullVibrator extends Vibrator {
    private static final NullVibrator sInstance = new NullVibrator();

    private NullVibrator() {
    }

    public static NullVibrator getInstance() {
        return sInstance;
    }

    @Override // android.os.Vibrator
    public void cancel() {
    }

    @Override // android.os.Vibrator
    public boolean hasAmplitudeControl() {
        return false;
    }

    @Override // android.os.Vibrator
    public boolean hasVibrator() {
        return false;
    }

    @Override // android.os.Vibrator
    public void vibrate(int i2, String str, VibrationEffect vibrationEffect, AudioAttributes audioAttributes) {
    }
}
