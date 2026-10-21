package com.lsec.core.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public class MyHandlerThread extends Handler {
    private static final MyHandlerThread INSTANCE;

    static {
        HandlerThread thread = new HandlerThread("HandlerMyThread");
        thread.start();
        INSTANCE = new MyHandlerThread(thread.getLooper());
    }

    public static MyHandlerThread getInstance() {
        return INSTANCE;
    }

    private MyHandlerThread(Looper looper) {
        super(looper);
    }
}
