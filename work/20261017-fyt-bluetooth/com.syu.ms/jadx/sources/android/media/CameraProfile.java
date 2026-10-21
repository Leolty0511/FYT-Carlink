package android.media;

import android.hardware.Camera;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class CameraProfile {
    public static final int QUALITY_HIGH = 2;
    public static final int QUALITY_LOW = 0;
    public static final int QUALITY_MEDIUM = 1;
    private static final HashMap<Integer, int[]> sCache = new HashMap<>();

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private static int[] getImageEncodingQualityLevels(int i2) {
        int iNative_get_num_image_encoding_quality_levels = native_get_num_image_encoding_quality_levels(i2);
        if (iNative_get_num_image_encoding_quality_levels != 3) {
            throw new RuntimeException("Unexpected Jpeg encoding quality levels " + iNative_get_num_image_encoding_quality_levels);
        }
        int[] iArr = new int[iNative_get_num_image_encoding_quality_levels];
        for (int i3 = 0; i3 < iNative_get_num_image_encoding_quality_levels; i3++) {
            iArr[i3] = native_get_image_encoding_quality_level(i2, i3);
        }
        Arrays.sort(iArr);
        return iArr;
    }

    public static int getJpegEncodingQualityParameter(int i2) {
        int numberOfCameras = Camera.getNumberOfCameras();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i3 = 0; i3 < numberOfCameras; i3++) {
            Camera.getCameraInfo(i3, cameraInfo);
            if (cameraInfo.facing == 0) {
                return getJpegEncodingQualityParameter(i3, i2);
            }
        }
        return 0;
    }

    private static final native int native_get_image_encoding_quality_level(int i2, int i3);

    private static final native int native_get_num_image_encoding_quality_levels(int i2);

    private static final native void native_init();

    public static int getJpegEncodingQualityParameter(int i2, int i3) {
        int i4;
        if (i3 >= 0 && i3 <= 2) {
            HashMap<Integer, int[]> map = sCache;
            synchronized (map) {
                int[] imageEncodingQualityLevels = map.get(Integer.valueOf(i2));
                if (imageEncodingQualityLevels == null) {
                    imageEncodingQualityLevels = getImageEncodingQualityLevels(i2);
                    map.put(Integer.valueOf(i2), imageEncodingQualityLevels);
                }
                i4 = imageEncodingQualityLevels[i3];
            }
            return i4;
        }
        throw new IllegalArgumentException("Unsupported quality level: " + i3);
    }
}
