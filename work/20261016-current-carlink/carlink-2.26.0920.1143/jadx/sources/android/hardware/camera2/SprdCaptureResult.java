package android.hardware.camera2;

/* JADX INFO: loaded from: classes.dex */
public final class SprdCaptureResult {
    public static final CaptureResult.Key<Integer> CONTROL_SPRD_BLUR_COVERED;
    public static final CaptureResult.Key<Integer> CONTROL_SPRD_NEED_AF_BEFORE_CAPTURE;
    public static final CaptureResult.Key<Integer> ANDROID_SPRD_DUAL_OTP_FLAG = new CaptureResult.Key<>("com.addParameters.sprdDualOtpFlag", Integer.class);
    public static final CaptureResult.Key<byte[]> CONTROL_OTP_VALUE = new CaptureResult.Key<>("com.addParameters.OtpValue", byte[].class);
    public static final CaptureResult.Key<Integer> CONTROL_VCM_VALUE = new CaptureResult.Key<>("com.addParameters.VcmValue", Integer.class);
    public static final CaptureResult.Key<Double[]> CONTROL_SPRD_3D_RANGE_FIND_DISTANCE = new CaptureResult.Key<>("com.addParameters.sprd3DRangeFinderDistance", Double[].class);

    static {
        Class cls = Integer.TYPE;
        CONTROL_SPRD_BLUR_COVERED = new CaptureResult.Key<>("com.addParameters.sprd3BlurCovered", cls);
        CONTROL_SPRD_NEED_AF_BEFORE_CAPTURE = new CaptureResult.Key<>("com.addParameters.isTakePictureWithFlash", cls);
    }

    private SprdCaptureResult() {
    }
}
