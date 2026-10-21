package android.media.audiofx;

import android.accessibilityservice.c;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class Virtualizer extends AudioEffect {
    private static final boolean DEBUG = false;
    public static final int PARAM_FORCE_VIRTUALIZATION_MODE = 3;
    public static final int PARAM_STRENGTH = 1;
    public static final int PARAM_STRENGTH_SUPPORTED = 0;
    public static final int PARAM_VIRTUALIZATION_MODE = 4;
    public static final int PARAM_VIRTUAL_SPEAKER_ANGLES = 2;
    private static final String TAG = "Virtualizer";
    public static final int VIRTUALIZATION_MODE_AUTO = 1;
    public static final int VIRTUALIZATION_MODE_BINAURAL = 2;
    public static final int VIRTUALIZATION_MODE_OFF = 0;
    public static final int VIRTUALIZATION_MODE_TRANSAURAL = 3;
    private BaseParameterListener mBaseParamListener;
    private OnParameterChangeListener mParamListener;
    private final Object mParamListenerLock;
    private boolean mStrengthSupported;

    public class BaseParameterListener implements AudioEffect.OnParameterChangeListener {
        @Override // android.media.audiofx.AudioEffect.OnParameterChangeListener
        public void onParameterChange(AudioEffect audioEffect, int i2, byte[] bArr, byte[] bArr2) {
            OnParameterChangeListener onParameterChangeListener;
            synchronized (Virtualizer.this.mParamListenerLock) {
                onParameterChangeListener = Virtualizer.this.mParamListener != null ? Virtualizer.this.mParamListener : null;
            }
            if (onParameterChangeListener != null) {
                int iByteArrayToInt = bArr.length == 4 ? AudioEffect.byteArrayToInt(bArr, 0) : -1;
                short sByteArrayToShort = bArr2.length == 2 ? AudioEffect.byteArrayToShort(bArr2, 0) : (short) -1;
                if (iByteArrayToInt == -1 || sByteArrayToShort == -1) {
                    return;
                }
                onParameterChangeListener.onParameterChange(Virtualizer.this, i2, iByteArrayToInt, sByteArrayToShort);
            }
        }

        private BaseParameterListener() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ForceVirtualizationMode {
    }

    public interface OnParameterChangeListener {
        void onParameterChange(Virtualizer virtualizer, int i2, int i3, short s2);
    }

    public static class Settings {
        public short strength;

        public Settings() {
        }

        public String toString() {
            return new String("Virtualizer;strength=" + Short.toString(this.strength));
        }

        public Settings(String str) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "=;");
            stringTokenizer.countTokens();
            if (stringTokenizer.countTokens() != 3) {
                throw new IllegalArgumentException(c.j("settings: ", str));
            }
            String strNextToken = stringTokenizer.nextToken();
            if (!strNextToken.equals(Virtualizer.TAG)) {
                throw new IllegalArgumentException("invalid settings for Virtualizer: ".concat(strNextToken));
            }
            try {
                String strNextToken2 = stringTokenizer.nextToken();
                if (!strNextToken2.equals("strength")) {
                    throw new IllegalArgumentException("invalid key name: ".concat(strNextToken2));
                }
                this.strength = Short.parseShort(stringTokenizer.nextToken());
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(c.j("invalid value for key: ", strNextToken));
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VirtualizationMode {
    }

    public Virtualizer(int i2, int i3) {
        super(AudioEffect.EFFECT_TYPE_VIRTUALIZER, AudioEffect.EFFECT_TYPE_NULL, i2, i3);
        this.mStrengthSupported = false;
        this.mParamListener = null;
        this.mBaseParamListener = null;
        this.mParamListenerLock = new Object();
        if (i3 == 0) {
            Log.w(TAG, "WARNING: attaching a Virtualizer to global output mix is deprecated!");
        }
        int[] iArr = new int[1];
        checkStatus(getParameter(0, iArr));
        this.mStrengthSupported = iArr[0] != 0;
    }

    private static int deviceToMode(int i2) {
        if (i2 == 19) {
            return 3;
        }
        if (i2 == 22) {
            return 2;
        }
        switch (i2) {
            case 1:
            case 3:
            case 4:
            case 7:
                return 2;
            case 2:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return 3;
            default:
                return 0;
        }
    }

    private boolean getAnglesInt(int i2, int i3, int[] iArr) {
        int i4;
        if (i2 == 0) {
            throw new IllegalArgumentException("Virtualizer: illegal CHANNEL_INVALID channel mask");
        }
        if (i2 == 1) {
            i2 = 12;
        }
        int iChannelCountFromOutChannelMask = AudioFormat.channelCountFromOutChannelMask(i2);
        if (iArr != null && iArr.length < (i4 = iChannelCountFromOutChannelMask * 3)) {
            Log.e(TAG, "Size of array for angles cannot accomodate number of channels in mask (" + iChannelCountFromOutChannelMask + ")");
            throw new IllegalArgumentException("Virtualizer: array for channel / angle pairs is too small: is " + iArr.length + ", should be " + i4);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
        byteBufferAllocate.order(ByteOrder.nativeOrder());
        byteBufferAllocate.putInt(2);
        byteBufferAllocate.putInt(AudioFormat.convertChannelOutMaskToNativeMask(i2));
        byteBufferAllocate.putInt(AudioDeviceInfo.convertDeviceTypeToInternalDevice(i3));
        byte[] bArr = new byte[iChannelCountFromOutChannelMask * 4 * 3];
        int parameter = getParameter(byteBufferAllocate.array(), bArr);
        if (parameter < 0) {
            if (parameter == -4) {
                return false;
            }
            checkStatus(parameter);
            Log.e(TAG, "unexpected status code " + parameter + " after getParameter(PARAM_VIRTUAL_SPEAKER_ANGLES)");
            return false;
        }
        if (iArr != null) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.order(ByteOrder.nativeOrder());
            for (int i5 = 0; i5 < iChannelCountFromOutChannelMask; i5++) {
                int i6 = i5 * 3;
                int i7 = i5 * 4 * 3;
                iArr[i6] = AudioFormat.convertNativeChannelMaskToOutMask(byteBufferWrap.getInt(i7));
                iArr[i6 + 1] = byteBufferWrap.getInt(i7 + 4);
                iArr[i6 + 2] = byteBufferWrap.getInt(i7 + 8);
            }
        }
        return true;
    }

    private static int getDeviceForModeForce(int i2) {
        if (i2 == 1) {
            return 0;
        }
        return getDeviceForModeQuery(i2);
    }

    private static int getDeviceForModeQuery(int i2) {
        if (i2 == 2) {
            return 4;
        }
        if (i2 == 3) {
            return 2;
        }
        throw new IllegalArgumentException(c.d("Virtualizer: illegal virtualization mode ", i2));
    }

    public boolean canVirtualize(int i2, int i3) {
        return getAnglesInt(i2, getDeviceForModeQuery(i3), null);
    }

    public boolean forceVirtualizationMode(int i2) {
        int parameter = setParameter(3, AudioDeviceInfo.convertDeviceTypeToInternalDevice(getDeviceForModeForce(i2)));
        if (parameter >= 0) {
            return true;
        }
        if (parameter == -4) {
            return false;
        }
        checkStatus(parameter);
        Log.e(TAG, "unexpected status code " + parameter + " after setParameter(PARAM_FORCE_VIRTUALIZATION_MODE)");
        return false;
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

    public boolean getSpeakerAngles(int i2, int i3, int[] iArr) {
        if (iArr != null) {
            return getAnglesInt(i2, getDeviceForModeQuery(i3), iArr);
        }
        throw new IllegalArgumentException("Virtualizer: illegal null channel / angle array");
    }

    public boolean getStrengthSupported() {
        return this.mStrengthSupported;
    }

    public int getVirtualizationMode() {
        int[] iArr = new int[1];
        int parameter = getParameter(4, iArr);
        if (parameter >= 0) {
            return deviceToMode(AudioDeviceInfo.convertInternalDeviceToDeviceType(iArr[0]));
        }
        if (parameter == -4) {
            return 0;
        }
        checkStatus(parameter);
        Log.e(TAG, "unexpected status code " + parameter + " after getParameter(PARAM_VIRTUALIZATION_MODE)");
        return 0;
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
