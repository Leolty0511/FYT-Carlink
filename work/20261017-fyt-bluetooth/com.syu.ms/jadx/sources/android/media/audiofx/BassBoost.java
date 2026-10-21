package android.media.audiofx;

import android.util.Log;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class BassBoost extends AudioEffect {
    public static final int PARAM_STRENGTH = 1;
    public static final int PARAM_STRENGTH_SUPPORTED = 0;
    private static final String TAG = "BassBoost";
    private BaseParameterListener mBaseParamListener;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;
    private boolean mStrengthSupported;

    public class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i2, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            synchronized (BassBoost.this.mParamListenerLock) {
                onParameterChangeListener = BassBoost.this.mParamListener != null ? BassBoost.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                int iByteArrayToInt = bArr.length == 4 ? BassBoost.this.byteArrayToInt(bArr, 0) : -1;
                short sByteArrayToShort = bArr2.length == 2 ? BassBoost.this.byteArrayToShort(bArr2, 0) : (short) -1;
                if (iByteArrayToInt == -1 || sByteArrayToShort == -1) {
                    return;
                }
                onParameterChangeListener.onParameterChange(BassBoost.this, i2, iByteArrayToInt, sByteArrayToShort);
            }
        }

        private BaseParameterListener() {
        }
    }

    public interface OnParameterChangeListener {
        void onParameterChange(BassBoost bassBoost, int i2, int i3, short s2);
    }

    public static class Settings {
        public short strength;

        public Settings() {
        }

        public String toString() {
            return new String("BassBoost;strength=" + Short.toString(this.strength));
        }

        public Settings(String str) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            stringTokenizer.countTokens();
            if (stringTokenizer.countTokens() != 3) {
                throw new IllegalArgumentException("settings: " + str);
            }
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.equals(BassBoost.TAG)) {
                throw new IllegalArgumentException("invalid settings for BassBoost: " + strNextToken);
            }
            try {
                String strNextToken2 = stringTokenizer.nextToken();
                if (strNextToken2.equals("strength")) {
                    this.strength = Short.parseShort(stringTokenizer.nextToken());
                    return;
                }
                throw new IllegalArgumentException("invalid key name: " + strNextToken2);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("invalid value for key: " + strNextToken);
            }
        }
    }

    public BassBoost(int i2, int i3) {
        super(AudioEffect.EFFECT_TYPE_BASS_BOOST, AudioEffect.EFFECT_TYPE_NULL, i2, i3);
        this.mStrengthSupported = false;
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
        if (i3 == 0) {
            Log.w(TAG, "WARNING: attaching a BassBoost to global output mix is deprecated!");
        }
        int[] iArr = new int[1];
        checkStatus(getParameter(0, iArr));
        this.mStrengthSupported = iArr[0] != 0;
    }

    public Settings getProperties() {
        Settings settings = new Settings();
        short[] sArr = new short[1];
        checkStatus(getParameter(1, sArr));
        settings.strength = sArr[0];
        return settings;
    }

    public short getRoundedStrength() {
        short[] sArr = new short[1];
        checkStatus(getParameter(1, sArr));
        return sArr[0];
    }

    public boolean getStrengthSupported() {
        return this.mStrengthSupported;
    }

    public void setParameterListener(OnParameterChangeListener onParameterChangeListener) {
        synchronized (this.mParamListenerLock) {
            if (this.mParamListener == null) {
                this.mParamListener = onParameterChangeListener;
                BaseParameterListener baseParameterListener = new BaseParameterListener();
                this.mBaseParamListener = baseParameterListener;
                super.setParameterListener(baseParameterListener);
            }
        }
    }

    public void setProperties(Settings settings) {
        checkStatus(setParameter(1, settings.strength));
    }

    public void setStrength(short s2) {
        checkStatus(setParameter(1, s2));
    }
}
