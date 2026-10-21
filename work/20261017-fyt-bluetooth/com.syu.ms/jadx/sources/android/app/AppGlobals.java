package android.app;

import android.content.pm.IPackageManager;

/* JADX INFO: loaded from: classes.dex */
public class AppGlobals {
    public static Application getInitialApplication() {
        return ActivityThread.currentApplication();
    }

    public static String getInitialPackage() {
        return ActivityThread.currentPackageName();
    }

    public static int getIntCoreSetting(String str, int i2) {
        ActivityThread activityThreadCurrentActivityThread = ActivityThread.currentActivityThread();
        return activityThreadCurrentActivityThread != null ? activityThreadCurrentActivityThread.getIntCoreSetting(str, i2) : i2;
    }

    public static IPackageManager getPackageManager() {
        return ActivityThread.getPackageManager();
    }
}
