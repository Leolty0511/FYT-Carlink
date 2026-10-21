package android.os;

import android.app.ActivityManager;
import android.telecom.Logging.Session;
import android.util.Log;
import android.util.Slog;
import dalvik.system.VMDebug;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class HprofDebugEx extends HprofDebug {
    private static final boolean DO_SET_DUMP_HPROF = SystemProperties.getBoolean("persist.sys.sprd.monkey", false);
    private static Boolean IS_DEBUG_BUILD = null;
    private static final String TAG = "HprofDebugEx";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f108a = 0;

    public static void dumpHprof(String str) {
        String str2 = Environment.getDataDirectory() + "/misc/hprofs/";
        File file = new File(str2);
        if (!file.exists() || !file.isDirectory() || !file.canWrite()) {
            StringBuilder sbV = android.accessibilityservice.c.v("Fail to dump hprofile ", str, ":  - ");
            sbV.append(file.exists());
            sbV.append(", ");
            sbV.append(file.canWrite());
            Log.w(TAG, sbV.toString());
            return;
        }
        for (File file2 : file.listFiles()) {
            String path = file2.getPath();
            if (file2.isFile() && path.contains(str) && path.endsWith("hprof")) {
                Log.w(TAG, "Delete old hprofile: ".concat(path));
                file2.delete();
            }
        }
        String str3 = str2 + str + Session.SESSION_SEPARATION_CHAR_CHILD + Process.myPid() + Session.SESSION_SEPARATION_CHAR_CHILD + new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(new Date()) + ".hprof";
        try {
            Log.w(TAG, "Dump hprofile: " + str3);
            dumpHprofData(str3);
        } catch (IOException e2) {
            Log.w(TAG, "Fail to dump hprofile - " + str3, e2);
        }
    }

    public static void dumpHprofData(String str) {
        VMDebug.dumpHprofData(str);
    }

    public static boolean isDebug() {
        if (IS_DEBUG_BUILD == null) {
            String str = Build.TYPE;
            IS_DEBUG_BUILD = Boolean.valueOf(str.equals("eng") || str.equals("userdebug"));
        }
        return IS_DEBUG_BUILD.booleanValue();
    }

    public static boolean isMonkey() {
        return ActivityManager.isUserAMonkey();
    }

    public static boolean shouldDumpHProfile() {
        return DO_SET_DUMP_HPROF || isDebug() || isMonkey();
    }

    @Override // android.os.HprofDebug
    public void dumpHProfile(String str, Throwable th) {
        String stackTraceString;
        if (th instanceof OutOfMemoryError) {
            if (shouldDumpHProfile()) {
                dumpHprof(str);
                return;
            } else {
                Slog.d(TAG, "There is a OOM , but did not dumped, because of the present version is not USERDEBUG or did not tested by MONKEY.");
                return;
            }
        }
        if ((th instanceof RuntimeException) && (stackTraceString = Log.getStackTraceString(th.getCause())) != null && stackTraceString.contains("OutOfMemoryError")) {
            if (shouldDumpHProfile()) {
                dumpHprof(str);
            } else {
                Slog.d(TAG, "There is a OOM , but did not dumped, because of the present version is not USERDEBUG or did not tested by MONKEY.");
            }
        }
    }
}
