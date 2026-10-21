package android.hardware.camera2;

import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.impl.PublicKey;
import android.hardware.camera2.impl.SyntheticKey;
import android.hardware.camera2.params.BlackLevelPattern;
import android.hardware.camera2.params.ColorSpaceTransform;
import android.hardware.camera2.params.HighSpeedVideoConfiguration;
import android.hardware.camera2.params.ReprocessFormatsMap;
import android.hardware.camera2.params.StreamConfiguration;
import android.hardware.camera2.params.StreamConfigurationDuration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.hardware.camera2.utils.TypeReference;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CameraCharacteristics extends CameraMetadata<Key<?>> {

    @PublicKey
    public static final Key<Boolean> CONTROL_AE_LOCK_AVAILABLE;
    public static final Key<HighSpeedVideoConfiguration[]> CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS;

    @PublicKey
    public static final Key<int[]> CONTROL_AVAILABLE_MODES;

    @PublicKey
    public static final Key<Boolean> CONTROL_AWB_LOCK_AVAILABLE;

    @SyntheticKey
    @PublicKey
    public static final Key<Integer> CONTROL_MAX_REGIONS_AE;

    @SyntheticKey
    @PublicKey
    public static final Key<Integer> CONTROL_MAX_REGIONS_AF;

    @SyntheticKey
    @PublicKey
    public static final Key<Integer> CONTROL_MAX_REGIONS_AWB;

    @PublicKey
    public static final Key<Range<Integer>> CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE;
    public static final Key<StreamConfigurationDuration[]> DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS;
    public static final Key<StreamConfigurationDuration[]> DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS;
    public static final Key<StreamConfiguration[]> DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS;

    @PublicKey
    public static final Key<Boolean> DEPTH_DEPTH_IS_EXCLUSIVE;

    @PublicKey
    public static final Key<int[]> EDGE_AVAILABLE_EDGE_MODES;

    @PublicKey
    public static final Key<Boolean> FLASH_INFO_AVAILABLE;

    @PublicKey
    public static final Key<int[]> HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES;

    @PublicKey
    public static final Key<Integer> INFO_SUPPORTED_HARDWARE_LEVEL;

    @PublicKey
    public static final Key<Size[]> JPEG_AVAILABLE_THUMBNAIL_SIZES;
    public static final Key<int[]> LED_AVAILABLE_LEDS;

    @PublicKey
    public static final Key<Integer> LENS_FACING;

    @PublicKey
    public static final Key<float[]> LENS_INFO_AVAILABLE_APERTURES;

    @PublicKey
    public static final Key<float[]> LENS_INFO_AVAILABLE_FILTER_DENSITIES;

    @PublicKey
    public static final Key<float[]> LENS_INFO_AVAILABLE_FOCAL_LENGTHS;

    @PublicKey
    public static final Key<int[]> LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION;

    @PublicKey
    public static final Key<Integer> LENS_INFO_FOCUS_DISTANCE_CALIBRATION;

    @PublicKey
    public static final Key<Float> LENS_INFO_HYPERFOCAL_DISTANCE;

    @PublicKey
    public static final Key<Float> LENS_INFO_MINIMUM_FOCUS_DISTANCE;
    public static final Key<Size> LENS_INFO_SHADING_MAP_SIZE;

    @PublicKey
    public static final Key<float[]> LENS_INTRINSIC_CALIBRATION;

    @PublicKey
    public static final Key<float[]> LENS_POSE_ROTATION;

    @PublicKey
    public static final Key<float[]> LENS_POSE_TRANSLATION;

    @PublicKey
    public static final Key<float[]> LENS_RADIAL_DISTORTION;

    @PublicKey
    public static final Key<int[]> NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES;

    @Deprecated
    public static final Key<Byte> QUIRKS_USE_PARTIAL_RESULT;

    @PublicKey
    public static final Key<Integer> REPROCESS_MAX_CAPTURE_STALL;

    @PublicKey
    public static final Key<int[]> REQUEST_AVAILABLE_CAPABILITIES;
    public static final Key<int[]> REQUEST_AVAILABLE_CHARACTERISTICS_KEYS;
    public static final Key<int[]> REQUEST_AVAILABLE_REQUEST_KEYS;
    public static final Key<int[]> REQUEST_AVAILABLE_RESULT_KEYS;

    @PublicKey
    public static final Key<Integer> REQUEST_MAX_NUM_INPUT_STREAMS;

    @SyntheticKey
    @PublicKey
    public static final Key<Integer> REQUEST_MAX_NUM_OUTPUT_PROC;

    @SyntheticKey
    @PublicKey
    public static final Key<Integer> REQUEST_MAX_NUM_OUTPUT_PROC_STALLING;

    @SyntheticKey
    @PublicKey
    public static final Key<Integer> REQUEST_MAX_NUM_OUTPUT_RAW;
    public static final Key<int[]> REQUEST_MAX_NUM_OUTPUT_STREAMS;

    @PublicKey
    public static final Key<Integer> REQUEST_PARTIAL_RESULT_COUNT;

    @PublicKey
    public static final Key<Byte> REQUEST_PIPELINE_MAX_DEPTH;

    @Deprecated
    public static final Key<int[]> SCALER_AVAILABLE_FORMATS;
    public static final Key<ReprocessFormatsMap> SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP;

    @Deprecated
    public static final Key<long[]> SCALER_AVAILABLE_JPEG_MIN_DURATIONS;

    @Deprecated
    public static final Key<Size[]> SCALER_AVAILABLE_JPEG_SIZES;

    @PublicKey
    public static final Key<Float> SCALER_AVAILABLE_MAX_DIGITAL_ZOOM;
    public static final Key<StreamConfigurationDuration[]> SCALER_AVAILABLE_MIN_FRAME_DURATIONS;

    @Deprecated
    public static final Key<long[]> SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS;

    @Deprecated
    public static final Key<Size[]> SCALER_AVAILABLE_PROCESSED_SIZES;
    public static final Key<StreamConfigurationDuration[]> SCALER_AVAILABLE_STALL_DURATIONS;
    public static final Key<StreamConfiguration[]> SCALER_AVAILABLE_STREAM_CONFIGURATIONS;

    @PublicKey
    public static final Key<Integer> SCALER_CROPPING_TYPE;

    @SyntheticKey
    @PublicKey
    public static final Key<StreamConfigurationMap> SCALER_STREAM_CONFIGURATION_MAP;

    @PublicKey
    public static final Key<int[]> SENSOR_AVAILABLE_TEST_PATTERN_MODES;

    @PublicKey
    public static final Key<BlackLevelPattern> SENSOR_BLACK_LEVEL_PATTERN;

    @PublicKey
    public static final Key<ColorSpaceTransform> SENSOR_CALIBRATION_TRANSFORM1;

    @PublicKey
    public static final Key<ColorSpaceTransform> SENSOR_CALIBRATION_TRANSFORM2;

    @PublicKey
    public static final Key<ColorSpaceTransform> SENSOR_COLOR_TRANSFORM1;

    @PublicKey
    public static final Key<ColorSpaceTransform> SENSOR_COLOR_TRANSFORM2;

    @PublicKey
    public static final Key<ColorSpaceTransform> SENSOR_FORWARD_MATRIX1;

    @PublicKey
    public static final Key<ColorSpaceTransform> SENSOR_FORWARD_MATRIX2;

    @PublicKey
    public static final Key<Rect> SENSOR_INFO_ACTIVE_ARRAY_SIZE;

    @PublicKey
    public static final Key<Integer> SENSOR_INFO_COLOR_FILTER_ARRANGEMENT;

    @PublicKey
    public static final Key<Range<Long>> SENSOR_INFO_EXPOSURE_TIME_RANGE;

    @PublicKey
    public static final Key<Boolean> SENSOR_INFO_LENS_SHADING_APPLIED;

    @PublicKey
    public static final Key<Long> SENSOR_INFO_MAX_FRAME_DURATION;

    @PublicKey
    public static final Key<SizeF> SENSOR_INFO_PHYSICAL_SIZE;

    @PublicKey
    public static final Key<Size> SENSOR_INFO_PIXEL_ARRAY_SIZE;

    @PublicKey
    public static final Key<Rect> SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE;

    @PublicKey
    public static final Key<Range<Integer>> SENSOR_INFO_SENSITIVITY_RANGE;

    @PublicKey
    public static final Key<Integer> SENSOR_INFO_TIMESTAMP_SOURCE;

    @PublicKey
    public static final Key<Integer> SENSOR_INFO_WHITE_LEVEL;

    @PublicKey
    public static final Key<Integer> SENSOR_MAX_ANALOG_SENSITIVITY;

    @PublicKey
    public static final Key<Rect[]> SENSOR_OPTICAL_BLACK_REGIONS;

    @PublicKey
    public static final Key<Integer> SENSOR_ORIENTATION;

    @PublicKey
    public static final Key<Integer> SENSOR_REFERENCE_ILLUMINANT1;

    @PublicKey
    public static final Key<Byte> SENSOR_REFERENCE_ILLUMINANT2;

    @PublicKey
    public static final Key<int[]> SHADING_AVAILABLE_MODES;

    @PublicKey
    public static final Key<int[]> STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES;

    @PublicKey
    public static final Key<boolean[]> STATISTICS_INFO_AVAILABLE_HOT_PIXEL_MAP_MODES;

    @PublicKey
    public static final Key<int[]> STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES;

    @PublicKey
    public static final Key<Integer> STATISTICS_INFO_MAX_FACE_COUNT;

    @PublicKey
    public static final Key<Integer> SYNC_MAX_LATENCY;

    @PublicKey
    public static final Key<int[]> TONEMAP_AVAILABLE_TONE_MAP_MODES;

    @PublicKey
    public static final Key<Integer> TONEMAP_MAX_CURVE_POINTS;
    private List<CaptureRequest.Key<?>> mAvailableRequestKeys;
    private List<CaptureResult.Key<?>> mAvailableResultKeys;
    private List<Key<?>> mKeys;
    private final CameraMetadataNative mProperties;

    @PublicKey
    public static final Key<int[]> COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES = new Key<>("android.colorCorrection.availableAberrationModes", int[].class);

    @PublicKey
    public static final Key<int[]> CONTROL_AE_AVAILABLE_ANTIBANDING_MODES = new Key<>("android.control.aeAvailableAntibandingModes", int[].class);

    @PublicKey
    public static final Key<int[]> CONTROL_AE_AVAILABLE_MODES = new Key<>("android.control.aeAvailableModes", int[].class);

    @PublicKey
    public static final Key<Range<Integer>[]> CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES = new Key<>("android.control.aeAvailableTargetFpsRanges", new TypeReference<Range<Integer>[]>() { // from class: android.hardware.camera2.CameraCharacteristics.1
    });

    @PublicKey
    public static final Key<Range<Integer>> CONTROL_AE_COMPENSATION_RANGE = new Key<>("android.control.aeCompensationRange", new TypeReference<Range<Integer>>() { // from class: android.hardware.camera2.CameraCharacteristics.2
    });

    @PublicKey
    public static final Key<Rational> CONTROL_AE_COMPENSATION_STEP = new Key<>("android.control.aeCompensationStep", Rational.class);

    @PublicKey
    public static final Key<int[]> CONTROL_AF_AVAILABLE_MODES = new Key<>("android.control.afAvailableModes", int[].class);

    @PublicKey
    public static final Key<int[]> CONTROL_AVAILABLE_EFFECTS = new Key<>("android.control.availableEffects", int[].class);

    @PublicKey
    public static final Key<int[]> CONTROL_AVAILABLE_SCENE_MODES = new Key<>("android.control.availableSceneModes", int[].class);

    @PublicKey
    public static final Key<int[]> CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES = new Key<>("android.control.availableVideoStabilizationModes", int[].class);

    @PublicKey
    public static final Key<int[]> CONTROL_AWB_AVAILABLE_MODES = new Key<>("android.control.awbAvailableModes", int[].class);
    public static final Key<int[]> CONTROL_MAX_REGIONS = new Key<>("android.control.maxRegions", int[].class);

    static {
        Class cls = Integer.TYPE;
        CONTROL_MAX_REGIONS_AE = new Key<>("android.control.maxRegionsAe", cls);
        CONTROL_MAX_REGIONS_AWB = new Key<>("android.control.maxRegionsAwb", cls);
        CONTROL_MAX_REGIONS_AF = new Key<>("android.control.maxRegionsAf", cls);
        CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS = new Key<>("android.control.availableHighSpeedVideoConfigurations", HighSpeedVideoConfiguration[].class);
        Class cls2 = Boolean.TYPE;
        CONTROL_AE_LOCK_AVAILABLE = new Key<>("android.control.aeLockAvailable", cls2);
        CONTROL_AWB_LOCK_AVAILABLE = new Key<>("android.control.awbLockAvailable", cls2);
        CONTROL_AVAILABLE_MODES = new Key<>("android.control.availableModes", int[].class);
        CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE = new Key<>("android.control.postRawSensitivityBoostRange", new TypeReference<Range<Integer>>() { // from class: android.hardware.camera2.CameraCharacteristics.3
        });
        EDGE_AVAILABLE_EDGE_MODES = new Key<>("android.edge.availableEdgeModes", int[].class);
        FLASH_INFO_AVAILABLE = new Key<>("android.flash.info.available", cls2);
        HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES = new Key<>("android.hotPixel.availableHotPixelModes", int[].class);
        JPEG_AVAILABLE_THUMBNAIL_SIZES = new Key<>("android.jpeg.availableThumbnailSizes", Size[].class);
        LENS_INFO_AVAILABLE_APERTURES = new Key<>("android.lens.info.availableApertures", float[].class);
        LENS_INFO_AVAILABLE_FILTER_DENSITIES = new Key<>("android.lens.info.availableFilterDensities", float[].class);
        LENS_INFO_AVAILABLE_FOCAL_LENGTHS = new Key<>("android.lens.info.availableFocalLengths", float[].class);
        LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION = new Key<>("android.lens.info.availableOpticalStabilization", int[].class);
        Class cls3 = Float.TYPE;
        LENS_INFO_HYPERFOCAL_DISTANCE = new Key<>("android.lens.info.hyperfocalDistance", cls3);
        LENS_INFO_MINIMUM_FOCUS_DISTANCE = new Key<>("android.lens.info.minimumFocusDistance", cls3);
        LENS_INFO_SHADING_MAP_SIZE = new Key<>("android.lens.info.shadingMapSize", Size.class);
        LENS_INFO_FOCUS_DISTANCE_CALIBRATION = new Key<>("android.lens.info.focusDistanceCalibration", cls);
        LENS_FACING = new Key<>("android.lens.facing", cls);
        LENS_POSE_ROTATION = new Key<>("android.lens.poseRotation", float[].class);
        LENS_POSE_TRANSLATION = new Key<>("android.lens.poseTranslation", float[].class);
        LENS_INTRINSIC_CALIBRATION = new Key<>("android.lens.intrinsicCalibration", float[].class);
        LENS_RADIAL_DISTORTION = new Key<>("android.lens.radialDistortion", float[].class);
        NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES = new Key<>("android.noiseReduction.availableNoiseReductionModes", int[].class);
        QUIRKS_USE_PARTIAL_RESULT = new Key<>("android.quirks.usePartialResult", Byte.TYPE);
        REQUEST_MAX_NUM_OUTPUT_STREAMS = new Key<>("android.request.maxNumOutputStreams", int[].class);
        REQUEST_MAX_NUM_OUTPUT_RAW = new Key<>("android.request.maxNumOutputRaw", cls);
        REQUEST_MAX_NUM_OUTPUT_PROC = new Key<>("android.request.maxNumOutputProc", cls);
        REQUEST_MAX_NUM_OUTPUT_PROC_STALLING = new Key<>("android.request.maxNumOutputProcStalling", cls);
        REQUEST_MAX_NUM_INPUT_STREAMS = new Key<>("android.request.maxNumInputStreams", cls);
        REQUEST_PIPELINE_MAX_DEPTH = new Key<>("android.request.pipelineMaxDepth", Byte.TYPE);
        REQUEST_PARTIAL_RESULT_COUNT = new Key<>("android.request.partialResultCount", cls);
        REQUEST_AVAILABLE_CAPABILITIES = new Key<>("android.request.availableCapabilities", int[].class);
        REQUEST_AVAILABLE_REQUEST_KEYS = new Key<>("android.request.availableRequestKeys", int[].class);
        REQUEST_AVAILABLE_RESULT_KEYS = new Key<>("android.request.availableResultKeys", int[].class);
        REQUEST_AVAILABLE_CHARACTERISTICS_KEYS = new Key<>("android.request.availableCharacteristicsKeys", int[].class);
        SCALER_AVAILABLE_FORMATS = new Key<>("android.scaler.availableFormats", int[].class);
        SCALER_AVAILABLE_JPEG_MIN_DURATIONS = new Key<>("android.scaler.availableJpegMinDurations", long[].class);
        SCALER_AVAILABLE_JPEG_SIZES = new Key<>("android.scaler.availableJpegSizes", Size[].class);
        SCALER_AVAILABLE_MAX_DIGITAL_ZOOM = new Key<>("android.scaler.availableMaxDigitalZoom", cls3);
        SCALER_AVAILABLE_PROCESSED_MIN_DURATIONS = new Key<>("android.scaler.availableProcessedMinDurations", long[].class);
        SCALER_AVAILABLE_PROCESSED_SIZES = new Key<>("android.scaler.availableProcessedSizes", Size[].class);
        SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP = new Key<>("android.scaler.availableInputOutputFormatsMap", ReprocessFormatsMap.class);
        SCALER_AVAILABLE_STREAM_CONFIGURATIONS = new Key<>("android.scaler.availableStreamConfigurations", StreamConfiguration[].class);
        SCALER_AVAILABLE_MIN_FRAME_DURATIONS = new Key<>("android.scaler.availableMinFrameDurations", StreamConfigurationDuration[].class);
        SCALER_AVAILABLE_STALL_DURATIONS = new Key<>("android.scaler.availableStallDurations", StreamConfigurationDuration[].class);
        SCALER_STREAM_CONFIGURATION_MAP = new Key<>("android.scaler.streamConfigurationMap", StreamConfigurationMap.class);
        SCALER_CROPPING_TYPE = new Key<>("android.scaler.croppingType", cls);
        SENSOR_INFO_ACTIVE_ARRAY_SIZE = new Key<>("android.sensor.info.activeArraySize", Rect.class);
        SENSOR_INFO_SENSITIVITY_RANGE = new Key<>("android.sensor.info.sensitivityRange", new TypeReference<Range<Integer>>() { // from class: android.hardware.camera2.CameraCharacteristics.4
        });
        SENSOR_INFO_COLOR_FILTER_ARRANGEMENT = new Key<>("android.sensor.info.colorFilterArrangement", cls);
        SENSOR_INFO_EXPOSURE_TIME_RANGE = new Key<>("android.sensor.info.exposureTimeRange", new TypeReference<Range<Long>>() { // from class: android.hardware.camera2.CameraCharacteristics.5
        });
        SENSOR_INFO_MAX_FRAME_DURATION = new Key<>("android.sensor.info.maxFrameDuration", Long.TYPE);
        SENSOR_INFO_PHYSICAL_SIZE = new Key<>("android.sensor.info.physicalSize", SizeF.class);
        SENSOR_INFO_PIXEL_ARRAY_SIZE = new Key<>("android.sensor.info.pixelArraySize", Size.class);
        SENSOR_INFO_WHITE_LEVEL = new Key<>("android.sensor.info.whiteLevel", cls);
        SENSOR_INFO_TIMESTAMP_SOURCE = new Key<>("android.sensor.info.timestampSource", cls);
        SENSOR_INFO_LENS_SHADING_APPLIED = new Key<>("android.sensor.info.lensShadingApplied", cls2);
        SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE = new Key<>("android.sensor.info.preCorrectionActiveArraySize", Rect.class);
        SENSOR_REFERENCE_ILLUMINANT1 = new Key<>("android.sensor.referenceIlluminant1", cls);
        SENSOR_REFERENCE_ILLUMINANT2 = new Key<>("android.sensor.referenceIlluminant2", Byte.TYPE);
        SENSOR_CALIBRATION_TRANSFORM1 = new Key<>("android.sensor.calibrationTransform1", ColorSpaceTransform.class);
        SENSOR_CALIBRATION_TRANSFORM2 = new Key<>("android.sensor.calibrationTransform2", ColorSpaceTransform.class);
        SENSOR_COLOR_TRANSFORM1 = new Key<>("android.sensor.colorTransform1", ColorSpaceTransform.class);
        SENSOR_COLOR_TRANSFORM2 = new Key<>("android.sensor.colorTransform2", ColorSpaceTransform.class);
        SENSOR_FORWARD_MATRIX1 = new Key<>("android.sensor.forwardMatrix1", ColorSpaceTransform.class);
        SENSOR_FORWARD_MATRIX2 = new Key<>("android.sensor.forwardMatrix2", ColorSpaceTransform.class);
        SENSOR_BLACK_LEVEL_PATTERN = new Key<>("android.sensor.blackLevelPattern", BlackLevelPattern.class);
        SENSOR_MAX_ANALOG_SENSITIVITY = new Key<>("android.sensor.maxAnalogSensitivity", cls);
        SENSOR_ORIENTATION = new Key<>(Sensor.STRING_TYPE_ORIENTATION, cls);
        SENSOR_AVAILABLE_TEST_PATTERN_MODES = new Key<>("android.sensor.availableTestPatternModes", int[].class);
        SENSOR_OPTICAL_BLACK_REGIONS = new Key<>("android.sensor.opticalBlackRegions", Rect[].class);
        SHADING_AVAILABLE_MODES = new Key<>("android.shading.availableModes", int[].class);
        STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES = new Key<>("android.statistics.info.availableFaceDetectModes", int[].class);
        STATISTICS_INFO_MAX_FACE_COUNT = new Key<>("android.statistics.info.maxFaceCount", cls);
        STATISTICS_INFO_AVAILABLE_HOT_PIXEL_MAP_MODES = new Key<>("android.statistics.info.availableHotPixelMapModes", boolean[].class);
        STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES = new Key<>("android.statistics.info.availableLensShadingMapModes", int[].class);
        TONEMAP_MAX_CURVE_POINTS = new Key<>("android.tonemap.maxCurvePoints", cls);
        TONEMAP_AVAILABLE_TONE_MAP_MODES = new Key<>("android.tonemap.availableToneMapModes", int[].class);
        LED_AVAILABLE_LEDS = new Key<>("android.led.availableLeds", int[].class);
        INFO_SUPPORTED_HARDWARE_LEVEL = new Key<>("android.info.supportedHardwareLevel", cls);
        SYNC_MAX_LATENCY = new Key<>("android.sync.maxLatency", cls);
        REPROCESS_MAX_CAPTURE_STALL = new Key<>("android.reprocess.maxCaptureStall", cls);
        DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS = new Key<>("android.depth.availableDepthStreamConfigurations", StreamConfiguration[].class);
        DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS = new Key<>("android.depth.availableDepthMinFrameDurations", StreamConfigurationDuration[].class);
        DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS = new Key<>("android.depth.availableDepthStallDurations", StreamConfigurationDuration[].class);
        DEPTH_DEPTH_IS_EXCLUSIVE = new Key<>("android.depth.depthIsExclusive", cls2);
    }

    public CameraCharacteristics(CameraMetadataNative cameraMetadataNative) {
        CameraMetadataNative cameraMetadataNativeMove = CameraMetadataNative.move(cameraMetadataNative);
        this.mProperties = cameraMetadataNativeMove;
        setNativeInstance(cameraMetadataNativeMove);
    }

    private <TKey> List<TKey> getAvailableKeyList(Class<?> cls, Class<TKey> cls2, int[] iArr) {
        if (cls.equals(CameraMetadata.class)) {
            throw new AssertionError("metadataClass must be a strict subclass of CameraMetadata");
        }
        if (CameraMetadata.class.isAssignableFrom(cls)) {
            return Collections.unmodifiableList(getKeys(cls, cls2, null, iArr));
        }
        throw new AssertionError("metadataClass must be a subclass of CameraMetadata");
    }

    public <T> T get(Key<T> key) {
        return (T) this.mProperties.get(key);
    }

    public List<CaptureRequest.Key<?>> getAvailableCaptureRequestKeys() {
        if (this.mAvailableRequestKeys == null) {
            int[] iArr = (int[]) get(REQUEST_AVAILABLE_REQUEST_KEYS);
            if (iArr == null) {
                throw new AssertionError("android.request.availableRequestKeys must be non-null in the characteristics");
            }
            this.mAvailableRequestKeys = getAvailableKeyList(CaptureRequest.class, CaptureRequest.Key.class, iArr);
        }
        return this.mAvailableRequestKeys;
    }

    public List<CaptureResult.Key<?>> getAvailableCaptureResultKeys() {
        if (this.mAvailableResultKeys == null) {
            int[] iArr = (int[]) get(REQUEST_AVAILABLE_RESULT_KEYS);
            if (iArr == null) {
                throw new AssertionError("android.request.availableResultKeys must be non-null in the characteristics");
            }
            this.mAvailableResultKeys = getAvailableKeyList(CaptureResult.class, CaptureResult.Key.class, iArr);
        }
        return this.mAvailableResultKeys;
    }

    @Override // android.hardware.camera2.CameraMetadata
    public Class<Key<?>> getKeyClass() {
        return Key.class;
    }

    @Override // android.hardware.camera2.CameraMetadata
    public List<Key<?>> getKeys() {
        List<Key<?>> list = this.mKeys;
        if (list != null) {
            return list;
        }
        int[] iArr = (int[]) get(REQUEST_AVAILABLE_CHARACTERISTICS_KEYS);
        if (iArr == null) {
            throw new AssertionError("android.request.availableCharacteristicsKeys must be non-null in the characteristics");
        }
        List<Key<?>> listUnmodifiableList = Collections.unmodifiableList(getKeys(CameraCharacteristics.class, getKeyClass(), this, iArr));
        this.mKeys = listUnmodifiableList;
        return listUnmodifiableList;
    }

    public CameraMetadataNative getNativeCopy() {
        return new CameraMetadataNative(this.mProperties);
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
            return String.format("CameraCharacteristics.Key(%s)", this.mKey.getName());
        }

        public Key(String str, Class<T> cls) {
            this.mKey = new CameraMetadataNative.Key<>(str, cls);
        }

        public Key(String str, TypeReference<T> typeReference) {
            this.mKey = new CameraMetadataNative.Key<>(str, typeReference);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Key(CameraMetadataNative.Key<?> key) {
            this.mKey = key;
        }
    }

    @Override // android.hardware.camera2.CameraMetadata
    public <T> T getProtected(Key<?> key) {
        return (T) this.mProperties.get(key);
    }
}
