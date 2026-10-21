package android.media.audiofx;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class NoiseSuppressor extends AudioEffect {
    private static final String TAG = "NoiseSuppressor";

    private NoiseSuppressor(int i2) {
        super(AudioEffect.EFFECT_TYPE_NS, AudioEffect.EFFECT_TYPE_NULL, 0, i2);
    }

    public static NoiseSuppressor create(int i2) {
        try {
            return new NoiseSuppressor(i2);
        } catch (IllegalArgumentException unused) {
            Log.w(TAG, "not implemented on this device null");
            return null;
        } catch (UnsupportedOperationException unused2) {
            Log.w(TAG, "not enough resources");
            return null;
        } catch (RuntimeException unused3) {
            Log.w(TAG, "not enough memory");
            return null;
        }
    }

    public static boolean isAvailable() {
        return AudioEffect.isEffectTypeAvailable(AudioEffect.EFFECT_TYPE_NS);
    }
}
