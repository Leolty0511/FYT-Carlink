package android.media.audiofx;

import android.accessibilityservice.c;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class EnvironmentalReverb extends AudioEffect {
    public static final int PARAM_DECAY_HF_RATIO = 3;
    public static final int PARAM_DECAY_TIME = 2;
    public static final int PARAM_DENSITY = 9;
    public static final int PARAM_DIFFUSION = 8;
    private static final int PARAM_PROPERTIES = 10;
    public static final int PARAM_REFLECTIONS_DELAY = 5;
    public static final int PARAM_REFLECTIONS_LEVEL = 4;
    public static final int PARAM_REVERB_DELAY = 7;
    public static final int PARAM_REVERB_LEVEL = 6;
    public static final int PARAM_ROOM_HF_LEVEL = 1;
    public static final int PARAM_ROOM_LEVEL = 0;
    private static int PROPERTY_SIZE = 26;
    private static final String TAG = "EnvironmentalReverb";
    private BaseParameterListener mBaseParamListener;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;

    public class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i2, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            int iByteArrayToInt;
            synchronized (EnvironmentalReverb.this.mParamListenerLock) {
                onParameterChangeListener = EnvironmentalReverb.this.mParamListener != null ? EnvironmentalReverb.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                int iByteArrayToInt2 = bArr.length == 4 ? AudioEffect.byteArrayToInt(bArr, 0) : -1;
                if (bArr2.length == 2) {
                    iByteArrayToInt = AudioEffect.byteArrayToShort(bArr2, 0);
                } else {
                    iByteArrayToInt = bArr2.length == 4 ? AudioEffect.byteArrayToInt(bArr2, 0) : -1;
                }
                if (iByteArrayToInt2 == -1 || iByteArrayToInt == -1) {
                    return;
                }
                onParameterChangeListener.onParameterChange(EnvironmentalReverb.this, i2, iByteArrayToInt2, iByteArrayToInt);
            }
        }

        private BaseParameterListener() {
        }
    }

    public interface OnParameterChangeListener {
        void onParameterChange(EnvironmentalReverb environmentalReverb, int i2, int i3, int i4);
    }

    public static class Settings {
        public short decayHFRatio;
        public int decayTime;
        public short density;
        public short diffusion;
        public int reflectionsDelay;
        public short reflectionsLevel;
        public int reverbDelay;
        public short reverbLevel;
        public short roomHFLevel;
        public short roomLevel;

        public Settings() {
        }

        public String toString() {
            return new String("EnvironmentalReverb;roomLevel=" + Short.toString(this.roomLevel) + ";roomHFLevel=" + Short.toString(this.roomHFLevel) + ";decayTime=" + Integer.toString(this.decayTime) + ";decayHFRatio=" + Short.toString(this.decayHFRatio) + ";reflectionsLevel=" + Short.toString(this.reflectionsLevel) + ";reflectionsDelay=" + Integer.toString(this.reflectionsDelay) + ";reverbLevel=" + Short.toString(this.reverbLevel) + ";reverbDelay=" + Integer.toString(this.reverbDelay) + ";diffusion=" + Short.toString(this.diffusion) + ";density=" + Short.toString(this.density));
        }

        public Settings(String str) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            stringTokenizer.countTokens();
            if (stringTokenizer.countTokens() != 21) {
                throw new IllegalArgumentException(c.j("settings: ", str));
            }
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.equals(EnvironmentalReverb.TAG)) {
                throw new IllegalArgumentException("invalid settings for EnvironmentalReverb: ".concat(strNextToken));
            }
            try {
                String strNextToken2 = stringTokenizer.nextToken();
                if (!strNextToken2.equals("roomLevel")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken2));
                }
                this.roomLevel = Short.parseShort(stringTokenizer.nextToken());
                String strNextToken3 = stringTokenizer.nextToken();
                if (!strNextToken3.equals("roomHFLevel")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken3));
                }
                this.roomHFLevel = Short.parseShort(stringTokenizer.nextToken());
                String strNextToken4 = stringTokenizer.nextToken();
                if (!strNextToken4.equals("decayTime")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken4));
                }
                this.decayTime = Integer.parseInt(stringTokenizer.nextToken());
                String strNextToken5 = stringTokenizer.nextToken();
                if (!strNextToken5.equals("decayHFRatio")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken5));
                }
                this.decayHFRatio = Short.parseShort(stringTokenizer.nextToken());
                String strNextToken6 = stringTokenizer.nextToken();
                if (!strNextToken6.equals("reflectionsLevel")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken6));
                }
                this.reflectionsLevel = Short.parseShort(stringTokenizer.nextToken());
                String strNextToken7 = stringTokenizer.nextToken();
                if (!strNextToken7.equals("reflectionsDelay")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken7));
                }
                this.reflectionsDelay = Integer.parseInt(stringTokenizer.nextToken());
                String strNextToken8 = stringTokenizer.nextToken();
                if (!strNextToken8.equals("reverbLevel")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken8));
                }
                this.reverbLevel = Short.parseShort(stringTokenizer.nextToken());
                String strNextToken9 = stringTokenizer.nextToken();
                if (!strNextToken9.equals("reverbDelay")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken9));
                }
                this.reverbDelay = Integer.parseInt(stringTokenizer.nextToken());
                String strNextToken10 = stringTokenizer.nextToken();
                if (!strNextToken10.equals("diffusion")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken10));
                }
                this.diffusion = Short.parseShort(stringTokenizer.nextToken());
                String strNextToken11 = stringTokenizer.nextToken();
                if (!strNextToken11.equals("density")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken11));
                }
                this.density = Short.parseShort(stringTokenizer.nextToken());
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(c.j("invalid value for key: ", strNextToken));
            }
        }
    }

    public EnvironmentalReverb(int i2, int i3) {
        super(AudioEffect.EFFECT_TYPE_ENV_REVERB, AudioEffect.EFFECT_TYPE_NULL, i2, i3);
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
    }

    public short getDecayHFRatio() {
        byte[] bArr = new byte[2];
        checkStatus(getParameter(3, bArr));
        return AudioEffect.byteArrayToShort(bArr);
    }

    public int getDecayTime() {
        byte[] bArr = new byte[4];
        checkStatus(getParameter(2, bArr));
        return AudioEffect.byteArrayToInt(bArr);
    }

    public short getDensity() {
        byte[] bArr = new byte[2];
        checkStatus(getParameter(9, bArr));
        return AudioEffect.byteArrayToShort(bArr);
    }

    public short getDiffusion() {
        byte[] bArr = new byte[2];
        checkStatus(getParameter(8, bArr));
        return AudioEffect.byteArrayToShort(bArr);
    }

    public Settings getProperties() {
        byte[] bArr = new byte[PROPERTY_SIZE];
        checkStatus(getParameter(10, bArr));
        Settings settings = new Settings();
        settings.roomLevel = AudioEffect.byteArrayToShort(bArr, 0);
        settings.roomHFLevel = AudioEffect.byteArrayToShort(bArr, 2);
        settings.decayTime = AudioEffect.byteArrayToInt(bArr, 4);
        settings.decayHFRatio = AudioEffect.byteArrayToShort(bArr, 8);
        settings.reflectionsLevel = AudioEffect.byteArrayToShort(bArr, 10);
        settings.reflectionsDelay = AudioEffect.byteArrayToInt(bArr, 12);
        settings.reverbLevel = AudioEffect.byteArrayToShort(bArr, 16);
        settings.reverbDelay = AudioEffect.byteArrayToInt(bArr, 18);
        settings.diffusion = AudioEffect.byteArrayToShort(bArr, 22);
        settings.density = AudioEffect.byteArrayToShort(bArr, 24);
        return settings;
    }

    public int getReflectionsDelay() {
        byte[] bArr = new byte[4];
        checkStatus(getParameter(5, bArr));
        return AudioEffect.byteArrayToInt(bArr);
    }

    public short getReflectionsLevel() {
        byte[] bArr = new byte[2];
        checkStatus(getParameter(4, bArr));
        return AudioEffect.byteArrayToShort(bArr);
    }

    public int getReverbDelay() {
        byte[] bArr = new byte[4];
        checkStatus(getParameter(7, bArr));
        return AudioEffect.byteArrayToInt(bArr);
    }

    public short getReverbLevel() {
        byte[] bArr = new byte[2];
        checkStatus(getParameter(6, bArr));
        return AudioEffect.byteArrayToShort(bArr);
    }

    public short getRoomHFLevel() {
        byte[] bArr = new byte[2];
        checkStatus(getParameter(1, bArr));
        return AudioEffect.byteArrayToShort(bArr);
    }

    public short getRoomLevel() {
        byte[] bArr = new byte[2];
        checkStatus(getParameter(0, bArr));
        return AudioEffect.byteArrayToShort(bArr);
    }

    public void setDecayHFRatio(short s2) {
        checkStatus(setParameter(3, AudioEffect.shortToByteArray(s2)));
    }

    public void setDecayTime(int i2) {
        checkStatus(setParameter(2, AudioEffect.intToByteArray(i2)));
    }

    public void setDensity(short s2) {
        checkStatus(setParameter(9, AudioEffect.shortToByteArray(s2)));
    }

    public void setDiffusion(short s2) {
        checkStatus(setParameter(8, AudioEffect.shortToByteArray(s2)));
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
        checkStatus(setParameter(10, AudioEffect.concatArrays(AudioEffect.shortToByteArray(settings.roomLevel), AudioEffect.shortToByteArray(settings.roomHFLevel), AudioEffect.intToByteArray(settings.decayTime), AudioEffect.shortToByteArray(settings.decayHFRatio), AudioEffect.shortToByteArray(settings.reflectionsLevel), AudioEffect.intToByteArray(settings.reflectionsDelay), AudioEffect.shortToByteArray(settings.reverbLevel), AudioEffect.intToByteArray(settings.reverbDelay), AudioEffect.shortToByteArray(settings.diffusion), AudioEffect.shortToByteArray(settings.density))));
    }

    public void setReflectionsDelay(int i2) {
        checkStatus(setParameter(5, AudioEffect.intToByteArray(i2)));
    }

    public void setReflectionsLevel(short s2) {
        checkStatus(setParameter(4, AudioEffect.shortToByteArray(s2)));
    }

    public void setReverbDelay(int i2) {
        checkStatus(setParameter(7, AudioEffect.intToByteArray(i2)));
    }

    public void setReverbLevel(short s2) {
        checkStatus(setParameter(6, AudioEffect.shortToByteArray(s2)));
    }

    public void setRoomHFLevel(short s2) {
        checkStatus(setParameter(1, AudioEffect.shortToByteArray(s2)));
    }

    public void setRoomLevel(short s2) {
        checkStatus(setParameter(0, AudioEffect.shortToByteArray(s2)));
    }
}
