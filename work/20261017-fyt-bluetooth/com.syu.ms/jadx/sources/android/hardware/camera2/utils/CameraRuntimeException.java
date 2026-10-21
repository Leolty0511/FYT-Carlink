package android.hardware.camera2.utils;

import android.hardware.camera2.CameraAccessException;

/* JADX INFO: loaded from: classes.dex */
public class CameraRuntimeException extends RuntimeException {
    private Throwable mCause;
    private String mMessage;
    private final int mReason;

    public CameraRuntimeException(int i2) {
        this.mReason = i2;
    }

    public CameraAccessException asChecked() {
        CameraAccessException cameraAccessException;
        Throwable th;
        String str = this.mMessage;
        if (str != null && (th = this.mCause) != null) {
            cameraAccessException = new CameraAccessException(this.mReason, str, th);
        } else if (str != null) {
            cameraAccessException = new CameraAccessException(this.mReason, str);
        } else {
            Throwable th2 = this.mCause;
            cameraAccessException = th2 != null ? new CameraAccessException(this.mReason, th2) : new CameraAccessException(this.mReason);
        }
        cameraAccessException.setStackTrace(getStackTrace());
        return cameraAccessException;
    }

    public final int getReason() {
        return this.mReason;
    }

    public CameraRuntimeException(int i2, String str) {
        super(str);
        this.mReason = i2;
        this.mMessage = str;
    }

    public CameraRuntimeException(int i2, String str, Throwable th) {
        super(str, th);
        this.mReason = i2;
        this.mMessage = str;
        this.mCause = th;
    }

    public CameraRuntimeException(int i2, Throwable th) {
        super(th);
        this.mReason = i2;
        this.mCause = th;
    }
}
