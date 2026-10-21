package android.hardware.camera2;

import android.util.AndroidException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class CameraAccessException extends AndroidException {
    public static final int CAMERA_DEPRECATED_HAL = 1000;
    public static final int CAMERA_DISABLED = 1;
    public static final int CAMERA_DISCONNECTED = 2;
    public static final int CAMERA_ERROR = 3;
    public static final int CAMERA_IN_USE = 4;
    public static final int MAX_CAMERAS_IN_USE = 5;
    private static final long serialVersionUID = 5630338637471475675L;
    private final int mReason;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AccessError {
    }

    public CameraAccessException(int i2) {
        super(getDefaultMessage(i2));
        this.mReason = i2;
    }

    private static String getCombinedMessage(int i2, String str) {
        return String.format("%s (%d): %s", getProblemString(i2), Integer.valueOf(i2), str);
    }

    public static String getDefaultMessage(int i2) {
        if (i2 == 1) {
            return "The camera is disabled due to a device policy, and cannot be opened.";
        }
        if (i2 == 2) {
            return "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device.";
        }
        if (i2 == 3) {
            return "The camera device is currently in the error state; no further calls to it will succeed.";
        }
        if (i2 == 4) {
            return "The camera device is in use already";
        }
        if (i2 != 5) {
            return null;
        }
        return "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed.";
    }

    private static String getProblemString(int i2) {
        if (i2 == 1) {
            return "CAMERA_DISABLED";
        }
        if (i2 == 2) {
            return "CAMERA_DISCONNECTED";
        }
        if (i2 == 3) {
            return "CAMERA_ERROR";
        }
        if (i2 == 4) {
            return "CAMERA_IN_USE";
        }
        if (i2 != 5) {
            return i2 != 1000 ? "<UNKNOWN ERROR>" : "CAMERA_DEPRECATED_HAL";
        }
        return "MAX_CAMERAS_IN_USE";
    }

    public final int getReason() {
        return this.mReason;
    }

    public CameraAccessException(int i2, String str) {
        super(getCombinedMessage(i2, str));
        this.mReason = i2;
    }

    public CameraAccessException(int i2, String str, Throwable th) {
        super(getCombinedMessage(i2, str), th);
        this.mReason = i2;
    }

    public CameraAccessException(int i2, Throwable th) {
        super(getDefaultMessage(i2), th);
        this.mReason = i2;
    }
}
