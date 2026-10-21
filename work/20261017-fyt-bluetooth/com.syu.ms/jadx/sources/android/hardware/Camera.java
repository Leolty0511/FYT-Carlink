package android.hardware;

import android.app.ActivityThread;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.IAudioService;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.Type;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Camera {
    public static final String ACTION_NEW_PICTURE = "android.hardware.action.NEW_PICTURE";
    public static final String ACTION_NEW_VIDEO = "android.hardware.action.NEW_VIDEO";
    public static final int CAMERA_ERROR_SERVER_DIED = 100;
    public static final int CAMERA_ERROR_UNKNOWN = 1;
    private static final int CAMERA_FACE_DETECTION_HW = 0;
    private static final int CAMERA_FACE_DETECTION_SW = 1;
    private static final int CAMERA_MSG_COMPRESSED_IMAGE = 256;
    private static final int CAMERA_MSG_ERROR = 1;
    private static final int CAMERA_MSG_FOCUS = 4;
    private static final int CAMERA_MSG_FOCUS_MOVE = 2048;
    private static final int CAMERA_MSG_POSTVIEW_FRAME = 64;
    private static final int CAMERA_MSG_PREVIEW_FRAME = 16;
    private static final int CAMERA_MSG_PREVIEW_METADATA = 1024;
    private static final int CAMERA_MSG_RAW_IMAGE = 128;
    private static final int CAMERA_MSG_RAW_IMAGE_NOTIFY = 512;
    private static final int CAMERA_MSG_SHUTTER = 2;
    private static final int CAMERA_MSG_VIDEO_FRAME = 32;
    private static final int CAMERA_MSG_ZOOM = 8;
    private static final String TAG = "Camera";
    private AutoFocusCallback mAutoFocusCallback;
    private Object mAutoFocusCallbackLock;
    private AutoFocusMoveCallback mAutoFocusMoveCallback;
    private ErrorCallback mErrorCallback;
    private EventHandler mEventHandler;
    private boolean mFaceDetectionRunning;
    private FaceDetectionListener mFaceListener;
    private PictureCallback mJpegCallback;
    private int mNativeContext;
    private boolean mOneShot;
    private PictureCallback mPostviewCallback;
    private PreviewCallback mPreviewCallback;
    private PictureCallback mRawImageCallback;
    private ShutterCallback mShutterCallback;
    private boolean mUsingPreviewAllocation;
    private boolean mWithBuffer;
    private OnZoomChangeListener mZoomListener;

    public static class Area {
        public Rect rect;
        public int weight;

        public Area(Rect rect, int i2) {
            this.rect = rect;
            this.weight = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Area)) {
                return false;
            }
            Area area = (Area) obj;
            Rect rect = this.rect;
            if (rect == null) {
                if (area.rect != null) {
                    return false;
                }
            } else if (!rect.equals(area.rect)) {
                return false;
            }
            return this.weight == area.weight;
        }
    }

    public interface AutoFocusCallback {
        void onAutoFocus(boolean z2, Camera camera);
    }

    public interface AutoFocusMoveCallback {
        void onAutoFocusMoving(boolean z2, Camera camera);
    }

    public static class CameraInfo {
        public static final int CAMERA_FACING_BACK = 0;
        public static final int CAMERA_FACING_FRONT = 1;
        public boolean canDisableShutterSound;
        public int facing;
        public int orientation;
    }

    public interface ErrorCallback {
        void onError(int i2, Camera camera);
    }

    public class EventHandler extends Handler {
        private Camera mCamera;

        public EventHandler(Camera camera, Looper looper) {
            super(looper);
            this.mCamera = camera;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AutoFocusCallback autoFocusCallback;
            int i2 = message.what;
            if (i2 == 1) {
                Log.e(Camera.TAG, "Error " + message.arg1);
                if (Camera.this.mErrorCallback != null) {
                    Camera.this.mErrorCallback.onError(message.arg1, this.mCamera);
                    return;
                }
                return;
            }
            if (i2 == 2) {
                if (Camera.this.mShutterCallback != null) {
                    Camera.this.mShutterCallback.onShutter();
                    return;
                }
                return;
            }
            if (i2 == 4) {
                synchronized (Camera.this.mAutoFocusCallbackLock) {
                    autoFocusCallback = Camera.this.mAutoFocusCallback;
                }
                if (autoFocusCallback != null) {
                    autoFocusCallback.onAutoFocus(message.arg1 != 0, this.mCamera);
                    return;
                }
                return;
            }
            if (i2 == 8) {
                if (Camera.this.mZoomListener != null) {
                    Camera.this.mZoomListener.onZoomChange(message.arg1, message.arg2 != 0, this.mCamera);
                    return;
                }
                return;
            }
            if (i2 == 16) {
                PreviewCallback previewCallback = Camera.this.mPreviewCallback;
                if (previewCallback != null) {
                    if (Camera.this.mOneShot) {
                        Camera.this.mPreviewCallback = null;
                    } else if (!Camera.this.mWithBuffer) {
                        Camera.this.setHasPreviewCallback(true, false);
                    }
                    previewCallback.onPreviewFrame((byte[]) message.obj, this.mCamera);
                    return;
                }
                return;
            }
            if (i2 == 64) {
                if (Camera.this.mPostviewCallback != null) {
                    Camera.this.mPostviewCallback.onPictureTaken((byte[]) message.obj, this.mCamera);
                    return;
                }
                return;
            }
            if (i2 == 128) {
                if (Camera.this.mRawImageCallback != null) {
                    Camera.this.mRawImageCallback.onPictureTaken((byte[]) message.obj, this.mCamera);
                    return;
                }
                return;
            }
            if (i2 == 256) {
                if (Camera.this.mJpegCallback != null) {
                    Camera.this.mJpegCallback.onPictureTaken((byte[]) message.obj, this.mCamera);
                }
            } else if (i2 == 1024) {
                if (Camera.this.mFaceListener != null) {
                    Camera.this.mFaceListener.onFaceDetection((Face[]) message.obj, this.mCamera);
                }
            } else if (i2 == 2048) {
                if (Camera.this.mAutoFocusMoveCallback != null) {
                    Camera.this.mAutoFocusMoveCallback.onAutoFocusMoving(message.arg1 != 0, this.mCamera);
                }
            } else {
                Log.e(Camera.TAG, "Unknown message type " + message.what);
            }
        }
    }

    public static class Face {
        public Rect rect;
        public int score;
        public int id = -1;
        public Point leftEye = null;
        public Point rightEye = null;
        public Point mouth = null;
    }

    public interface FaceDetectionListener {
        void onFaceDetection(Face[] faceArr, Camera camera);
    }

    public interface OnZoomChangeListener {
        void onZoomChange(int i2, boolean z2, Camera camera);
    }

    public class Parameters {
        public static final String ANTIBANDING_50HZ = "50hz";
        public static final String ANTIBANDING_60HZ = "60hz";
        public static final String ANTIBANDING_AUTO = "auto";
        public static final String ANTIBANDING_OFF = "off";
        public static final String EFFECT_AQUA = "aqua";
        public static final String EFFECT_BLACKBOARD = "blackboard";
        public static final String EFFECT_MONO = "mono";
        public static final String EFFECT_NEGATIVE = "negative";
        public static final String EFFECT_NONE = "none";
        public static final String EFFECT_POSTERIZE = "posterize";
        public static final String EFFECT_SEPIA = "sepia";
        public static final String EFFECT_SOLARIZE = "solarize";
        public static final String EFFECT_WHITEBOARD = "whiteboard";
        private static final String FALSE = "false";
        public static final String FLASH_MODE_AUTO = "auto";
        public static final String FLASH_MODE_OFF = "off";
        public static final String FLASH_MODE_ON = "on";
        public static final String FLASH_MODE_RED_EYE = "red-eye";
        public static final String FLASH_MODE_TORCH = "torch";
        public static final int FOCUS_DISTANCE_FAR_INDEX = 2;
        public static final int FOCUS_DISTANCE_NEAR_INDEX = 0;
        public static final int FOCUS_DISTANCE_OPTIMAL_INDEX = 1;
        public static final String FOCUS_MODE_AUTO = "auto";
        public static final String FOCUS_MODE_CONTINUOUS_PICTURE = "continuous-picture";
        public static final String FOCUS_MODE_CONTINUOUS_VIDEO = "continuous-video";
        public static final String FOCUS_MODE_EDOF = "edof";
        public static final String FOCUS_MODE_FIXED = "fixed";
        public static final String FOCUS_MODE_INFINITY = "infinity";
        public static final String FOCUS_MODE_MACRO = "macro";
        private static final String KEY_ANTIBANDING = "antibanding";
        private static final String KEY_AUTO_EXPOSURE_LOCK = "auto-exposure-lock";
        private static final String KEY_AUTO_EXPOSURE_LOCK_SUPPORTED = "auto-exposure-lock-supported";
        private static final String KEY_AUTO_WHITEBALANCE_LOCK = "auto-whitebalance-lock";
        private static final String KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED = "auto-whitebalance-lock-supported";
        private static final String KEY_EFFECT = "effect";
        private static final String KEY_EXPOSURE_COMPENSATION = "exposure-compensation";
        private static final String KEY_EXPOSURE_COMPENSATION_STEP = "exposure-compensation-step";
        private static final String KEY_FLASH_MODE = "flash-mode";
        private static final String KEY_FOCAL_LENGTH = "focal-length";
        private static final String KEY_FOCUS_AREAS = "focus-areas";
        private static final String KEY_FOCUS_DISTANCES = "focus-distances";
        private static final String KEY_FOCUS_MODE = "focus-mode";
        private static final String KEY_GPS_ALTITUDE = "gps-altitude";
        private static final String KEY_GPS_LATITUDE = "gps-latitude";
        private static final String KEY_GPS_LONGITUDE = "gps-longitude";
        private static final String KEY_GPS_PROCESSING_METHOD = "gps-processing-method";
        private static final String KEY_GPS_TIMESTAMP = "gps-timestamp";
        private static final String KEY_HORIZONTAL_VIEW_ANGLE = "horizontal-view-angle";
        private static final String KEY_JPEG_QUALITY = "jpeg-quality";
        private static final String KEY_JPEG_THUMBNAIL_HEIGHT = "jpeg-thumbnail-height";
        private static final String KEY_JPEG_THUMBNAIL_QUALITY = "jpeg-thumbnail-quality";
        private static final String KEY_JPEG_THUMBNAIL_SIZE = "jpeg-thumbnail-size";
        private static final String KEY_JPEG_THUMBNAIL_WIDTH = "jpeg-thumbnail-width";
        private static final String KEY_MAX_EXPOSURE_COMPENSATION = "max-exposure-compensation";
        private static final String KEY_MAX_NUM_DETECTED_FACES_HW = "max-num-detected-faces-hw";
        private static final String KEY_MAX_NUM_DETECTED_FACES_SW = "max-num-detected-faces-sw";
        private static final String KEY_MAX_NUM_FOCUS_AREAS = "max-num-focus-areas";
        private static final String KEY_MAX_NUM_METERING_AREAS = "max-num-metering-areas";
        private static final String KEY_MAX_ZOOM = "max-zoom";
        private static final String KEY_METERING_AREAS = "metering-areas";
        private static final String KEY_MIN_EXPOSURE_COMPENSATION = "min-exposure-compensation";
        private static final String KEY_PICTURE_FORMAT = "picture-format";
        private static final String KEY_PICTURE_SIZE = "picture-size";
        private static final String KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO = "preferred-preview-size-for-video";
        private static final String KEY_PREVIEW_FORMAT = "preview-format";
        private static final String KEY_PREVIEW_FPS_RANGE = "preview-fps-range";
        private static final String KEY_PREVIEW_FRAME_RATE = "preview-frame-rate";
        private static final String KEY_PREVIEW_SIZE = "preview-size";
        private static final String KEY_RECORDING_HINT = "recording-hint";
        private static final String KEY_ROTATION = "rotation";
        private static final String KEY_SCENE_MODE = "scene-mode";
        private static final String KEY_SMOOTH_ZOOM_SUPPORTED = "smooth-zoom-supported";
        private static final String KEY_VERTICAL_VIEW_ANGLE = "vertical-view-angle";
        private static final String KEY_VIDEO_SIZE = "video-size";
        private static final String KEY_VIDEO_SNAPSHOT_SUPPORTED = "video-snapshot-supported";
        private static final String KEY_VIDEO_STABILIZATION = "video-stabilization";
        private static final String KEY_VIDEO_STABILIZATION_SUPPORTED = "video-stabilization-supported";
        private static final String KEY_WHITE_BALANCE = "whitebalance";
        private static final String KEY_ZOOM = "zoom";
        private static final String KEY_ZOOM_RATIOS = "zoom-ratios";
        private static final String KEY_ZOOM_SUPPORTED = "zoom-supported";
        private static final String PIXEL_FORMAT_BAYER_RGGB = "bayer-rggb";
        private static final String PIXEL_FORMAT_JPEG = "jpeg";
        private static final String PIXEL_FORMAT_RGB565 = "rgb565";
        private static final String PIXEL_FORMAT_YUV420P = "yuv420p";
        private static final String PIXEL_FORMAT_YUV420SP = "yuv420sp";
        private static final String PIXEL_FORMAT_YUV422I = "yuv422i-yuyv";
        private static final String PIXEL_FORMAT_YUV422SP = "yuv422sp";
        public static final int PREVIEW_FPS_MAX_INDEX = 1;
        public static final int PREVIEW_FPS_MIN_INDEX = 0;
        public static final String SCENE_MODE_ACTION = "action";
        public static final String SCENE_MODE_AUTO = "auto";
        public static final String SCENE_MODE_BARCODE = "barcode";
        public static final String SCENE_MODE_BEACH = "beach";
        public static final String SCENE_MODE_CANDLELIGHT = "candlelight";
        public static final String SCENE_MODE_FIREWORKS = "fireworks";
        public static final String SCENE_MODE_HDR = "hdr";
        public static final String SCENE_MODE_LANDSCAPE = "landscape";
        public static final String SCENE_MODE_NIGHT = "night";
        public static final String SCENE_MODE_NIGHT_PORTRAIT = "night-portrait";
        public static final String SCENE_MODE_PARTY = "party";
        public static final String SCENE_MODE_PORTRAIT = "portrait";
        public static final String SCENE_MODE_SNOW = "snow";
        public static final String SCENE_MODE_SPORTS = "sports";
        public static final String SCENE_MODE_STEADYPHOTO = "steadyphoto";
        public static final String SCENE_MODE_SUNSET = "sunset";
        public static final String SCENE_MODE_THEATRE = "theatre";
        private static final String SUPPORTED_VALUES_SUFFIX = "-values";
        private static final String TRUE = "true";
        public static final String WHITE_BALANCE_AUTO = "auto";
        public static final String WHITE_BALANCE_CLOUDY_DAYLIGHT = "cloudy-daylight";
        public static final String WHITE_BALANCE_DAYLIGHT = "daylight";
        public static final String WHITE_BALANCE_FLUORESCENT = "fluorescent";
        public static final String WHITE_BALANCE_INCANDESCENT = "incandescent";
        public static final String WHITE_BALANCE_SHADE = "shade";
        public static final String WHITE_BALANCE_TWILIGHT = "twilight";
        public static final String WHITE_BALANCE_WARM_FLUORESCENT = "warm-fluorescent";
        private final LinkedHashMap<String, String> mMap;

        private String cameraFormatForPixelFormat(int i2) {
            if (i2 == 4) {
                return PIXEL_FORMAT_RGB565;
            }
            if (i2 == 20) {
                return PIXEL_FORMAT_YUV422I;
            }
            if (i2 == 256) {
                return PIXEL_FORMAT_JPEG;
            }
            if (i2 == 512) {
                return PIXEL_FORMAT_BAYER_RGGB;
            }
            if (i2 == 842094169) {
                return PIXEL_FORMAT_YUV420P;
            }
            if (i2 == 16) {
                return PIXEL_FORMAT_YUV422SP;
            }
            if (i2 != 17) {
                return null;
            }
            return PIXEL_FORMAT_YUV420SP;
        }

        private float getFloat(String str, float f2) {
            try {
                return Float.parseFloat(this.mMap.get(str));
            } catch (NumberFormatException unused) {
                return f2;
            }
        }

        private int pixelFormatForCameraFormat(String str) {
            if (str == null) {
                return 0;
            }
            if (str.equals(PIXEL_FORMAT_YUV422SP)) {
                return 16;
            }
            if (str.equals(PIXEL_FORMAT_YUV420SP)) {
                return 17;
            }
            if (str.equals(PIXEL_FORMAT_YUV422I)) {
                return 20;
            }
            if (str.equals(PIXEL_FORMAT_YUV420P)) {
                return ImageFormat.YV12;
            }
            if (str.equals(PIXEL_FORMAT_RGB565)) {
                return 4;
            }
            return str.equals(PIXEL_FORMAT_JPEG) ? 256 : 0;
        }

        private void put(String str, String str2) {
            this.mMap.remove(str);
            this.mMap.put(str, str2);
        }

        private boolean same(String str, String str2) {
            if (str == null && str2 == null) {
                return true;
            }
            return str != null && str.equals(str2);
        }

        private ArrayList<String> split(String str) {
            if (str == null) {
                return null;
            }
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(PhoneNumberUtils.PAUSE);
            simpleStringSplitter.setString(str);
            ArrayList<String> arrayList = new ArrayList<>();
            Iterator<String> it = simpleStringSplitter.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return arrayList;
        }

        private ArrayList<Area> splitArea(String str) {
            int iIndexOf;
            if (str == null || str.charAt(0) != '(' || str.charAt(str.length() - 1) != ')') {
                Log.e(Camera.TAG, "Invalid area string=" + str);
                return null;
            }
            ArrayList<Area> arrayList = new ArrayList<>();
            int[] iArr = new int[5];
            int i2 = 1;
            do {
                iIndexOf = str.indexOf("),(", i2);
                if (iIndexOf == -1) {
                    iIndexOf = str.length() - 1;
                }
                splitInt(str.substring(i2, iIndexOf), iArr);
                arrayList.add(new Area(new Rect(iArr[0], iArr[1], iArr[2], iArr[3]), iArr[4]));
                i2 = iIndexOf + 3;
            } while (iIndexOf != str.length() - 1);
            if (arrayList.size() == 0) {
                return null;
            }
            if (arrayList.size() == 1) {
                Area area = arrayList.get(0);
                Rect rect = area.rect;
                if (rect.left == 0 && rect.top == 0 && rect.right == 0 && rect.bottom == 0 && area.weight == 0) {
                    return null;
                }
            }
            return arrayList;
        }

        private void splitFloat(String str, float[] fArr) {
            if (str == null) {
                return;
            }
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(PhoneNumberUtils.PAUSE);
            simpleStringSplitter.setString(str);
            int i2 = 0;
            Iterator<String> it = simpleStringSplitter.iterator();
            while (it.hasNext()) {
                fArr[i2] = Float.parseFloat(it.next());
                i2++;
            }
        }

        private ArrayList<Integer> splitInt(String str) {
            if (str == null) {
                return null;
            }
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(PhoneNumberUtils.PAUSE);
            simpleStringSplitter.setString(str);
            ArrayList<Integer> arrayList = new ArrayList<>();
            Iterator<String> it = simpleStringSplitter.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(Integer.parseInt(it.next())));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            return arrayList;
        }

        private ArrayList<int[]> splitRange(String str) {
            int iIndexOf;
            if (str == null || str.charAt(0) != '(' || str.charAt(str.length() - 1) != ')') {
                Log.e(Camera.TAG, "Invalid range list string=" + str);
                return null;
            }
            ArrayList<int[]> arrayList = new ArrayList<>();
            int i2 = 1;
            do {
                int[] iArr = new int[2];
                iIndexOf = str.indexOf("),(", i2);
                if (iIndexOf == -1) {
                    iIndexOf = str.length() - 1;
                }
                splitInt(str.substring(i2, iIndexOf), iArr);
                arrayList.add(iArr);
                i2 = iIndexOf + 3;
            } while (iIndexOf != str.length() - 1);
            if (arrayList.size() == 0) {
                return null;
            }
            return arrayList;
        }

        private ArrayList<Size> splitSize(String str) {
            if (str == null) {
                return null;
            }
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(PhoneNumberUtils.PAUSE);
            simpleStringSplitter.setString(str);
            ArrayList<Size> arrayList = new ArrayList<>();
            Iterator<String> it = simpleStringSplitter.iterator();
            while (it.hasNext()) {
                Size sizeStrToSize = strToSize(it.next());
                if (sizeStrToSize != null) {
                    arrayList.add(sizeStrToSize);
                }
            }
            if (arrayList.size() == 0) {
                return null;
            }
            return arrayList;
        }

        private Size strToSize(String str) {
            if (str == null) {
                return null;
            }
            int iIndexOf = str.indexOf(120);
            if (iIndexOf != -1) {
                return Camera.this.new Size(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
            }
            Log.e(Camera.TAG, "Invalid size parameter string=" + str);
            return null;
        }

        public void dump() {
            Log.e(Camera.TAG, "dump: size=" + this.mMap.size());
            for (String str : this.mMap.keySet()) {
                Log.e(Camera.TAG, "dump: " + str + "=" + this.mMap.get(str));
            }
        }

        public String flatten() {
            StringBuilder sb = new StringBuilder(128);
            for (String str : this.mMap.keySet()) {
                sb.append(str);
                sb.append("=");
                sb.append(this.mMap.get(str));
                sb.append(";");
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }

        public String get(String str) {
            return this.mMap.get(str);
        }

        public String getAntibanding() {
            return get(KEY_ANTIBANDING);
        }

        public boolean getAutoExposureLock() {
            return TRUE.equals(get(KEY_AUTO_EXPOSURE_LOCK));
        }

        public boolean getAutoWhiteBalanceLock() {
            return TRUE.equals(get(KEY_AUTO_WHITEBALANCE_LOCK));
        }

        public String getColorEffect() {
            return get(KEY_EFFECT);
        }

        public int getExposureCompensation() {
            return getInt(KEY_EXPOSURE_COMPENSATION, 0);
        }

        public float getExposureCompensationStep() {
            return getFloat(KEY_EXPOSURE_COMPENSATION_STEP, 0.0f);
        }

        public String getFlashMode() {
            return get(KEY_FLASH_MODE);
        }

        public float getFocalLength() {
            return Float.parseFloat(get(KEY_FOCAL_LENGTH));
        }

        public List<Area> getFocusAreas() {
            return splitArea(get(KEY_FOCUS_AREAS));
        }

        public void getFocusDistances(float[] fArr) {
            if (fArr == null || fArr.length != 3) {
                throw new IllegalArgumentException("output must be a float array with three elements.");
            }
            splitFloat(get(KEY_FOCUS_DISTANCES), fArr);
        }

        public String getFocusMode() {
            return get(KEY_FOCUS_MODE);
        }

        public float getHorizontalViewAngle() {
            return Float.parseFloat(get(KEY_HORIZONTAL_VIEW_ANGLE));
        }

        public int getInt(String str) {
            return Integer.parseInt(this.mMap.get(str));
        }

        public int getJpegQuality() {
            return getInt(KEY_JPEG_QUALITY);
        }

        public int getJpegThumbnailQuality() {
            return getInt(KEY_JPEG_THUMBNAIL_QUALITY);
        }

        public Size getJpegThumbnailSize() {
            return Camera.this.new Size(getInt(KEY_JPEG_THUMBNAIL_WIDTH), getInt(KEY_JPEG_THUMBNAIL_HEIGHT));
        }

        public int getMaxExposureCompensation() {
            return getInt(KEY_MAX_EXPOSURE_COMPENSATION, 0);
        }

        public int getMaxNumDetectedFaces() {
            return getInt(KEY_MAX_NUM_DETECTED_FACES_HW, 0);
        }

        public int getMaxNumFocusAreas() {
            return getInt(KEY_MAX_NUM_FOCUS_AREAS, 0);
        }

        public int getMaxNumMeteringAreas() {
            return getInt(KEY_MAX_NUM_METERING_AREAS, 0);
        }

        public int getMaxZoom() {
            return getInt(KEY_MAX_ZOOM, 0);
        }

        public List<Area> getMeteringAreas() {
            return splitArea(get(KEY_METERING_AREAS));
        }

        public int getMinExposureCompensation() {
            return getInt(KEY_MIN_EXPOSURE_COMPENSATION, 0);
        }

        public int getPictureFormat() {
            return pixelFormatForCameraFormat(get(KEY_PICTURE_FORMAT));
        }

        public Size getPictureSize() {
            return strToSize(get(KEY_PICTURE_SIZE));
        }

        public Size getPreferredPreviewSizeForVideo() {
            return strToSize(get(KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO));
        }

        public int getPreviewFormat() {
            return pixelFormatForCameraFormat(get(KEY_PREVIEW_FORMAT));
        }

        public void getPreviewFpsRange(int[] iArr) {
            if (iArr == null || iArr.length != 2) {
                throw new IllegalArgumentException("range must be an array with two elements.");
            }
            splitInt(get(KEY_PREVIEW_FPS_RANGE), iArr);
        }

        @Deprecated
        public int getPreviewFrameRate() {
            return getInt(KEY_PREVIEW_FRAME_RATE);
        }

        public Size getPreviewSize() {
            return strToSize(get(KEY_PREVIEW_SIZE));
        }

        public String getSceneMode() {
            return get(KEY_SCENE_MODE);
        }

        public List<String> getSupportedAntibanding() {
            return split(get("antibanding-values"));
        }

        public List<String> getSupportedColorEffects() {
            return split(get("effect-values"));
        }

        public List<String> getSupportedFlashModes() {
            return split(get("flash-mode-values"));
        }

        public List<String> getSupportedFocusModes() {
            return split(get("focus-mode-values"));
        }

        public List<Size> getSupportedJpegThumbnailSizes() {
            return splitSize(get("jpeg-thumbnail-size-values"));
        }

        public List<Integer> getSupportedPictureFormats() {
            String str = get("picture-format-values");
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = split(str).iterator();
            while (it.hasNext()) {
                int iPixelFormatForCameraFormat = pixelFormatForCameraFormat(it.next());
                if (iPixelFormatForCameraFormat != 0) {
                    arrayList.add(Integer.valueOf(iPixelFormatForCameraFormat));
                }
            }
            return arrayList;
        }

        public List<Size> getSupportedPictureSizes() {
            return splitSize(get("picture-size-values"));
        }

        public List<Integer> getSupportedPreviewFormats() {
            String str = get("preview-format-values");
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = split(str).iterator();
            while (it.hasNext()) {
                int iPixelFormatForCameraFormat = pixelFormatForCameraFormat(it.next());
                if (iPixelFormatForCameraFormat != 0) {
                    arrayList.add(Integer.valueOf(iPixelFormatForCameraFormat));
                }
            }
            return arrayList;
        }

        public List<int[]> getSupportedPreviewFpsRange() {
            return splitRange(get("preview-fps-range-values"));
        }

        @Deprecated
        public List<Integer> getSupportedPreviewFrameRates() {
            return splitInt(get("preview-frame-rate-values"));
        }

        public List<Size> getSupportedPreviewSizes() {
            return splitSize(get("preview-size-values"));
        }

        public List<String> getSupportedSceneModes() {
            return split(get("scene-mode-values"));
        }

        public List<Size> getSupportedVideoSizes() {
            return splitSize(get("video-size-values"));
        }

        public List<String> getSupportedWhiteBalance() {
            return split(get("whitebalance-values"));
        }

        public float getVerticalViewAngle() {
            return Float.parseFloat(get(KEY_VERTICAL_VIEW_ANGLE));
        }

        public boolean getVideoStabilization() {
            return TRUE.equals(get(KEY_VIDEO_STABILIZATION));
        }

        public String getWhiteBalance() {
            return get(KEY_WHITE_BALANCE);
        }

        public int getZoom() {
            return getInt(KEY_ZOOM, 0);
        }

        public List<Integer> getZoomRatios() {
            return splitInt(get(KEY_ZOOM_RATIOS));
        }

        public boolean isAutoExposureLockSupported() {
            return TRUE.equals(get(KEY_AUTO_EXPOSURE_LOCK_SUPPORTED));
        }

        public boolean isAutoWhiteBalanceLockSupported() {
            return TRUE.equals(get(KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED));
        }

        public boolean isSmoothZoomSupported() {
            return TRUE.equals(get(KEY_SMOOTH_ZOOM_SUPPORTED));
        }

        public boolean isVideoSnapshotSupported() {
            return TRUE.equals(get(KEY_VIDEO_SNAPSHOT_SUPPORTED));
        }

        public boolean isVideoStabilizationSupported() {
            return TRUE.equals(get(KEY_VIDEO_STABILIZATION_SUPPORTED));
        }

        public boolean isZoomSupported() {
            return TRUE.equals(get(KEY_ZOOM_SUPPORTED));
        }

        public void remove(String str) {
            this.mMap.remove(str);
        }

        public void removeGpsData() {
            remove(KEY_GPS_LATITUDE);
            remove(KEY_GPS_LONGITUDE);
            remove(KEY_GPS_ALTITUDE);
            remove(KEY_GPS_TIMESTAMP);
            remove(KEY_GPS_PROCESSING_METHOD);
        }

        public void set(String str, String str2) {
            if (str.indexOf(61) != -1 || str.indexOf(59) != -1 || str.indexOf(0) != -1) {
                Log.e(Camera.TAG, "Key \"" + str + "\" contains invalid character (= or ; or \\0)");
                return;
            }
            if (str2.indexOf(61) == -1 && str2.indexOf(59) == -1 && str2.indexOf(0) == -1) {
                put(str, str2);
                return;
            }
            Log.e(Camera.TAG, "Value \"" + str2 + "\" contains invalid character (= or ; or \\0)");
        }

        public void setAntibanding(String str) {
            set(KEY_ANTIBANDING, str);
        }

        public void setAutoExposureLock(boolean z2) {
            set(KEY_AUTO_EXPOSURE_LOCK, z2 ? TRUE : FALSE);
        }

        public void setAutoWhiteBalanceLock(boolean z2) {
            set(KEY_AUTO_WHITEBALANCE_LOCK, z2 ? TRUE : FALSE);
        }

        public void setColorEffect(String str) {
            set(KEY_EFFECT, str);
        }

        public void setExposureCompensation(int i2) {
            set(KEY_EXPOSURE_COMPENSATION, i2);
        }

        public void setFlashMode(String str) {
            set(KEY_FLASH_MODE, str);
        }

        public void setFocusAreas(List<Area> list) {
            set(KEY_FOCUS_AREAS, list);
        }

        public void setFocusMode(String str) {
            set(KEY_FOCUS_MODE, str);
        }

        public void setGpsAltitude(double d2) {
            set(KEY_GPS_ALTITUDE, Double.toString(d2));
        }

        public void setGpsLatitude(double d2) {
            set(KEY_GPS_LATITUDE, Double.toString(d2));
        }

        public void setGpsLongitude(double d2) {
            set(KEY_GPS_LONGITUDE, Double.toString(d2));
        }

        public void setGpsProcessingMethod(String str) {
            set(KEY_GPS_PROCESSING_METHOD, str);
        }

        public void setGpsTimestamp(long j2) {
            set(KEY_GPS_TIMESTAMP, Long.toString(j2));
        }

        public void setJpegQuality(int i2) {
            set(KEY_JPEG_QUALITY, i2);
        }

        public void setJpegThumbnailQuality(int i2) {
            set(KEY_JPEG_THUMBNAIL_QUALITY, i2);
        }

        public void setJpegThumbnailSize(int i2, int i3) {
            set(KEY_JPEG_THUMBNAIL_WIDTH, i2);
            set(KEY_JPEG_THUMBNAIL_HEIGHT, i3);
        }

        public void setMeteringAreas(List<Area> list) {
            set(KEY_METERING_AREAS, list);
        }

        public void setPictureFormat(int i2) {
            String strCameraFormatForPixelFormat = cameraFormatForPixelFormat(i2);
            if (strCameraFormatForPixelFormat != null) {
                set(KEY_PICTURE_FORMAT, strCameraFormatForPixelFormat);
                return;
            }
            throw new IllegalArgumentException("Invalid pixel_format=" + i2);
        }

        public void setPictureSize(int i2, int i3) {
            set(KEY_PICTURE_SIZE, Integer.toString(i2) + "x" + Integer.toString(i3));
        }

        public void setPreviewFormat(int i2) {
            String strCameraFormatForPixelFormat = cameraFormatForPixelFormat(i2);
            if (strCameraFormatForPixelFormat != null) {
                set(KEY_PREVIEW_FORMAT, strCameraFormatForPixelFormat);
                return;
            }
            throw new IllegalArgumentException("Invalid pixel_format=" + i2);
        }

        public void setPreviewFpsRange(int i2, int i3) {
            set(KEY_PREVIEW_FPS_RANGE, ProxyProperties.LOCAL_EXCL_LIST + i2 + "," + i3);
        }

        @Deprecated
        public void setPreviewFrameRate(int i2) {
            set(KEY_PREVIEW_FRAME_RATE, i2);
        }

        public void setPreviewSize(int i2, int i3) {
            set(KEY_PREVIEW_SIZE, Integer.toString(i2) + "x" + Integer.toString(i3));
        }

        public void setRecordingHint(boolean z2) {
            set(KEY_RECORDING_HINT, z2 ? TRUE : FALSE);
        }

        public void setRotation(int i2) {
            if (i2 == 0 || i2 == 90 || i2 == 180 || i2 == 270) {
                set(KEY_ROTATION, Integer.toString(i2));
                return;
            }
            throw new IllegalArgumentException("Invalid rotation=" + i2);
        }

        public void setSceneMode(String str) {
            set(KEY_SCENE_MODE, str);
        }

        public void setVideoStabilization(boolean z2) {
            set(KEY_VIDEO_STABILIZATION, z2 ? TRUE : FALSE);
        }

        public void setWhiteBalance(String str) {
            if (same(str, get(KEY_WHITE_BALANCE))) {
                return;
            }
            set(KEY_WHITE_BALANCE, str);
            set(KEY_AUTO_WHITEBALANCE_LOCK, FALSE);
        }

        public void setZoom(int i2) {
            set(KEY_ZOOM, i2);
        }

        public void unflatten(String str) {
            this.mMap.clear();
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(PhoneNumberUtils.WAIT);
            simpleStringSplitter.setString(str);
            for (String str2 : simpleStringSplitter) {
                int iIndexOf = str2.indexOf(61);
                if (iIndexOf != -1) {
                    this.mMap.put(str2.substring(0, iIndexOf), str2.substring(iIndexOf + 1));
                }
            }
        }

        private Parameters() {
            this.mMap = new LinkedHashMap<>(64);
        }

        private int getInt(String str, int i2) {
            try {
                return Integer.parseInt(this.mMap.get(str));
            } catch (NumberFormatException unused) {
                return i2;
            }
        }

        public void set(String str, int i2) {
            put(str, Integer.toString(i2));
        }

        private void set(String str, List<Area> list) {
            if (list == null) {
                set(str, "(0,0,0,0,0)");
                return;
            }
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < list.size(); i2++) {
                Area area = list.get(i2);
                Rect rect = area.rect;
                sb.append('(');
                sb.append(rect.left);
                sb.append(PhoneNumberUtils.PAUSE);
                sb.append(rect.top);
                sb.append(PhoneNumberUtils.PAUSE);
                sb.append(rect.right);
                sb.append(PhoneNumberUtils.PAUSE);
                sb.append(rect.bottom);
                sb.append(PhoneNumberUtils.PAUSE);
                sb.append(area.weight);
                sb.append(')');
                if (i2 != list.size() - 1) {
                    sb.append(PhoneNumberUtils.PAUSE);
                }
            }
            set(str, sb.toString());
        }

        private void splitInt(String str, int[] iArr) {
            if (str == null) {
                return;
            }
            TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(PhoneNumberUtils.PAUSE);
            simpleStringSplitter.setString(str);
            int i2 = 0;
            Iterator<String> it = simpleStringSplitter.iterator();
            while (it.hasNext()) {
                iArr[i2] = Integer.parseInt(it.next());
                i2++;
            }
        }
    }

    public interface PictureCallback {
        void onPictureTaken(byte[] bArr, Camera camera);
    }

    public interface PreviewCallback {
        void onPreviewFrame(byte[] bArr, Camera camera);
    }

    public interface ShutterCallback {
        void onShutter();
    }

    public class Size {
        public int height;
        public int width;

        public Size(int i2, int i3) {
            this.width = i2;
            this.height = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Size)) {
                return false;
            }
            Size size = (Size) obj;
            return this.width == size.width && this.height == size.height;
        }

        public int hashCode() {
            return (this.width * 32713) + this.height;
        }
    }

    public Camera(int i2) {
        this.mFaceDetectionRunning = false;
        this.mAutoFocusCallbackLock = new Object();
        this.mShutterCallback = null;
        this.mRawImageCallback = null;
        this.mJpegCallback = null;
        this.mPreviewCallback = null;
        this.mPostviewCallback = null;
        this.mUsingPreviewAllocation = false;
        this.mZoomListener = null;
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            this.mEventHandler = new EventHandler(this, looperMyLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        native_setup(new WeakReference(this), i2, ActivityThread.currentPackageName());
    }

    private final native void _addCallbackBuffer(byte[] bArr, int i2);

    private final native boolean _enableShutterSound(boolean z2);

    private static native void _getCameraInfo(int i2, CameraInfo cameraInfo);

    private final native void _startFaceDetection(int i2);

    private final native void _stopFaceDetection();

    private final native void _stopPreview();

    private native void enableFocusMoveCallback(int i2);

    public static void getCameraInfo(int i2, CameraInfo cameraInfo) {
        _getCameraInfo(i2, cameraInfo);
        try {
            if (IAudioService.Stub.asInterface(ServiceManager.getService(Context.AUDIO_SERVICE)).isCameraSoundForced()) {
                cameraInfo.canDisableShutterSound = false;
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "Audio service is unavailable for queries");
        }
    }

    public static Parameters getEmptyParameters() {
        return new Parameters();
    }

    public static native int getNumberOfCameras();

    private final native void native_autoFocus();

    private final native void native_cancelAutoFocus();

    private final native String native_getParameters();

    private final native void native_release();

    private final native void native_setParameters(String str);

    private final native void native_setup(Object obj, int i2, String str);

    private final native void native_takePicture(int i2);

    public static Camera open(int i2) {
        return new Camera(i2);
    }

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        EventHandler eventHandler;
        Camera camera = (Camera) ((WeakReference) obj).get();
        if (camera == null || (eventHandler = camera.mEventHandler) == null) {
            return;
        }
        camera.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final native void setHasPreviewCallback(boolean z2, boolean z3);

    private final native void setPreviewCallbackSurface(Surface surface);

    private final native void setPreviewDisplay(Surface surface);

    public final void addCallbackBuffer(byte[] bArr) {
        _addCallbackBuffer(bArr, 16);
    }

    public final void addRawImageCallbackBuffer(byte[] bArr) {
        addCallbackBuffer(bArr, 128);
    }

    public final void autoFocus(AutoFocusCallback autoFocusCallback) {
        synchronized (this.mAutoFocusCallbackLock) {
            this.mAutoFocusCallback = autoFocusCallback;
        }
        native_autoFocus();
    }

    public final void cancelAutoFocus() {
        synchronized (this.mAutoFocusCallbackLock) {
            this.mAutoFocusCallback = null;
        }
        native_cancelAutoFocus();
        this.mEventHandler.removeMessages(4);
    }

    public final Allocation createPreviewAllocation(RenderScript renderScript, int i2) {
        Size previewSize = getParameters().getPreviewSize();
        Type.Builder builder = new Type.Builder(renderScript, Element.createPixel(renderScript, Element.DataType.UNSIGNED_8, Element.DataKind.PIXEL_YUV));
        builder.setYuvFormat(ImageFormat.YV12);
        builder.setX(previewSize.width);
        builder.setY(previewSize.height);
        return Allocation.createTyped(renderScript, builder.create(), i2 | 32);
    }

    public final boolean enableShutterSound(boolean z2) {
        if (!z2) {
            try {
                if (IAudioService.Stub.asInterface(ServiceManager.getService(Context.AUDIO_SERVICE)).isCameraSoundForced()) {
                    return false;
                }
            } catch (RemoteException unused) {
                Log.e(TAG, "Audio service is unavailable for queries");
            }
        }
        return _enableShutterSound(z2);
    }

    public void finalize() {
        release();
    }

    public Parameters getParameters() {
        Parameters parameters = new Parameters();
        parameters.unflatten(native_getParameters());
        return parameters;
    }

    public final native void lock();

    public final native boolean previewEnabled();

    public final native void reconnect();

    public final void release() {
        native_release();
        this.mFaceDetectionRunning = false;
    }

    public void setAutoFocusMoveCallback(AutoFocusMoveCallback autoFocusMoveCallback) {
        this.mAutoFocusMoveCallback = autoFocusMoveCallback;
        enableFocusMoveCallback(autoFocusMoveCallback != null ? 1 : 0);
    }

    public final native void setDisplayOrientation(int i2);

    public final void setErrorCallback(ErrorCallback errorCallback) {
        this.mErrorCallback = errorCallback;
    }

    public final void setFaceDetectionListener(FaceDetectionListener faceDetectionListener) {
        this.mFaceListener = faceDetectionListener;
    }

    public final void setOneShotPreviewCallback(PreviewCallback previewCallback) {
        this.mPreviewCallback = previewCallback;
        this.mOneShot = true;
        this.mWithBuffer = false;
        if (previewCallback != null) {
            this.mUsingPreviewAllocation = false;
        }
        setHasPreviewCallback(previewCallback != null, false);
    }

    public void setParameters(Parameters parameters) {
        if (this.mUsingPreviewAllocation) {
            Size previewSize = parameters.getPreviewSize();
            Size previewSize2 = getParameters().getPreviewSize();
            if (previewSize.width != previewSize2.width || previewSize.height != previewSize2.height) {
                throw new IllegalStateException("Cannot change preview size while a preview allocation is configured.");
            }
        }
        native_setParameters(parameters.flatten());
    }

    public final void setPreviewCallback(PreviewCallback previewCallback) {
        this.mPreviewCallback = previewCallback;
        this.mOneShot = false;
        this.mWithBuffer = false;
        if (previewCallback != null) {
            this.mUsingPreviewAllocation = false;
        }
        setHasPreviewCallback(previewCallback != null, false);
    }

    public final void setPreviewCallbackAllocation(Allocation allocation) {
        Surface surface;
        if (allocation != null) {
            Size previewSize = getParameters().getPreviewSize();
            if (previewSize.width != allocation.getType().getX() || previewSize.height != allocation.getType().getY()) {
                throw new IllegalArgumentException("Allocation dimensions don't match preview dimensions: Allocation is " + allocation.getType().getX() + ", " + allocation.getType().getY() + ". Preview is " + previewSize.width + ", " + previewSize.height);
            }
            if ((allocation.getUsage() & 32) == 0) {
                throw new IllegalArgumentException("Allocation usage does not include USAGE_IO_INPUT");
            }
            if (allocation.getType().getElement().getDataKind() != Element.DataKind.PIXEL_YUV) {
                throw new IllegalArgumentException("Allocation is not of a YUV type");
            }
            surface = allocation.getSurface();
            this.mUsingPreviewAllocation = true;
        } else {
            this.mUsingPreviewAllocation = false;
            surface = null;
        }
        setPreviewCallbackSurface(surface);
    }

    public final void setPreviewCallbackWithBuffer(PreviewCallback previewCallback) {
        this.mPreviewCallback = previewCallback;
        this.mOneShot = false;
        this.mWithBuffer = true;
        if (previewCallback != null) {
            this.mUsingPreviewAllocation = false;
        }
        setHasPreviewCallback(previewCallback != null, true);
    }

    public final void setPreviewDisplay(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != null) {
            setPreviewDisplay(surfaceHolder.getSurface());
        } else {
            setPreviewDisplay((Surface) null);
        }
    }

    public final native void setPreviewTexture(SurfaceTexture surfaceTexture);

    public final void setZoomChangeListener(OnZoomChangeListener onZoomChangeListener) {
        this.mZoomListener = onZoomChangeListener;
    }

    public final void startFaceDetection() {
        if (this.mFaceDetectionRunning) {
            throw new RuntimeException("Face detection is already running");
        }
        _startFaceDetection(0);
        this.mFaceDetectionRunning = true;
    }

    public final native void startPreview();

    public final native void startSmoothZoom(int i2);

    public final void stopFaceDetection() {
        _stopFaceDetection();
        this.mFaceDetectionRunning = false;
    }

    public final void stopPreview() {
        _stopPreview();
        this.mFaceDetectionRunning = false;
        this.mShutterCallback = null;
        this.mRawImageCallback = null;
        this.mPostviewCallback = null;
        this.mJpegCallback = null;
        synchronized (this.mAutoFocusCallbackLock) {
            this.mAutoFocusCallback = null;
        }
        this.mAutoFocusMoveCallback = null;
    }

    public final native void stopSmoothZoom();

    public final void takePicture(ShutterCallback shutterCallback, PictureCallback pictureCallback, PictureCallback pictureCallback2) {
        takePicture(shutterCallback, pictureCallback, null, pictureCallback2);
    }

    public final native void unlock();

    private final void addCallbackBuffer(byte[] bArr, int i2) {
        if (i2 == 16 || i2 == 128) {
            _addCallbackBuffer(bArr, i2);
            return;
        }
        throw new IllegalArgumentException("Unsupported message type: " + i2);
    }

    public static Camera open() {
        int numberOfCameras = getNumberOfCameras();
        CameraInfo cameraInfo = new CameraInfo();
        for (int i2 = 0; i2 < numberOfCameras; i2++) {
            getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == 0) {
                return new Camera(i2);
            }
        }
        return null;
    }

    public final void takePicture(ShutterCallback shutterCallback, PictureCallback pictureCallback, PictureCallback pictureCallback2, PictureCallback pictureCallback3) {
        this.mShutterCallback = shutterCallback;
        this.mRawImageCallback = pictureCallback;
        this.mPostviewCallback = pictureCallback2;
        this.mJpegCallback = pictureCallback3;
        int i2 = shutterCallback != null ? 2 : 0;
        if (pictureCallback != null) {
            i2 |= 128;
        }
        if (pictureCallback2 != null) {
            i2 |= 64;
        }
        if (pictureCallback3 != null) {
            i2 |= 256;
        }
        native_takePicture(i2);
        this.mFaceDetectionRunning = false;
    }

    public Camera() {
        this.mFaceDetectionRunning = false;
        this.mAutoFocusCallbackLock = new Object();
    }
}
