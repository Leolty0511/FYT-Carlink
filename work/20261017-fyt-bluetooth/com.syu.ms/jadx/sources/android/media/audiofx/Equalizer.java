package android.media.audiofx;

import android.net.ProxyProperties;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class Equalizer extends AudioEffect {
    public static final int PARAM_BAND_FREQ_RANGE = 4;
    public static final int PARAM_BAND_LEVEL = 2;
    public static final int PARAM_CENTER_FREQ = 3;
    public static final int PARAM_CURRENT_PRESET = 6;
    public static final int PARAM_GET_BAND = 5;
    public static final int PARAM_GET_NUM_OF_PRESETS = 7;
    public static final int PARAM_GET_PRESET_NAME = 8;
    public static final int PARAM_LEVEL_RANGE = 1;
    public static final int PARAM_NUM_BANDS = 0;
    private static final int PARAM_PROPERTIES = 9;
    public static final int PARAM_STRING_SIZE_MAX = 32;
    private static final String TAG = "Equalizer";
    private BaseParameterListener mBaseParamListener;
    private short mNumBands;
    private int mNumPresets;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;
    private String[] mPresetNames;

    public class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i2, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            int i3;
            int iByteArrayToInt;
            int i4;
            int iByteArrayToInt2;
            synchronized (Equalizer.this.mParamListenerLock) {
                onParameterChangeListener = Equalizer.this.mParamListener != null ? Equalizer.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                if (bArr.length >= 4) {
                    int iByteArrayToInt3 = Equalizer.this.byteArrayToInt(bArr, 0);
                    if (bArr.length >= 8) {
                        i3 = iByteArrayToInt3;
                        iByteArrayToInt = Equalizer.this.byteArrayToInt(bArr, 4);
                    } else {
                        i3 = iByteArrayToInt3;
                        iByteArrayToInt = -1;
                    }
                } else {
                    i3 = -1;
                    iByteArrayToInt = -1;
                }
                if (bArr2.length != 2) {
                    if (bArr2.length == 4) {
                        iByteArrayToInt2 = Equalizer.this.byteArrayToInt(bArr2, 0);
                    } else {
                        i4 = -1;
                    }
                    if (i3 != -1 || i4 == -1) {
                    }
                    onParameterChangeListener.onParameterChange(Equalizer.this, i2, i3, iByteArrayToInt, i4);
                    return;
                }
                iByteArrayToInt2 = Equalizer.this.byteArrayToShort(bArr2, 0);
                i4 = iByteArrayToInt2;
                if (i3 != -1) {
                }
            }
        }

        private BaseParameterListener() {
        }
    }

    public interface OnParameterChangeListener {
        void onParameterChange(Equalizer equalizer, int i2, int i3, int i4, int i5);
    }

    public Equalizer(int i2, int i3) {
        super(AudioEffect.EFFECT_TYPE_EQUALIZER, AudioEffect.EFFECT_TYPE_NULL, i2, i3);
        this.mNumBands = (short) 0;
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
        if (i3 == 0) {
            Log.w(TAG, "WARNING: attaching an Equalizer to global output mix is deprecated!");
        }
        getNumberOfBands();
        int numberOfPresets = getNumberOfPresets();
        this.mNumPresets = numberOfPresets;
        if (numberOfPresets != 0) {
            this.mPresetNames = new String[numberOfPresets];
            byte[] bArr = new byte[32];
            int[] iArr = new int[2];
            iArr[0] = 8;
            for (int i4 = 0; i4 < this.mNumPresets; i4++) {
                iArr[1] = i4;
                checkStatus(getParameter(iArr, bArr));
                int i5 = 0;
                while (bArr[i5] != 0) {
                    i5++;
                }
                try {
                    this.mPresetNames[i4] = new String(bArr, 0, i5, "ISO-8859-1");
                } catch (UnsupportedEncodingException unused) {
                    Log.e(TAG, "preset name decode error");
                }
            }
        }
    }

    public short getBand(int i2) {
        short[] sArr = new short[1];
        checkStatus(getParameter(new int[]{5, i2}, sArr));
        return sArr[0];
    }

    public int[] getBandFreqRange(short s2) {
        int[] iArr = new int[2];
        checkStatus(getParameter(new int[]{4, s2}, iArr));
        return iArr;
    }

    public short getBandLevel(short s2) {
        short[] sArr = new short[1];
        checkStatus(getParameter(new int[]{2, s2}, sArr));
        return sArr[0];
    }

    public short[] getBandLevelRange() {
        short[] sArr = new short[2];
        checkStatus(getParameter(1, sArr));
        return sArr;
    }

    public int getCenterFreq(short s2) {
        int[] iArr = new int[1];
        checkStatus(getParameter(new int[]{3, s2}, iArr));
        return iArr[0];
    }

    public short getCurrentPreset() {
        short[] sArr = new short[1];
        checkStatus(getParameter(6, sArr));
        return sArr[0];
    }

    public short getNumberOfBands() {
        short s2 = this.mNumBands;
        if (s2 != 0) {
            return s2;
        }
        short[] sArr = new short[1];
        checkStatus(getParameter(new int[]{0}, sArr));
        short s3 = sArr[0];
        this.mNumBands = s3;
        return s3;
    }

    public short getNumberOfPresets() {
        short[] sArr = new short[1];
        checkStatus(getParameter(7, sArr));
        return sArr[0];
    }

    public String getPresetName(short s2) {
        return (s2 < 0 || s2 >= this.mNumPresets) ? ProxyProperties.LOCAL_EXCL_LIST : this.mPresetNames[s2];
    }

    public Settings getProperties() {
        byte[] bArr = new byte[(this.mNumBands * 2) + 4];
        checkStatus(getParameter(9, bArr));
        Settings settings = new Settings();
        settings.curPreset = byteArrayToShort(bArr, 0);
        settings.numBands = byteArrayToShort(bArr, 2);
        settings.bandLevels = new short[this.mNumBands];
        for (int i2 = 0; i2 < this.mNumBands; i2++) {
            settings.bandLevels[i2] = byteArrayToShort(bArr, (i2 * 2) + 4);
        }
        return settings;
    }

    public void setBandLevel(short s2, short s3) {
        checkStatus(setParameter(new int[]{2, s2}, new short[]{s3}));
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
        short s2 = settings.numBands;
        if (s2 != settings.bandLevels.length || s2 != this.mNumBands) {
            throw new IllegalArgumentException("settings invalid band count: " + ((int) settings.numBands));
        }
        byte[] bArrConcatArrays = concatArrays(shortToByteArray(settings.curPreset), shortToByteArray(this.mNumBands));
        for (int i2 = 0; i2 < this.mNumBands; i2++) {
            bArrConcatArrays = concatArrays(bArrConcatArrays, shortToByteArray(settings.bandLevels[i2]));
        }
        checkStatus(setParameter(9, bArrConcatArrays));
    }

    public void usePreset(short s2) {
        checkStatus(setParameter(6, s2));
    }

    public static class Settings {
        public short[] bandLevels;
        public short curPreset;
        public short numBands;

        public Settings() {
            this.numBands = (short) 0;
            this.bandLevels = null;
        }

        public String toString() {
            String str = new String("Equalizer;curPreset=" + Short.toString(this.curPreset) + ";numBands=" + Short.toString(this.numBands));
            int i2 = 0;
            while (i2 < this.numBands) {
                StringBuilder sb = new StringBuilder();
                sb.append(";band");
                int i3 = i2 + 1;
                sb.append(i3);
                sb.append("Level=");
                sb.append(Short.toString(this.bandLevels[i2]));
                str = str.concat(sb.toString());
                i2 = i3;
            }
            return str;
        }

        public Settings(String str) {
            int i2 = 0;
            this.numBands = (short) 0;
            this.bandLevels = null;
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            stringTokenizer.countTokens();
            if (stringTokenizer.countTokens() >= 5) {
                String strNextToken = stringTokenizer.nextToken();
                if (strNextToken.equals(Equalizer.TAG)) {
                    try {
                        String strNextToken2 = stringTokenizer.nextToken();
                        if (strNextToken2.equals("curPreset")) {
                            this.curPreset = Short.parseShort(stringTokenizer.nextToken());
                            String strNextToken3 = stringTokenizer.nextToken();
                            if (strNextToken3.equals("numBands")) {
                                this.numBands = Short.parseShort(stringTokenizer.nextToken());
                                int iCountTokens = stringTokenizer.countTokens();
                                int i3 = this.numBands;
                                if (iCountTokens == i3 * 2) {
                                    this.bandLevels = new short[i3];
                                    while (i2 < this.numBands) {
                                        String strNextToken4 = stringTokenizer.nextToken();
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("band");
                                        int i4 = i2 + 1;
                                        sb.append(i4);
                                        sb.append("Level");
                                        if (strNextToken4.equals(sb.toString())) {
                                            this.bandLevels[i2] = Short.parseShort(stringTokenizer.nextToken());
                                            i2 = i4;
                                        } else {
                                            throw new IllegalArgumentException("invalid key name: " + strNextToken4);
                                        }
                                    }
                                    return;
                                }
                                throw new IllegalArgumentException("settings: " + str);
                            }
                            throw new IllegalArgumentException("invalid key name: " + strNextToken3);
                        }
                        throw new IllegalArgumentException("invalid key name: " + strNextToken2);
                    } catch (NumberFormatException unused) {
                        throw new IllegalArgumentException("invalid value for key: " + strNextToken);
                    }
                }
                throw new IllegalArgumentException("invalid settings for Equalizer: " + strNextToken);
            }
            throw new IllegalArgumentException("settings: " + str);
        }
    }
}
