package android.media.audiofx;

import android.util.Log;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class LoudnessEnhancer extends AudioEffect {
    public static final int PARAM_TARGET_GAIN_MB = 0;
    private static final String TAG = "LoudnessEnhancer";
    private BaseParameterListener mBaseParamListener;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;

    public class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i2, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            if (i2 != 0) {
                return;
            }
            synchronized (LoudnessEnhancer.this.mParamListenerLock) {
                onParameterChangeListener = LoudnessEnhancer.this.mParamListener != null ? LoudnessEnhancer.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                int iByteArrayToInt = bArr.length == 4 ? LoudnessEnhancer.this.byteArrayToInt(bArr, 0) : -1;
                int iByteArrayToInt2 = bArr2.length == 4 ? LoudnessEnhancer.this.byteArrayToInt(bArr2, 0) : Integer.MIN_VALUE;
                if (iByteArrayToInt == -1 || iByteArrayToInt2 == Integer.MIN_VALUE) {
                    return;
                }
                onParameterChangeListener.onParameterChange(LoudnessEnhancer.this, iByteArrayToInt, iByteArrayToInt2);
            }
        }

        private BaseParameterListener() {
        }
    }

    public interface OnParameterChangeListener {
        void onParameterChange(LoudnessEnhancer loudnessEnhancer, int i2, int i3);
    }

    public static class Settings {
        public int targetGainmB;

        public Settings() {
        }

        public String toString() {
            return new String("LoudnessEnhancer;targetGainmB=" + Integer.toString(this.targetGainmB));
        }

        public Settings(String str) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            if (stringTokenizer.countTokens() != 3) {
                throw new IllegalArgumentException("settings: " + str);
            }
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.equals(LoudnessEnhancer.TAG)) {
                throw new IllegalArgumentException("invalid settings for LoudnessEnhancer: " + strNextToken);
            }
            try {
                String strNextToken2 = stringTokenizer.nextToken();
                if (strNextToken2.equals("targetGainmB")) {
                    this.targetGainmB = Integer.parseInt(stringTokenizer.nextToken());
                    return;
                }
                throw new IllegalArgumentException("invalid key name: " + strNextToken2);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("invalid value for key: " + strNextToken);
            }
        }
    }

    public LoudnessEnhancer(int i2) {
        super(AudioEffect.EFFECT_TYPE_LOUDNESS_ENHANCER, AudioEffect.EFFECT_TYPE_NULL, 0, i2);
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
        if (i2 == 0) {
            Log.w(TAG, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!");
        }
    }

    public Settings getProperties() {
        Settings settings = new Settings();
        int[] iArr = new int[1];
        checkStatus(getParameter(0, iArr));
        settings.targetGainmB = iArr[0];
        return settings;
    }

    public float getTargetGain() {
        int[] iArr = new int[1];
        checkStatus(getParameter(0, iArr));
        return iArr[0];
    }

    public void setParameterListener(OnParameterChangeListener onParameterChangeListener) {
        synchronized (this.mParamListenerLock) {
            if (this.mParamListener == null) {
                BaseParameterListener baseParameterListener = new BaseParameterListener();
                this.mBaseParamListener = baseParameterListener;
                super.setParameterListener(baseParameterListener);
            }
            this.mParamListener = onParameterChangeListener;
        }
    }

    public void setProperties(Settings settings) {
        checkStatus(setParameter(0, settings.targetGainmB));
    }

    public void setTargetGain(int i2) {
        checkStatus(setParameter(0, i2));
    }

    public LoudnessEnhancer(int i2, int i3) {
        super(AudioEffect.EFFECT_TYPE_LOUDNESS_ENHANCER, AudioEffect.EFFECT_TYPE_NULL, i2, i3);
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
        if (i3 == 0) {
            Log.w(TAG, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!");
        }
    }
}
