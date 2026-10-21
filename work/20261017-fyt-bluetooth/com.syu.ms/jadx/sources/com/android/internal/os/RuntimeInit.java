package com.android.internal.os;

import android.app.ActivityManagerNative;
import android.app.ApplicationErrorReport;
import android.ddm.DdmRegister;
import android.os.IBinder;
import android.os.Process;
import android.util.Slog;

/* JADX INFO: loaded from: classes.dex */
public class RuntimeInit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static IBinder f1192a;

    static {
        DdmRegister.registerHandlers();
    }

    public static final IBinder a() {
        return f1192a;
    }

    public static final void b(IBinder iBinder) {
        f1192a = iBinder;
    }

    public static void c(String str, Throwable th) {
        try {
            if (ActivityManagerNative.getDefault().handleApplicationWtf(f1192a, str, new ApplicationErrorReport.CrashInfo(th))) {
                Process.killProcess(Process.myPid());
                System.exit(10);
            }
        } catch (Throwable th2) {
            Slog.e("AndroidRuntime", "Error reporting WTF", th2);
            Slog.e("AndroidRuntime", "Original WTF:", th);
        }
    }
}
