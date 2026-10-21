package android.os;

import android.app.m;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import dalvik.system.VMRuntime;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class GraphicsEnvironment {
    private static final boolean DEBUG = false;
    private static final String PROPERTY_GFX_DRIVER = "ro.gfx.driver.0";
    private static final String TAG = "GraphicsEnvironment";

    private static String chooseAbi(ApplicationInfo applicationInfo) {
        String currentInstructionSet = VMRuntime.getCurrentInstructionSet();
        String str = applicationInfo.primaryCpuAbi;
        if (str != null && currentInstructionSet.equals(VMRuntime.getInstructionSet(str))) {
            return applicationInfo.primaryCpuAbi;
        }
        String str2 = applicationInfo.secondaryCpuAbi;
        if (str2 == null || !currentInstructionSet.equals(VMRuntime.getInstructionSet(str2))) {
            return null;
        }
        return applicationInfo.secondaryCpuAbi;
    }

    public static void chooseDriver(Context context) {
        String str = SystemProperties.get(PROPERTY_GFX_DRIVER);
        if (str == null || str.isEmpty()) {
            return;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo.isPrivilegedApp()) {
            return;
        }
        if (!applicationInfo.isSystemApp() || applicationInfo.isUpdatedSystemApp()) {
            try {
                ApplicationInfo applicationInfo2 = context.getPackageManager().getApplicationInfo(str, 1048576);
                String strChooseAbi = chooseAbi(applicationInfo2);
                if (strChooseAbi == null) {
                    return;
                }
                if (applicationInfo2.targetSdkVersion < 26) {
                    Log.w(TAG, "updated driver package is not known to be compatible with O");
                    return;
                }
                setDriverPath(applicationInfo2.nativeLibraryDir + File.pathSeparator + applicationInfo2.sourceDir + "!/lib/" + strChooseAbi);
            } catch (PackageManager.NameNotFoundException unused) {
                m.s("driver package '", str, "' not installed", TAG);
            }
        }
    }

    public static void earlyInitEGL() {
        new Thread(new b(0), "EGL Init").start();
    }

    private static native void setDriverPath(String str);
}
