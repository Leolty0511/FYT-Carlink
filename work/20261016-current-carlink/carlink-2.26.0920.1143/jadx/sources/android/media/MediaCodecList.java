package android.media;

import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCodecList {
    public static final int ALL_CODECS = 1;
    public static final int REGULAR_CODECS = 0;
    private static final String TAG = "MediaCodecList";
    private static MediaCodecInfo[] sAllCodecInfos;
    private static Map<String, Object> sGlobalSettings;
    private static Object sInitLock = new Object();
    private static MediaCodecInfo[] sRegularCodecInfos;
    private MediaCodecInfo[] mCodecInfos;

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private MediaCodecList() {
        this(0);
    }

    public static final native int findCodecByName(String str);

    private String findCodecForFormat(boolean z2, MediaFormat mediaFormat) {
        String string = mediaFormat.getString(MediaFormat.KEY_MIME);
        for (MediaCodecInfo mediaCodecInfo : this.mCodecInfos) {
            if (mediaCodecInfo.isEncoder() == z2) {
                try {
                    MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(string);
                    if (capabilitiesForType != null && capabilitiesForType.isFormatSupported(mediaFormat)) {
                        return mediaCodecInfo.getName();
                    }
                } catch (IllegalArgumentException unused) {
                    continue;
                }
            }
        }
        return null;
    }

    public static final native MediaCodecInfo.CodecCapabilities getCodecCapabilities(int i2, String str);

    public static final int getCodecCount() {
        initCodecList();
        return sRegularCodecInfos.length;
    }

    public static final MediaCodecInfo getCodecInfoAt(int i2) {
        initCodecList();
        if (i2 >= 0) {
            MediaCodecInfo[] mediaCodecInfoArr = sRegularCodecInfos;
            if (i2 <= mediaCodecInfoArr.length) {
                return mediaCodecInfoArr[i2];
            }
        }
        throw new IllegalArgumentException();
    }

    public static final native String getCodecName(int i2);

    public static final Map<String, Object> getGlobalSettings() {
        synchronized (sInitLock) {
            if (sGlobalSettings == null) {
                sGlobalSettings = native_getGlobalSettings();
            }
        }
        return sGlobalSettings;
    }

    public static MediaCodecInfo getInfoFor(String str) {
        initCodecList();
        return sAllCodecInfos[findCodecByName(str)];
    }

    private static MediaCodecInfo getNewCodecInfoAt(int i2) {
        String[] supportedTypes = getSupportedTypes(i2);
        MediaCodecInfo.CodecCapabilities[] codecCapabilitiesArr = new MediaCodecInfo.CodecCapabilities[supportedTypes.length];
        int length = supportedTypes.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            codecCapabilitiesArr[i4] = getCodecCapabilities(i2, supportedTypes[i3]);
            i3++;
            i4++;
        }
        return new MediaCodecInfo(getCodecName(i2), isEncoder(i2), codecCapabilitiesArr);
    }

    public static final native String[] getSupportedTypes(int i2);

    private static final void initCodecList() {
        synchronized (sInitLock) {
            if (sRegularCodecInfos == null) {
                int iNative_getCodecCount = native_getCodecCount();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < iNative_getCodecCount; i2++) {
                    try {
                        MediaCodecInfo newCodecInfoAt = getNewCodecInfoAt(i2);
                        arrayList2.add(newCodecInfoAt);
                        MediaCodecInfo mediaCodecInfoMakeRegular = newCodecInfoAt.makeRegular();
                        if (mediaCodecInfoMakeRegular != null) {
                            arrayList.add(mediaCodecInfoMakeRegular);
                        }
                    } catch (Exception e2) {
                        Log.e(TAG, "Could not get codec capabilities", e2);
                    }
                }
                sRegularCodecInfos = (MediaCodecInfo[]) arrayList.toArray(new MediaCodecInfo[arrayList.size()]);
                sAllCodecInfos = (MediaCodecInfo[]) arrayList2.toArray(new MediaCodecInfo[arrayList2.size()]);
            }
        }
    }

    public static final native boolean isEncoder(int i2);

    private static final native int native_getCodecCount();

    public static final native Map<String, Object> native_getGlobalSettings();

    private static final native void native_init();

    public final String findDecoderForFormat(MediaFormat mediaFormat) {
        return findCodecForFormat(false, mediaFormat);
    }

    public final String findEncoderForFormat(MediaFormat mediaFormat) {
        return findCodecForFormat(true, mediaFormat);
    }

    public final MediaCodecInfo[] getCodecInfos() {
        MediaCodecInfo[] mediaCodecInfoArr = this.mCodecInfos;
        return (MediaCodecInfo[]) Arrays.copyOf(mediaCodecInfoArr, mediaCodecInfoArr.length);
    }

    public MediaCodecList(int i2) {
        initCodecList();
        if (i2 == 0) {
            this.mCodecInfos = sRegularCodecInfos;
        } else {
            this.mCodecInfos = sAllCodecInfos;
        }
    }
}
