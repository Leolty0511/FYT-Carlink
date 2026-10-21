package android.hardware.camera2;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public class CaptureFailure {
    public static final int REASON_ERROR = 0;
    public static final int REASON_FLUSHED = 1;
    private final boolean mDropped;
    private final long mFrameNumber;
    private final int mReason;
    private final CaptureRequest mRequest;
    private final int mSequenceId;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FailureReason {
    }

    public CaptureFailure(CaptureRequest captureRequest, int i2, boolean z2, int i3, long j2) {
        this.mRequest = captureRequest;
        this.mReason = i2;
        this.mDropped = z2;
        this.mSequenceId = i3;
        this.mFrameNumber = j2;
    }

    public long getFrameNumber() {
        return this.mFrameNumber;
    }

    public int getReason() {
        return this.mReason;
    }

    public CaptureRequest getRequest() {
        return this.mRequest;
    }

    public int getSequenceId() {
        return this.mSequenceId;
    }

    public boolean wasImageCaptured() {
        return !this.mDropped;
    }
}
