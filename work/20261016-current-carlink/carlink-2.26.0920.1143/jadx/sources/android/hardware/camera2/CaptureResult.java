package android.hardware.camera2;

import android.content.RestrictionsManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.impl.CaptureResultExtras;
import android.hardware.camera2.impl.PublicKey;
import android.hardware.camera2.impl.SyntheticKey;
import android.hardware.camera2.params.ColorSpaceTransform;
import android.hardware.camera2.params.Face;
import android.hardware.camera2.params.LensShadingMap;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.RggbChannelVector;
import android.hardware.camera2.params.TonemapCurve;
import android.hardware.camera2.utils.TypeReference;
import android.location.Location;
import android.util.Pair;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CaptureResult extends CameraMetadata<Key<?>> {

    @PublicKey
    public static final Key<Boolean> BLACK_LEVEL_LOCK;

    @PublicKey
    public static final Key<Integer> COLOR_CORRECTION_ABERRATION_MODE;

    @PublicKey
    public static final Key<RggbChannelVector> COLOR_CORRECTION_GAINS;

    @PublicKey
    public static final Key<Integer> COLOR_CORRECTION_MODE;

    @PublicKey
    public static final Key<ColorSpaceTransform> COLOR_CORRECTION_TRANSFORM;

    @PublicKey
    public static final Key<Integer> CONTROL_AE_ANTIBANDING_MODE;

    @PublicKey
    public static final Key<Integer> CONTROL_AE_EXPOSURE_COMPENSATION;

    @PublicKey
    public static final Key<Boolean> CONTROL_AE_LOCK;

    @PublicKey
    public static final Key<Integer> CONTROL_AE_MODE;

    @PublicKey
    public static final Key<Integer> CONTROL_AE_PRECAPTURE_TRIGGER;

    @PublicKey
    public static final Key<MeteringRectangle[]> CONTROL_AE_REGIONS;

    @PublicKey
    public static final Key<Integer> CONTROL_AE_STATE;

    @PublicKey
    public static final Key<Range<Integer>> CONTROL_AE_TARGET_FPS_RANGE;

    @PublicKey
    public static final Key<Integer> CONTROL_AF_MODE;

    @PublicKey
    public static final Key<MeteringRectangle[]> CONTROL_AF_REGIONS;

    @PublicKey
    public static final Key<Integer> CONTROL_AF_STATE;

    @PublicKey
    public static final Key<Integer> CONTROL_AF_TRIGGER;

    @PublicKey
    public static final Key<Boolean> CONTROL_AWB_LOCK;

    @PublicKey
    public static final Key<Integer> CONTROL_AWB_MODE;

    @PublicKey
    public static final Key<MeteringRectangle[]> CONTROL_AWB_REGIONS;

    @PublicKey
    public static final Key<Integer> CONTROL_AWB_STATE;

    @PublicKey
    public static final Key<Integer> CONTROL_CAPTURE_INTENT;

    @PublicKey
    public static final Key<Integer> CONTROL_EFFECT_MODE;

    @PublicKey
    public static final Key<Boolean> CONTROL_ENABLE_ZSL;

    @PublicKey
    public static final Key<Integer> CONTROL_MODE;

    @PublicKey
    public static final Key<Integer> CONTROL_POST_RAW_SENSITIVITY_BOOST;

    @PublicKey
    public static final Key<Integer> CONTROL_SCENE_MODE;

    @PublicKey
    public static final Key<Integer> CONTROL_VIDEO_STABILIZATION_MODE;

    @PublicKey
    public static final Key<Integer> EDGE_MODE;

    @PublicKey
    public static final Key<Integer> FLASH_MODE;

    @PublicKey
    public static final Key<Integer> FLASH_STATE;

    @PublicKey
    public static final Key<Integer> HOT_PIXEL_MODE;
    public static final Key<double[]> JPEG_GPS_COORDINATES;

    @SyntheticKey
    @PublicKey
    public static final Key<Location> JPEG_GPS_LOCATION;
    public static final Key<String> JPEG_GPS_PROCESSING_METHOD;
    public static final Key<Long> JPEG_GPS_TIMESTAMP;

    @PublicKey
    public static final Key<Integer> JPEG_ORIENTATION;

    @PublicKey
    public static final Key<Byte> JPEG_QUALITY;

    @PublicKey
    public static final Key<Byte> JPEG_THUMBNAIL_QUALITY;

    @PublicKey
    public static final Key<Size> JPEG_THUMBNAIL_SIZE;
    public static final Key<Boolean> LED_TRANSMIT;

    @PublicKey
    public static final Key<Float> LENS_APERTURE;

    @PublicKey
    public static final Key<Float> LENS_FILTER_DENSITY;

    @PublicKey
    public static final Key<Float> LENS_FOCAL_LENGTH;

    @PublicKey
    public static final Key<Float> LENS_FOCUS_DISTANCE;

    @PublicKey
    public static final Key<Pair<Float, Float>> LENS_FOCUS_RANGE;

    @PublicKey
    public static final Key<float[]> LENS_INTRINSIC_CALIBRATION;

    @PublicKey
    public static final Key<Integer> LENS_OPTICAL_STABILIZATION_MODE;

    @PublicKey
    public static final Key<float[]> LENS_POSE_ROTATION;

    @PublicKey
    public static final Key<float[]> LENS_POSE_TRANSLATION;

    @PublicKey
    public static final Key<float[]> LENS_RADIAL_DISTORTION;

    @PublicKey
    public static final Key<Integer> LENS_STATE;

    @PublicKey
    public static final Key<Integer> NOISE_REDUCTION_MODE;

    @Deprecated
    public static final Key<Boolean> QUIRKS_PARTIAL_RESULT;

    @PublicKey
    public static final Key<Float> REPROCESS_EFFECTIVE_EXPOSURE_FACTOR;

    @Deprecated
    public static final Key<Integer> REQUEST_FRAME_COUNT;
    public static final Key<Integer> REQUEST_ID;

    @PublicKey
    public static final Key<Byte> REQUEST_PIPELINE_DEPTH;

    @PublicKey
    public static final Key<Rect> SCALER_CROP_REGION;

    @PublicKey
    public static final Key<float[]> SENSOR_DYNAMIC_BLACK_LEVEL;

    @PublicKey
    public static final Key<Integer> SENSOR_DYNAMIC_WHITE_LEVEL;

    @PublicKey
    public static final Key<Long> SENSOR_EXPOSURE_TIME;

    @PublicKey
    public static final Key<Long> SENSOR_FRAME_DURATION;

    @PublicKey
    public static final Key<Float> SENSOR_GREEN_SPLIT;

    @PublicKey
    public static final Key<Rational[]> SENSOR_NEUTRAL_COLOR_POINT;

    @PublicKey
    public static final Key<Pair<Double, Double>[]> SENSOR_NOISE_PROFILE;

    @PublicKey
    public static final Key<Long> SENSOR_ROLLING_SHUTTER_SKEW;

    @PublicKey
    public static final Key<Integer> SENSOR_SENSITIVITY;

    @PublicKey
    public static final Key<int[]> SENSOR_TEST_PATTERN_DATA;

    @PublicKey
    public static final Key<Integer> SENSOR_TEST_PATTERN_MODE;

    @PublicKey
    public static final Key<Long> SENSOR_TIMESTAMP;

    @PublicKey
    public static final Key<Integer> SHADING_MODE;

    @SyntheticKey
    @PublicKey
    public static final Key<Face[]> STATISTICS_FACES;

    @PublicKey
    public static final Key<Integer> STATISTICS_FACE_DETECT_MODE;
    public static final Key<int[]> STATISTICS_FACE_IDS;
    public static final Key<int[]> STATISTICS_FACE_LANDMARKS;
    public static final Key<Rect[]> STATISTICS_FACE_RECTANGLES;
    public static final Key<byte[]> STATISTICS_FACE_SCORES;

    @PublicKey
    public static final Key<Point[]> STATISTICS_HOT_PIXEL_MAP;

    @PublicKey
    public static final Key<Boolean> STATISTICS_HOT_PIXEL_MAP_MODE;

    @PublicKey
    public static final Key<LensShadingMap> STATISTICS_LENS_SHADING_CORRECTION_MAP;
    public static final Key<float[]> STATISTICS_LENS_SHADING_MAP;

    @PublicKey
    public static final Key<Integer> STATISTICS_LENS_SHADING_MAP_MODE;

    @Deprecated
    public static final Key<float[]> STATISTICS_PREDICTED_COLOR_GAINS;

    @Deprecated
    public static final Key<Rational[]> STATISTICS_PREDICTED_COLOR_TRANSFORM;

    @PublicKey
    public static final Key<Integer> STATISTICS_SCENE_FLICKER;
    public static final Key<Long> SYNC_FRAME_NUMBER;
    private static final String TAG = "CaptureResult";

    @SyntheticKey
    @PublicKey
    public static final Key<TonemapCurve> TONEMAP_CURVE;
    public static final Key<float[]> TONEMAP_CURVE_BLUE;
    public static final Key<float[]> TONEMAP_CURVE_GREEN;
    public static final Key<float[]> TONEMAP_CURVE_RED;

    @PublicKey
    public static final Key<Float> TONEMAP_GAMMA;

    @PublicKey
    public static final Key<Integer> TONEMAP_MODE;

    @PublicKey
    public static final Key<Integer> TONEMAP_PRESET_CURVE;
    private static final boolean VERBOSE = false;
    private final long mFrameNumber;
    private final CaptureRequest mRequest;
    private final CameraMetadataNative mResults;
    private final int mSequenceId;

    static {
        Class cls = Integer.TYPE;
        COLOR_CORRECTION_MODE = new Key<>("android.colorCorrection.mode", cls);
        COLOR_CORRECTION_TRANSFORM = new Key<>("android.colorCorrection.transform", ColorSpaceTransform.class);
        COLOR_CORRECTION_GAINS = new Key<>("android.colorCorrection.gains", RggbChannelVector.class);
        COLOR_CORRECTION_ABERRATION_MODE = new Key<>("android.colorCorrection.aberrationMode", cls);
        CONTROL_AE_ANTIBANDING_MODE = new Key<>("android.control.aeAntibandingMode", cls);
        CONTROL_AE_EXPOSURE_COMPENSATION = new Key<>("android.control.aeExposureCompensation", cls);
        Class cls2 = Boolean.TYPE;
        CONTROL_AE_LOCK = new Key<>("android.control.aeLock", cls2);
        CONTROL_AE_MODE = new Key<>("android.control.aeMode", cls);
        CONTROL_AE_REGIONS = new Key<>("android.control.aeRegions", MeteringRectangle[].class);
        CONTROL_AE_TARGET_FPS_RANGE = new Key<>("android.control.aeTargetFpsRange", new TypeReference<Range<Integer>>() { // from class: android.hardware.camera2.CaptureResult.1
        });
        CONTROL_AE_PRECAPTURE_TRIGGER = new Key<>("android.control.aePrecaptureTrigger", cls);
        CONTROL_AE_STATE = new Key<>("android.control.aeState", cls);
        CONTROL_AF_MODE = new Key<>("android.control.afMode", cls);
        CONTROL_AF_REGIONS = new Key<>("android.control.afRegions", MeteringRectangle[].class);
        CONTROL_AF_TRIGGER = new Key<>("android.control.afTrigger", cls);
        CONTROL_AF_STATE = new Key<>("android.control.afState", cls);
        CONTROL_AWB_LOCK = new Key<>("android.control.awbLock", cls2);
        CONTROL_AWB_MODE = new Key<>("android.control.awbMode", cls);
        CONTROL_AWB_REGIONS = new Key<>("android.control.awbRegions", MeteringRectangle[].class);
        CONTROL_CAPTURE_INTENT = new Key<>("android.control.captureIntent", cls);
        CONTROL_AWB_STATE = new Key<>("android.control.awbState", cls);
        CONTROL_EFFECT_MODE = new Key<>("android.control.effectMode", cls);
        CONTROL_MODE = new Key<>("android.control.mode", cls);
        CONTROL_SCENE_MODE = new Key<>("android.control.sceneMode", cls);
        CONTROL_VIDEO_STABILIZATION_MODE = new Key<>("android.control.videoStabilizationMode", cls);
        CONTROL_POST_RAW_SENSITIVITY_BOOST = new Key<>("android.control.postRawSensitivityBoost", cls);
        CONTROL_ENABLE_ZSL = new Key<>("android.control.enableZsl", cls2);
        EDGE_MODE = new Key<>("android.edge.mode", cls);
        FLASH_MODE = new Key<>("android.flash.mode", cls);
        FLASH_STATE = new Key<>("android.flash.state", cls);
        HOT_PIXEL_MODE = new Key<>("android.hotPixel.mode", cls);
        JPEG_GPS_LOCATION = new Key<>("android.jpeg.gpsLocation", Location.class);
        JPEG_GPS_COORDINATES = new Key<>("android.jpeg.gpsCoordinates", double[].class);
        JPEG_GPS_PROCESSING_METHOD = new Key<>("android.jpeg.gpsProcessingMethod", String.class);
        Class cls3 = Long.TYPE;
        JPEG_GPS_TIMESTAMP = new Key<>("android.jpeg.gpsTimestamp", cls3);
        JPEG_ORIENTATION = new Key<>("android.jpeg.orientation", cls);
        JPEG_QUALITY = new Key<>("android.jpeg.quality", Byte.TYPE);
        JPEG_THUMBNAIL_QUALITY = new Key<>("android.jpeg.thumbnailQuality", Byte.TYPE);
        JPEG_THUMBNAIL_SIZE = new Key<>("android.jpeg.thumbnailSize", Size.class);
        Class cls4 = Float.TYPE;
        LENS_APERTURE = new Key<>("android.lens.aperture", cls4);
        LENS_FILTER_DENSITY = new Key<>("android.lens.filterDensity", cls4);
        LENS_FOCAL_LENGTH = new Key<>("android.lens.focalLength", cls4);
        LENS_FOCUS_DISTANCE = new Key<>("android.lens.focusDistance", cls4);
        LENS_FOCUS_RANGE = new Key<>("android.lens.focusRange", new TypeReference<Pair<Float, Float>>() { // from class: android.hardware.camera2.CaptureResult.2
        });
        LENS_OPTICAL_STABILIZATION_MODE = new Key<>("android.lens.opticalStabilizationMode", cls);
        LENS_STATE = new Key<>("android.lens.state", cls);
        LENS_POSE_ROTATION = new Key<>("android.lens.poseRotation", float[].class);
        LENS_POSE_TRANSLATION = new Key<>("android.lens.poseTranslation", float[].class);
        LENS_INTRINSIC_CALIBRATION = new Key<>("android.lens.intrinsicCalibration", float[].class);
        LENS_RADIAL_DISTORTION = new Key<>("android.lens.radialDistortion", float[].class);
        NOISE_REDUCTION_MODE = new Key<>("android.noiseReduction.mode", cls);
        QUIRKS_PARTIAL_RESULT = new Key<>("android.quirks.partialResult", cls2);
        REQUEST_FRAME_COUNT = new Key<>("android.request.frameCount", cls);
        REQUEST_ID = new Key<>(RestrictionsManager.REQUEST_KEY_ID, cls);
        REQUEST_PIPELINE_DEPTH = new Key<>("android.request.pipelineDepth", Byte.TYPE);
        SCALER_CROP_REGION = new Key<>("android.scaler.cropRegion", Rect.class);
        SENSOR_EXPOSURE_TIME = new Key<>("android.sensor.exposureTime", cls3);
        SENSOR_FRAME_DURATION = new Key<>("android.sensor.frameDuration", cls3);
        SENSOR_SENSITIVITY = new Key<>("android.sensor.sensitivity", cls);
        SENSOR_TIMESTAMP = new Key<>("android.sensor.timestamp", cls3);
        SENSOR_NEUTRAL_COLOR_POINT = new Key<>("android.sensor.neutralColorPoint", Rational[].class);
        SENSOR_NOISE_PROFILE = new Key<>("android.sensor.noiseProfile", new TypeReference<Pair<Double, Double>[]>() { // from class: android.hardware.camera2.CaptureResult.3
        });
        SENSOR_GREEN_SPLIT = new Key<>("android.sensor.greenSplit", cls4);
        SENSOR_TEST_PATTERN_DATA = new Key<>("android.sensor.testPatternData", int[].class);
        SENSOR_TEST_PATTERN_MODE = new Key<>("android.sensor.testPatternMode", cls);
        SENSOR_ROLLING_SHUTTER_SKEW = new Key<>("android.sensor.rollingShutterSkew", cls3);
        SENSOR_DYNAMIC_BLACK_LEVEL = new Key<>("android.sensor.dynamicBlackLevel", float[].class);
        SENSOR_DYNAMIC_WHITE_LEVEL = new Key<>("android.sensor.dynamicWhiteLevel", cls);
        SHADING_MODE = new Key<>("android.shading.mode", cls);
        STATISTICS_FACE_DETECT_MODE = new Key<>("android.statistics.faceDetectMode", cls);
        STATISTICS_FACE_IDS = new Key<>("android.statistics.faceIds", int[].class);
        STATISTICS_FACE_LANDMARKS = new Key<>("android.statistics.faceLandmarks", int[].class);
        STATISTICS_FACE_RECTANGLES = new Key<>("android.statistics.faceRectangles", Rect[].class);
        STATISTICS_FACE_SCORES = new Key<>("android.statistics.faceScores", byte[].class);
        STATISTICS_FACES = new Key<>("android.statistics.faces", Face[].class);
        STATISTICS_LENS_SHADING_CORRECTION_MAP = new Key<>("android.statistics.lensShadingCorrectionMap", LensShadingMap.class);
        STATISTICS_LENS_SHADING_MAP = new Key<>("android.statistics.lensShadingMap", float[].class);
        STATISTICS_PREDICTED_COLOR_GAINS = new Key<>("android.statistics.predictedColorGains", float[].class);
        STATISTICS_PREDICTED_COLOR_TRANSFORM = new Key<>("android.statistics.predictedColorTransform", Rational[].class);
        STATISTICS_SCENE_FLICKER = new Key<>("android.statistics.sceneFlicker", cls);
        STATISTICS_HOT_PIXEL_MAP_MODE = new Key<>("android.statistics.hotPixelMapMode", cls2);
        STATISTICS_HOT_PIXEL_MAP = new Key<>("android.statistics.hotPixelMap", Point[].class);
        STATISTICS_LENS_SHADING_MAP_MODE = new Key<>("android.statistics.lensShadingMapMode", cls);
        TONEMAP_CURVE_BLUE = new Key<>("android.tonemap.curveBlue", float[].class);
        TONEMAP_CURVE_GREEN = new Key<>("android.tonemap.curveGreen", float[].class);
        TONEMAP_CURVE_RED = new Key<>("android.tonemap.curveRed", float[].class);
        TONEMAP_CURVE = new Key<>("android.tonemap.curve", TonemapCurve.class);
        TONEMAP_MODE = new Key<>("android.tonemap.mode", cls);
        TONEMAP_GAMMA = new Key<>("android.tonemap.gamma", cls4);
        TONEMAP_PRESET_CURVE = new Key<>("android.tonemap.presetCurve", cls);
        LED_TRANSMIT = new Key<>("android.led.transmit", cls2);
        BLACK_LEVEL_LOCK = new Key<>("android.blackLevel.lock", cls2);
        SYNC_FRAME_NUMBER = new Key<>("android.sync.frameNumber", cls3);
        REPROCESS_EFFECTIVE_EXPOSURE_FACTOR = new Key<>("android.reprocess.effectiveExposureFactor", cls4);
    }

    public CaptureResult(CameraMetadataNative cameraMetadataNative, CaptureRequest captureRequest, CaptureResultExtras captureResultExtras) {
        if (cameraMetadataNative == null) {
            throw new IllegalArgumentException("results was null");
        }
        if (captureRequest == null) {
            throw new IllegalArgumentException("parent was null");
        }
        if (captureResultExtras == null) {
            throw new IllegalArgumentException("extras was null");
        }
        CameraMetadataNative cameraMetadataNativeMove = CameraMetadataNative.move(cameraMetadataNative);
        this.mResults = cameraMetadataNativeMove;
        if (cameraMetadataNativeMove.isEmpty()) {
            throw new AssertionError("Results must not be empty");
        }
        setNativeInstance(cameraMetadataNativeMove);
        this.mRequest = captureRequest;
        this.mSequenceId = captureResultExtras.getRequestId();
        this.mFrameNumber = captureResultExtras.getFrameNumber();
    }

    public void dumpToLog() {
        this.mResults.dumpToLog();
    }

    public <T> T get(Key<T> key) {
        return (T) this.mResults.get(key);
    }

    public long getFrameNumber() {
        return this.mFrameNumber;
    }

    @Override // android.hardware.camera2.CameraMetadata
    public Class<Key<?>> getKeyClass() {
        return Key.class;
    }

    @Override // android.hardware.camera2.CameraMetadata
    public List<Key<?>> getKeys() {
        return super.getKeys();
    }

    public CameraMetadataNative getNativeCopy() {
        return new CameraMetadataNative(this.mResults);
    }

    public CaptureRequest getRequest() {
        return this.mRequest;
    }

    public int getSequenceId() {
        return this.mSequenceId;
    }

    public static final class Key<T> {
        private final CameraMetadataNative.Key<T> mKey;

        public Key(String str, Class<T> cls, long j2) {
            this.mKey = new CameraMetadataNative.Key<>(str, cls, j2);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Key) && ((Key) obj).mKey.equals(this.mKey);
        }

        public String getName() {
            return this.mKey.getName();
        }

        public CameraMetadataNative.Key<T> getNativeKey() {
            return this.mKey;
        }

        public long getVendorId() {
            return this.mKey.getVendorId();
        }

        public final int hashCode() {
            return this.mKey.hashCode();
        }

        public String toString() {
            return String.format("CaptureResult.Key(%s)", this.mKey.getName());
        }

        public Key(String str, Class<T> cls) {
            this.mKey = new CameraMetadataNative.Key<>(str, cls);
        }

        public Key(String str, TypeReference<T> typeReference) {
            this.mKey = new CameraMetadataNative.Key<>(str, typeReference);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Key(CameraMetadataNative.Key<?> key) {
            this.mKey = key;
        }
    }

    @Override // android.hardware.camera2.CameraMetadata
    public <T> T getProtected(Key<?> key) {
        return (T) this.mResults.get(key);
    }

    public CaptureResult(CameraMetadataNative cameraMetadataNative, int i2) {
        if (cameraMetadataNative != null) {
            CameraMetadataNative cameraMetadataNativeMove = CameraMetadataNative.move(cameraMetadataNative);
            this.mResults = cameraMetadataNativeMove;
            if (!cameraMetadataNativeMove.isEmpty()) {
                setNativeInstance(cameraMetadataNativeMove);
                this.mRequest = null;
                this.mSequenceId = i2;
                this.mFrameNumber = -1L;
                return;
            }
            throw new AssertionError("Results must not be empty");
        }
        throw new IllegalArgumentException("results was null");
    }
}
