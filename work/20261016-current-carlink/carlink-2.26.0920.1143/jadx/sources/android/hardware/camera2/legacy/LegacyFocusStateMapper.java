package android.hardware.camera2.legacy;

import android.accessibilityservice.c;
import android.app.m;
import android.hardware.Camera;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.utils.ParamsUtils;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class LegacyFocusStateMapper {
    private static final boolean DEBUG = false;
    private static String TAG = "LegacyFocusStateMapper";
    private final Camera mCamera;
    private int mAfStatePrevious = 0;
    private String mAfModePrevious = null;
    private final Object mLock = new Object();
    private int mAfRun = 0;
    private int mAfState = 0;

    public LegacyFocusStateMapper(Camera camera) {
        this.mCamera = (Camera) Preconditions.checkNotNull(camera, "camera must not be null");
    }

    private static String afStateToString(int i2) {
        switch (i2) {
            case 0:
                return "INACTIVE";
            case 1:
                return "PASSIVE_SCAN";
            case 2:
                return "PASSIVE_FOCUSED";
            case 3:
                return "ACTIVE_SCAN";
            case 4:
                return "FOCUSED_LOCKED";
            case 5:
                return "NOT_FOCUSED_LOCKED";
            case 6:
                return "PASSIVE_UNFOCUSED";
            default:
                return c.e("UNKNOWN(", i2, ")");
        }
    }

    public void mapResultTriggers(CameraMetadataNative cameraMetadataNative) {
        int i2;
        Preconditions.checkNotNull(cameraMetadataNative, "result must not be null");
        synchronized (this.mLock) {
            i2 = this.mAfState;
        }
        cameraMetadataNative.set(CaptureResult.CONTROL_AF_STATE, Integer.valueOf(i2));
        this.mAfStatePrevious = i2;
    }

    public void processRequestTriggers(CaptureRequest captureRequest, Camera.Parameters parameters) {
        final int i2;
        final int i3;
        Preconditions.checkNotNull(captureRequest, "captureRequest must not be null");
        int i4 = 0;
        int iIntValue = ((Integer) ParamsUtils.getOrDefault(captureRequest, CaptureRequest.CONTROL_AF_TRIGGER, 0)).intValue();
        final String focusMode = parameters.getFocusMode();
        if (!Objects.equals(this.mAfModePrevious, focusMode)) {
            synchronized (this.mLock) {
                this.mAfRun++;
                this.mAfState = 0;
            }
            this.mCamera.cancelAutoFocus();
        }
        this.mAfModePrevious = focusMode;
        synchronized (this.mLock) {
            i2 = this.mAfRun;
        }
        Camera.AutoFocusMoveCallback autoFocusMoveCallback = new Camera.AutoFocusMoveCallback() { // from class: android.hardware.camera2.legacy.LegacyFocusStateMapper.1
            /* JADX WARN: Code duplicated, block: B:24:0x0059  */
            @Override // android.hardware.Camera.AutoFocusMoveCallback
            public void onAutoFocusMoving(boolean z2, Camera camera) {
                byte b2;
                synchronized (LegacyFocusStateMapper.this.mLock) {
                    if (i2 != LegacyFocusStateMapper.this.mAfRun) {
                        Log.d(LegacyFocusStateMapper.TAG, "onAutoFocusMoving - ignoring move callbacks from old af run" + i2);
                        return;
                    }
                    int i5 = z2 ? 1 : 2;
                    String str = focusMode;
                    int iHashCode = str.hashCode();
                    if (iHashCode != -194628547) {
                        if (iHashCode == 910005312 && str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE)) {
                            b2 = 0;
                        } else {
                            b2 = -1;
                        }
                    } else if (str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO)) {
                        b2 = 1;
                    } else {
                        b2 = -1;
                    }
                    if (b2 != 0 && b2 != 1) {
                        Log.w(LegacyFocusStateMapper.TAG, "onAutoFocus - got unexpected onAutoFocus in mode " + focusMode);
                    }
                    LegacyFocusStateMapper.this.mAfState = i5;
                }
            }
        };
        focusMode.getClass();
        focusMode.hashCode();
        switch (focusMode) {
            case "continuous-video":
            case "auto":
            case "macro":
            case "continuous-picture":
                this.mCamera.setAutoFocusMoveCallback(autoFocusMoveCallback);
                break;
        }
        if (iIntValue != 0) {
            if (iIntValue != 1) {
                if (iIntValue != 2) {
                    m.A("processRequestTriggers - ignoring unknown control.afTrigger = ", iIntValue, TAG);
                    return;
                }
                synchronized (this.mLock) {
                    synchronized (this.mLock) {
                        this.mAfRun++;
                        this.mAfState = 0;
                    }
                    this.mCamera.cancelAutoFocus();
                }
                return;
            }
            focusMode.hashCode();
            switch (focusMode) {
                case "continuous-video":
                case "continuous-picture":
                    i4 = 1;
                    break;
                case "auto":
                case "macro":
                    i4 = 3;
                    break;
            }
            synchronized (this.mLock) {
                i3 = this.mAfRun + 1;
                this.mAfRun = i3;
                this.mAfState = i4;
            }
            if (i4 == 0) {
                return;
            }
            this.mCamera.autoFocus(new Camera.AutoFocusCallback() { // from class: android.hardware.camera2.legacy.LegacyFocusStateMapper.2
                /* JADX WARN: Code duplicated, block: B:27:0x006f  */
                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                @Override // android.hardware.Camera.AutoFocusCallback
                public void onAutoFocus(boolean z2, Camera camera) {
                    synchronized (LegacyFocusStateMapper.this.mLock) {
                        int i5 = LegacyFocusStateMapper.this.mAfRun;
                        byte b2 = 0;
                        if (i5 != i3) {
                            Log.d(LegacyFocusStateMapper.TAG, String.format("onAutoFocus - ignoring AF callback (old run %d, new run %d)", Integer.valueOf(i3), Integer.valueOf(i5)));
                            return;
                        }
                        int i6 = z2 ? 4 : 5;
                        String str = focusMode;
                        switch (str.hashCode()) {
                            case -194628547:
                                if (!str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_VIDEO)) {
                                    b2 = -1;
                                } else {
                                    b2 = 2;
                                }
                                break;
                            case 3005871:
                                if (!str.equals("auto")) {
                                    b2 = -1;
                                }
                                break;
                            case 103652300:
                                if (!str.equals(Camera.Parameters.FOCUS_MODE_MACRO)) {
                                    b2 = -1;
                                } else {
                                    b2 = 3;
                                }
                                break;
                            case 910005312:
                                if (!str.equals(Camera.Parameters.FOCUS_MODE_CONTINUOUS_PICTURE)) {
                                    b2 = -1;
                                } else {
                                    b2 = 1;
                                }
                                break;
                            default:
                                b2 = -1;
                                break;
                        }
                        if (b2 != 0 && b2 != 1 && b2 != 2 && b2 != 3) {
                            Log.w(LegacyFocusStateMapper.TAG, "onAutoFocus - got unexpected onAutoFocus in mode " + focusMode);
                        }
                        LegacyFocusStateMapper.this.mAfState = i6;
                    }
                }
            });
        }
    }
}
