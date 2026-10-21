package android.media.audiofx;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class AcousticEchoCanceler extends AudioEffect {
    private static final String TAG = "AcousticEchoCanceler";

    private AcousticEchoCanceler(int i2) {
        super(AudioEffect.EFFECT_TYPE_AEC, AudioEffect.EFFECT_TYPE_NULL, 0, i2);
    }

    public static AcousticEchoCanceler create(int i2) {
        try {
            try {
                try {
                    return new AcousticEchoCanceler(i2);
                } catch (RuntimeException unused) {
                    Log.w(TAG, "not enough memory");
                    return null;
                }
            } catch (IllegalArgumentException unused2) {
                Log.w(TAG, "not implemented on this device" + ((Object) null));
                return null;
            } catch (UnsupportedOperationException unused3) {
                Log.w(TAG, "not enough resources");
                return null;
            }
        } catch (Throwable unused4) {
            return null;
        }
    }

    public static boolean isAvailable() {
        return AudioEffect.isEffectTypeAvailable(AudioEffect.EFFECT_TYPE_AEC);
    }
}
