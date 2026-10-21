package com.android.internal.util;

import android.Manifest;
import android.accessibilityservice.c;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes3.dex */
public final class DumpUtils {
    private static final boolean DEBUG = false;
    private static final String TAG = "DumpUtils";

    public interface Dump {
        void dump(PrintWriter printWriter, String str);
    }

    private DumpUtils() {
    }

    public static boolean checkDumpAndUsageStatsPermission(Context context, String str, PrintWriter printWriter) {
        return checkDumpPermission(context, str, printWriter) && checkUsageStatsPermission(context, str, printWriter);
    }

    public static boolean checkDumpPermission(Context context, String str, PrintWriter printWriter) {
        if (context.checkCallingOrSelfPermission(Manifest.permission.DUMP) == 0) {
            return true;
        }
        StringBuilder sbV = c.v("Permission Denial: can't dump ", str, " from from pid=");
        sbV.append(Binder.getCallingPid());
        sbV.append(", uid=");
        sbV.append(Binder.getCallingUid());
        sbV.append(" due to missing android.permission.DUMP permission");
        logMessage(printWriter, sbV.toString());
        return false;
    }

    public static boolean checkUsageStatsPermission(Context context, String str, PrintWriter printWriter) {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 0 || callingUid == 1000 || callingUid == 2000) {
            return true;
        }
        if (context.checkCallingOrSelfPermission(Manifest.permission.PACKAGE_USAGE_STATS) != 0) {
            StringBuilder sbV = c.v("Permission Denial: can't dump ", str, " from from pid=");
            sbV.append(Binder.getCallingPid());
            sbV.append(", uid=");
            sbV.append(Binder.getCallingUid());
            sbV.append(" due to missing android.permission.PACKAGE_USAGE_STATS permission");
            logMessage(printWriter, sbV.toString());
            return false;
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(callingUid);
        if (packagesForUid != null) {
            for (String str2 : packagesForUid) {
                int iCheckOpNoThrow = appOpsManager.checkOpNoThrow(43, callingUid, str2);
                if (iCheckOpNoThrow == 0 || iCheckOpNoThrow == 3) {
                    return true;
                }
            }
        }
        StringBuilder sbV2 = c.v("Permission Denial: can't dump ", str, " from from pid=");
        sbV2.append(Binder.getCallingPid());
        sbV2.append(", uid=");
        sbV2.append(Binder.getCallingUid());
        sbV2.append(" due to android:get_usage_stats app-op not allowed");
        logMessage(printWriter, sbV2.toString());
        return false;
    }

    public static void dumpAsync(Handler handler, final Dump dump, PrintWriter printWriter, final String str, long j2) {
        final StringWriter stringWriter = new StringWriter();
        if (handler.runWithScissors(new Runnable() { // from class: com.android.internal.util.DumpUtils.1
            @Override // java.lang.Runnable
            public void run() {
                FastPrintWriter fastPrintWriter = new FastPrintWriter(stringWriter);
                dump.dump(fastPrintWriter, str);
                fastPrintWriter.close();
            }
        }, j2)) {
            printWriter.print(stringWriter.toString());
        } else {
            printWriter.println("... timed out");
        }
    }

    private static void logMessage(PrintWriter printWriter, String str) {
        printWriter.println(str);
    }
}
