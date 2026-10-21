package android.hardware.camera2;

import android.graphics.Rect;
import android.hardware.camera2.impl.CameraMetadataNative;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraCharacteristics extends CameraMetadata {
    public static final CameraMetadata.Key<byte[]> CONTROL_AE_AVAILABLE_ANTIBANDING_MODES = new CameraMetadata.Key<>("android.control.aeAvailableAntibandingModes", byte[].class);
    public static final CameraMetadata.Key<int[]> CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES = new CameraMetadata.Key<>("android.control.aeAvailableTargetFpsRanges", int[].class);
    public static final CameraMetadata.Key<int[]> CONTROL_AE_COMPENSATION_RANGE = new CameraMetadata.Key<>("android.control.aeCompensationRange", int[].class);
    public static final CameraMetadata.Key<Rational> CONTROL_AE_COMPENSATION_STEP = new CameraMetadata.Key<>("android.control.aeCompensationStep", Rational.class);
    public static final CameraMetadata.Key<byte[]> CONTROL_AF_AVAILABLE_MODES = new CameraMetadata.Key<>("android.control.afAvailableModes", byte[].class);
    public static final CameraMetadata.Key<byte[]> CONTROL_AVAILABLE_EFFECTS = new CameraMetadata.Key<>("android.control.availableEffects", byte[].class);
    public static final CameraMetadata.Key<byte[]> CONTROL_AVAILABLE_SCENE_MODES = new CameraMetadata.Key<>("android.control.availableSceneModes", byte[].class);
    public static final CameraMetadata.Key<byte[]> CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES = new CameraMetadata.Key<>("android.control.availableVideoStabilizationModes", byte[].class);
    public static final CameraMetadata.Key<byte[]> CONTROL_AWB_AVAILABLE_MODES = new CameraMetadata.Key<>("android.control.awbAvailableModes", byte[].class);
    public static final CameraMetadata.Key<Integer> CONTROL_MAX_REGIONS;
    public static final CameraMetadata.Key<Byte> FLASH_INFO_AVAILABLE;
    public static final CameraMetadata.Key<Integer> INFO_SUPPORTED_HARDWARE_LEVEL;
    public static final CameraMetadata.Key<Size[]> JPEG_AVAILABLE_THUMBNAIL_SIZES;
    public static final CameraMetadata.Key<int[]> LED_AVAILABLE_LEDS;
    public static final CameraMetadata.Key<Integer> LENS_FACING;
    public static final CameraMetadata.Key<float[]> LENS_INFO_AVAILABLE_APERTURES;
    public static final CameraMetadata.Key<float[]> LENS_INFO_AVAILABLE_FILTER_DENSITIES;
    public static final CameraMetadata.Key<float[]> LENS_INFO_AVAILABLE_FOCAL_LENGTHS;
    public static final CameraMetadata.Key<byte[]> LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION;
    public static final CameraMetadata.Key<Float> LENS_INFO_HYPERFOCAL_DISTANCE;
    public static final CameraMetadata.Key<Float> LENS_INFO_MINIMUM_FOCUS_DISTANCE;
    public static final CameraMetadata.Key<Size> LENS_INFO_SHADING_MAP_SIZE;
    public static final CameraMetadata.Key<Byte> QUIRKS_USE_PARTIAL_RESULT;
    public static final CameraMetadata.Key<int[]> REQUEST_MAX_NUM_OUTPUT_STREAMS;
    public static final CameraMetadata.Key<int[]> SCALER_AVAILABLE_FORMATS;
    public static final CameraMetadata.Key<long[]> SCALER_AVAILABLE_JPEG_MIN_DURATIONS;
    public static final CameraMetadata.Key<Size[]> SCALER_AVAILABLE_JPEG_SIZES;
    public static final CameraMetadata.Key<Float> SCALER_AVAILABLE_MAX_DIGITAL_ZOOM;
    public static final CameraMetadata.Key<long[]> SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS;
    public static final CameraMetadata.Key<Size[]> SCALER_AVAILABLE_PROCESSED_SIZES;
    public static final CameraMetadata.Key<Rational> SENSOR_BASE_GAIN_FACTOR;
    public static final CameraMetadata.Key<Rect> SENSOR_INFO_ACTIVE_ARRAY_SIZE;
    public static final CameraMetadata.Key<long[]> SENSOR_INFO_EXPOSURE_TIME_RANGE;
    public static final CameraMetadata.Key<Long> SENSOR_INFO_MAX_FRAME_DURATION;
    public static final CameraMetadata.Key<float[]> SENSOR_INFO_PHYSICAL_SIZE;
    public static final CameraMetadata.Key<int[]> SENSOR_INFO_SENSITIVITY_RANGE;
    public static final CameraMetadata.Key<Integer> SENSOR_MAX_ANALOG_SENSITIVITY;
    public static final CameraMetadata.Key<Integer> SENSOR_ORIENTATION;
    public static final CameraMetadata.Key<byte[]> STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES;
    public static final CameraMetadata.Key<Integer> STATISTICS_INFO_MAX_FACE_COUNT;
    public static final CameraMetadata.Key<Integer> TONEMAP_MAX_CURVE_POINTS;
    private List<CameraMetadata.Key<?>> mAvailableRequestKeys;
    private List<CameraMetadata.Key<?>> mAvailableResultKeys;
    private final CameraMetadataNative mProperties;

    static {
        Class cls = Integer.TYPE;
        CONTROL_MAX_REGIONS = new CameraMetadata.Key<>("android.control.maxRegions", cls);
        FLASH_INFO_AVAILABLE = new CameraMetadata.Key<>("android.flash.info.available", Byte.TYPE);
        JPEG_AVAILABLE_THUMBNAIL_SIZES = new CameraMetadata.Key<>("android.jpeg.availableThumbnailSizes", Size[].class);
        LENS_INFO_AVAILABLE_APERTURES = new CameraMetadata.Key<>("android.lens.info.availableApertures", float[].class);
        LENS_INFO_AVAILABLE_FILTER_DENSITIES = new CameraMetadata.Key<>("android.lens.info.availableFilterDensities", float[].class);
        LENS_INFO_AVAILABLE_FOCAL_LENGTHS = new CameraMetadata.Key<>("android.lens.info.availableFocalLengths", float[].class);
        LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION = new CameraMetadata.Key<>("android.lens.info.availableOpticalStabilization", byte[].class);
        Class cls2 = Float.TYPE;
        LENS_INFO_HYPERFOCAL_DISTANCE = new CameraMetadata.Key<>("android.lens.info.hyperfocalDistance", cls2);
        LENS_INFO_MINIMUM_FOCUS_DISTANCE = new CameraMetadata.Key<>("android.lens.info.minimumFocusDistance", cls2);
        LENS_INFO_SHADING_MAP_SIZE = new CameraMetadata.Key<>("android.lens.info.shadingMapSize", Size.class);
        LENS_FACING = new CameraMetadata.Key<>("android.lens.facing", cls);
        QUIRKS_USE_PARTIAL_RESULT = new CameraMetadata.Key<>("android.quirks.usePartialResult", Byte.TYPE);
        REQUEST_MAX_NUM_OUTPUT_STREAMS = new CameraMetadata.Key<>("android.request.maxNumOutputStreams", int[].class);
        SCALER_AVAILABLE_FORMATS = new CameraMetadata.Key<>("android.scaler.availableFormats", int[].class);
        SCALER_AVAILABLE_JPEG_MIN_DURATIONS = new CameraMetadata.Key<>("android.scaler.availableJpegMinDurations", long[].class);
        SCALER_AVAILABLE_JPEG_SIZES = new CameraMetadata.Key<>("android.scaler.availableJpegSizes", Size[].class);
        SCALER_AVAILABLE_MAX_DIGITAL_ZOOM = new CameraMetadata.Key<>("android.scaler.availableMaxDigitalZoom", cls2);
        SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS = new CameraMetadata.Key<>("android.scaler.availableProcessedMinDurations", long[].class);
        SCALER_AVAILABLE_PROCESSED_SIZES = new CameraMetadata.Key<>("android.scaler.availableProcessedSizes", Size[].class);
        SENSOR_INFO_ACTIVE_ARRAY_SIZE = new CameraMetadata.Key<>("android.sensor.info.activeArraySize", Rect.class);
        SENSOR_INFO_SENSITIVITY_RANGE = new CameraMetadata.Key<>("android.sensor.info.sensitivityRange", int[].class);
        SENSOR_INFO_EXPOSURE_TIME_RANGE = new CameraMetadata.Key<>("android.sensor.info.exposureTimeRange", long[].class);
        SENSOR_INFO_MAX_FRAME_DURATION = new CameraMetadata.Key<>("android.sensor.info.maxFrameDuration", Long.TYPE);
        SENSOR_INFO_PHYSICAL_SIZE = new CameraMetadata.Key<>("android.sensor.info.physicalSize", float[].class);
        SENSOR_BASE_GAIN_FACTOR = new CameraMetadata.Key<>("android.sensor.baseGainFactor", Rational.class);
        SENSOR_MAX_ANALOG_SENSITIVITY = new CameraMetadata.Key<>("android.sensor.maxAnalogSensitivity", cls);
        SENSOR_ORIENTATION = new CameraMetadata.Key<>("android.sensor.orientation", cls);
        STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES = new CameraMetadata.Key<>("android.statistics.info.availableFaceDetectModes", byte[].class);
        STATISTICS_INFO_MAX_FACE_COUNT = new CameraMetadata.Key<>("android.statistics.info.maxFaceCount", cls);
        TONEMAP_MAX_CURVE_POINTS = new CameraMetadata.Key<>("android.tonemap.maxCurvePoints", cls);
        LED_AVAILABLE_LEDS = new CameraMetadata.Key<>("android.led.availableLeds", int[].class);
        INFO_SUPPORTED_HARDWARE_LEVEL = new CameraMetadata.Key<>("android.info.supportedHardwareLevel", cls);
    }

    public CameraCharacteristics(CameraMetadataNative cameraMetadataNative) {
        this.mProperties = cameraMetadataNative;
    }

    private <T extends CameraMetadata> List<CameraMetadata.Key<?>> getAvailableKeyList(Class<T> cls) {
        if (cls.equals(CameraMetadata.class)) {
            throw new AssertionError("metadataClass must be a strict subclass of CameraMetadata");
        }
        if (CameraMetadata.class.isAssignableFrom(cls)) {
            return Collections.unmodifiableList(CameraMetadata.getKeysStatic(cls, null));
        }
        throw new AssertionError("metadataClass must be a subclass of CameraMetadata");
    }

    @Override // android.hardware.camera2.CameraMetadata
    public <T> T get(CameraMetadata.Key<T> key) {
        return (T) this.mProperties.get(key);
    }

    public List<CameraMetadata.Key<?>> getAvailableCaptureRequestKeys() {
        if (this.mAvailableRequestKeys == null) {
            this.mAvailableRequestKeys = getAvailableKeyList(CaptureRequest.class);
        }
        return this.mAvailableRequestKeys;
    }

    public List<CameraMetadata.Key<?>> getAvailableCaptureResultKeys() {
        if (this.mAvailableResultKeys == null) {
            this.mAvailableResultKeys = getAvailableKeyList(CaptureResult.class);
        }
        return this.mAvailableResultKeys;
    }
}
