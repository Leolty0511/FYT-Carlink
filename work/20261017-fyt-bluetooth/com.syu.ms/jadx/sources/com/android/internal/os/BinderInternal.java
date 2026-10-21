package com.android.internal.os;

import android.os.IBinder;
import android.os.SystemClock;
import android.util.EventLog;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class BinderInternal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakReference<a> f1186a = new WeakReference<>(new a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f1187b;

    public static final class a {
        public void finalize() {
            BinderInternal.handleGc();
            BinderInternal.f1187b = SystemClock.uptimeMillis();
            BinderInternal.f1186a = new WeakReference<>(new a());
        }
    }

    public static void a(String str) {
        EventLog.writeEvent(2741, str);
        Runtime.getRuntime().gc();
    }

    public static long b() {
        return f1187b;
    }

    public static final native IBinder getContextObject();

    public static final native void handleGc();
}
