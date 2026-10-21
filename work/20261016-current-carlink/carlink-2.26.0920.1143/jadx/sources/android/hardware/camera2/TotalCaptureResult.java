package android.hardware.camera2;

import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.impl.CaptureResultExtras;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TotalCaptureResult extends CaptureResult {
    private final List<CaptureResult> mPartialResults;
    private final int mSessionId;

    public TotalCaptureResult(CameraMetadataNative cameraMetadataNative, CaptureRequest captureRequest, CaptureResultExtras captureResultExtras, List<CaptureResult> list, int i2) {
        super(cameraMetadataNative, captureRequest, captureResultExtras);
        if (list == null) {
            this.mPartialResults = new ArrayList();
        } else {
            this.mPartialResults = list;
        }
        this.mSessionId = i2;
    }

    public List<CaptureResult> getPartialResults() {
        return Collections.unmodifiableList(this.mPartialResults);
    }

    public int getSessionId() {
        return this.mSessionId;
    }

    public TotalCaptureResult(CameraMetadataNative cameraMetadataNative, int i2) {
        super(cameraMetadataNative, i2);
        this.mPartialResults = new ArrayList();
        this.mSessionId = -1;
    }
}
