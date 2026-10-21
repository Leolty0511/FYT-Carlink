package android.media;

import android.accessibilityservice.c;
import android.hardware.Camera;

/* JADX INFO: loaded from: classes.dex */
public class CamcorderProfile {
    public static final int QUALITY_1080P = 6;
    public static final int QUALITY_2160P = 8;
    public static final int QUALITY_480P = 4;
    public static final int QUALITY_720P = 5;
    public static final int QUALITY_CIF = 3;
    public static final int QUALITY_HIGH = 1;
    public static final int QUALITY_HIGH_SPEED_1080P = 2004;
    public static final int QUALITY_HIGH_SPEED_2160P = 2005;
    public static final int QUALITY_HIGH_SPEED_480P = 2002;
    public static final int QUALITY_HIGH_SPEED_720P = 2003;
    public static final int QUALITY_HIGH_SPEED_HIGH = 2001;
    private static final int QUALITY_HIGH_SPEED_LIST_END = 2005;
    private static final int QUALITY_HIGH_SPEED_LIST_START = 2000;
    public static final int QUALITY_HIGH_SPEED_LOW = 2000;
    private static final int QUALITY_LIST_END = 8;
    private static final int QUALITY_LIST_START = 0;
    public static final int QUALITY_LOW = 0;
    public static final int QUALITY_QCIF = 2;
    public static final int QUALITY_QVGA = 7;
    public static final int QUALITY_TIME_LAPSE_1080P = 1006;
    public static final int QUALITY_TIME_LAPSE_2160P = 1008;
    public static final int QUALITY_TIME_LAPSE_480P = 1004;
    public static final int QUALITY_TIME_LAPSE_720P = 1005;
    public static final int QUALITY_TIME_LAPSE_CIF = 1003;
    public static final int QUALITY_TIME_LAPSE_HIGH = 1001;
    private static final int QUALITY_TIME_LAPSE_LIST_END = 1008;
    private static final int QUALITY_TIME_LAPSE_LIST_START = 1000;
    public static final int QUALITY_TIME_LAPSE_LOW = 1000;
    public static final int QUALITY_TIME_LAPSE_QCIF = 1002;
    public static final int QUALITY_TIME_LAPSE_QVGA = 1007;
    public int audioBitRate;
    public int audioChannels;
    public int audioCodec;
    public int audioSampleRate;
    public int duration;
    public int fileFormat;
    public int quality;
    public int videoBitRate;
    public int videoCodec;
    public int videoFrameHeight;
    public int videoFrameRate;
    public int videoFrameWidth;

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private CamcorderProfile(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        this.duration = i2;
        this.quality = i3;
        this.fileFormat = i4;
        this.videoCodec = i5;
        this.videoBitRate = i6;
        this.videoFrameRate = i7;
        this.videoFrameWidth = i8;
        this.videoFrameHeight = i9;
        this.audioCodec = i10;
        this.audioBitRate = i11;
        this.audioSampleRate = i12;
        this.audioChannels = i13;
    }

    public static CamcorderProfile get(int i2) {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i3 = 0; i3 < numberOfCameras; i3++) {
            Camera.getCameraInfo(i3, cameraInfo);
            if (cameraInfo.facing == 0) {
                return get(i3, i2);
            }
        }
        return null;
    }

    public static boolean hasProfile(int i2) {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i3 = 0; i3 < numberOfCameras; i3++) {
            Camera.getCameraInfo(i3, cameraInfo);
            if (cameraInfo.facing == 0) {
                return hasProfile(i3, i2);
            }
        }
        return false;
    }

    private static final native CamcorderProfile native_get_camcorder_profile(int i2, int i3);

    private static final native boolean native_has_camcorder_profile(int i2, int i3);

    private static final native void native_init();

    public static CamcorderProfile get(int i2, int i3) {
        if ((i3 >= 0 && i3 <= 8) || ((i3 >= 1000 && i3 <= 1008) || (i3 >= 2000 && i3 <= 2005))) {
            return native_get_camcorder_profile(i2, i3);
        }
        throw new IllegalArgumentException(c.d("Unsupported quality level: ", i3));
    }

    public static boolean hasProfile(int i2, int i3) {
        return native_has_camcorder_profile(i2, i3);
    }
}
