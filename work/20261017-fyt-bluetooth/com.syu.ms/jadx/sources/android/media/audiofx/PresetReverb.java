package android.media.audiofx;

import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class PresetReverb extends AudioEffect {
    public static final int PARAM_PRESET = 0;
    public static final short PRESET_LARGEHALL = 5;
    public static final short PRESET_LARGEROOM = 3;
    public static final short PRESET_MEDIUMHALL = 4;
    public static final short PRESET_MEDIUMROOM = 2;
    public static final short PRESET_NONE = 0;
    public static final short PRESET_PLATE = 6;
    public static final short PRESET_SMALLROOM = 1;
    private static final String TAG = "PresetReverb";
    private BaseParameterListener mBaseParamListener;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;

    public class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i2, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            synchronized (PresetReverb.this.mParamListenerLock) {
                onParameterChangeListener = PresetReverb.this.mParamListener != null ? PresetReverb.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                int iByteArrayToInt = bArr.length == 4 ? PresetReverb.this.byteArrayToInt(bArr, 0) : -1;
                short sByteArrayToShort = bArr2.length == 2 ? PresetReverb.this.byteArrayToShort(bArr2, 0) : (short) -1;
                if (iByteArrayToInt == -1 || sByteArrayToShort == -1) {
                    return;
                }
                onParameterChangeListener.onParameterChange(PresetReverb.this, i2, iByteArrayToInt, sByteArrayToShort);
            }
        }

        private BaseParameterListener() {
        }
    }

    public interface OnParameterChangeListener {
        void onParameterChange(PresetReverb presetReverb, int i2, int i3, short s2);
    }

    public static class Settings {
        public short preset;

        public Settings() {
        }

        public String toString() {
            return new String("PresetReverb;preset=" + Short.toString(this.preset));
        }

        public Settings(String str) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            stringTokenizer.countTokens();
            if (stringTokenizer.countTokens() != 3) {
                throw new IllegalArgumentException("settings: " + str);
            }
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.equals(PresetReverb.TAG)) {
                throw new IllegalArgumentException("invalid settings for PresetReverb: " + strNextToken);
            }
            try {
                String strNextToken2 = stringTokenizer.nextToken();
                if (strNextToken2.equals("preset")) {
                    this.preset = Short.parseShort(stringTokenizer.nextToken());
                    return;
                }
                throw new IllegalArgumentException("invalid key name: " + strNextToken2);
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException("invalid value for key: " + strNextToken);
            }
        }
    }

    public PresetReverb(int i2, int i3) {
        super(AudioEffect.EFFECT_TYPE_PRESET_REVERB, AudioEffect.EFFECT_TYPE_NULL, i2, i3);
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
    }

    public short getPreset() {
        short[] sArr = new short[1];
        checkStatus(getParameter(0, sArr));
        return sArr[0];
    }

    public Settings getProperties() {
        Settings settings = new Settings();
        short[] sArr = new short[1];
        checkStatus(getParameter(0, sArr));
        settings.preset = sArr[0];
        return settings;
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

    public void setPreset(short s2) {
        checkStatus(setParameter(0, s2));
    }

    public void setProperties(Settings settings) {
        checkStatus(setParameter(0, settings.preset));
    }
}
