package android.hardware.camera2.legacy;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import android.view.Surface;
import com.android.internal.util.Preconditions;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class RequestHolder {
    private static final String TAG = "RequestHolder";
    private volatile boolean mFailed;
    private final long mFrameNumber;
    private final Collection<Long> mJpegSurfaceIds;
    private final int mNumJpegTargets;
    private final int mNumPreviewTargets;
    private boolean mOutputAbandoned;
    private final boolean mRepeating;
    private final CaptureRequest mRequest;
    private final int mRequestId;
    private final int mSubsequeceId;

    public static final class Builder {
        private final Collection<Long> mJpegSurfaceIds;
        private final int mNumJpegTargets;
        private final int mNumPreviewTargets;
        private final boolean mRepeating;
        private final CaptureRequest mRequest;
        private final int mRequestId;
        private final int mSubsequenceId;

        public Builder(int i2, int i3, CaptureRequest captureRequest, boolean z2, Collection<Long> collection) {
            Preconditions.checkNotNull(captureRequest, "request must not be null");
            this.mRequestId = i2;
            this.mSubsequenceId = i3;
            this.mRequest = captureRequest;
            this.mRepeating = z2;
            this.mJpegSurfaceIds = collection;
            this.mNumJpegTargets = numJpegTargets(captureRequest);
            this.mNumPreviewTargets = numPreviewTargets(captureRequest);
        }

        private boolean jpegType(Surface surface) {
            return LegacyCameraDevice.containsSurfaceId(surface, this.mJpegSurfaceIds);
        }

        private int numJpegTargets(CaptureRequest captureRequest) {
            Iterator<Surface> it = captureRequest.getTargets().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                try {
                    if (jpegType(it.next())) {
                        i2++;
                    }
                } catch (LegacyExceptionUtils.BufferQueueAbandonedException e2) {
                    Log.d(RequestHolder.TAG, "Surface abandoned, skipping...", e2);
                }
            }
            return i2;
        }

        private int numPreviewTargets(CaptureRequest captureRequest) {
            Iterator<Surface> it = captureRequest.getTargets().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                try {
                    if (previewType(it.next())) {
                        i2++;
                    }
                } catch (LegacyExceptionUtils.BufferQueueAbandonedException e2) {
                    Log.d(RequestHolder.TAG, "Surface abandoned, skipping...", e2);
                }
            }
            return i2;
        }

        private boolean previewType(Surface surface) {
            return !jpegType(surface);
        }

        public RequestHolder build(long j2) {
            return new RequestHolder(this.mRequestId, this.mSubsequenceId, this.mRequest, this.mRepeating, j2, this.mNumJpegTargets, this.mNumPreviewTargets, this.mJpegSurfaceIds);
        }
    }

    public void failRequest() {
        Log.w(TAG, "Capture failed for request: " + getRequestId());
        this.mFailed = true;
    }

    public long getFrameNumber() {
        return this.mFrameNumber;
    }

    public Collection<Surface> getHolderTargets() {
        return getRequest().getTargets();
    }

    public CaptureRequest getRequest() {
        return this.mRequest;
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public int getSubsequeceId() {
        return this.mSubsequeceId;
    }

    public boolean hasJpegTargets() {
        return this.mNumJpegTargets > 0;
    }

    public boolean hasPreviewTargets() {
        return this.mNumPreviewTargets > 0;
    }

    public boolean isOutputAbandoned() {
        return this.mOutputAbandoned;
    }

    public boolean isRepeating() {
        return this.mRepeating;
    }

    public boolean jpegType(Surface surface) {
        return LegacyCameraDevice.containsSurfaceId(surface, this.mJpegSurfaceIds);
    }

    public int numJpegTargets() {
        return this.mNumJpegTargets;
    }

    public int numPreviewTargets() {
        return this.mNumPreviewTargets;
    }

    public boolean requestFailed() {
        return this.mFailed;
    }

    public void setOutputAbandoned() {
        this.mOutputAbandoned = true;
    }

    private RequestHolder(int i2, int i3, CaptureRequest captureRequest, boolean z2, long j2, int i4, int i5, Collection<Long> collection) {
        this.mFailed = false;
        this.mOutputAbandoned = false;
        this.mRepeating = z2;
        this.mRequest = captureRequest;
        this.mRequestId = i2;
        this.mSubsequeceId = i3;
        this.mFrameNumber = j2;
        this.mNumJpegTargets = i4;
        this.mNumPreviewTargets = i5;
        this.mJpegSurfaceIds = collection;
    }
}
