package com.android.internal.os;

import android.os.IBinder;
import android.os.SystemClock;
import android.util.EventLog;
import dalvik.system.VMRuntime;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BinderInternal {
    static long sLastGcTime;
    static WeakReference<GcWatcher> sGcWatcher = new WeakReference<>(new GcWatcher());
    static ArrayList<Runnable> sGcWatchers = new ArrayList<>();
    static Runnable[] sTmpWatchers = new Runnable[1];

    public static final class GcWatcher {
        public void finalize() {
            BinderInternal.handleGc();
            BinderInternal.sLastGcTime = SystemClock.uptimeMillis();
            synchronized (BinderInternal.sGcWatchers) {
                BinderInternal.sTmpWatchers = (Runnable[]) BinderInternal.sGcWatchers.toArray(BinderInternal.sTmpWatchers);
            }
            int i2 = 0;
            while (true) {
                Runnable[] runnableArr = BinderInternal.sTmpWatchers;
                if (i2 >= runnableArr.length) {
                    BinderInternal.sGcWatcher = new WeakReference<>(new GcWatcher());
                    return;
                }
                Runnable runnable = runnableArr[i2];
                if (runnable != null) {
                    runnable.run();
                }
                i2++;
            }
        }
    }

    public static void addGcWatcher(Runnable runnable) {
        synchronized (sGcWatchers) {
            sGcWatchers.add(runnable);
        }
    }

    public static final native void disableBackgroundScheduling(boolean z2);

    public static void forceBinderGc() {
        forceGc("Binder");
    }

    public static void forceGc(String str) {
        EventLog.writeEvent(2741, str);
        VMRuntime.getRuntime().requestConcurrentGC();
    }

    public static final native IBinder getContextObject();

    public static long getLastGcTime() {
        return sLastGcTime;
    }

    public static final native void handleGc();

    public static final native void joinThreadPool();

    public static final native void setMaxThreads(int i2);
}
