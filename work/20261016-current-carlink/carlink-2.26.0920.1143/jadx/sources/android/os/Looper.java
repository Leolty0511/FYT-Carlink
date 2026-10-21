package android.os;

import android.app.m;
import android.net.wifi.WifiEnterpriseConfig;
import android.util.Log;
import android.util.Printer;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class Looper {
    private static final String TAG = "Looper";
    private static Looper sMainLooper;
    static final ThreadLocal<Looper> sThreadLocal = new ThreadLocal<>();
    private Printer mLogging;
    final MessageQueue mQueue;
    private long mSlowDispatchThresholdMs;
    final Thread mThread = Thread.currentThread();
    private long mTraceTag;

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
                printer.println(">>>>> Dispatching to " + next.target + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + next.callback + ": " + next.what);
            }
            long j2 = looperMyLooper.mSlowDispatchThresholdMs;
            long j3 = looperMyLooper.mTraceTag;
            if (j3 != 0 && Trace.isTagEnabled(j3)) {
                Trace.traceBegin(j3, next.target.getTraceName(next));
            }
            long jUptimeMillis = j2 != 0 ? SystemClock.uptimeMillis() : 0L;
            try {
                next.target.dispatchMessage(next);
                long jUptimeMillis2 = j2 == 0 ? 0L : SystemClock.uptimeMillis();
                if (j3 != 0) {
                    Trace.traceEnd(j3);
                }
                if (j2 > 0) {
                    long j4 = jUptimeMillis2 - jUptimeMillis;
                    if (j4 > j2) {
                        StringBuilder sbL = m.l("Dispatch took ", j4, "ms on ");
                        sbL.append(Thread.currentThread().getName());
                        sbL.append(", h=");
                        sbL.append(next.target);
                        sbL.append(" cb=");
                        sbL.append(next.callback);
                        sbL.append(" msg=");
                        sbL.append(next.what);
                        Slog.w(TAG, sbL.toString());
                    }
                }
                if (printer != null) {
                    printer.println("<<<<< Finished to " + next.target + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + next.callback);
                }
                long jClearCallingIdentity2 = Binder.clearCallingIdentity();
                if (jClearCallingIdentity != jClearCallingIdentity2) {
                    Log.wtf(TAG, "Thread identity changed from 0x" + Long.toHexString(jClearCallingIdentity) + " to 0x" + Long.toHexString(jClearCallingIdentity2) + " while dispatching to " + next.target.getClass().getName() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + next.callback + " what=" + next.what);
                }
                next.recycleUnchecked();
            } catch (Throwable th) {
                if (j3 != 0) {
                    Trace.traceEnd(j3);
                }
                throw th;
            }
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
        StringBuilder sbR = android.accessibilityservice.c.r(str);
        sbR.append(toString());
        printer.println(sbR.toString());
        this.mQueue.dump(printer, str + "  ", null);
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

    public void quit() {
        this.mQueue.quit(false);
    }

    public void quitSafely() {
        this.mQueue.quit(true);
    }

    public void setMessageLogging(Printer printer) {
        this.mLogging = printer;
    }

    public void setSlowDispatchThresholdMs(long j2) {
        this.mSlowDispatchThresholdMs = j2;
    }

    public void setTraceTag(long j2) {
        this.mTraceTag = j2;
    }

    public String toString() {
        return "Looper (" + this.mThread.getName() + ", tid " + this.mThread.getId() + ") {" + Integer.toHexString(System.identityHashCode(this)) + "}";
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j2) {
        long jStart = protoOutputStream.start(j2);
        protoOutputStream.write(1159641169921L, this.mThread.getName());
        protoOutputStream.write(1116691496962L, this.mThread.getId());
        protoOutputStream.write(1112396529667L, System.identityHashCode(this));
        this.mQueue.writeToProto(protoOutputStream, 1172526071812L);
        protoOutputStream.end(jStart);
    }

    private static void prepare(boolean z2) {
        ThreadLocal<Looper> threadLocal = sThreadLocal;
        if (threadLocal.get() != null) {
            throw new RuntimeException("Only one Looper may be created per thread");
        }
        threadLocal.set(new Looper(z2));
    }

    public void dump(Printer printer, String str, Handler handler) {
        StringBuilder sbR = android.accessibilityservice.c.r(str);
        sbR.append(toString());
        printer.println(sbR.toString());
        this.mQueue.dump(printer, str + "  ", handler);
    }
}
