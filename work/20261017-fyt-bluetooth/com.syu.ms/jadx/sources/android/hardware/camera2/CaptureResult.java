package android.hardware.camera2;

import android.graphics.Rect;
import android.hardware.camera2.impl.CameraMetadataNative;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureResult extends CameraMetadata {
    public static final CameraMetadata.Key<Boolean> BLACK_LEVEL_LOCK;
    public static final CameraMetadata.Key<Integer> CONTROL_AE_PRECAPTURE_ID;
    public static final CameraMetadata.Key<int[]> CONTROL_AE_REGIONS;
    public static final CameraMetadata.Key<Integer> CONTROL_AE_STATE;
    public static final CameraMetadata.Key<Integer> CONTROL_AF_MODE;
    public static final CameraMetadata.Key<int[]> CONTROL_AF_REGIONS;
    public static final CameraMetadata.Key<Integer> CONTROL_AF_STATE;
    public static final CameraMetadata.Key<Integer> CONTROL_AF_TRIGGER_ID;
    public static final CameraMetadata.Key<Integer> CONTROL_AWB_MODE;
    public static final CameraMetadata.Key<int[]> CONTROL_AWB_REGIONS;
    public static final CameraMetadata.Key<Integer> CONTROL_AWB_STATE;
    public static final CameraMetadata.Key<Integer> CONTROL_MODE;
    public static final CameraMetadata.Key<Integer> EDGE_MODE;
    public static final CameraMetadata.Key<Integer> FLASH_MODE;
    public static final CameraMetadata.Key<Integer> FLASH_STATE;
    public static final CameraMetadata.Key<double[]> JPEG_GPS_COORDINATES;
    public static final CameraMetadata.Key<String> JPEG_GPS_PROCESSING_METHOD;
    public static final CameraMetadata.Key<Long> JPEG_GPS_TIMESTAMP;
    public static final CameraMetadata.Key<Integer> JPEG_ORIENTATION;
    public static final CameraMetadata.Key<Byte> JPEG_QUALITY;
    public static final CameraMetadata.Key<Byte> JPEG_THUMBNAIL_QUALITY;
    public static final CameraMetadata.Key<Size> JPEG_THUMBNAIL_SIZE;
    public static final CameraMetadata.Key<Boolean> LED_TRANSMIT;
    public static final CameraMetadata.Key<Float> LENS_APERTURE;
    public static final CameraMetadata.Key<Float> LENS_FILTER_DENSITY;
    public static final CameraMetadata.Key<Float> LENS_FOCAL_LENGTH;
    public static final CameraMetadata.Key<Float> LENS_FOCUS_DISTANCE;
    public static final CameraMetadata.Key<float[]> LENS_FOCUS_RANGE;
    public static final CameraMetadata.Key<Integer> LENS_OPTICAL_STABILIZATION_MODE;
    public static final CameraMetadata.Key<Integer> LENS_STATE;
    public static final CameraMetadata.Key<Integer> NOISE_REDUCTION_MODE;
    public static final CameraMetadata.Key<Boolean> QUIRKS_PARTIAL_RESULT;
    public static final CameraMetadata.Key<Integer> REQUEST_FRAME_COUNT;
    public static final CameraMetadata.Key<Integer> REQUEST_ID;
    public static final CameraMetadata.Key<Rect> SCALER_CROP_REGION;
    public static final CameraMetadata.Key<Long> SENSOR_EXPOSURE_TIME;
    public static final CameraMetadata.Key<Long> SENSOR_FRAME_DURATION;
    public static final CameraMetadata.Key<Integer> SENSOR_SENSITIVITY;
    public static final CameraMetadata.Key<Float> SENSOR_TEMPERATURE;
    public static final CameraMetadata.Key<Long> SENSOR_TIMESTAMP;
    public static final CameraMetadata.Key<Face[]> STATISTICS_FACES;
    public static final CameraMetadata.Key<Integer> STATISTICS_FACE_DETECT_MODE;
    public static final CameraMetadata.Key<int[]> STATISTICS_FACE_IDS;
    public static final CameraMetadata.Key<int[]> STATISTICS_FACE_LANDMARKS;
    public static final CameraMetadata.Key<Rect[]> STATISTICS_FACE_RECTANGLES;
    public static final CameraMetadata.Key<byte[]> STATISTICS_FACE_SCORES;
    public static final CameraMetadata.Key<float[]> STATISTICS_LENS_SHADING_MAP;
    public static final CameraMetadata.Key<float[]> STATISTICS_PREDICTED_COLOR_GAINS;
    public static final CameraMetadata.Key<Rational[]> STATISTICS_PREDICTED_COLOR_TRANSFORM;
    public static final CameraMetadata.Key<Integer> STATISTICS_SCENE_FLICKER;
    public static final CameraMetadata.Key<float[]> TONEMAP_CURVE_BLUE;
    public static final CameraMetadata.Key<float[]> TONEMAP_CURVE_GREEN;
    public static final CameraMetadata.Key<float[]> TONEMAP_CURVE_RED;
    public static final CameraMetadata.Key<Integer> TONEMAP_MODE;
    private final CaptureRequest mRequest;
    private final CameraMetadataNative mResults;
    private final int mSequenceId;
    public static final CameraMetadata.Key<Rational[]> COLOR_CORRECTION_TRANSFORM = new CameraMetadata.Key<>("android.colorCorrection.transform", Rational[].class);
    public static final CameraMetadata.Key<float[]> COLOR_CORRECTION_GAINS = new CameraMetadata.Key<>("android.colorCorrection.gains", float[].class);

    static {
        Class cls = Integer.TYPE;
        CONTROL_AE_PRECAPTURE_ID = new CameraMetadata.Key<>("android.control.aePrecaptureId", cls);
        CONTROL_AE_REGIONS = new CameraMetadata.Key<>("android.control.aeRegions", int[].class);
        CONTROL_AE_STATE = new CameraMetadata.Key<>("android.control.aeState", cls);
        CONTROL_AF_MODE = new CameraMetadata.Key<>("android.control.afMode", cls);
        CONTROL_AF_REGIONS = new CameraMetadata.Key<>("android.control.afRegions", int[].class);
        CONTROL_AF_STATE = new CameraMetadata.Key<>("android.control.afState", cls);
        CONTROL_AF_TRIGGER_ID = new CameraMetadata.Key<>("android.control.afTriggerId", cls);
        CONTROL_AWB_MODE = new CameraMetadata.Key<>("android.control.awbMode", cls);
        CONTROL_AWB_REGIONS = new CameraMetadata.Key<>("android.control.awbRegions", int[].class);
        CONTROL_AWB_STATE = new CameraMetadata.Key<>("android.control.awbState", cls);
        CONTROL_MODE = new CameraMetadata.Key<>("android.control.mode", cls);
        EDGE_MODE = new CameraMetadata.Key<>("android.edge.mode", cls);
        FLASH_MODE = new CameraMetadata.Key<>("android.flash.mode", cls);
        FLASH_STATE = new CameraMetadata.Key<>("android.flash.state", cls);
        JPEG_GPS_COORDINATES = new CameraMetadata.Key<>("android.jpeg.gpsCoordinates", double[].class);
        JPEG_GPS_PROCESSING_METHOD = new CameraMetadata.Key<>("android.jpeg.gpsProcessingMethod", String.class);
        Class cls2 = Long.TYPE;
        JPEG_GPS_TIMESTAMP = new CameraMetadata.Key<>("android.jpeg.gpsTimestamp", cls2);
        JPEG_ORIENTATION = new CameraMetadata.Key<>("android.jpeg.orientation", cls);
        JPEG_QUALITY = new CameraMetadata.Key<>("android.jpeg.quality", Byte.TYPE);
        JPEG_THUMBNAIL_QUALITY = new CameraMetadata.Key<>("android.jpeg.thumbnailQuality", Byte.TYPE);
        JPEG_THUMBNAIL_SIZE = new CameraMetadata.Key<>("android.jpeg.thumbnailSize", Size.class);
        Class cls3 = Float.TYPE;
        LENS_APERTURE = new CameraMetadata.Key<>("android.lens.aperture", cls3);
        LENS_FILTER_DENSITY = new CameraMetadata.Key<>("android.lens.filterDensity", cls3);
        LENS_FOCAL_LENGTH = new CameraMetadata.Key<>("android.lens.focalLength", cls3);
        LENS_FOCUS_DISTANCE = new CameraMetadata.Key<>("android.lens.focusDistance", cls3);
        LENS_FOCUS_RANGE = new CameraMetadata.Key<>("android.lens.focusRange", float[].class);
        LENS_OPTICAL_STABILIZATION_MODE = new CameraMetadata.Key<>("android.lens.opticalStabilizationMode", cls);
        LENS_STATE = new CameraMetadata.Key<>("android.lens.state", cls);
        NOISE_REDUCTION_MODE = new CameraMetadata.Key<>("android.noiseReduction.mode", cls);
        Class cls4 = Boolean.TYPE;
        QUIRKS_PARTIAL_RESULT = new CameraMetadata.Key<>("android.quirks.partialResult", cls4);
        REQUEST_FRAME_COUNT = new CameraMetadata.Key<>("android.request.frameCount", cls);
        REQUEST_ID = new CameraMetadata.Key<>("android.request.id", cls);
        SCALER_CROP_REGION = new CameraMetadata.Key<>("android.scaler.cropRegion", Rect.class);
        SENSOR_EXPOSURE_TIME = new CameraMetadata.Key<>("android.sensor.exposureTime", cls2);
        SENSOR_FRAME_DURATION = new CameraMetadata.Key<>("android.sensor.frameDuration", cls2);
        SENSOR_SENSITIVITY = new CameraMetadata.Key<>("android.sensor.sensitivity", cls);
        SENSOR_TIMESTAMP = new CameraMetadata.Key<>("android.sensor.timestamp", cls2);
        SENSOR_TEMPERATURE = new CameraMetadata.Key<>("android.sensor.temperature", cls3);
        STATISTICS_FACE_DETECT_MODE = new CameraMetadata.Key<>("android.statistics.faceDetectMode", cls);
        STATISTICS_FACE_IDS = new CameraMetadata.Key<>("android.statistics.faceIds", int[].class);
        STATISTICS_FACE_LANDMARKS = new CameraMetadata.Key<>("android.statistics.faceLandmarks", int[].class);
        STATISTICS_FACE_RECTANGLES = new CameraMetadata.Key<>("android.statistics.faceRectangles", Rect[].class);
        STATISTICS_FACE_SCORES = new CameraMetadata.Key<>("android.statistics.faceScores", byte[].class);
        STATISTICS_LENS_SHADING_MAP = new CameraMetadata.Key<>("android.statistics.lensShadingMap", float[].class);
        STATISTICS_PREDICTED_COLOR_GAINS = new CameraMetadata.Key<>("android.statistics.predictedColorGains", float[].class);
        STATISTICS_PREDICTED_COLOR_TRANSFORM = new CameraMetadata.Key<>("android.statistics.predictedColorTransform", Rational[].class);
        STATISTICS_SCENE_FLICKER = new CameraMetadata.Key<>("android.statistics.sceneFlicker", cls);
        TONEMAP_CURVE_BLUE = new CameraMetadata.Key<>("android.tonemap.curveBlue", float[].class);
        TONEMAP_CURVE_GREEN = new CameraMetadata.Key<>("android.tonemap.curveGreen", float[].class);
        TONEMAP_CURVE_RED = new CameraMetadata.Key<>("android.tonemap.curveRed", float[].class);
        TONEMAP_MODE = new CameraMetadata.Key<>("android.tonemap.mode", cls);
        LED_TRANSMIT = new CameraMetadata.Key<>("android.led.transmit", cls4);
        BLACK_LEVEL_LOCK = new CameraMetadata.Key<>("android.blackLevel.lock", cls4);
        STATISTICS_FACES = new CameraMetadata.Key<>("android.statistics.faces", Face[].class);
    }

    public CaptureResult(CameraMetadataNative cameraMetadataNative, CaptureRequest captureRequest, int i2) {
        if (cameraMetadataNative == null) {
            throw new IllegalArgumentException("results was null");
        }
        if (captureRequest == null) {
            throw new IllegalArgumentException("parent was null");
        }
        this.mResults = cameraMetadataNative;
        this.mRequest = captureRequest;
        this.mSequenceId = i2;
    }

    @Override // android.hardware.camera2.CameraMetadata
    public <T> T get(CameraMetadata.Key<T> key) {
        return (T) this.mResults.get(key);
    }

    public int getFrameNumber() {
        return ((Integer) get(REQUEST_FRAME_COUNT)).intValue();
    }

    public CaptureRequest getRequest() {
        return this.mRequest;
    }

    public int getSequenceId() {
        return this.mSequenceId;
    }
}
