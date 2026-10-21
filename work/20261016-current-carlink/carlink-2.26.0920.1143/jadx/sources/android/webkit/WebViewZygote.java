package android.webkit;

import android.app.LoadedApk;
import android.app.m;
import android.content.pm.PackageInfo;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.SystemService;
import android.os.ZygoteProcess;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.TimedRemoteCaller;
import com.android.internal.annotations.GuardedBy;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class WebViewZygote {
    private static final String LOGTAG = "WebViewZygote";
    private static final String WEBVIEW_ZYGOTE_SERVICE_32 = "webview_zygote32";
    private static final String WEBVIEW_ZYGOTE_SERVICE_64 = "webview_zygote64";
    private static final String WEBVIEW_ZYGOTE_SOCKET = "webview_zygote";
    private static final Object sLock = new Object();

    @GuardedBy("sLock")
    private static boolean sMultiprocessEnabled = false;

    @GuardedBy("sLock")
    private static PackageInfo sPackage = null;

    @GuardedBy("sLock")
    private static String sPackageCacheKey = null;

    @GuardedBy("sLock")
    private static boolean sStartedService = false;

    @GuardedBy("sLock")
    private static ZygoteProcess sZygote;

    @GuardedBy("sLock")
    private static void connectToZygoteIfNeededLocked() {
        if (sZygote != null) {
            return;
        }
        if (sPackage == null) {
            Log.e(LOGTAG, "Cannot connect to zygote, no package specified");
            return;
        }
        String serviceNameLocked = getServiceNameLocked();
        if (!SystemService.isRunning(serviceNameLocked)) {
            Log.e(LOGTAG, serviceNameLocked + " is not running");
            return;
        }
        try {
            sZygote = new ZygoteProcess(WEBVIEW_ZYGOTE_SOCKET, null);
            ArrayList arrayList = new ArrayList(10);
            ArrayList arrayList2 = new ArrayList(10);
            LoadedApk.makePaths(null, false, sPackage.applicationInfo, arrayList, arrayList2);
            String str = File.pathSeparator;
            String strJoin = TextUtils.join(str, arrayList2);
            String strJoin2 = arrayList.size() == 1 ? (String) arrayList.get(0) : TextUtils.join(str, arrayList);
            ZygoteProcess.waitForConnectionToZygote(WEBVIEW_ZYGOTE_SOCKET);
            Log.d(LOGTAG, "Preloading package " + strJoin2 + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + strJoin);
            sZygote.preloadPackageForAbi(strJoin2, strJoin, sPackageCacheKey, Build.SUPPORTED_ABIS[0]);
        } catch (Exception e2) {
            Log.e(LOGTAG, "Error connecting to " + serviceNameLocked, e2);
            sZygote = null;
        }
    }

    public static String getPackageName() {
        String str;
        synchronized (sLock) {
            str = sPackage.packageName;
        }
        return str;
    }

    public static ZygoteProcess getProcess() {
        synchronized (sLock) {
            ZygoteProcess zygoteProcess = sZygote;
            if (zygoteProcess != null) {
                return zygoteProcess;
            }
            waitForServiceStartAndConnect();
            return sZygote;
        }
    }

    @GuardedBy("sLock")
    private static String getServiceNameLocked() {
        if (sPackage == null) {
            return null;
        }
        return Arrays.asList(Build.SUPPORTED_64_BIT_ABIS).contains(sPackage.applicationInfo.primaryCpuAbi) ? WEBVIEW_ZYGOTE_SERVICE_64 : WEBVIEW_ZYGOTE_SERVICE_32;
    }

    public static boolean isMultiprocessEnabled() {
        boolean z2;
        synchronized (sLock) {
            z2 = sMultiprocessEnabled && sPackage != null;
        }
        return z2;
    }

    public static void onWebViewProviderChanged(PackageInfo packageInfo, String str) {
        synchronized (sLock) {
            sPackage = packageInfo;
            sPackageCacheKey = str;
            if (sMultiprocessEnabled) {
                String serviceNameLocked = getServiceNameLocked();
                sZygote = null;
                if (SystemService.isStopped(serviceNameLocked)) {
                    SystemService.start(serviceNameLocked);
                } else {
                    SystemService.restart(serviceNameLocked);
                }
                sStartedService = true;
            }
        }
    }

    public static void setMultiprocessEnabled(boolean z2) {
        synchronized (sLock) {
            sMultiprocessEnabled = z2;
            String serviceNameLocked = getServiceNameLocked();
            if (serviceNameLocked == null) {
                return;
            }
            if (!z2) {
                SystemService.stop(serviceNameLocked);
                sStartedService = false;
                sZygote = null;
            } else if (!sStartedService) {
                SystemService.start(serviceNameLocked);
                sStartedService = true;
            }
        }
    }

    private static void waitForServiceStartAndConnect() {
        String serviceNameLocked;
        if (!sStartedService) {
            throw new AndroidRuntimeException("Tried waiting for the WebView Zygote Service to start running without first starting the service.");
        }
        Object obj = sLock;
        synchronized (obj) {
            serviceNameLocked = getServiceNameLocked();
        }
        try {
            SystemService.waitForState(serviceNameLocked, SystemService.State.RUNNING, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
            synchronized (obj) {
                connectToZygoteIfNeededLocked();
            }
        } catch (TimeoutException unused) {
            m.r("Timed out waiting for ", serviceNameLocked, LOGTAG);
        }
    }
}
