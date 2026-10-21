package android.media;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCodecList {
    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private MediaCodecList() {
    }

    public static final native int findCodecByName(String str);

    public static final native MediaCodecInfo.CodecCapabilities getCodecCapabilities(int i2, String str);

    public static final native int getCodecCount();

    public static final MediaCodecInfo getCodecInfoAt(int i2) {
        if (i2 < 0 || i2 > getCodecCount()) {
            throw new IllegalArgumentException();
        }
        return new MediaCodecInfo(i2);
    }

    public static final native String getCodecName(int i2);

    public static final native String[] getSupportedTypes(int i2);

    public static final native boolean isEncoder(int i2);

    private static final native void native_init();
}
