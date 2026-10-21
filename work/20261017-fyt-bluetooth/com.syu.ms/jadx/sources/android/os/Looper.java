package android.os;

import android.util.Log;
import android.util.Printer;

/* JADX INFO: loaded from: classes.dex */
public final class Looper {
    private static final String TAG = "Looper";
    private static Looper sMainLooper;
    public static final ThreadLocal<Looper> sThreadLocal = new ThreadLocal<>();
    private Printer mLogging;
    public final MessageQueue mQueue;
    public final Thread mThread = Thread.currentThread();

    private Looper(boolean z2) {
        this.mQueue = new MessageQueue(z2);
    }

    public static Looper getMainLooper() {
        Looper looper;
        synchronized (Looper.class) {
            looper = sMainLooper;
        }
        return looper;
    }

    public static void loop() {
        Looper looperMyLooper = myLooper();
        if (looperMyLooper == null) {
            throw new RuntimeException("No Looper; Looper.prepare() wasn't called on this thread.");
        }
        MessageQueue messageQueue = looperMyLooper.mQueue;
        Binder.clearCallingIdentity();
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        while (true) {
            Message next = messageQueue.next();
            if (next == null) {
                return;
            }
            Printer printer = looperMyLooper.mLogging;
            if (printer != null) {
                printer.println(">>>>> Dispatching to " + next.target + " " + next.callback + ": " + next.what);
            }
            next.target.dispatchMessage(next);
            if (printer != null) {
                printer.println("<<<<< Finished to " + next.target + " " + next.callback);
            }
            long jClearCallingIdentity2 = Binder.clearCallingIdentity();
            if (jClearCallingIdentity != jClearCallingIdentity2) {
                Log.wtf(TAG, "Thread identity changed from 0x" + Long.toHexString(jClearCallingIdentity) + " to 0x" + Long.toHexString(jClearCallingIdentity2) + " while dispatching to " + next.target.getClass().getName() + " " + next.callback + " what=" + next.what);
            }
            next.recycle();
        }
    }

    public static Looper myLooper() {
        return sThreadLocal.get();
    }

    public static MessageQueue myQueue() {
        return myLooper().mQueue;
    }

    public static void prepare() {
        prepare(true);
    }

    public static void prepareMainLooper() {
        prepare(false);
        synchronized (Looper.class) {
            if (sMainLooper != null) {
                throw new IllegalStateException("The main Looper has already been prepared.");
            }
            sMainLooper = myLooper();
        }
    }

    public void dump(Printer printer, String str) {
        printer.println(str + toString());
        this.mQueue.dump(printer, str + "  ");
    }

    public MessageQueue getQueue() {
        return this.mQueue;
    }

    public Thread getThread() {
        return this.mThread;
    }

    public boolean isCurrentThread() {
        return Thread.currentThread() == this.mThread;
    }

    public boolean isIdling() {
        return this.mQueue.isIdling();
    }

    public int postSyncBarrier() {
        return this.mQueue.enqueueSyncBarrier(SystemClock.uptimeMillis());
    }

    public void quit() {
        this.mQueue.quit(false);
    }

    public void quitSafely() {
        this.mQueue.quit(true);
    }

    public void removeSyncBarrier(int i2) {
        this.mQueue.removeSyncBarrier(i2);
    }

    public void setMessageLogging(Printer printer) {
        this.mLogging = printer;
    }

    public String toString() {
        return "Looper (" + this.mThread.getName() + ", tid " + this.mThread.getId() + ") {" + Integer.toHexString(System.identityHashCode(this)) + "}";
    }

    private static void prepare(boolean z2) {
        ThreadLocal<Looper> threadLocal = sThreadLocal;
        if (threadLocal.get() != null) {
            throw new RuntimeException("Only one Looper may be created per thread");
        }
        threadLocal.set(new Looper(z2));
    }
}
