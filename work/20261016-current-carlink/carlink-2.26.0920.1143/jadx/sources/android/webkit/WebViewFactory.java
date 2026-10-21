package android.webkit;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.Application;
import android.app.m;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.AndroidRuntimeException;
import android.util.ArraySet;
import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public final class WebViewFactory {
    private static final String CHROMIUM_WEBVIEW_FACTORY = "com.android.webview.chromium.WebViewChromiumFactoryProviderForOMR1";
    private static final String CHROMIUM_WEBVIEW_FACTORY_METHOD = "create";
    private static final String CHROMIUM_WEBVIEW_NATIVE_FACTORY = "com.android.webview.chromium.WebViewChromiumFactoryProvider";
    public static final String CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY = "persist.sys.webview.vmsize";
    private static final boolean DEBUG = false;
    public static final int LIBLOAD_ADDRESS_SPACE_NOT_RESERVED = 2;
    public static final int LIBLOAD_FAILED_JNI_CALL = 7;
    public static final int LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES = 4;
    public static final int LIBLOAD_FAILED_TO_FIND_NAMESPACE = 10;
    public static final int LIBLOAD_FAILED_TO_LOAD_LIBRARY = 6;
    public static final int LIBLOAD_FAILED_TO_OPEN_RELRO_FILE = 5;
    public static final int LIBLOAD_FAILED_WAITING_FOR_RELRO = 3;
    public static final int LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN = 8;
    public static final int LIBLOAD_SUCCESS = 0;
    public static final int LIBLOAD_WRONG_PACKAGE_NAME = 1;
    private static final String LOGTAG = "WebViewFactory";
    private static final String NULL_WEBVIEW_FACTORY = "com.android.webview.nullwebview.NullWebViewFactoryProvider";
    private static String WEBVIEW_UPDATE_SERVICE_NAME = "webviewupdate";
    private static PackageInfo sPackageInfo;
    private static WebViewFactoryProvider sProviderInstance;
    private static final Object sProviderLock = new Object();

    public static class MissingWebViewPackageException extends Exception {
        public MissingWebViewPackageException(String str) {
            super(str);
        }

        public MissingWebViewPackageException(Exception exc) {
            super(exc);
        }
    }

    private static void fixupStubApplicationInfo(ApplicationInfo applicationInfo, PackageManager packageManager) throws MissingWebViewPackageException {
        Bundle bundle = applicationInfo.metaData;
        String string = bundle != null ? bundle.getString("com.android.webview.WebViewDonorPackage") : null;
        if (string != null) {
            try {
                ApplicationInfo applicationInfo2 = packageManager.getPackageInfo(string, 270541824).applicationInfo;
                applicationInfo.sourceDir = applicationInfo2.sourceDir;
                applicationInfo.splitSourceDirs = applicationInfo2.splitSourceDirs;
                applicationInfo.nativeLibraryDir = applicationInfo2.nativeLibraryDir;
                applicationInfo.secondaryNativeLibraryDir = applicationInfo2.secondaryNativeLibraryDir;
                applicationInfo.primaryCpuAbi = applicationInfo2.primaryCpuAbi;
                applicationInfo.secondaryCpuAbi = applicationInfo2.secondaryCpuAbi;
            } catch (PackageManager.NameNotFoundException unused) {
                throw new MissingWebViewPackageException("Failed to find donor package: ".concat(string));
            }
        }
    }

    public static PackageInfo getLoadedPackageInfo() {
        PackageInfo packageInfo;
        synchronized (sProviderLock) {
            packageInfo = sPackageInfo;
        }
        return packageInfo;
    }

    public static WebViewFactoryProvider getProvider() {
        Method method;
        synchronized (sProviderLock) {
            WebViewFactoryProvider webViewFactoryProvider = sProviderInstance;
            if (webViewFactoryProvider != null) {
                return webViewFactoryProvider;
            }
            int iMyUid = Process.myUid();
            if (iMyUid == 0 || iMyUid == 1000 || iMyUid == 1001 || iMyUid == 1027 || iMyUid == 1002) {
                throw new UnsupportedOperationException("For security reasons, WebView is not allowed in privileged processes");
            }
            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
            Trace.traceBegin(16L, "WebViewFactory.getProvider()");
            try {
                try {
                    method = getProviderClass().getMethod(CHROMIUM_WEBVIEW_FACTORY_METHOD, WebViewDelegate.class);
                } catch (Exception unused) {
                    method = null;
                }
                Trace.traceBegin(16L, "WebViewFactoryProvider invocation");
                try {
                    try {
                        WebViewFactoryProvider webViewFactoryProvider2 = (WebViewFactoryProvider) method.invoke(null, new WebViewDelegate());
                        sProviderInstance = webViewFactoryProvider2;
                        Trace.traceEnd(16L);
                        Trace.traceEnd(16L);
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        return webViewFactoryProvider2;
                    } catch (Throwable th) {
                        Trace.traceEnd(16L);
                        throw th;
                    }
                } catch (Exception e2) {
                    Log.e(LOGTAG, "error instantiating provider", e2);
                    throw new AndroidRuntimeException(e2);
                }
            } catch (Throwable th2) {
                Trace.traceEnd(16L);
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                throw th2;
            }
        }
    }

    private static Class<WebViewFactoryProvider> getProviderClass() {
        Application initialApplication = AppGlobals.getInitialApplication();
        try {
            Trace.traceBegin(16L, "WebViewFactory.getWebViewContextAndSetProvider()");
            try {
                Context webViewContextAndSetProvider = getWebViewContextAndSetProvider();
                try {
                    Trace.traceEnd(16L);
                    Log.i(LOGTAG, "Loading " + sPackageInfo.packageName + " version " + sPackageInfo.versionName + " (code " + sPackageInfo.versionCode + ")");
                    Trace.traceBegin(16L, "WebViewFactory.getChromiumProviderClass()");
                    try {
                        initialApplication.getAssets().addAssetPathAsSharedLibrary(webViewContextAndSetProvider.getApplicationInfo().sourceDir);
                        ClassLoader classLoader = webViewContextAndSetProvider.getClassLoader();
                        Trace.traceBegin(16L, "WebViewFactory.loadNativeLibrary()");
                        WebViewLibraryLoader.loadNativeLibrary(classLoader, sPackageInfo);
                        Trace.traceEnd(16L);
                        Trace.traceBegin(16L, "Class.forName()");
                        try {
                            Class<WebViewFactoryProvider> webViewProviderClass = getWebViewProviderClass(classLoader);
                            Trace.traceEnd(16L);
                            return webViewProviderClass;
                        } finally {
                            Trace.traceEnd(16L);
                        }
                    } catch (ClassNotFoundException e2) {
                        Log.e(LOGTAG, "error loading provider", e2);
                        throw new AndroidRuntimeException(e2);
                    }
                } catch (Throwable th) {
                    Trace.traceEnd(16L);
                    throw th;
                }
            } catch (Throwable th2) {
                Trace.traceEnd(16L);
                throw th2;
            }
        } catch (MissingWebViewPackageException e3) {
            try {
                return Class.forName(NULL_WEBVIEW_FACTORY);
            } catch (ClassNotFoundException unused) {
                Log.e(LOGTAG, "Chromium WebView package does not exist", e3);
                throw new AndroidRuntimeException(e3);
            }
        }
    }

    public static IWebViewUpdateService getUpdateService() {
        return IWebViewUpdateService.Stub.asInterface(ServiceManager.getService(WEBVIEW_UPDATE_SERVICE_NAME));
    }

    private static Context getWebViewContextAndSetProvider() throws MissingWebViewPackageException {
        Application initialApplication = AppGlobals.getInitialApplication();
        try {
            Trace.traceBegin(16L, "WebViewUpdateService.waitForAndGetProvider()");
            try {
                WebViewProviderResponse webViewProviderResponseWaitForAndGetProvider = getUpdateService().waitForAndGetProvider();
                Trace.traceEnd(16L);
                int i2 = webViewProviderResponseWaitForAndGetProvider.status;
                if (i2 != 0 && i2 != 3) {
                    throw new MissingWebViewPackageException("Failed to load WebView provider: " + getWebViewPreparationErrorReason(webViewProviderResponseWaitForAndGetProvider.status));
                }
                Trace.traceBegin(16L, "ActivityManager.addPackageDependency()");
                try {
                    ActivityManager.getService().addPackageDependency(webViewProviderResponseWaitForAndGetProvider.packageInfo.packageName);
                    Trace.traceEnd(16L);
                    PackageManager packageManager = initialApplication.getPackageManager();
                    Trace.traceBegin(16L, "PackageManager.getPackageInfo()");
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(webViewProviderResponseWaitForAndGetProvider.packageInfo.packageName, 268444864);
                        Trace.traceEnd(16L);
                        verifyPackageInfo(webViewProviderResponseWaitForAndGetProvider.packageInfo, packageInfo);
                        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                        fixupStubApplicationInfo(applicationInfo, packageManager);
                        Trace.traceBegin(16L, "initialApplication.createApplicationContext");
                        try {
                            Context contextCreateApplicationContext = initialApplication.createApplicationContext(applicationInfo, 3);
                            sPackageInfo = packageInfo;
                            return contextCreateApplicationContext;
                        } finally {
                            Trace.traceEnd(16L);
                        }
                    } catch (Throwable th) {
                        Trace.traceEnd(16L);
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.traceEnd(16L);
                    throw th2;
                }
            } catch (Throwable th3) {
                Trace.traceEnd(16L);
                throw th3;
            }
        } catch (PackageManager.NameNotFoundException | RemoteException e2) {
            throw new MissingWebViewPackageException("Failed to load WebView provider: " + e2);
        }
    }

    public static String getWebViewLibrary(ApplicationInfo applicationInfo) {
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null) {
            return bundle.getString("com.android.webview.WebViewLibrary");
        }
        return null;
    }

    private static String getWebViewPreparationErrorReason(int i2) {
        if (i2 == 3) {
            return "Time out waiting for Relro files being created";
        }
        if (i2 != 4) {
            return i2 != 8 ? "Unknown" : "Crashed for unknown reason";
        }
        return "No WebView installed";
    }

    public static Class<WebViewFactoryProvider> getWebViewProviderClass(ClassLoader classLoader) {
        String str = SystemProperties.get("ro.com.google.gmsversion");
        Log.i(LOGTAG, "SystemProperties GMSVERSION = " + str);
        if (str.isEmpty()) {
            Log.i(LOGTAG, "Get WebViewChromiumFactoryProvider");
            return Class.forName(CHROMIUM_WEBVIEW_NATIVE_FACTORY, true, classLoader);
        }
        Log.i(LOGTAG, "Get WebViewChromiumFactoryProviderForO");
        return Class.forName(CHROMIUM_WEBVIEW_FACTORY, true, classLoader);
    }

    public static int loadWebViewNativeLibraryFromPackage(String str, ClassLoader classLoader) {
        try {
            WebViewProviderResponse webViewProviderResponseWaitForAndGetProvider = getUpdateService().waitForAndGetProvider();
            int i2 = webViewProviderResponseWaitForAndGetProvider.status;
            if (i2 != 0 && i2 != 3) {
                return i2;
            }
            if (!webViewProviderResponseWaitForAndGetProvider.packageInfo.packageName.equals(str)) {
                return 1;
            }
            try {
                try {
                    int iLoadNativeLibrary = WebViewLibraryLoader.loadNativeLibrary(classLoader, AppGlobals.getInitialApplication().getPackageManager().getPackageInfo(str, 268435584));
                    return iLoadNativeLibrary == 0 ? webViewProviderResponseWaitForAndGetProvider.status : iLoadNativeLibrary;
                } catch (MissingWebViewPackageException e2) {
                    Log.e(LOGTAG, "Couldn't load native library: " + e2);
                    return 6;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                m.r("Couldn't find package ", str, LOGTAG);
                return 1;
            }
        } catch (RemoteException e3) {
            Log.e(LOGTAG, "error waiting for relro creation", e3);
            return 8;
        }
    }

    public static int onWebViewProviderChanged(PackageInfo packageInfo) {
        String[] strArrUpdateWebViewZygoteVmSize;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String str = applicationInfo.sourceDir;
        try {
            fixupStubApplicationInfo(applicationInfo, AppGlobals.getInitialApplication().getPackageManager());
            strArrUpdateWebViewZygoteVmSize = WebViewLibraryLoader.updateWebViewZygoteVmSize(packageInfo);
        } catch (Throwable th) {
            Log.e(LOGTAG, "error preparing webview native library", th);
            strArrUpdateWebViewZygoteVmSize = null;
        }
        WebViewZygote.onWebViewProviderChanged(packageInfo, str);
        return prepareWebViewInSystemServer(strArrUpdateWebViewZygoteVmSize);
    }

    private static int prepareWebViewInSystemServer(String[] strArr) {
        int i2 = 0;
        if (Build.SUPPORTED_32_BIT_ABIS.length > 0) {
            WebViewLibraryLoader.createRelroFile(false, strArr);
            i2 = 1;
        }
        if (Build.SUPPORTED_64_BIT_ABIS.length <= 0) {
            return i2;
        }
        WebViewLibraryLoader.createRelroFile(true, strArr);
        return i2 + 1;
    }

    public static void prepareWebViewInZygote() {
        try {
            WebViewLibraryLoader.reserveAddressSpaceInZygote();
        } catch (Throwable th) {
            Log.e(LOGTAG, "error preparing native loader", th);
        }
    }

    private static boolean signaturesEquals(Signature[] signatureArr, Signature[] signatureArr2) {
        if (signatureArr == null) {
            return signatureArr2 == null;
        }
        if (signatureArr2 == null) {
            return false;
        }
        ArraySet arraySet = new ArraySet();
        for (Signature signature : signatureArr) {
            arraySet.add(signature);
        }
        ArraySet arraySet2 = new ArraySet();
        for (Signature signature2 : signatureArr2) {
            arraySet2.add(signature2);
        }
        return arraySet.equals(arraySet2);
    }

    private static void verifyPackageInfo(PackageInfo packageInfo, PackageInfo packageInfo2) throws MissingWebViewPackageException {
        if (!packageInfo.packageName.equals(packageInfo2.packageName)) {
            throw new MissingWebViewPackageException("Failed to verify WebView provider, packageName mismatch, expected: " + packageInfo.packageName + " actual: " + packageInfo2.packageName);
        }
        if (packageInfo.versionCode > packageInfo2.versionCode) {
            throw new MissingWebViewPackageException("Failed to verify WebView provider, version code is lower than expected: " + packageInfo.versionCode + " actual: " + packageInfo2.versionCode);
        }
        if (getWebViewLibrary(packageInfo2.applicationInfo) != null) {
            if (!signaturesEquals(packageInfo.signatures, packageInfo2.signatures)) {
                throw new MissingWebViewPackageException("Failed to verify WebView provider, signature mismatch");
            }
        } else {
            throw new MissingWebViewPackageException("Tried to load an invalid WebView provider: " + packageInfo2.packageName);
        }
    }
}
