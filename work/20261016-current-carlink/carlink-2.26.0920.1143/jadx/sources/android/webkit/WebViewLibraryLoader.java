package android.webkit;

import android.app.ActivityManagerInternal;
import android.app.m;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.android.server.LocalServices;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes2.dex */
class WebViewLibraryLoader {
    private static final long CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES = 104857600;
    private static final String CHROMIUM_WEBVIEW_NATIVE_RELRO_32 = "/data/misc/shared_relro/libwebviewchromium32.relro";
    private static final String CHROMIUM_WEBVIEW_NATIVE_RELRO_64 = "/data/misc/shared_relro/libwebviewchromium64.relro";
    private static final boolean DEBUG = false;
    private static final String LOGTAG = "WebViewLibraryLoader";
    private static boolean sAddressSpaceReserved = false;

    public static class RelroFileCreator {
        private RelroFileCreator() {
        }

        public static void main(String[] strArr) {
            boolean zIs64Bit = VMRuntime.getRuntime().is64Bit();
            try {
                if (strArr.length == 2 && strArr[0] != null && strArr[1] != null) {
                    Log.v(WebViewLibraryLoader.LOGTAG, "RelroFileCreator (64bit = " + zIs64Bit + "),  32-bit lib: " + strArr[0] + ", 64-bit lib: " + strArr[1]);
                    if (!WebViewLibraryLoader.sAddressSpaceReserved) {
                        Log.e(WebViewLibraryLoader.LOGTAG, "can't create relro file; address space not reserved");
                        try {
                            WebViewFactory.getUpdateService().notifyRelroCreationCompleted();
                        } catch (RemoteException e2) {
                            Log.e(WebViewLibraryLoader.LOGTAG, "error notifying update service", e2);
                        }
                        Log.e(WebViewLibraryLoader.LOGTAG, "failed to create relro file");
                        System.exit(0);
                        return;
                    }
                    boolean zNativeCreateRelroFile = WebViewLibraryLoader.nativeCreateRelroFile(strArr[0], strArr[1], WebViewLibraryLoader.CHROMIUM_WEBVIEW_NATIVE_RELRO_32, WebViewLibraryLoader.CHROMIUM_WEBVIEW_NATIVE_RELRO_64);
                    try {
                        WebViewFactory.getUpdateService().notifyRelroCreationCompleted();
                    } catch (RemoteException e3) {
                        Log.e(WebViewLibraryLoader.LOGTAG, "error notifying update service", e3);
                    }
                    if (!zNativeCreateRelroFile) {
                        Log.e(WebViewLibraryLoader.LOGTAG, "failed to create relro file");
                    }
                    System.exit(0);
                    return;
                }
                Log.e(WebViewLibraryLoader.LOGTAG, "Invalid RelroFileCreator args: " + Arrays.toString(strArr));
                try {
                    WebViewFactory.getUpdateService().notifyRelroCreationCompleted();
                } catch (RemoteException e4) {
                    Log.e(WebViewLibraryLoader.LOGTAG, "error notifying update service", e4);
                }
                Log.e(WebViewLibraryLoader.LOGTAG, "failed to create relro file");
                System.exit(0);
            } catch (Throwable th) {
                try {
                    WebViewFactory.getUpdateService().notifyRelroCreationCompleted();
                } catch (RemoteException e5) {
                    Log.e(WebViewLibraryLoader.LOGTAG, "error notifying update service", e5);
                }
                Log.e(WebViewLibraryLoader.LOGTAG, "failed to create relro file");
                System.exit(0);
                throw th;
            }
        }
    }

    public static void createRelroFile(boolean z2, String[] strArr) {
        final String str = z2 ? Build.SUPPORTED_64_BIT_ABIS[0] : Build.SUPPORTED_32_BIT_ABIS[0];
        Runnable runnable = new Runnable() { // from class: android.webkit.WebViewLibraryLoader.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Log.e(WebViewLibraryLoader.LOGTAG, "relro file creator for " + str + " crashed. Proceeding without");
                    WebViewFactory.getUpdateService().notifyRelroCreationCompleted();
                } catch (RemoteException e2) {
                    Log.e(WebViewLibraryLoader.LOGTAG, "Cannot reach WebViewUpdateService. " + e2.getMessage());
                }
            }
        };
        if (strArr != null) {
            try {
                if (strArr[0] != null && strArr[1] != null) {
                    if (((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).startIsolatedProcess(RelroFileCreator.class.getName(), strArr, "WebViewLoader-" + str, str, 1037, runnable) <= 0) {
                        throw new Exception("Failed to start the relro file creator process");
                    }
                    return;
                }
            } catch (Throwable th) {
                Log.e(LOGTAG, "error starting relro file creator for abi " + str, th);
                runnable.run();
                return;
            }
        }
        throw new IllegalArgumentException("Native library paths to the WebView RelRo process must not be null!");
    }

    private static String getLoadFromApkPath(String str, String[] strArr, String str2) throws WebViewFactory.MissingWebViewPackageException {
        try {
            ZipFile zipFile = new ZipFile(str);
            try {
                for (String str3 : strArr) {
                    String str4 = "lib/" + str3 + "/" + str2;
                    ZipEntry entry = zipFile.getEntry(str4);
                    if (entry != null && entry.getMethod() == 0) {
                        String str5 = str + "!/" + str4;
                        zipFile.close();
                        return str5;
                    }
                    throw new WebViewFactory.MissingWebViewPackageException(e);
                }
                zipFile.close();
                return "";
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        zipFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e2) {
            throw new WebViewFactory.MissingWebViewPackageException(e2);
        }
    }

    public static String[] getWebViewNativeLibraryPaths(PackageInfo packageInfo) throws WebViewFactory.MissingWebViewPackageException {
        String strH;
        String strH2;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String webViewLibrary = WebViewFactory.getWebViewLibrary(applicationInfo);
        boolean zIs64BitAbi = VMRuntime.is64BitAbi(applicationInfo.primaryCpuAbi);
        if (TextUtils.isEmpty(applicationInfo.secondaryCpuAbi)) {
            strH = "";
            if (zIs64BitAbi) {
                strH2 = applicationInfo.nativeLibraryDir;
            } else {
                strH = applicationInfo.nativeLibraryDir;
                strH2 = "";
            }
        } else if (zIs64BitAbi) {
            strH2 = applicationInfo.nativeLibraryDir;
            strH = applicationInfo.secondaryNativeLibraryDir;
        } else {
            strH2 = applicationInfo.secondaryNativeLibraryDir;
            strH = applicationInfo.nativeLibraryDir;
        }
        if (!TextUtils.isEmpty(strH)) {
            strH = m.h(strH, "/", webViewLibrary);
            if (!new File(strH).exists()) {
                strH = getLoadFromApkPath(applicationInfo.sourceDir, Build.SUPPORTED_32_BIT_ABIS, webViewLibrary);
            }
        }
        if (!TextUtils.isEmpty(strH2)) {
            strH2 = m.h(strH2, "/", webViewLibrary);
            if (!new File(strH2).exists()) {
                strH2 = getLoadFromApkPath(applicationInfo.sourceDir, Build.SUPPORTED_64_BIT_ABIS, webViewLibrary);
            }
        }
        return new String[]{strH, strH2};
    }

    public static int loadNativeLibrary(ClassLoader classLoader, PackageInfo packageInfo) {
        if (!sAddressSpaceReserved) {
            Log.e(LOGTAG, "can't load with relro file; address space not reserved");
            return 2;
        }
        int iNativeLoadWithRelroFile = nativeLoadWithRelroFile(WebViewFactory.getWebViewLibrary(packageInfo.applicationInfo), CHROMIUM_WEBVIEW_NATIVE_RELRO_32, CHROMIUM_WEBVIEW_NATIVE_RELRO_64, classLoader);
        if (iNativeLoadWithRelroFile != 0) {
            Log.w(LOGTAG, "failed to load with relro file, proceeding without");
        }
        return iNativeLoadWithRelroFile;
    }

    public static native boolean nativeCreateRelroFile(String str, String str2, String str3, String str4);

    public static native int nativeLoadWithRelroFile(String str, String str2, String str3, ClassLoader classLoader);

    public static native boolean nativeReserveAddressSpace(long j2);

    public static void reserveAddressSpaceInZygote() {
        System.loadLibrary("webviewchromium_loader");
        long j2 = SystemProperties.getLong(WebViewFactory.CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY, CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES);
        boolean zNativeReserveAddressSpace = nativeReserveAddressSpace(j2);
        sAddressSpaceReserved = zNativeReserveAddressSpace;
        if (zNativeReserveAddressSpace) {
            return;
        }
        Log.e(LOGTAG, "reserving " + j2 + " bytes of address space failed");
    }

    private static void setWebViewZygoteVmSize(long j2) {
        SystemProperties.set(WebViewFactory.CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY, Long.toString(j2));
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008a A[PHI: r2
  0x008a: PHI (r2v5 long) = (r2v1 long), (r2v1 long), (r2v6 long), (r2v1 long) binds: [B:15:0x0033, B:17:0x003b, B:37:0x0070, B:26:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    public static String[] updateWebViewZygoteVmSize(PackageInfo packageInfo) throws WebViewFactory.MissingWebViewPackageException {
        String[] webViewNativeLibraryPaths = getWebViewNativeLibraryPaths(packageInfo);
        if (webViewNativeLibraryPaths != null) {
            long jMax = 0;
            for (String str : webViewNativeLibraryPaths) {
                if (str != null && !TextUtils.isEmpty(str)) {
                    File file = new File(str);
                    if (file.exists()) {
                        jMax = Math.max(jMax, file.length());
                    } else if (str.contains("!/")) {
                        String[] strArrSplit = TextUtils.split(str, "!/");
                        if (strArrSplit.length == 2) {
                            try {
                                ZipFile zipFile = new ZipFile(strArrSplit[0]);
                                try {
                                    ZipEntry entry = zipFile.getEntry(strArrSplit[1]);
                                    if (entry == null || entry.getMethod() != 0) {
                                        zipFile.close();
                                        Log.e(LOGTAG, "error sizing load for ".concat(str));
                                    } else {
                                        jMax = Math.max(jMax, entry.getSize());
                                        zipFile.close();
                                    }
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        try {
                                            zipFile.close();
                                        } catch (Throwable th3) {
                                            th.addSuppressed(th3);
                                        }
                                        throw th2;
                                    }
                                }
                            } catch (IOException e2) {
                                Log.e(LOGTAG, "error reading APK file " + strArrSplit[0] + ", ", e2);
                            }
                        } else {
                            Log.e(LOGTAG, "error sizing load for ".concat(str));
                        }
                    } else {
                        Log.e(LOGTAG, "error sizing load for ".concat(str));
                    }
                }
            }
            long jMax2 = Math.max(jMax * 2, CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES);
            Log.d(LOGTAG, "Setting new address space to " + jMax2);
            setWebViewZygoteVmSize(jMax2);
        }
        return webViewNativeLibraryPaths;
    }
}
