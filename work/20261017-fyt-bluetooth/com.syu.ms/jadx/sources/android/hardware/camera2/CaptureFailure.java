package android.hardware.camera2;

/* JADX INFO: loaded from: classes.dex */
public class CaptureFailure {
    public static final int REASON_ERROR = 0;
    public static final int REASON_FLUSHED = 1;
    private final boolean mDropped;
    private final int mFrameNumber;
    private final int mReason;
    private final CaptureRequest mRequest;
    private final int mSequenceId;

    public CaptureFailure(CaptureRequest captureRequest, int i2, boolean z2, int i3, int i4) {
        this.mRequest = captureRequest;
        this.mReason = i2;
        this.mDropped = z2;
        this.mSequenceId = i3;
        this.mFrameNumber = i4;
    }

    public int getFrameNumber() {
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
