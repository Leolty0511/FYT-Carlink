package android.view;

import android.hardware.display.DisplayManagerGlobal;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.Log;
import android.util.TimeUtils;
import android.view.animation.AnimationUtils;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class Choreographer {
    public static final int CALLBACK_ANIMATION = 1;
    public static final int CALLBACK_COMMIT = 3;
    public static final int CALLBACK_INPUT = 0;
    private static final int CALLBACK_LAST = 3;
    public static final int CALLBACK_TRAVERSAL = 2;
    private static final boolean DEBUG_FRAMES = false;
    private static final boolean DEBUG_JANK = false;
    private static final long DEFAULT_FRAME_DELAY = 10;
    private static final int MSG_DO_FRAME = 0;
    private static final int MSG_DO_SCHEDULE_CALLBACK = 2;
    private static final int MSG_DO_SCHEDULE_VSYNC = 1;
    private static final String TAG = "Choreographer";
    private static volatile long sFrameDelay = 10;
    private CallbackRecord mCallbackPool;
    private final CallbackQueue[] mCallbackQueues;
    private boolean mCallbacksRunning;
    private boolean mDebugPrintNextFrameTimeDelta;
    private final FrameDisplayEventReceiver mDisplayEventReceiver;
    FrameInfo mFrameInfo;
    private long mFrameIntervalNanos;
    private boolean mFrameScheduled;
    private final FrameHandler mHandler;
    private long mLastFrameTimeNanos;
    private final Object mLock;
    private final Looper mLooper;
    private static final ThreadLocal<Choreographer> sThreadInstance = new ThreadLocal<Choreographer>() { // from class: android.view.Choreographer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Choreographer initialValue() {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                return new Choreographer(looperMyLooper, 0);
            }
            throw new IllegalStateException("The current thread must have a looper!");
        }
    };
    private static final ThreadLocal<Choreographer> sSfThreadInstance = new ThreadLocal<Choreographer>() { // from class: android.view.Choreographer.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Choreographer initialValue() {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                return new Choreographer(looperMyLooper, 1);
            }
            throw new IllegalStateException("The current thread must have a looper!");
        }
    };
    private static final boolean USE_VSYNC = SystemProperties.getBoolean("debug.choreographer.vsync", true);
    private static final boolean USE_FRAME_TIME = SystemProperties.getBoolean("debug.choreographer.frametime", true);
    private static final int SKIPPED_FRAME_WARNING_LIMIT = SystemProperties.getInt("debug.choreographer.skipwarning", 30);
    private static final Object FRAME_CALLBACK_TOKEN = new Object() { // from class: android.view.Choreographer.3
        public String toString() {
            return "FRAME_CALLBACK_TOKEN";
        }
    };
    private static final String[] CALLBACK_TRACE_TITLES = {"input", "animation", "traversal", "commit"};

    public final class CallbackQueue {
        private CallbackRecord mHead;

        private CallbackQueue() {
        }

        public void addCallbackLocked(long j2, Object obj, Object obj2) {
            CallbackRecord callbackRecordObtainCallbackLocked = Choreographer.this.obtainCallbackLocked(j2, obj, obj2);
            CallbackRecord callbackRecord = this.mHead;
            if (callbackRecord == null) {
                this.mHead = callbackRecordObtainCallbackLocked;
                return;
            }
            if (j2 < callbackRecord.dueTime) {
                callbackRecordObtainCallbackLocked.next = callbackRecord;
                this.mHead = callbackRecordObtainCallbackLocked;
                return;
            }
            while (true) {
                CallbackRecord callbackRecord2 = callbackRecord.next;
                if (callbackRecord2 == null) {
                    break;
                }
                if (j2 < callbackRecord2.dueTime) {
                    callbackRecordObtainCallbackLocked.next = callbackRecord2;
                    break;
                }
                callbackRecord = callbackRecord2;
            }
            callbackRecord.next = callbackRecordObtainCallbackLocked;
        }

        public CallbackRecord extractDueCallbacksLocked(long j2) {
            CallbackRecord callbackRecord = this.mHead;
            if (callbackRecord == null || callbackRecord.dueTime > j2) {
                return null;
            }
            CallbackRecord callbackRecord2 = callbackRecord.next;
            CallbackRecord callbackRecord3 = callbackRecord;
            while (callbackRecord2 != null) {
                if (callbackRecord2.dueTime > j2) {
                    callbackRecord3.next = null;
                    break;
                }
                callbackRecord3 = callbackRecord2;
                callbackRecord2 = callbackRecord2.next;
            }
            this.mHead = callbackRecord2;
            return callbackRecord;
        }

        public boolean hasDueCallbacksLocked(long j2) {
            CallbackRecord callbackRecord = this.mHead;
            return callbackRecord != null && callbackRecord.dueTime <= j2;
        }

        public void removeCallbacksLocked(Object obj, Object obj2) {
            CallbackRecord callbackRecord = this.mHead;
            CallbackRecord callbackRecord2 = null;
            while (callbackRecord != null) {
                CallbackRecord callbackRecord3 = callbackRecord.next;
                if ((obj == null || callbackRecord.action == obj) && (obj2 == null || callbackRecord.token == obj2)) {
                    if (callbackRecord2 != null) {
                        callbackRecord2.next = callbackRecord3;
                    } else {
                        this.mHead = callbackRecord3;
                    }
                    Choreographer.this.recycleCallbackLocked(callbackRecord);
                } else {
                    callbackRecord2 = callbackRecord;
                }
                callbackRecord = callbackRecord3;
            }
        }
    }

    public static final class CallbackRecord {
        public Object action;
        public long dueTime;
        public CallbackRecord next;
        public Object token;

        private CallbackRecord() {
        }

        public void run(long j2) {
            if (this.token == Choreographer.FRAME_CALLBACK_TOKEN) {
                ((FrameCallback) this.action).doFrame(j2);
            } else {
                ((Runnable) this.action).run();
            }
        }
    }

    public interface FrameCallback {
        void doFrame(long j2);
    }

    public final class FrameDisplayEventReceiver extends DisplayEventReceiver implements Runnable {
        private int mFrame;
        private boolean mHavePendingVsync;
        private long mTimestampNanos;

        public FrameDisplayEventReceiver(Looper looper, int i2) {
            super(looper, i2);
        }

        @Override // android.view.DisplayEventReceiver
        public void onVsync(long j2, int i2, int i3) {
            if (i2 != 0) {
                Log.d(Choreographer.TAG, "Received vsync from secondary display, but we don't support this case yet.  Choreographer needs a way to explicitly request vsync for a specific display to ensure it doesn't lose track of its scheduled vsync.");
                scheduleVsync();
                return;
            }
            long jNanoTime = System.nanoTime();
            if (j2 > jNanoTime) {
                Log.w(Choreographer.TAG, "Frame time is " + ((j2 - jNanoTime) * 1.0E-6f) + " ms in the future!  Check that graphics HAL is generating vsync timestamps using the correct timebase.");
                j2 = jNanoTime;
            }
            if (this.mHavePendingVsync) {
                Log.w(Choreographer.TAG, "Already have a pending vsync event.  There should only be one at a time.");
            } else {
                this.mHavePendingVsync = true;
            }
            this.mTimestampNanos = j2;
            this.mFrame = i3;
            Message messageObtain = Message.obtain(Choreographer.this.mHandler, this);
            messageObtain.setAsynchronous(true);
            Choreographer.this.mHandler.sendMessageAtTime(messageObtain, j2 / TimeUtils.NANOS_PER_MS);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mHavePendingVsync = false;
            Choreographer.this.doFrame(this.mTimestampNanos, this.mFrame);
        }
    }

    public final class FrameHandler extends Handler {
        public FrameHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                Choreographer.this.doFrame(System.nanoTime(), 0);
            } else if (i2 == 1) {
                Choreographer.this.doScheduleVsync();
            } else {
                if (i2 != 2) {
                    return;
                }
                Choreographer.this.doScheduleCallback(message.arg1);
            }
        }
    }

    private void dispose() {
        this.mDisplayEventReceiver.dispose();
    }

    public static long getFrameDelay() {
        return sFrameDelay;
    }

    public static Choreographer getInstance() {
        return sThreadInstance.get();
    }

    private static float getRefreshRate() {
        return DisplayManagerGlobal.getInstance().getDisplayInfo(0).getMode().getRefreshRate();
    }

    public static Choreographer getSfInstance() {
        return sSfThreadInstance.get();
    }

    private boolean isRunningOnLooperThreadLocked() {
        return Looper.myLooper() == this.mLooper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CallbackRecord obtainCallbackLocked(long j2, Object obj, Object obj2) {
        CallbackRecord callbackRecord = this.mCallbackPool;
        if (callbackRecord == null) {
            callbackRecord = new CallbackRecord();
        } else {
            this.mCallbackPool = callbackRecord.next;
            callbackRecord.next = null;
        }
        callbackRecord.dueTime = j2;
        callbackRecord.action = obj;
        callbackRecord.token = obj2;
        return callbackRecord;
    }

    private void postCallbackDelayedInternal(int i2, Object obj, Object obj2, long j2) {
        synchronized (this.mLock) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j3 = j2 + jUptimeMillis;
            this.mCallbackQueues[i2].addCallbackLocked(j3, obj, obj2);
            if (j3 <= jUptimeMillis) {
                scheduleFrameLocked(jUptimeMillis);
            } else {
                Message messageObtainMessage = this.mHandler.obtainMessage(2, obj);
                messageObtainMessage.arg1 = i2;
                messageObtainMessage.setAsynchronous(true);
                this.mHandler.sendMessageAtTime(messageObtainMessage, j3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recycleCallbackLocked(CallbackRecord callbackRecord) {
        callbackRecord.action = null;
        callbackRecord.token = null;
        callbackRecord.next = this.mCallbackPool;
        this.mCallbackPool = callbackRecord;
    }

    public static void releaseInstance() {
        ThreadLocal<Choreographer> threadLocal = sThreadInstance;
        Choreographer choreographer = threadLocal.get();
        threadLocal.remove();
        choreographer.dispose();
    }

    private void removeCallbacksInternal(int i2, Object obj, Object obj2) {
        synchronized (this.mLock) {
            this.mCallbackQueues[i2].removeCallbacksLocked(obj, obj2);
            if (obj != null && obj2 == null) {
                this.mHandler.removeMessages(2, obj);
            }
        }
    }

    private void scheduleFrameLocked(long j2) {
        if (this.mFrameScheduled) {
            return;
        }
        this.mFrameScheduled = true;
        if (!USE_VSYNC) {
            long jMax = Math.max((this.mLastFrameTimeNanos / TimeUtils.NANOS_PER_MS) + sFrameDelay, j2);
            Message messageObtainMessage = this.mHandler.obtainMessage(0);
            messageObtainMessage.setAsynchronous(true);
            this.mHandler.sendMessageAtTime(messageObtainMessage, jMax);
            return;
        }
        if (isRunningOnLooperThreadLocked()) {
            scheduleVsyncLocked();
            return;
        }
        Message messageObtainMessage2 = this.mHandler.obtainMessage(1);
        messageObtainMessage2.setAsynchronous(true);
        this.mHandler.sendMessageAtFrontOfQueue(messageObtainMessage2);
    }

    private void scheduleVsyncLocked() {
        this.mDisplayEventReceiver.scheduleVsync();
    }

    public static void setFrameDelay(long j2) {
        sFrameDelay = j2;
    }

    public static long subtractFrameDelay(long j2) {
        long j3 = sFrameDelay;
        if (j2 <= j3) {
            return 0L;
        }
        return j2 - j3;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003a  */
    public void doCallbacks(int i2, long j2) {
        long j3;
        synchronized (this.mLock) {
            long jNanoTime = System.nanoTime();
            CallbackRecord callbackRecordExtractDueCallbacksLocked = this.mCallbackQueues[i2].extractDueCallbacksLocked(jNanoTime / TimeUtils.NANOS_PER_MS);
            if (callbackRecordExtractDueCallbacksLocked == null) {
                return;
            }
            this.mCallbacksRunning = true;
            if (i2 == 3) {
                long j4 = jNanoTime - j2;
                Trace.traceCounter(8L, "jitterNanos", (int) j4);
                long j5 = this.mFrameIntervalNanos;
                if (j4 >= 2 * j5) {
                    j3 = jNanoTime - ((j4 % j5) + j5);
                    this.mLastFrameTimeNanos = j3;
                } else {
                    j3 = j2;
                }
            } else {
                j3 = j2;
            }
            try {
                Trace.traceBegin(8L, CALLBACK_TRACE_TITLES[i2]);
                for (CallbackRecord callbackRecord = callbackRecordExtractDueCallbacksLocked; callbackRecord != null; callbackRecord = callbackRecord.next) {
                    callbackRecord.run(j3);
                }
                synchronized (this.mLock) {
                    this.mCallbacksRunning = false;
                    while (true) {
                        CallbackRecord callbackRecord2 = callbackRecordExtractDueCallbacksLocked.next;
                        recycleCallbackLocked(callbackRecordExtractDueCallbacksLocked);
                        if (callbackRecord2 != null) {
                            callbackRecordExtractDueCallbacksLocked = callbackRecord2;
                        }
                    }
                }
                Trace.traceEnd(8L);
            } catch (Throwable th) {
                synchronized (this.mLock) {
                    this.mCallbacksRunning = false;
                    while (true) {
                        CallbackRecord callbackRecord3 = callbackRecordExtractDueCallbacksLocked.next;
                        recycleCallbackLocked(callbackRecordExtractDueCallbacksLocked);
                        if (callbackRecord3 == null) {
                            Trace.traceEnd(8L);
                            throw th;
                        }
                        callbackRecordExtractDueCallbacksLocked = callbackRecord3;
                    }
                }
            }
        }
    }

    public void doFrame(long j2, int i2) {
        long j3;
        synchronized (this.mLock) {
            if (this.mFrameScheduled) {
                long jNanoTime = System.nanoTime();
                long j4 = jNanoTime - j2;
                long j5 = this.mFrameIntervalNanos;
                if (j4 >= j5) {
                    long j6 = j4 / j5;
                    if (j6 >= SKIPPED_FRAME_WARNING_LIMIT) {
                        Log.i(TAG, "Skipped " + j6 + " frames!  The application may be doing too much work on its main thread.");
                    }
                    j3 = jNanoTime - (j4 % this.mFrameIntervalNanos);
                } else {
                    j3 = j2;
                }
                if (j3 < this.mLastFrameTimeNanos) {
                    scheduleVsyncLocked();
                    return;
                }
                this.mFrameInfo.setVsync(j2, j3);
                this.mFrameScheduled = false;
                this.mLastFrameTimeNanos = j3;
                try {
                    Trace.traceBegin(8L, "Choreographer#doFrame");
                    AnimationUtils.lockAnimationClock(j3 / TimeUtils.NANOS_PER_MS);
                    this.mFrameInfo.markInputHandlingStart();
                    doCallbacks(0, j3);
                    this.mFrameInfo.markAnimationsStart();
                    doCallbacks(1, j3);
                    this.mFrameInfo.markPerformTraversalsStart();
                    doCallbacks(2, j3);
                    doCallbacks(3, j3);
                } finally {
                    AnimationUtils.unlockAnimationClock();
                    Trace.traceEnd(8L);
                }
            }
        }
    }

    public void doScheduleCallback(int i2) {
        synchronized (this.mLock) {
            if (!this.mFrameScheduled) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (this.mCallbackQueues[i2].hasDueCallbacksLocked(jUptimeMillis)) {
                    scheduleFrameLocked(jUptimeMillis);
                }
            }
        }
    }

    public void doScheduleVsync() {
        synchronized (this.mLock) {
            if (this.mFrameScheduled) {
                scheduleVsyncLocked();
            }
        }
    }

    public void dump(String str, PrintWriter printWriter) {
        String str2 = str + "  ";
        printWriter.print(str);
        printWriter.println("Choreographer:");
        printWriter.print(str2);
        printWriter.print("mFrameScheduled=");
        android.accessibilityservice.c.y(printWriter, this.mFrameScheduled, str2, "mLastFrameTime=");
        printWriter.println(TimeUtils.formatUptime(this.mLastFrameTimeNanos / TimeUtils.NANOS_PER_MS));
    }

    public long getFrameIntervalNanos() {
        return this.mFrameIntervalNanos;
    }

    public long getFrameTime() {
        return getFrameTimeNanos() / TimeUtils.NANOS_PER_MS;
    }

    public long getFrameTimeNanos() {
        long jNanoTime;
        synchronized (this.mLock) {
            if (!this.mCallbacksRunning) {
                throw new IllegalStateException("This method must only be called as part of a callback while a frame is in progress.");
            }
            jNanoTime = USE_FRAME_TIME ? this.mLastFrameTimeNanos : System.nanoTime();
        }
        return jNanoTime;
    }

    public long getLastFrameTimeNanos() {
        long jNanoTime;
        synchronized (this.mLock) {
            jNanoTime = USE_FRAME_TIME ? this.mLastFrameTimeNanos : System.nanoTime();
        }
        return jNanoTime;
    }

    public void postCallback(int i2, Runnable runnable, Object obj) {
        postCallbackDelayed(i2, runnable, obj, 0L);
    }

    public void postCallbackDelayed(int i2, Runnable runnable, Object obj, long j2) {
        if (runnable == null) {
            throw new IllegalArgumentException("action must not be null");
        }
        if (i2 < 0 || i2 > 3) {
            throw new IllegalArgumentException("callbackType is invalid");
        }
        postCallbackDelayedInternal(i2, runnable, obj, j2);
    }

    public void postFrameCallback(FrameCallback frameCallback) {
        postFrameCallbackDelayed(frameCallback, 0L);
    }

    public void postFrameCallbackDelayed(FrameCallback frameCallback, long j2) {
        if (frameCallback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        postCallbackDelayedInternal(1, frameCallback, FRAME_CALLBACK_TOKEN, j2);
    }

    public void removeCallbacks(int i2, Runnable runnable, Object obj) {
        if (i2 < 0 || i2 > 3) {
            throw new IllegalArgumentException("callbackType is invalid");
        }
        removeCallbacksInternal(i2, runnable, obj);
    }

    public void removeFrameCallback(FrameCallback frameCallback) {
        if (frameCallback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        removeCallbacksInternal(1, frameCallback, FRAME_CALLBACK_TOKEN);
    }

    private Choreographer(Looper looper, int i2) {
        this.mLock = new Object();
        this.mFrameInfo = new FrameInfo();
        this.mLooper = looper;
        this.mHandler = new FrameHandler(looper);
        this.mDisplayEventReceiver = USE_VSYNC ? new FrameDisplayEventReceiver(looper, i2) : null;
        this.mLastFrameTimeNanos = Long.MIN_VALUE;
        this.mFrameIntervalNanos = (long) (1.0E9f / getRefreshRate());
        this.mCallbackQueues = new CallbackQueue[4];
        for (int i3 = 0; i3 <= 3; i3++) {
            this.mCallbackQueues[i3] = new CallbackQueue();
        }
    }
}
