package android.hardware.camera2;

/* JADX INFO: loaded from: classes.dex */
public final class SprdCaptureRequest {
    public static final CaptureRequest.Key<int[]> ANDROID_SPRD_3DCALIBRATION_CAPTURE_SIZE;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_3DCALIBRATION_ENABLED;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_3D_PREVIEW_MODE;
    public static final CaptureRequest.Key<int[]> ANDROID_SPRD_3D_RANGE_FIND_POINTS;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_BURSTMODE_ENABLED;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_HIGHISO_ENABLED;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_NORMAL_HDR_ENABLED;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_PIPVIV_ENABLED;
    public static final CaptureRequest.Key<Byte> ANDROID_SPRD_SENSOR_ORIENTATION;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_SENSOR_ROTATION;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_SENSOR_ROTATION_FOR_FRONT_BLUR;
    public static final CaptureRequest.Key<Integer> ANDROID_SPRD_ZSL_ENABLED;
    public static final CaptureRequest.Key<Integer> CONTROL_AVAILABLE_SPRD_SENSOR_SELF_SHOT;
    public static final CaptureRequest.Key<Integer> CONTROL_BRIGHTNESS_MODE;
    public static final CaptureRequest.Key<Integer> CONTROL_CONTRAST_MODE;
    public static final CaptureRequest.Key<Boolean> CONTROL_FRONT_CAMERA_MIRROR;
    public static final CaptureRequest.Key<Integer> CONTROL_ISO_MODE;
    public static final CaptureRequest.Key<Integer> CONTROL_METERING_MODE;
    public static final CaptureRequest.Key<Integer> CONTROL_SATURATION_MODE;
    public static final CaptureRequest.Key<int[]> CONTROL_SKIN_WHITEN_MODE;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_3DNR_ENABLED;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_ADJUST_FLASH_LEVEL;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_APP_MODE_ID;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_BLUR_CIRCLESIZE;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_BLUR_COVERED;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_BLUR_F_NUMBER;
    public static final CaptureRequest.Key<Boolean> CONTROL_SPRD_EOIS_ENABLE;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_FAST_THUMB;
    public static final CaptureRequest.Key<Integer> CONTROL_SPRD_FILTER_TYPE;
    public static final CaptureRequest.Key<Integer> SPRD_CAPTURE_MODE;
    public static final CaptureRequest.Key<Integer> STATISTICS_REFOCUS_MODE;

    static {
        Class cls = Integer.TYPE;
        CONTROL_SATURATION_MODE = new CaptureRequest.Key<>("com.addParameters.saturation", cls);
        CONTROL_METERING_MODE = new CaptureRequest.Key<>("com.addParameters.meteringMode", cls);
        CONTROL_ISO_MODE = new CaptureRequest.Key<>("com.addParameters.iso", cls);
        CONTROL_BRIGHTNESS_MODE = new CaptureRequest.Key<>("com.addParameters.brightness", cls);
        CONTROL_CONTRAST_MODE = new CaptureRequest.Key<>("com.addParameters.contrast", cls);
        CONTROL_SKIN_WHITEN_MODE = new CaptureRequest.Key<>("com.addParameters.perfectskinlevel", int[].class);
        Class cls2 = Boolean.TYPE;
        CONTROL_SPRD_EOIS_ENABLE = new CaptureRequest.Key<>("com.addParameters.sprdEisEnabled", cls2);
        SPRD_CAPTURE_MODE = new CaptureRequest.Key<>("com.addParameters.capMode", cls);
        ANDROID_SPRD_SENSOR_ORIENTATION = new CaptureRequest.Key<>("com.addParameters.sensororientation", Byte.TYPE);
        ANDROID_SPRD_SENSOR_ROTATION = new CaptureRequest.Key<>("com.addParameters.sensorrotation", cls);
        ANDROID_SPRD_SENSOR_ROTATION_FOR_FRONT_BLUR = new CaptureRequest.Key<>("com.addParameters.sprd3BlurSensorRotation", cls);
        ANDROID_SPRD_PIPVIV_ENABLED = new CaptureRequest.Key<>("com.addParameters.sprdPipVivEnabled", cls);
        ANDROID_SPRD_HIGHISO_ENABLED = new CaptureRequest.Key<>("com.addParameters.sprdHighIsoEnabled", cls);
        ANDROID_SPRD_ZSL_ENABLED = new CaptureRequest.Key<>("com.addParameters.sprdZslEnabled", cls);
        ANDROID_SPRD_NORMAL_HDR_ENABLED = new CaptureRequest.Key<>("com.addParameters.sprdHdrPlusEnabled", cls);
        CONTROL_FRONT_CAMERA_MIRROR = new CaptureRequest.Key<>("com.addParameters.mirror", cls2);
        ANDROID_SPRD_BURSTMODE_ENABLED = new CaptureRequest.Key<>("com.addParameters.sprdBurstModeEnabled", cls);
        CONTROL_SPRD_BLUR_CIRCLESIZE = new CaptureRequest.Key<>("com.addParameters.sprd3BlurCircleSize", cls);
        ANDROID_SPRD_3D_PREVIEW_MODE = new CaptureRequest.Key<>("com.addParameters.sprdMultiCam3PreviewId", cls);
        STATISTICS_REFOCUS_MODE = new CaptureRequest.Key<>("com.addParameters.refocusMode", cls);
        ANDROID_SPRD_3D_RANGE_FIND_POINTS = new CaptureRequest.Key<>("com.addParameters.sprd3DRangeFinderPoints", int[].class);
        CONTROL_SPRD_BLUR_F_NUMBER = new CaptureRequest.Key<>("com.addParameters.sprd3BlurFNumber", cls);
        CONTROL_AVAILABLE_SPRD_SENSOR_SELF_SHOT = new CaptureRequest.Key<>("com.addParameters.sprd3AvailableSensorSelfShot", cls);
        CONTROL_SPRD_BLUR_COVERED = new CaptureRequest.Key<>("com.addParameters.sprd3BlurCovered", cls);
        CONTROL_SPRD_3DNR_ENABLED = new CaptureRequest.Key<>("com.addParameters.sprd3dnrEnabled", cls);
        CONTROL_SPRD_FILTER_TYPE = new CaptureRequest.Key<>("com.addParameters.sprdfiltertype", cls);
        CONTROL_SPRD_FAST_THUMB = new CaptureRequest.Key<>("com.addParameters.sprdfastthumb", cls);
        CONTROL_SPRD_ADJUST_FLASH_LEVEL = new CaptureRequest.Key<>("com.addParameters.adjustSprdFlashLevel", cls);
        ANDROID_SPRD_3DCALIBRATION_ENABLED = new CaptureRequest.Key<>("com.addParameters.srpd3dCalibrationEnable", cls);
        ANDROID_SPRD_3DCALIBRATION_CAPTURE_SIZE = new CaptureRequest.Key<>("com.addParameters.srpd3dCalibrationSize", int[].class);
        CONTROL_SPRD_APP_MODE_ID = new CaptureRequest.Key<>("com.addParameters.sprdAppmodeId", cls);
    }

    private SprdCaptureRequest() {
    }
}
