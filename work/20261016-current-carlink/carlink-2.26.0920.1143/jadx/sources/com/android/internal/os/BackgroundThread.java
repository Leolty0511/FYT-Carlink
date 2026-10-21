package com.android.internal.os;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes2.dex */
public final class BackgroundThread extends HandlerThread {
    private static Handler sHandler;
    private static BackgroundThread sInstance;

    private BackgroundThread() {
        super("android.bg", 10);
    }

    private static void ensureThreadLocked() {
        if (sInstance == null) {
            BackgroundThread backgroundThread = new BackgroundThread();
            sInstance = backgroundThread;
            backgroundThread.start();
            sInstance.getLooper().setTraceTag(64L);
            sHandler = new Handler(sInstance.getLooper());
        }
    }

    public static BackgroundThread get() {
        BackgroundThread backgroundThread;
        synchronized (BackgroundThread.class) {
            ensureThreadLocked();
            backgroundThread = sInstance;
        }
        return backgroundThread;
    }

    public static Handler getHandler() {
        Handler handler;
        synchronized (BackgroundThread.class) {
            ensureThreadLocked();
            handler = sHandler;
        }
        return handler;
    }
}
