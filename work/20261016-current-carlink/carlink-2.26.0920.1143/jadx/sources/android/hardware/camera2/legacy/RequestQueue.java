package android.hardware.camera2.legacy;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.utils.SubmitInfo;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RequestQueue {
    private static final long INVALID_FRAME = -1;
    private static final String TAG = "RequestQueue";
    private final List<Long> mJpegSurfaceIds;
    private BurstHolder mRepeatingRequest = null;
    private final ArrayDeque<BurstHolder> mRequestQueue = new ArrayDeque<>();
    private long mCurrentFrameNumber = 0;
    private long mCurrentRepeatingFrameNumber = -1;
    private int mCurrentRequestId = 0;

    public final class RequestQueueEntry {
        private final BurstHolder mBurstHolder;
        private final Long mFrameNumber;
        private final boolean mQueueEmpty;

        public RequestQueueEntry(BurstHolder burstHolder, Long l2, boolean z2) {
            this.mBurstHolder = burstHolder;
            this.mFrameNumber = l2;
            this.mQueueEmpty = z2;
        }

        public BurstHolder getBurstHolder() {
            return this.mBurstHolder;
        }

        public Long getFrameNumber() {
            return this.mFrameNumber;
        }

        public boolean isQueueEmpty() {
            return this.mQueueEmpty;
        }
    }

    public RequestQueue(List<Long> list) {
        this.mJpegSurfaceIds = list;
    }

    private long calculateLastFrame(int i2) {
        long numberOfRequests = this.mCurrentFrameNumber;
        for (BurstHolder burstHolder : this.mRequestQueue) {
            numberOfRequests += (long) burstHolder.getNumberOfRequests();
            if (burstHolder.getRequestId() == i2) {
                return numberOfRequests - 1;
            }
        }
        throw new IllegalStateException("At least one request must be in the queue to calculate frame number");
    }

    public synchronized RequestQueueEntry getNext() {
        BurstHolder burstHolder;
        BurstHolder burstHolderPoll = this.mRequestQueue.poll();
        boolean z2 = burstHolderPoll != null && this.mRequestQueue.size() == 0;
        if (burstHolderPoll == null && (burstHolder = this.mRepeatingRequest) != null) {
            this.mCurrentRepeatingFrameNumber = this.mCurrentFrameNumber + ((long) burstHolder.getNumberOfRequests());
            burstHolderPoll = burstHolder;
        }
        if (burstHolderPoll == null) {
            return null;
        }
        RequestQueueEntry requestQueueEntry = new RequestQueueEntry(burstHolderPoll, Long.valueOf(this.mCurrentFrameNumber), z2);
        this.mCurrentFrameNumber += (long) burstHolderPoll.getNumberOfRequests();
        return requestQueueEntry;
    }

    public synchronized long stopRepeating(int i2) {
        long j2;
        BurstHolder burstHolder = this.mRepeatingRequest;
        j2 = -1;
        if (burstHolder == null || burstHolder.getRequestId() != i2) {
            Log.e(TAG, "cancel failed: no repeating request exists for request id: " + i2);
        } else {
            this.mRepeatingRequest = null;
            long j3 = this.mCurrentRepeatingFrameNumber;
            long j4 = j3 == -1 ? -1L : j3 - 1;
            this.mCurrentRepeatingFrameNumber = -1L;
            Log.i(TAG, "Repeating capture request cancelled.");
            j2 = j4;
        }
        return j2;
    }

    public synchronized SubmitInfo submit(CaptureRequest[] captureRequestArr, boolean z2) {
        int i2;
        long jCalculateLastFrame;
        i2 = this.mCurrentRequestId;
        this.mCurrentRequestId = i2 + 1;
        BurstHolder burstHolder = new BurstHolder(i2, z2, captureRequestArr, this.mJpegSurfaceIds);
        if (burstHolder.isRepeating()) {
            Log.i(TAG, "Repeating capture request set.");
            if (this.mRepeatingRequest != null) {
                long j2 = this.mCurrentRepeatingFrameNumber;
                jCalculateLastFrame = j2 == -1 ? -1L : j2 - 1;
            }
            this.mCurrentRepeatingFrameNumber = -1L;
            this.mRepeatingRequest = burstHolder;
        } else {
            this.mRequestQueue.offer(burstHolder);
            jCalculateLastFrame = calculateLastFrame(burstHolder.getRequestId());
        }
        return new SubmitInfo(i2, jCalculateLastFrame);
    }

    public synchronized long stopRepeating() {
        BurstHolder burstHolder = this.mRepeatingRequest;
        if (burstHolder == null) {
            Log.e(TAG, "cancel failed: no repeating request exists.");
            return -1L;
        }
        return stopRepeating(burstHolder.getRequestId());
    }
}
