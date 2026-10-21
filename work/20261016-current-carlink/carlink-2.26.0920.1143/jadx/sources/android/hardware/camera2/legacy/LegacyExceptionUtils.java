package android.hardware.camera2.legacy;

import android.accessibilityservice.c;
import android.os.ServiceSpecificException;
import android.system.OsConstants;
import android.util.AndroidException;

/* JADX INFO: loaded from: classes.dex */
public class LegacyExceptionUtils {
    public static final int NO_ERROR = 0;
    private static final String TAG = "LegacyExceptionUtils";
    public static final int PERMISSION_DENIED = -OsConstants.EPERM;
    public static final int ALREADY_EXISTS = -OsConstants.EEXIST;
    public static final int BAD_VALUE = -OsConstants.EINVAL;
    public static final int DEAD_OBJECT = -OsConstants.ENOSYS;
    public static final int INVALID_OPERATION = -OsConstants.EPIPE;
    public static final int TIMED_OUT = -OsConstants.ETIMEDOUT;

    public static class BufferQueueAbandonedException extends AndroidException {
        public BufferQueueAbandonedException() {
        }

        public BufferQueueAbandonedException(String str) {
            super(str);
        }

        public BufferQueueAbandonedException(String str, Throwable th) {
            super(str, th);
        }

        public BufferQueueAbandonedException(Exception exc) {
            super(exc);
        }
    }

    private LegacyExceptionUtils() {
        throw new AssertionError();
    }

    public static int throwOnError(int i2) throws BufferQueueAbandonedException {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == (-OsConstants.ENODEV)) {
            throw new BufferQueueAbandonedException();
        }
        if (i2 >= 0) {
            return i2;
        }
        throw new UnsupportedOperationException(c.d("Unknown error ", i2));
    }

    public static void throwOnServiceError(int i2) {
        int i3;
        String strD;
        if (i2 >= 0) {
            return;
        }
        if (i2 == PERMISSION_DENIED) {
            i3 = 1;
            strD = "Lacking privileges to access camera service";
        } else {
            if (i2 == ALREADY_EXISTS) {
                return;
            }
            if (i2 != BAD_VALUE) {
                i3 = 4;
                if (i2 != DEAD_OBJECT) {
                    if (i2 == TIMED_OUT) {
                        strD = "Operation timed out in camera service";
                    } else if (i2 == (-OsConstants.EACCES)) {
                        i3 = 6;
                        strD = "Camera disabled by policy";
                    } else if (i2 == (-OsConstants.EBUSY)) {
                        i3 = 7;
                        strD = "Camera already in use";
                    } else if (i2 == (-OsConstants.EUSERS)) {
                        i3 = 8;
                        strD = "Maximum number of cameras in use";
                    } else if (i2 == (-OsConstants.ENODEV)) {
                        strD = "Camera device not available";
                    } else if (i2 != (-OsConstants.EOPNOTSUPP)) {
                        strD = i2 == INVALID_OPERATION ? "Illegal state encountered in camera service." : c.d("Unknown camera device error ", i2);
                    } else {
                        i3 = 9;
                        strD = "Deprecated camera HAL does not support this";
                    }
                    i3 = 10;
                } else {
                    strD = "Camera service not available";
                }
            } else {
                i3 = 3;
                strD = "Bad argument passed to camera service";
            }
        }
        throw new ServiceSpecificException(i3, strD);
    }
}
