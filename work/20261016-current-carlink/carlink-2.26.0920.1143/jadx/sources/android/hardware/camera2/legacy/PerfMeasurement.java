package android.hardware.camera2.legacy;

import android.os.SystemClock;
import android.provider.SettingsStringUtil;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
class PerfMeasurement {
    public static final int DEFAULT_MAX_QUERIES = 3;
    private static final long FAILED_TIMING = -2;
    private static final long NO_DURATION_YET = -1;
    private static final String TAG = "PerfMeasurement";
    private ArrayList<Long> mCollectedCpuDurations;
    private ArrayList<Long> mCollectedGpuDurations;
    private ArrayList<Long> mCollectedTimestamps;
    private int mCompletedQueryCount;
    private Queue<Long> mCpuDurationsQueue;
    private final long mNativeContext;
    private long mStartTimeNs;
    private Queue<Long> mTimestampQueue;

    public PerfMeasurement() {
        this.mCompletedQueryCount = 0;
        this.mCollectedGpuDurations = new ArrayList<>();
        this.mCollectedCpuDurations = new ArrayList<>();
        this.mCollectedTimestamps = new ArrayList<>();
        this.mTimestampQueue = new LinkedList();
        this.mCpuDurationsQueue = new LinkedList();
        this.mNativeContext = nativeCreateContext(3);
    }

    private long getNextGlDuration() {
        long jNativeGetNextGlDuration = nativeGetNextGlDuration(this.mNativeContext);
        if (jNativeGetNextGlDuration > 0) {
            this.mCompletedQueryCount++;
        }
        return jNativeGetNextGlDuration;
    }

    public static boolean isGlTimingSupported() {
        return nativeQuerySupport();
    }

    private static native long nativeCreateContext(int i2);

    private static native void nativeDeleteContext(long j2);

    public static native long nativeGetNextGlDuration(long j2);

    private static native boolean nativeQuerySupport();

    public static native void nativeStartGlTimer(long j2);

    public static native void nativeStopGlTimer(long j2);

    public void addTimestamp(long j2) {
        this.mTimestampQueue.add(Long.valueOf(j2));
    }

    public void dumpPerformanceData(String str) {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(str));
            try {
                bufferedWriter.write("timestamp gpu_duration cpu_duration\n");
                for (int i2 = 0; i2 < this.mCollectedGpuDurations.size(); i2++) {
                    bufferedWriter.write(String.format("%d %d %d\n", this.mCollectedTimestamps.get(i2), this.mCollectedGpuDurations.get(i2), this.mCollectedCpuDurations.get(i2)));
                }
                this.mCollectedTimestamps.clear();
                this.mCollectedGpuDurations.clear();
                this.mCollectedCpuDurations.clear();
                bufferedWriter.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        bufferedWriter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e2) {
            Log.e(TAG, "Error writing data dump to " + str + SettingsStringUtil.DELIMITER + e2);
        }
    }

    public void finalize() {
        nativeDeleteContext(this.mNativeContext);
    }

    public int getCompletedQueryCount() {
        return this.mCompletedQueryCount;
    }

    public void startTimer() {
        nativeStartGlTimer(this.mNativeContext);
        this.mStartTimeNs = SystemClock.elapsedRealtimeNanos();
    }

    public void stopTimer() {
        this.mCpuDurationsQueue.add(Long.valueOf(SystemClock.elapsedRealtimeNanos() - this.mStartTimeNs));
        nativeStopGlTimer(this.mNativeContext);
        long nextGlDuration = getNextGlDuration();
        if (nextGlDuration > 0) {
            this.mCollectedGpuDurations.add(Long.valueOf(nextGlDuration));
            this.mCollectedTimestamps.add(this.mTimestampQueue.isEmpty() ? -1L : this.mTimestampQueue.poll());
            this.mCollectedCpuDurations.add(this.mCpuDurationsQueue.isEmpty() ? -1L : this.mCpuDurationsQueue.poll());
        }
        if (nextGlDuration == -2) {
            if (!this.mTimestampQueue.isEmpty()) {
                this.mTimestampQueue.poll();
            }
            if (this.mCpuDurationsQueue.isEmpty()) {
                return;
            }
            this.mCpuDurationsQueue.poll();
        }
    }

    public PerfMeasurement(int i2) {
        this.mCompletedQueryCount = 0;
        this.mCollectedGpuDurations = new ArrayList<>();
        this.mCollectedCpuDurations = new ArrayList<>();
        this.mCollectedTimestamps = new ArrayList<>();
        this.mTimestampQueue = new LinkedList();
        this.mCpuDurationsQueue = new LinkedList();
        if (i2 >= 1) {
            this.mNativeContext = nativeCreateContext(i2);
            return;
        }
        throw new IllegalArgumentException("maxQueries is less than 1");
    }
}
