package android.hardware.camera2.legacy;

import android.util.Log;
import android.util.MutableLong;
import android.util.Pair;
import android.view.Surface;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class CaptureCollector {
    private static final boolean DEBUG = false;
    private static final int FLAG_RECEIVED_ALL_JPEG = 3;
    private static final int FLAG_RECEIVED_ALL_PREVIEW = 12;
    private static final int FLAG_RECEIVED_JPEG = 1;
    private static final int FLAG_RECEIVED_JPEG_TS = 2;
    private static final int FLAG_RECEIVED_PREVIEW = 4;
    private static final int FLAG_RECEIVED_PREVIEW_TS = 8;
    private static final int MAX_JPEGS_IN_FLIGHT = 1;
    private static final String TAG = "CaptureCollector";
    private final TreeSet<CaptureHolder> mActiveRequests;
    private final ArrayList<CaptureHolder> mCompletedRequests = new ArrayList<>();
    private final CameraDeviceState mDeviceState;
    private int mInFlight;
    private int mInFlightPreviews;
    private final Condition mIsEmpty;
    private final ArrayDeque<CaptureHolder> mJpegCaptureQueue;
    private final ArrayDeque<CaptureHolder> mJpegProduceQueue;
    private final ReentrantLock mLock;
    private final int mMaxInFlight;
    private final Condition mNotFull;
    private final ArrayDeque<CaptureHolder> mPreviewCaptureQueue;
    private final ArrayDeque<CaptureHolder> mPreviewProduceQueue;
    private final Condition mPreviewsEmpty;

    public class CaptureHolder implements Comparable<CaptureHolder> {
        private final LegacyRequest mLegacy;
        private final RequestHolder mRequest;
        public final boolean needsJpeg;
        public final boolean needsPreview;
        private long mTimestamp = 0;
        private int mReceivedFlags = 0;
        private boolean mHasStarted = false;
        private boolean mFailedJpeg = false;
        private boolean mFailedPreview = false;
        private boolean mCompleted = false;
        private boolean mPreviewCompleted = false;

        public CaptureHolder(RequestHolder requestHolder, LegacyRequest legacyRequest) {
            this.mRequest = requestHolder;
            this.mLegacy = legacyRequest;
            this.needsJpeg = requestHolder.hasJpegTargets();
            this.needsPreview = requestHolder.hasPreviewTargets();
        }

        public boolean equals(Object obj) {
            return (obj instanceof CaptureHolder) && compareTo((CaptureHolder) obj) == 0;
        }

        public boolean isCompleted() {
            return this.needsJpeg == isJpegCompleted() && this.needsPreview == isPreviewCompleted();
        }

        public boolean isJpegCompleted() {
            return (this.mReceivedFlags & 3) == 3;
        }

        public boolean isPreviewCompleted() {
            return (this.mReceivedFlags & 12) == 12;
        }

        public void setJpegFailed() {
            if (!this.needsJpeg || isJpegCompleted()) {
                return;
            }
            this.mFailedJpeg = true;
            this.mReceivedFlags = 1 | this.mReceivedFlags | 2;
            tryComplete();
        }

        public void setJpegProduced() {
            if (!this.needsJpeg) {
                throw new IllegalStateException("setJpegProduced called for capture with no jpeg targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setJpegProduced called on already completed request.");
            }
            this.mReceivedFlags |= 1;
            tryComplete();
        }

        public void setJpegTimestamp(long j2) {
            if (!this.needsJpeg) {
                throw new IllegalStateException("setJpegTimestamp called for capture with no jpeg targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setJpegTimestamp called on already completed request.");
            }
            this.mReceivedFlags |= 2;
            if (this.mTimestamp == 0) {
                this.mTimestamp = j2;
            }
            if (!this.mHasStarted) {
                this.mHasStarted = true;
                CaptureCollector.this.mDeviceState.setCaptureStart(this.mRequest, this.mTimestamp, -1);
            }
            tryComplete();
        }

        public void setPreviewFailed() {
            if (!this.needsPreview || isPreviewCompleted()) {
                return;
            }
            this.mFailedPreview = true;
            this.mReceivedFlags = this.mReceivedFlags | 4 | 8;
            tryComplete();
        }

        public void setPreviewProduced() {
            if (!this.needsPreview) {
                throw new IllegalStateException("setPreviewProduced called for capture with no preview targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setPreviewProduced called on already completed request.");
            }
            this.mReceivedFlags |= 4;
            tryComplete();
        }

        public void setPreviewTimestamp(long j2) {
            if (!this.needsPreview) {
                throw new IllegalStateException("setPreviewTimestamp called for capture with no preview targets.");
            }
            if (isCompleted()) {
                throw new IllegalStateException("setPreviewTimestamp called on already completed request.");
            }
            this.mReceivedFlags |= 8;
            if (this.mTimestamp == 0) {
                this.mTimestamp = j2;
            }
            if (!this.needsJpeg && !this.mHasStarted) {
                this.mHasStarted = true;
                CaptureCollector.this.mDeviceState.setCaptureStart(this.mRequest, this.mTimestamp, -1);
            }
            tryComplete();
        }

        public void tryComplete() {
            if (!this.mPreviewCompleted && this.needsPreview && isPreviewCompleted()) {
                CaptureCollector.this.onPreviewCompleted();
                this.mPreviewCompleted = true;
            }
            if (!isCompleted() || this.mCompleted) {
                return;
            }
            if (this.mFailedPreview || this.mFailedJpeg) {
                if (this.mHasStarted) {
                    for (Surface surface : this.mRequest.getRequest().getTargets()) {
                        try {
                            if (this.mRequest.jpegType(surface)) {
                                if (this.mFailedJpeg) {
                                    CaptureCollector.this.mDeviceState.setCaptureResult(this.mRequest, null, 5, surface);
                                }
                            } else if (this.mFailedPreview) {
                                CaptureCollector.this.mDeviceState.setCaptureResult(this.mRequest, null, 5, surface);
                            }
                        } catch (LegacyExceptionUtils.BufferQueueAbandonedException e2) {
                            Log.e(CaptureCollector.TAG, "Unexpected exception when querying Surface: " + e2);
                        }
                    }
                } else {
                    this.mRequest.failRequest();
                    CaptureCollector.this.mDeviceState.setCaptureStart(this.mRequest, this.mTimestamp, 3);
                }
            }
            CaptureCollector.this.onRequestCompleted(this);
            this.mCompleted = true;
        }

        @Override // java.lang.Comparable
        public int compareTo(CaptureHolder captureHolder) {
            if (this.mRequest.getFrameNumber() > captureHolder.mRequest.getFrameNumber()) {
                return 1;
            }
            return this.mRequest.getFrameNumber() == captureHolder.mRequest.getFrameNumber() ? 0 : -1;
        }
    }

    public CaptureCollector(int i2, CameraDeviceState cameraDeviceState) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.mLock = reentrantLock;
        this.mInFlight = 0;
        this.mInFlightPreviews = 0;
        this.mMaxInFlight = i2;
        this.mJpegCaptureQueue = new ArrayDeque<>(1);
        this.mJpegProduceQueue = new ArrayDeque<>(1);
        this.mPreviewCaptureQueue = new ArrayDeque<>(i2);
        this.mPreviewProduceQueue = new ArrayDeque<>(i2);
        this.mActiveRequests = new TreeSet<>();
        this.mIsEmpty = reentrantLock.newCondition();
        this.mNotFull = reentrantLock.newCondition();
        this.mPreviewsEmpty = reentrantLock.newCondition();
        this.mDeviceState = cameraDeviceState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreviewCompleted() {
        int i2 = this.mInFlightPreviews - 1;
        this.mInFlightPreviews = i2;
        if (i2 < 0) {
            throw new IllegalStateException("More preview captures completed than requests queued.");
        }
        if (i2 == 0) {
            this.mPreviewsEmpty.signalAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRequestCompleted(CaptureHolder captureHolder) {
        RequestHolder unused = captureHolder.mRequest;
        int i2 = this.mInFlight - 1;
        this.mInFlight = i2;
        if (i2 < 0) {
            throw new IllegalStateException("More captures completed than requests queued.");
        }
        this.mCompletedRequests.add(captureHolder);
        this.mActiveRequests.remove(captureHolder);
        this.mNotFull.signalAll();
        if (this.mInFlight == 0) {
            this.mIsEmpty.signalAll();
        }
    }

    private boolean removeRequestIfCompleted(RequestHolder requestHolder, MutableLong mutableLong) {
        int i2 = 0;
        for (CaptureHolder captureHolder : this.mCompletedRequests) {
            if (captureHolder.mRequest.equals(requestHolder)) {
                mutableLong.value = captureHolder.mTimestamp;
                this.mCompletedRequests.remove(i2);
                return true;
            }
            i2++;
        }
        return false;
    }

    public void failAll() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (true) {
            try {
                CaptureHolder captureHolderPollFirst = this.mActiveRequests.pollFirst();
                if (captureHolderPollFirst == null) {
                    this.mPreviewCaptureQueue.clear();
                    this.mPreviewProduceQueue.clear();
                    this.mJpegCaptureQueue.clear();
                    this.mJpegProduceQueue.clear();
                    reentrantLock.unlock();
                    return;
                }
                captureHolderPollFirst.setPreviewFailed();
                captureHolderPollFirst.setJpegFailed();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public void failNextJpeg() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder captureHolderPeek = this.mJpegCaptureQueue.peek();
            CaptureHolder captureHolderPeek2 = this.mJpegProduceQueue.peek();
            if (captureHolderPeek == null || (captureHolderPeek2 != null && captureHolderPeek.compareTo(captureHolderPeek2) > 0)) {
                captureHolderPeek = captureHolderPeek2;
            }
            if (captureHolderPeek != null) {
                this.mJpegCaptureQueue.remove(captureHolderPeek);
                this.mJpegProduceQueue.remove(captureHolderPeek);
                this.mActiveRequests.remove(captureHolderPeek);
                captureHolderPeek.setJpegFailed();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public void failNextPreview() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder captureHolderPeek = this.mPreviewCaptureQueue.peek();
            CaptureHolder captureHolderPeek2 = this.mPreviewProduceQueue.peek();
            if (captureHolderPeek == null || (captureHolderPeek2 != null && captureHolderPeek.compareTo(captureHolderPeek2) > 0)) {
                captureHolderPeek = captureHolderPeek2;
            }
            if (captureHolderPeek != null) {
                this.mPreviewCaptureQueue.remove(captureHolderPeek);
                this.mPreviewProduceQueue.remove(captureHolderPeek);
                this.mActiveRequests.remove(captureHolderPeek);
                captureHolderPeek.setPreviewFailed();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean hasPendingPreviewCaptures() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            return !this.mPreviewCaptureQueue.isEmpty();
        } finally {
            reentrantLock.unlock();
        }
    }

    public RequestHolder jpegCaptured(long j2) {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder captureHolderPoll = this.mJpegCaptureQueue.poll();
            if (captureHolderPoll == null) {
                Log.w(TAG, "jpegCaptured called with no jpeg request on queue!");
                return null;
            }
            captureHolderPoll.setJpegTimestamp(j2);
            return captureHolderPoll.mRequest;
        } finally {
            reentrantLock.unlock();
        }
    }

    public Pair<RequestHolder, Long> jpegProduced() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder captureHolderPoll = this.mJpegProduceQueue.poll();
            if (captureHolderPoll == null) {
                Log.w(TAG, "jpegProduced called with no jpeg request on queue!");
                return null;
            }
            captureHolderPoll.setJpegProduced();
            return new Pair<>(captureHolderPoll.mRequest, Long.valueOf(captureHolderPoll.mTimestamp));
        } finally {
            reentrantLock.unlock();
        }
    }

    public Pair<RequestHolder, Long> previewCaptured(long j2) {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder captureHolderPoll = this.mPreviewCaptureQueue.poll();
            if (captureHolderPoll == null) {
                return null;
            }
            captureHolderPoll.setPreviewTimestamp(j2);
            return new Pair<>(captureHolderPoll.mRequest, Long.valueOf(captureHolderPoll.mTimestamp));
        } finally {
            reentrantLock.unlock();
        }
    }

    public RequestHolder previewProduced() {
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            CaptureHolder captureHolderPoll = this.mPreviewProduceQueue.poll();
            if (captureHolderPoll == null) {
                Log.w(TAG, "previewProduced called with no preview request on queue!");
                return null;
            }
            captureHolderPoll.setPreviewProduced();
            return captureHolderPoll.mRequest;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean queueRequest(RequestHolder requestHolder, LegacyRequest legacyRequest, long j2, TimeUnit timeUnit) {
        CaptureHolder captureHolder = new CaptureHolder(requestHolder, legacyRequest);
        long nanos = timeUnit.toNanos(j2);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        try {
            boolean z2 = captureHolder.needsJpeg;
            if (!z2 && !captureHolder.needsPreview) {
                throw new IllegalStateException("Request must target at least one output surface!");
            }
            if (z2) {
                while (this.mInFlight > 0) {
                    if (nanos <= 0) {
                        reentrantLock.unlock();
                        return false;
                    }
                    nanos = this.mIsEmpty.awaitNanos(nanos);
                }
                this.mJpegCaptureQueue.add(captureHolder);
                this.mJpegProduceQueue.add(captureHolder);
            }
            if (captureHolder.needsPreview) {
                while (this.mInFlight >= this.mMaxInFlight) {
                    if (nanos <= 0) {
                        reentrantLock.unlock();
                        return false;
                    }
                    nanos = this.mNotFull.awaitNanos(nanos);
                }
                this.mPreviewCaptureQueue.add(captureHolder);
                this.mPreviewProduceQueue.add(captureHolder);
                this.mInFlightPreviews++;
            }
            this.mActiveRequests.add(captureHolder);
            this.mInFlight++;
            reentrantLock.unlock();
            return true;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public boolean waitForEmpty(long j2, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j2);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (this.mInFlight > 0) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.mIsEmpty.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return true;
    }

    public boolean waitForPreviewsEmpty(long j2, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j2);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (this.mInFlightPreviews > 0) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.mPreviewsEmpty.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return true;
    }

    public boolean waitForRequestCompleted(RequestHolder requestHolder, long j2, TimeUnit timeUnit, MutableLong mutableLong) {
        long nanos = timeUnit.toNanos(j2);
        ReentrantLock reentrantLock = this.mLock;
        reentrantLock.lock();
        while (!removeRequestIfCompleted(requestHolder, mutableLong)) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.mNotFull.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return true;
    }
}
