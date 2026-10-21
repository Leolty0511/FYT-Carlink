package android.telephony.mbms;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MbmsUtils {
    private static final String LOG_TAG = "MbmsUtils";

    public static File getEmbmsTempFileDirForService(Context context, String str) {
        return new File(MbmsTempFileProvider.getEmbmsTempFileDir(context), str);
    }

    public static android.content.pm.ServiceInfo getMiddlewareServiceInfo(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent();
        intent.setAction(str);
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 1048576);
        if (listQueryIntentServices == null || listQueryIntentServices.size() == 0) {
            Log.w(LOG_TAG, "No download services found, cannot get service info");
            return null;
        }
        if (listQueryIntentServices.size() <= 1) {
            return listQueryIntentServices.get(0).serviceInfo;
        }
        Log.w(LOG_TAG, "More than one download service found, cannot get unique service");
        return null;
    }

    public static boolean isContainedIn(File file, File file2) {
        try {
            return file2.getCanonicalPath().startsWith(file.getCanonicalPath());
        } catch (IOException e2) {
            throw new RuntimeException("Failed to resolve canonical paths: " + e2);
        }
    }

    public static int startBinding(Context context, String str, ServiceConnection serviceConnection) {
        Intent intent = new Intent();
        android.content.pm.ServiceInfo middlewareServiceInfo = getMiddlewareServiceInfo(context, str);
        if (middlewareServiceInfo == null) {
            return 1;
        }
        intent.setComponent(toComponentName(middlewareServiceInfo));
        context.bindService(intent, serviceConnection, 1);
        return 0;
    }

    public static ComponentName toComponentName(ComponentInfo componentInfo) {
        return new ComponentName(componentInfo.packageName, componentInfo.name);
    }
}
