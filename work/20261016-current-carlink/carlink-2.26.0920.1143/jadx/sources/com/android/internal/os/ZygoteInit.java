package com.android.internal.os;

import android.accessibilityservice.c;
import android.app.m;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.icu.impl.CacheValue;
import android.icu.util.ULocale;
import android.net.wifi.WifiEnterpriseConfig;
import android.opengl.EGL14;
import android.os.Build;
import android.os.Environment;
import android.os.IInstalld;
import android.os.Process;
import android.os.RemoteException;
import android.os.Seccomp;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.ZygoteProcess;
import android.os.storage.StorageManager;
import android.provider.SettingsStringUtil;
import android.security.keystore.AndroidKeyStoreProvider;
import android.service.notification.ZenModeConfig;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.Hyphenator;
import android.util.EventLog;
import android.util.Log;
import android.util.TimingsTraceLog;
import android.webkit.WebViewFactory;
import android.widget.TextView;
import androidx.emoji2.text.e;
import com.android.internal.R;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.Preconditions;
import dalvik.system.DexFile;
import dalvik.system.VMRuntime;
import dalvik.system.ZygoteHooks;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.Provider;
import java.security.Security;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ZygoteInit {
    private static final String ABI_LIST_ARG = "--abi-list=";
    private static final int LOG_BOOT_PROGRESS_PRELOAD_END = 3030;
    private static final int LOG_BOOT_PROGRESS_PRELOAD_START = 3020;
    private static final String PRELOADED_CLASSES = "/system/etc/preloaded-classes";
    private static final int PRELOAD_GC_THRESHOLD = 50000;
    public static final boolean PRELOAD_RESOURCES = true;
    private static final String PROPERTY_DISABLE_OPENGL_PRELOADING = "ro.zygote.disable_gl_preload";
    private static final String PROPERTY_GFX_DRIVER = "ro.gfx.driver.0";
    private static final String PROPERTY_RUNNING_IN_CONTAINER = "ro.boot.container";
    private static final int ROOT_GID = 0;
    private static final int ROOT_UID = 0;
    private static final String SOCKET_NAME_ARG = "--socket-name=";
    private static final String TAG = "Zygote";
    private static final int UNPRIVILEGED_GID = 9999;
    private static final int UNPRIVILEGED_UID = 9999;
    private static Resources mResources;
    private static boolean sPreloadComplete;

    private ZygoteInit() {
    }

    private static void beginIcuCachePinning() {
        Log.i(TAG, "Installing ICU cache reference pinning...");
        CacheValue.setStrength(CacheValue.Strength.STRONG);
        Log.i(TAG, "Preloading ICU data...");
        ULocale[] uLocaleArr = {ULocale.ROOT, ULocale.US, ULocale.getDefault()};
        for (int i2 = 0; i2 < 3; i2++) {
            ULocale uLocale = uLocaleArr[i2];
            e.p();
            e.r(uLocale);
        }
    }

    public static ClassLoader createPathClassLoader(String str, int i2) {
        String property = System.getProperty("java.library.path");
        return ClassLoaderFactory.createClassLoader(str, property, property, ClassLoader.getSystemClassLoader(), i2, true, null);
    }

    private static String encodeSystemServerClassPath(String str, String str2) {
        return (str == null || str.isEmpty()) ? str2 : m.h(str, SettingsStringUtil.DELIMITER, str2);
    }

    private static void endIcuCachePinning() {
        CacheValue.setStrength(CacheValue.Strength.SOFT);
        Log.i(TAG, "Uninstalled ICU cache reference pinning...");
    }

    private static Runnable forkSystemServer(String str, String str2, ZygoteServer zygoteServer) {
        long jPosixCapabilitiesAsBits = posixCapabilitiesAsBits(OsConstants.CAP_IPC_LOCK, OsConstants.CAP_KILL, OsConstants.CAP_NET_ADMIN, OsConstants.CAP_NET_BIND_SERVICE, OsConstants.CAP_NET_BROADCAST, OsConstants.CAP_NET_RAW, OsConstants.CAP_SYS_MODULE, OsConstants.CAP_SYS_NICE, OsConstants.CAP_SYS_PTRACE, OsConstants.CAP_SYS_TIME, OsConstants.CAP_SYS_TTY_CONFIG, OsConstants.CAP_WAKE_ALARM);
        if (!SystemProperties.getBoolean(PROPERTY_RUNNING_IN_CONTAINER, false)) {
            jPosixCapabilitiesAsBits |= posixCapabilitiesAsBits(OsConstants.CAP_BLOCK_SUSPEND);
        }
        StringBuilder sbL = m.l("--capabilities=", jPosixCapabilitiesAsBits, ",");
        sbL.append(jPosixCapabilitiesAsBits);
        try {
            ZygoteConnection.Arguments arguments = new ZygoteConnection.Arguments(new String[]{"--setuid=1000", "--setgid=1000", "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1032,3001,3002,3003,3006,3007,3009,3010", sbL.toString(), "--nice-name=system_server", "--runtime-args", "com.android.server.SystemServer"});
            ZygoteConnection.applyDebuggerSystemProperty(arguments);
            ZygoteConnection.applyInvokeWithSystemProperty(arguments);
            if (Zygote.forkSystemServer(arguments.uid, arguments.gid, arguments.gids, arguments.debugFlags, null, arguments.permittedCapabilities, arguments.effectiveCapabilities) != 0) {
                return null;
            }
            if (hasSecondZygote(str)) {
                waitForSecondaryZygote(str2);
            }
            zygoteServer.closeServerSocket();
            return handleSystemServerProcess(arguments);
        } catch (IllegalArgumentException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void gcAndFinalize() {
        VMRuntime runtime = VMRuntime.getRuntime();
        System.gc();
        runtime.runFinalizationSync();
        System.gc();
    }

    private static String getSystemServerClassLoaderContext(String str) {
        return str == null ? "PCL[]" : c.k("PCL[", str, "]");
    }

    private static Runnable handleSystemServerProcess(ZygoteConnection.Arguments arguments) {
        ClassLoader classLoaderCreatePathClassLoader;
        String[] strArr;
        Os.umask(OsConstants.S_IRWXG | OsConstants.S_IRWXO);
        String str = arguments.niceName;
        if (str != null) {
            Process.setArgV0(str);
        }
        String str2 = Os.getenv("SYSTEMSERVERCLASSPATH");
        if (str2 != null) {
            performSystemServerDexOpt(str2);
            if (SystemProperties.getBoolean("dalvik.vm.profilesystemserver", false) && (Build.IS_USERDEBUG || Build.IS_ENG)) {
                try {
                    File file = new File(Environment.getDataProfilesDePackageDirectory(1000, "system_server"), "primary.prof");
                    file.getParentFile().mkdirs();
                    file.createNewFile();
                    VMRuntime.registerAppInfo(file.getPath(), str2.split(SettingsStringUtil.DELIMITER));
                } catch (Exception e2) {
                    Log.wtf(TAG, "Failed to set up system server profile", e2);
                }
            }
        }
        if (arguments.invokeWith == null) {
            if (str2 != null) {
                classLoaderCreatePathClassLoader = createPathClassLoader(str2, arguments.targetSdkVersion);
                Thread.currentThread().setContextClassLoader(classLoaderCreatePathClassLoader);
            } else {
                classLoaderCreatePathClassLoader = null;
            }
            return zygoteInit(arguments.targetSdkVersion, arguments.remainingArgs, classLoaderCreatePathClassLoader);
        }
        String[] strArr2 = arguments.remainingArgs;
        if (str2 != null) {
            String[] strArr3 = new String[strArr2.length + 2];
            strArr3[0] = "-cp";
            strArr3[1] = str2;
            System.arraycopy(strArr2, 0, strArr3, 2, strArr2.length);
            strArr = strArr3;
        } else {
            strArr = strArr2;
        }
        WrapperInit.execApplication(arguments.invokeWith, arguments.niceName, arguments.targetSdkVersion, VMRuntime.getCurrentInstructionSet(), null, strArr);
        throw new IllegalStateException("Unexpected return from WrapperInit.execApplication");
    }

    private static boolean hasSecondZygote(String str) {
        return !SystemProperties.get("ro.product.cpu.abilist").equals(str);
    }

    public static boolean isPreloadComplete() {
        return sPreloadComplete;
    }

    public static void lazyPreload() {
        Preconditions.checkState(!sPreloadComplete);
        Log.i(TAG, "Lazily preloading resources.");
        preload(new TimingsTraceLog("ZygoteInitTiming_lazy", 16384L));
    }

    public static void main(String[] strArr) {
        Runnable runnableForkSystemServer;
        ZygoteServer zygoteServer = new ZygoteServer();
        ZygoteHooks.startZygoteNoThreadCreation();
        try {
            Os.setpgid(0, 0);
            try {
                String strSubstring = null;
                if (!WifiEnterpriseConfig.ENGINE_ENABLE.equals(SystemProperties.get("sys.boot_completed"))) {
                    MetricsLogger.histogram(null, "boot_zygote_init", (int) SystemClock.elapsedRealtime());
                }
                TimingsTraceLog timingsTraceLog = new TimingsTraceLog(Process.is64Bit() ? "Zygote64Timing" : "Zygote32Timing", 16384L);
                timingsTraceLog.traceBegin("ZygoteInit");
                RuntimeInit.enableDdms();
                String strSubstring2 = Process.ZYGOTE_SOCKET;
                boolean z2 = false;
                boolean z3 = false;
                for (int i2 = 1; i2 < strArr.length; i2++) {
                    if ("start-system-server".equals(strArr[i2])) {
                        z3 = true;
                    } else if ("--enable-lazy-preload".equals(strArr[i2])) {
                        z2 = true;
                    } else if (strArr[i2].startsWith(ABI_LIST_ARG)) {
                        strSubstring = strArr[i2].substring(11);
                    } else {
                        if (!strArr[i2].startsWith(SOCKET_NAME_ARG)) {
                            throw new RuntimeException("Unknown command line argument: " + strArr[i2]);
                        }
                        strSubstring2 = strArr[i2].substring(14);
                    }
                }
                if (strSubstring == null) {
                    throw new RuntimeException("No ABI list supplied.");
                }
                zygoteServer.registerServerSocket(strSubstring2);
                if (z2) {
                    Zygote.resetNicePriority();
                } else {
                    timingsTraceLog.traceBegin("ZygotePreload");
                    EventLog.writeEvent(LOG_BOOT_PROGRESS_PRELOAD_START, SystemClock.uptimeMillis());
                    preload(timingsTraceLog);
                    EventLog.writeEvent(LOG_BOOT_PROGRESS_PRELOAD_END, SystemClock.uptimeMillis());
                    timingsTraceLog.traceEnd();
                }
                timingsTraceLog.traceBegin("PostZygoteInitGC");
                gcAndFinalize();
                timingsTraceLog.traceEnd();
                timingsTraceLog.traceEnd();
                Trace.setTracingEnabled(false, 0);
                Zygote.nativeUnmountStorageOnInit();
                Seccomp.setPolicy();
                ZygoteHooks.stopZygoteNoThreadCreation();
                if (z3 && (runnableForkSystemServer = forkSystemServer(strSubstring, strSubstring2, zygoteServer)) != null) {
                    runnableForkSystemServer.run();
                    zygoteServer.closeServerSocket();
                    return;
                }
                Log.i(TAG, "Accepting command socket connections");
                Runnable runnableRunSelectLoop = zygoteServer.runSelectLoop(strSubstring);
                zygoteServer.closeServerSocket();
                if (runnableRunSelectLoop != null) {
                    runnableRunSelectLoop.run();
                }
            } catch (Throwable th) {
                try {
                    Log.e(TAG, "System zygote died with exception", th);
                    throw th;
                } catch (Throwable th2) {
                    zygoteServer.closeServerSocket();
                    throw th2;
                }
            }
        } catch (ErrnoException e2) {
            throw new RuntimeException("Failed to setpgid(0,0)", e2);
        }
    }

    private static native void nativePreloadAppProcessHALs();

    private static final native void nativeZygoteInit();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.os.IInstalld] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 7 */
    private static void performSystemServerDexOpt(String str) {
        ?? dexOptNeeded;
        String str2;
        String str3;
        String[] strArrSplit = str.split(SettingsStringUtil.DELIMITER);
        ?? AsInterface = IInstalld.Stub.asInterface(ServiceManager.getService("installd"));
        String strVmInstructionSet = VMRuntime.getRuntime().vmInstructionSet();
        int length = strArrSplit.length;
        boolean z2 = false;
        String strEncodeSystemServerClassPath = "";
        int i2 = 0;
        while (i2 < length) {
            String str4 = strArrSplit[i2];
            String str5 = SystemProperties.get("dalvik.vm.systemservercompilerfilter", "speed");
            try {
                dexOptNeeded = DexFile.getDexOptNeeded(str4, strVmInstructionSet, str5, z2, z2);
            } catch (FileNotFoundException unused) {
                i2 = i2;
                z2 = z2;
                length = length;
                strVmInstructionSet = strVmInstructionSet;
                Log.w(TAG, "Missing classpath element for system server: " + str4);
                strEncodeSystemServerClassPath = strEncodeSystemServerClassPath;
            } catch (IOException e2) {
                Log.w(TAG, "Error checking classpath element for system server: " + str4, e2);
                dexOptNeeded = z2;
            }
            if (dexOptNeeded != 0) {
                String str6 = strEncodeSystemServerClassPath;
                try {
                    AsInterface.dexopt(str4, 1000, PhoneConstants.APN_TYPE_ALL, strVmInstructionSet, dexOptNeeded, null, 0, str5, StorageManager.UUID_PRIVATE_INTERNAL, getSystemServerClassLoaderContext(strEncodeSystemServerClassPath), null, false);
                    str2 = str4;
                } catch (RemoteException e3) {
                    e = e3;
                    StringBuilder sb = new StringBuilder("Failed compiling classpath element for system server: ");
                    str2 = str4;
                    sb.append(str2);
                    Log.w(TAG, sb.toString(), e);
                } catch (ServiceSpecificException e4) {
                    e = e4;
                    StringBuilder sb2 = new StringBuilder("Failed compiling classpath element for system server: ");
                    str2 = str4;
                    sb2.append(str2);
                    Log.w(TAG, sb2.toString(), e);
                }
                str3 = str6;
            } else {
                str2 = str4;
                str3 = strEncodeSystemServerClassPath;
            }
            strEncodeSystemServerClassPath = encodeSystemServerClassPath(str3, str2);
            i2++;
            z2 = z2;
            strVmInstructionSet = strVmInstructionSet;
            length = length;
        }
    }

    private static long posixCapabilitiesAsBits(int... iArr) {
        long j2 = 0;
        for (int i2 : iArr) {
            if (i2 < 0 || i2 > OsConstants.CAP_LAST_CAP) {
                throw new IllegalArgumentException(String.valueOf(i2));
            }
            j2 |= 1 << i2;
        }
        return j2;
    }

    public static void preload(TimingsTraceLog timingsTraceLog) {
        Log.d(TAG, "begin preload");
        timingsTraceLog.traceBegin("BeginIcuCachePinning");
        beginIcuCachePinning();
        timingsTraceLog.traceEnd();
        timingsTraceLog.traceBegin("PreloadClasses");
        preloadClasses();
        timingsTraceLog.traceEnd();
        timingsTraceLog.traceBegin("PreloadResources");
        preloadResources();
        timingsTraceLog.traceEnd();
        Trace.traceBegin(16384L, "PreloadAppProcessHALs");
        nativePreloadAppProcessHALs();
        Trace.traceEnd(16384L);
        Trace.traceBegin(16384L, "PreloadOpenGL");
        preloadOpenGL();
        Trace.traceEnd(16384L);
        preloadSharedLibraries();
        preloadTextResources();
        WebViewFactory.prepareWebViewInZygote();
        endIcuCachePinning();
        warmUpJcaProviders();
        Log.d(TAG, "end preload");
        sPreloadComplete = true;
    }

    private static void preloadClasses() {
        boolean z2;
        long j2;
        VMRuntime runtime = VMRuntime.getRuntime();
        try {
            FileInputStream fileInputStream = new FileInputStream(PRELOADED_CLASSES);
            Log.i(TAG, "Preloading classes...");
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i2 = Os.getuid();
            int i3 = Os.getgid();
            boolean z3 = true;
            if (i2 == 0 && i3 == 0) {
                try {
                    Os.setregid(0, Process.NOBODY_UID);
                    Os.setreuid(0, Process.NOBODY_UID);
                    z2 = true;
                } catch (ErrnoException e2) {
                    throw new RuntimeException("Failed to drop root", e2);
                }
            } else {
                z2 = false;
            }
            float targetHeapUtilization = runtime.getTargetHeapUtilization();
            runtime.setTargetHeapUtilization(0.8f);
            long j3 = 16384;
            try {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream), 256);
                    int i4 = 0;
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        String strTrim = line.trim();
                        if (!strTrim.startsWith("#") && !strTrim.equals("")) {
                            Trace.traceBegin(j3, strTrim);
                            try {
                                Class.forName(strTrim, z3, null);
                                i4++;
                                j2 = j3;
                            } catch (ClassNotFoundException unused) {
                                Log.w(TAG, "Class not found for preloading: " + strTrim);
                                j2 = 16384;
                            } catch (UnsatisfiedLinkError e3) {
                                Log.w(TAG, "Problem preloading " + strTrim + ": " + e3);
                                j2 = 16384;
                            } catch (Throwable th) {
                                Log.e(TAG, "Error preloading " + strTrim + ".", th);
                                if (th instanceof Error) {
                                    throw ((Error) th);
                                }
                                if (!(th instanceof RuntimeException)) {
                                    throw new RuntimeException(th);
                                }
                                throw ((RuntimeException) th);
                            }
                            Trace.traceEnd(j2);
                        }
                        z3 = true;
                        j3 = 16384;
                    }
                    Log.i(TAG, "...preloaded " + i4 + " classes in " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms.");
                    IoUtils.closeQuietly(fileInputStream);
                    runtime.setTargetHeapUtilization(targetHeapUtilization);
                    Trace.traceBegin(16384L, "PreloadDexCaches");
                    runtime.preloadDexCaches();
                    Trace.traceEnd(16384L);
                    if (z2) {
                        try {
                            Os.setreuid(0, 0);
                            Os.setregid(0, 0);
                        } catch (ErrnoException e4) {
                            throw new RuntimeException("Failed to restore root", e4);
                        }
                    }
                } catch (IOException e5) {
                    Log.e(TAG, "Error reading /system/etc/preloaded-classes.", e5);
                    IoUtils.closeQuietly(fileInputStream);
                    runtime.setTargetHeapUtilization(targetHeapUtilization);
                    Trace.traceBegin(16384L, "PreloadDexCaches");
                    runtime.preloadDexCaches();
                    Trace.traceEnd(16384L);
                    if (z2) {
                        try {
                            Os.setreuid(0, 0);
                            Os.setregid(0, 0);
                        } catch (ErrnoException e6) {
                            throw new RuntimeException("Failed to restore root", e6);
                        }
                    }
                }
            } catch (Throwable th2) {
                IoUtils.closeQuietly(fileInputStream);
                runtime.setTargetHeapUtilization(targetHeapUtilization);
                Trace.traceBegin(16384L, "PreloadDexCaches");
                runtime.preloadDexCaches();
                Trace.traceEnd(16384L);
                if (z2) {
                    try {
                        Os.setreuid(0, 0);
                        Os.setregid(0, 0);
                    } catch (ErrnoException e7) {
                        throw new RuntimeException("Failed to restore root", e7);
                    }
                }
                throw th2;
            }
        } catch (FileNotFoundException unused2) {
            Log.e(TAG, "Couldn't find /system/etc/preloaded-classes.");
        }
    }

    private static int preloadColorStateLists(TypedArray typedArray) {
        int length = typedArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            int resourceId = typedArray.getResourceId(i2, 0);
            if (resourceId != 0 && mResources.getColorStateList(resourceId, null) == null) {
                throw new IllegalArgumentException("Unable to find preloaded color resource #0x" + Integer.toHexString(resourceId) + " (" + typedArray.getString(i2) + ")");
            }
        }
        return length;
    }

    private static int preloadDrawables(TypedArray typedArray) {
        int length = typedArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            int resourceId = typedArray.getResourceId(i2, 0);
            if (resourceId != 0 && mResources.getDrawable(resourceId, null) == null) {
                throw new IllegalArgumentException("Unable to find preloaded drawable resource #0x" + Integer.toHexString(resourceId) + " (" + typedArray.getString(i2) + ")");
            }
        }
        return length;
    }

    private static void preloadOpenGL() {
        String str = SystemProperties.get(PROPERTY_GFX_DRIVER);
        if (SystemProperties.getBoolean(PROPERTY_DISABLE_OPENGL_PRELOADING, false)) {
            return;
        }
        if (str == null || str.isEmpty()) {
            EGL14.eglGetDisplay(0);
        }
    }

    private static void preloadResources() {
        VMRuntime.getRuntime();
        try {
            Resources system = Resources.getSystem();
            mResources = system;
            system.startPreloading();
            Log.i(TAG, "Preloading resources...");
            long jUptimeMillis = SystemClock.uptimeMillis();
            TypedArray typedArrayObtainTypedArray = mResources.obtainTypedArray(R.array.preloaded_drawables);
            int iPreloadDrawables = preloadDrawables(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
            Log.i(TAG, "...preloaded " + iPreloadDrawables + " resources in " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms.");
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            TypedArray typedArrayObtainTypedArray2 = mResources.obtainTypedArray(R.array.preloaded_color_state_lists);
            int iPreloadColorStateLists = preloadColorStateLists(typedArrayObtainTypedArray2);
            typedArrayObtainTypedArray2.recycle();
            Log.i(TAG, "...preloaded " + iPreloadColorStateLists + " resources in " + (SystemClock.uptimeMillis() - jUptimeMillis2) + "ms.");
            if (mResources.getBoolean(R.bool.config_freeformWindowManagement)) {
                long jUptimeMillis3 = SystemClock.uptimeMillis();
                TypedArray typedArrayObtainTypedArray3 = mResources.obtainTypedArray(R.array.preloaded_freeform_multi_window_drawables);
                int iPreloadDrawables2 = preloadDrawables(typedArrayObtainTypedArray3);
                typedArrayObtainTypedArray3.recycle();
                Log.i(TAG, "...preloaded " + iPreloadDrawables2 + " resource in " + (SystemClock.uptimeMillis() - jUptimeMillis3) + "ms.");
            }
            mResources.finishPreloading();
        } catch (RuntimeException e2) {
            Log.w(TAG, "Failure preloading resources", e2);
        }
    }

    private static void preloadSharedLibraries() {
        Log.i(TAG, "Preloading shared libraries...");
        System.loadLibrary(ZenModeConfig.SYSTEM_AUTHORITY);
        System.loadLibrary("compiler_rt");
        System.loadLibrary("jnigraphics");
    }

    private static void preloadTextResources() {
        Hyphenator.init();
        TextView.preloadFontCache();
    }

    private static void waitForSecondaryZygote(String str) {
        String str2 = Process.ZYGOTE_SOCKET;
        if (Process.ZYGOTE_SOCKET.equals(str)) {
            str2 = Process.SECONDARY_ZYGOTE_SOCKET;
        }
        ZygoteProcess.waitForConnectionToZygote(str2);
    }

    private static void warmUpJcaProviders() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        Trace.traceBegin(16384L, "Starting installation of AndroidKeyStoreProvider");
        AndroidKeyStoreProvider.install();
        Log.i(TAG, "Installed AndroidKeyStoreProvider in " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms.");
        Trace.traceEnd(16384L);
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        Trace.traceBegin(16384L, "Starting warm up of JCA providers");
        for (Provider provider : Security.getProviders()) {
            provider.warmUpServiceProvision();
        }
        Log.i(TAG, "Warmed up JCA providers in " + (SystemClock.uptimeMillis() - jUptimeMillis2) + "ms.");
        Trace.traceEnd(16384L);
    }

    public static final Runnable zygoteInit(int i2, String[] strArr, ClassLoader classLoader) {
        Trace.traceBegin(64L, "ZygoteInit");
        RuntimeInit.redirectLogStreams();
        RuntimeInit.commonInit();
        nativeZygoteInit();
        return RuntimeInit.applicationInit(i2, strArr, classLoader);
    }
}
