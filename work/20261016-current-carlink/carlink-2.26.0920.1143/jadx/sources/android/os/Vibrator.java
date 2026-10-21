package android.os;

import android.app.ActivityThread;
import android.content.Context;
import android.media.AudioAttributes;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class Vibrator {
    private static final String TAG = "Vibrator";
    private final String mPackageName;

    public Vibrator() {
        this.mPackageName = ActivityThread.currentPackageName();
    }

    public abstract void cancel();

    public abstract boolean hasAmplitudeControl();

    public abstract boolean hasVibrator();

    public abstract void vibrate(int i2, String str, VibrationEffect vibrationEffect, AudioAttributes audioAttributes);

    @Deprecated
    public void vibrate(long j2) {
        vibrate(j2, (AudioAttributes) null);
    }

    @Deprecated
    public void vibrate(long j2, AudioAttributes audioAttributes) {
        try {
            vibrate(VibrationEffect.createOneShot(j2, -1), audioAttributes);
        } catch (IllegalArgumentException e2) {
            Log.e(TAG, "Failed to create VibrationEffect", e2);
        }
    }

    public Vibrator(Context context) {
        this.mPackageName = context.getOpPackageName();
    }

    @Deprecated
    public void vibrate(long[] jArr, int i2) {
        vibrate(jArr, i2, null);
    }

    @Deprecated
    public void vibrate(long[] jArr, int i2, AudioAttributes audioAttributes) {
        if (i2 >= -1 && i2 < jArr.length) {
            try {
                vibrate(VibrationEffect.createWaveform(jArr, i2), audioAttributes);
                return;
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Failed to create VibrationEffect", e2);
                return;
            }
        }
        Log.e(TAG, "vibrate called with repeat index out of bounds (pattern.length=" + jArr.length + ", index=" + i2 + ")");
        throw new ArrayIndexOutOfBoundsException();
    }

    public void vibrate(VibrationEffect vibrationEffect) {
        vibrate(vibrationEffect, (AudioAttributes) null);
    }

    public void vibrate(VibrationEffect vibrationEffect, AudioAttributes audioAttributes) {
        vibrate(Process.myUid(), this.mPackageName, vibrationEffect, audioAttributes);
    }
}
