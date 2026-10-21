package android.app;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.StrictMode;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.ExponentiallyBucketedHistogram;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public class QueuedWork {
    private static final boolean DEBUG = false;
    private static final long DELAY = 100;
    private static final String LOG_TAG = "QueuedWork";
    private static final long MAX_WAIT_TIME_MILLIS = 512;
    private static final Object sLock = new Object();
    private static Object sProcessingWork = new Object();

    @GuardedBy("sLock")
    private static final LinkedList<Runnable> sFinishers = new LinkedList<>();

    @GuardedBy("sLock")
    private static Handler sHandler = null;

    @GuardedBy("sLock")
    private static final LinkedList<Runnable> sWork = new LinkedList<>();

    @GuardedBy("sLock")
    private static boolean sCanDelay = true;

    @GuardedBy("sLock")
    private static final ExponentiallyBucketedHistogram mWaitTimes = new ExponentiallyBucketedHistogram(16);
    private static int mNumWaits = 0;

    public static class QueuedWorkHandler extends Handler {
        static final int MSG_RUN = 1;

        public QueuedWorkHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                QueuedWork.processPendingWork();
            }
        }
    }

    public static void addFinisher(Runnable runnable) {
        synchronized (sLock) {
            sFinishers.add(runnable);
        }
    }

    private static Handler getHandler() {
        Handler handler;
        synchronized (sLock) {
            if (sHandler == null) {
                HandlerThread handlerThread = new HandlerThread("queued-work-looper", -2);
                handlerThread.start();
                sHandler = new QueuedWorkHandler(handlerThread.getLooper());
            }
            handler = sHandler;
        }
        return handler;
    }

    public static boolean hasPendingWork() {
        boolean z2;
        synchronized (sLock) {
            z2 = !sWork.isEmpty();
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processPendingWork() {
        LinkedList linkedList;
        synchronized (sProcessingWork) {
            synchronized (sLock) {
                LinkedList<Runnable> linkedList2 = sWork;
                linkedList = (LinkedList) linkedList2.clone();
                linkedList2.clear();
                getHandler().removeMessages(1);
            }
            if (linkedList.size() > 0) {
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
            }
        }
    }

    public static void queue(Runnable runnable, boolean z2) {
        Handler handler = getHandler();
        synchronized (sLock) {
            sWork.add(runnable);
            if (z2 && sCanDelay) {
                handler.sendEmptyMessageDelayed(1, DELAY);
            } else {
                handler.sendEmptyMessage(1);
            }
        }
    }

    public static void removeFinisher(Runnable runnable) {
        synchronized (sLock) {
            sFinishers.remove(runnable);
        }
    }

    public static void waitToFinish() {
        Object obj;
        Runnable runnablePoll;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Handler handler = getHandler();
        synchronized (sLock) {
            if (handler.hasMessages(1)) {
                handler.removeMessages(1);
            }
            sCanDelay = false;
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            processPendingWork();
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            while (true) {
                try {
                    obj = sLock;
                    synchronized (obj) {
                        runnablePoll = sFinishers.poll();
                    }
                    if (runnablePoll == null) {
                        break;
                    } else {
                        runnablePoll.run();
                    }
                } catch (Throwable th) {
                    sCanDelay = true;
                    throw th;
                }
            }
            sCanDelay = true;
            synchronized (obj) {
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                if (jCurrentTimeMillis2 > 0) {
                    ExponentiallyBucketedHistogram exponentiallyBucketedHistogram = mWaitTimes;
                    exponentiallyBucketedHistogram.add(Long.valueOf(jCurrentTimeMillis2).intValue());
                    int i2 = mNumWaits + 1;
                    mNumWaits = i2;
                    if (i2 % 1024 == 0 || jCurrentTimeMillis2 > 512) {
                        exponentiallyBucketedHistogram.log(LOG_TAG, "waited: ");
                    }
                }
            }
        } catch (Throwable th2) {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th2;
        }
    }
}
