package android.hardware.camera2;

import android.accessibilityservice.c;
import android.content.RestrictionsManager;
import android.graphics.Rect;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.impl.PublicKey;
import android.hardware.camera2.impl.SyntheticKey;
import android.hardware.camera2.params.ColorSpaceTransform;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.RggbChannelVector;
import android.hardware.camera2.params.TonemapCurve;
import android.hardware.camera2.utils.HashCodeHelpers;
import android.hardware.camera2.utils.TypeReference;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureRequest extends CameraMetadata<Key<?>> implements Parcelable {

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
    public static final Key<Range<Integer>> CONTROL_AE_TARGET_FPS_RANGE;

    @PublicKey
    public static final Key<Integer> CONTROL_AF_MODE;

    @PublicKey
    public static final Key<MeteringRectangle[]> CONTROL_AF_REGIONS;

    @PublicKey
    public static final Key<Integer> CONTROL_AF_TRIGGER;

    @PublicKey
    public static final Key<Boolean> CONTROL_AWB_LOCK;

    @PublicKey
    public static final Key<Integer> CONTROL_AWB_MODE;

    @PublicKey
    public static final Key<MeteringRectangle[]> CONTROL_AWB_REGIONS;

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
    public static final Parcelable.Creator<CaptureRequest> CREATOR = new Parcelable.Creator<CaptureRequest>() { // from class: android.hardware.camera2.CaptureRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CaptureRequest createFromParcel(Parcel parcel) {
            CaptureRequest captureRequest = new CaptureRequest();
            captureRequest.readFromParcel(parcel);
            return captureRequest;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CaptureRequest[] newArray(int i2) {
            return new CaptureRequest[i2];
        }
    };

    @PublicKey
    public static final Key<Integer> EDGE_MODE;

    @PublicKey
    public static final Key<Integer> FLASH_MODE;

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
    public static final Key<Integer> LENS_OPTICAL_STABILIZATION_MODE;

    @PublicKey
    public static final Key<Integer> NOISE_REDUCTION_MODE;

    @PublicKey
    public static final Key<Float> REPROCESS_EFFECTIVE_EXPOSURE_FACTOR;
    public static final Key<Integer> REQUEST_ID;

    @PublicKey
    public static final Key<Rect> SCALER_CROP_REGION;

    @PublicKey
    public static final Key<Long> SENSOR_EXPOSURE_TIME;

    @PublicKey
    public static final Key<Long> SENSOR_FRAME_DURATION;

    @PublicKey
    public static final Key<Integer> SENSOR_SENSITIVITY;

    @PublicKey
    public static final Key<int[]> SENSOR_TEST_PATTERN_DATA;

    @PublicKey
    public static final Key<Integer> SENSOR_TEST_PATTERN_MODE;

    @PublicKey
    public static final Key<Integer> SHADING_MODE;

    @PublicKey
    public static final Key<Integer> STATISTICS_FACE_DETECT_MODE;

    @PublicKey
    public static final Key<Boolean> STATISTICS_HOT_PIXEL_MAP_MODE;

    @PublicKey
    public static final Key<Integer> STATISTICS_LENS_SHADING_MAP_MODE;

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
    private boolean mIsPartOfCHSRequestList;
    private boolean mIsReprocess;
    private int mReprocessableSessionId;
    private final CameraMetadataNative mSettings;
    private final HashSet<Surface> mSurfaceSet;
    private Object mUserTag;

    public static final class Builder {
        private final CaptureRequest mRequest;

        public Builder(CameraMetadataNative cameraMetadataNative, boolean z2, int i2) {
            this.mRequest = new CaptureRequest(cameraMetadataNative, z2, i2);
        }

        public void addTarget(Surface surface) {
            this.mRequest.mSurfaceSet.add(surface);
        }

        public CaptureRequest build() {
            return new CaptureRequest();
        }

        public <T> T get(Key<T> key) {
            return (T) this.mRequest.mSettings.get(key);
        }

        public boolean isEmpty() {
            return this.mRequest.mSettings.isEmpty();
        }

        public void removeTarget(Surface surface) {
            this.mRequest.mSurfaceSet.remove(surface);
        }

        public <T> void set(Key<T> key, T t2) {
            this.mRequest.mSettings.set(key, t2);
        }

        public void setPartOfCHSRequestList(boolean z2) {
            this.mRequest.mIsPartOfCHSRequestList = z2;
        }

        public void setTag(Object obj) {
            this.mRequest.mUserTag = obj;
        }
    }

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
        CONTROL_AE_TARGET_FPS_RANGE = new Key<>("android.control.aeTargetFpsRange", new TypeReference<Range<Integer>>() { // from class: android.hardware.camera2.CaptureRequest.2
        });
        CONTROL_AE_PRECAPTURE_TRIGGER = new Key<>("android.control.aePrecaptureTrigger", cls);
        CONTROL_AF_MODE = new Key<>("android.control.afMode", cls);
        CONTROL_AF_REGIONS = new Key<>("android.control.afRegions", MeteringRectangle[].class);
        CONTROL_AF_TRIGGER = new Key<>("android.control.afTrigger", cls);
        CONTROL_AWB_LOCK = new Key<>("android.control.awbLock", cls2);
        CONTROL_AWB_MODE = new Key<>("android.control.awbMode", cls);
        CONTROL_AWB_REGIONS = new Key<>("android.control.awbRegions", MeteringRectangle[].class);
        CONTROL_CAPTURE_INTENT = new Key<>("android.control.captureIntent", cls);
        CONTROL_EFFECT_MODE = new Key<>("android.control.effectMode", cls);
        CONTROL_MODE = new Key<>("android.control.mode", cls);
        CONTROL_SCENE_MODE = new Key<>("android.control.sceneMode", cls);
        CONTROL_VIDEO_STABILIZATION_MODE = new Key<>("android.control.videoStabilizationMode", cls);
        CONTROL_POST_RAW_SENSITIVITY_BOOST = new Key<>("android.control.postRawSensitivityBoost", cls);
        CONTROL_ENABLE_ZSL = new Key<>("android.control.enableZsl", cls2);
        EDGE_MODE = new Key<>("android.edge.mode", cls);
        FLASH_MODE = new Key<>("android.flash.mode", cls);
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
        LENS_OPTICAL_STABILIZATION_MODE = new Key<>("android.lens.opticalStabilizationMode", cls);
        NOISE_REDUCTION_MODE = new Key<>("android.noiseReduction.mode", cls);
        REQUEST_ID = new Key<>(RestrictionsManager.REQUEST_KEY_ID, cls);
        SCALER_CROP_REGION = new Key<>("android.scaler.cropRegion", Rect.class);
        SENSOR_EXPOSURE_TIME = new Key<>("android.sensor.exposureTime", cls3);
        SENSOR_FRAME_DURATION = new Key<>("android.sensor.frameDuration", cls3);
        SENSOR_SENSITIVITY = new Key<>("android.sensor.sensitivity", cls);
        SENSOR_TEST_PATTERN_DATA = new Key<>("android.sensor.testPatternData", int[].class);
        SENSOR_TEST_PATTERN_MODE = new Key<>("android.sensor.testPatternMode", cls);
        SHADING_MODE = new Key<>("android.shading.mode", cls);
        STATISTICS_FACE_DETECT_MODE = new Key<>("android.statistics.faceDetectMode", cls);
        STATISTICS_HOT_PIXEL_MAP_MODE = new Key<>("android.statistics.hotPixelMapMode", cls2);
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
        REPROCESS_EFFECTIVE_EXPOSURE_FACTOR = new Key<>("android.reprocess.effectiveExposureFactor", cls4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readFromParcel(Parcel parcel) {
        this.mSettings.readFromParcel(parcel);
        setNativeInstance(this.mSettings);
        this.mSurfaceSet.clear();
        Parcelable[] parcelableArray = parcel.readParcelableArray(Surface.class.getClassLoader());
        if (parcelableArray == null) {
            return;
        }
        for (Parcelable parcelable : parcelableArray) {
            this.mSurfaceSet.add((Surface) parcelable);
        }
        this.mIsReprocess = parcel.readInt() != 0;
        this.mReprocessableSessionId = -1;
    }

    public boolean containsTarget(Surface surface) {
        return this.mSurfaceSet.contains(surface);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof CaptureRequest) && equals((CaptureRequest) obj);
    }

    public <T> T get(Key<T> key) {
        return (T) this.mSettings.get(key);
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
        return new CameraMetadataNative(this.mSettings);
    }

    public int getReprocessableSessionId() {
        int i2;
        if (!this.mIsReprocess || (i2 = this.mReprocessableSessionId) == -1) {
            throw new IllegalStateException("Getting the reprocessable session ID for a non-reprocess capture request is illegal.");
        }
        return i2;
    }

    public Object getTag() {
        return this.mUserTag;
    }

    public Collection<Surface> getTargets() {
        return Collections.unmodifiableCollection(this.mSurfaceSet);
    }

    public int hashCode() {
        return HashCodeHelpers.hashCodeGeneric(this.mSettings, this.mSurfaceSet, this.mUserTag);
    }

    public boolean isPartOfCRequestList() {
        return this.mIsPartOfCHSRequestList;
    }

    public boolean isReprocess() {
        return this.mIsReprocess;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mSettings.writeToParcel(parcel, i2);
        HashSet<Surface> hashSet = this.mSurfaceSet;
        parcel.writeParcelableArray((Parcelable[]) hashSet.toArray(new Surface[hashSet.size()]), i2);
        parcel.writeInt(this.mIsReprocess ? 1 : 0);
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
            return String.format("CaptureRequest.Key(%s)", this.mKey.getName());
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
        return (T) this.mSettings.get(key);
    }

    private boolean equals(CaptureRequest captureRequest) {
        return captureRequest != null && Objects.equals(this.mUserTag, captureRequest.mUserTag) && this.mSurfaceSet.equals(captureRequest.mSurfaceSet) && this.mSettings.equals(captureRequest.mSettings) && this.mIsReprocess == captureRequest.mIsReprocess && this.mReprocessableSessionId == captureRequest.mReprocessableSessionId;
    }

    private CaptureRequest() {
        this.mIsPartOfCHSRequestList = false;
        CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
        this.mSettings = cameraMetadataNative;
        setNativeInstance(cameraMetadataNative);
        this.mSurfaceSet = new HashSet<>();
        this.mIsReprocess = false;
        this.mReprocessableSessionId = -1;
    }

    private CaptureRequest(CaptureRequest captureRequest) {
        this.mIsPartOfCHSRequestList = false;
        CameraMetadataNative cameraMetadataNative = new CameraMetadataNative(captureRequest.mSettings);
        this.mSettings = cameraMetadataNative;
        setNativeInstance(cameraMetadataNative);
        this.mSurfaceSet = (HashSet) captureRequest.mSurfaceSet.clone();
        this.mIsReprocess = captureRequest.mIsReprocess;
        this.mIsPartOfCHSRequestList = captureRequest.mIsPartOfCHSRequestList;
        this.mReprocessableSessionId = captureRequest.mReprocessableSessionId;
        this.mUserTag = captureRequest.mUserTag;
    }

    private CaptureRequest(CameraMetadataNative cameraMetadataNative, boolean z2, int i2) {
        this.mIsPartOfCHSRequestList = false;
        CameraMetadataNative cameraMetadataNativeMove = CameraMetadataNative.move(cameraMetadataNative);
        this.mSettings = cameraMetadataNativeMove;
        setNativeInstance(cameraMetadataNativeMove);
        this.mSurfaceSet = new HashSet<>();
        this.mIsReprocess = z2;
        if (!z2) {
            this.mReprocessableSessionId = -1;
        } else {
            if (i2 != -1) {
                this.mReprocessableSessionId = i2;
                return;
            }
            throw new IllegalArgumentException(c.d("Create a reprocess capture request with an invalid session ID: ", i2));
        }
    }
}
