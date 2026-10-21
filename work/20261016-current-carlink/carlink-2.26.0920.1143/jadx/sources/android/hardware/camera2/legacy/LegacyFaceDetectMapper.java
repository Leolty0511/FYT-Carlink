package android.hardware.camera2.legacy;

import android.app.m;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.params.Face;
import android.hardware.camera2.utils.ParamsUtils;
import android.util.Log;
import android.util.Size;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class LegacyFaceDetectMapper {
    private static final boolean DEBUG = false;
    private static String TAG = "LegacyFaceDetectMapper";
    private final Camera mCamera;
    private final boolean mFaceDetectSupported;
    private Camera.Face[] mFaces;
    private Camera.Face[] mFacesPrev;
    private boolean mFaceDetectEnabled = false;
    private boolean mFaceDetectScenePriority = false;
    private boolean mFaceDetectReporting = false;
    private final Object mLock = new Object();

    public LegacyFaceDetectMapper(Camera camera, CameraCharacteristics cameraCharacteristics) {
        Camera camera2 = (Camera) Preconditions.checkNotNull(camera, "camera must not be null");
        this.mCamera = camera2;
        Preconditions.checkNotNull(cameraCharacteristics, "characteristics must not be null");
        boolean zContains = ArrayUtils.contains((int[]) cameraCharacteristics.get(CameraCharacteristics.STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES), 1);
        this.mFaceDetectSupported = zContains;
        if (zContains) {
            camera2.setFaceDetectionListener(new Camera.FaceDetectionListener() { // from class: android.hardware.camera2.legacy.LegacyFaceDetectMapper.1
                @Override // android.hardware.Camera.FaceDetectionListener
                public void onFaceDetection(Camera.Face[] faceArr, Camera camera3) {
                    int length = faceArr == null ? 0 : faceArr.length;
                    synchronized (LegacyFaceDetectMapper.this.mLock) {
                        if (LegacyFaceDetectMapper.this.mFaceDetectEnabled) {
                            LegacyFaceDetectMapper.this.mFaces = faceArr;
                        } else if (length > 0) {
                            Log.d(LegacyFaceDetectMapper.TAG, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled");
                        }
                    }
                }
            });
        }
    }

    public void mapResultFaces(CameraMetadataNative cameraMetadataNative, LegacyRequest legacyRequest) {
        int i2;
        Camera.Face[] faceArr;
        boolean z2;
        Preconditions.checkNotNull(cameraMetadataNative, "result must not be null");
        Preconditions.checkNotNull(legacyRequest, "legacyRequest must not be null");
        synchronized (this.mLock) {
            boolean z3 = this.mFaceDetectReporting;
            i2 = z3 ? 1 : 0;
            faceArr = z3 ? this.mFaces : null;
            z2 = this.mFaceDetectScenePriority;
            this.mFacesPrev = faceArr;
        }
        CameraCharacteristics cameraCharacteristics = legacyRequest.characteristics;
        CaptureRequest captureRequest = legacyRequest.captureRequest;
        Size size = legacyRequest.previewSize;
        Camera.Parameters parameters = legacyRequest.parameters;
        Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        ParameterUtils.ZoomData zoomDataConvertScalerCropRegion = ParameterUtils.convertScalerCropRegion(rect, (Rect) captureRequest.get(CaptureRequest.SCALER_CROP_REGION), size, parameters);
        ArrayList arrayList = new ArrayList();
        if (faceArr != null) {
            for (Camera.Face face : faceArr) {
                if (face != null) {
                    arrayList.add(ParameterUtils.convertFaceFromLegacy(face, rect, zoomDataConvertScalerCropRegion));
                } else {
                    Log.w(TAG, "mapResultFaces - read NULL face from camera1 device");
                }
            }
        }
        cameraMetadataNative.set(CaptureResult.STATISTICS_FACES, arrayList.toArray(new Face[0]));
        cameraMetadataNative.set(CaptureResult.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(i2));
        if (z2) {
            cameraMetadataNative.set((CaptureResult.Key<int>) CaptureResult.CONTROL_SCENE_MODE, 1);
        }
    }

    public void processFaceDetectMode(CaptureRequest captureRequest, Camera.Parameters parameters) {
        Preconditions.checkNotNull(captureRequest, "captureRequest must not be null");
        int iIntValue = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0)).intValue();
        if (iIntValue != 0 && !this.mFaceDetectSupported) {
            Log.w(TAG, "processFaceDetectMode - Ignoring statistics.faceDetectMode; face detection is not available");
            return;
        }
        int iIntValue2 = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_SCENE_MODE, 0)).intValue();
        if (iIntValue2 == 1 && !this.mFaceDetectSupported) {
            Log.w(TAG, "processFaceDetectMode - ignoring control.sceneMode == FACE_PRIORITY; face detection is not available");
            return;
        }
        if (iIntValue != 0 && iIntValue != 1) {
            if (iIntValue != 2) {
                m.A("processFaceDetectMode - ignoring unknown statistics.faceDetectMode = ", iIntValue, TAG);
                return;
            }
            Log.w(TAG, "processFaceDetectMode - statistics.faceDetectMode == FULL unsupported, downgrading to SIMPLE");
        }
        boolean z2 = iIntValue != 0 || iIntValue2 == 1;
        synchronized (this.mLock) {
            if (z2 != this.mFaceDetectEnabled) {
                if (z2) {
                    this.mCamera.startFaceDetection();
                } else {
                    this.mCamera.stopFaceDetection();
                    this.mFaces = null;
                }
                this.mFaceDetectEnabled = z2;
                this.mFaceDetectScenePriority = iIntValue2 == 1;
                this.mFaceDetectReporting = iIntValue != 0;
            }
        }
    }
}
