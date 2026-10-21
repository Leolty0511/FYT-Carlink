package com.android.internal.os;

import android.accessibilityservice.c;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.ApplicationErrorReport;
import android.ddm.DdmRegister;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.DeadObjectException;
import android.os.Debug;
import android.os.HprofFactory;
import android.os.IBinder;
import android.os.Process;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.Log;
import android.util.Slog;
import com.android.internal.logging.AndroidConfig;
import com.android.server.NetworkManagementSocketTagger;
import dalvik.system.VMRuntime;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.TimeZone;
import java.util.logging.LogManager;
import org.apache.harmony.luni.internal.util.TimezoneGetter;

/* JADX INFO: loaded from: classes2.dex */
public class RuntimeInit {
    static final boolean DEBUG = false;
    private static final boolean PRC_COMPATIBILITY = SystemProperties.getBoolean("ro.sys.prc_compatibility", false);
    static final String TAG = "AndroidRuntime";
    public static String appDataDir = null;
    private static boolean initialized = false;
    private static IBinder mApplicationObject = null;
    private static volatile boolean mCrashing = false;

    public static class Arguments {
        String[] startArgs;
        String startClass;

        public Arguments(String[] strArr) {
            parseArgs(strArr);
        }

        private void parseArgs(String[] strArr) {
            int i2 = 0;
            while (i2 < strArr.length) {
                String str = strArr[i2];
                if (str.equals("--")) {
                    i2++;
                    break;
                } else if (!str.startsWith("--")) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == strArr.length) {
                throw new IllegalArgumentException("Missing classname argument to RuntimeInit!");
            }
            int i3 = i2 + 1;
            this.startClass = strArr[i2];
            String[] strArr2 = new String[strArr.length - i3];
            this.startArgs = strArr2;
            System.arraycopy(strArr, i3, strArr2, 0, strArr2.length);
        }
    }

    public static class KillApplicationHandler implements Thread.UncaughtExceptionHandler {
        private KillApplicationHandler() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                if (RuntimeInit.mCrashing) {
                    Process.killProcess(Process.myPid());
                    System.exit(10);
                } else {
                    boolean unused = RuntimeInit.mCrashing = true;
                    if (ActivityThread.currentActivityThread() != null) {
                        ActivityThread.currentActivityThread().stopProfiling();
                    }
                    ActivityManager.getService().handleApplicationCrash(RuntimeInit.mApplicationObject, new ApplicationErrorReport.ParcelableCrashInfo(th));
                }
            } catch (Throwable th2) {
                try {
                    if (!(th2 instanceof DeadObjectException)) {
                        try {
                            RuntimeInit.Clog_e(RuntimeInit.TAG, "Error reporting crash", th2);
                        } catch (Throwable unused2) {
                        }
                    }
                } finally {
                    Process.killProcess(Process.myPid());
                    System.exit(10);
                }
            }
        }
    }

    public static class LoggingHandler implements Thread.UncaughtExceptionHandler {
        private LoggingHandler() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (RuntimeInit.mCrashing) {
                return;
            }
            if (RuntimeInit.mApplicationObject == null) {
                HprofFactory.getInstance().dumpHProfile("system_process", th);
                RuntimeInit.Clog_e(RuntimeInit.TAG, "*** FATAL EXCEPTION IN SYSTEM PROCESS: " + thread.getName(), th);
                return;
            }
            StringBuilder sb = new StringBuilder("FATAL EXCEPTION: ");
            sb.append(thread.getName());
            sb.append("\n");
            String strCurrentProcessName = ActivityThread.currentProcessName();
            if (strCurrentProcessName != null) {
                sb.append("Process: ");
                sb.append(strCurrentProcessName);
                sb.append(", ");
            }
            sb.append("PID: ");
            sb.append(Process.myPid());
            RuntimeInit.Clog_e(RuntimeInit.TAG, sb.toString(), th);
            if (strCurrentProcessName != null) {
                HprofFactory.getInstance().dumpHProfile(strCurrentProcessName, th);
            } else {
                HprofFactory.getInstance().dumpHProfile("process_name_null", th);
            }
        }
    }

    public static class MethodAndArgsCaller implements Runnable {
        private final String[] mArgs;
        private final Method mMethod;

        public MethodAndArgsCaller(Method method, String[] strArr) {
            this.mMethod = method;
            this.mArgs = strArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mMethod.invoke(null, this.mArgs);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                Throwable cause = e3.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(e3);
                }
                throw ((Error) cause);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int Clog_e(String str, String str2, Throwable th) {
        return Log.printlns(4, 6, str, str2, th);
    }

    public static Runnable applicationInit(int i2, String[] strArr, ClassLoader classLoader) {
        nativeSetExitWithoutCleanup(true);
        VMRuntime.getRuntime().setTargetHeapUtilization(0.75f);
        VMRuntime.getRuntime().setTargetSdkVersion(i2);
        VMRuntime.getRuntime().setPrcCompatibility(PRC_COMPATIBILITY);
        VMRuntime.getRuntime().setPackageDataDir(appDataDir);
        Arguments arguments = new Arguments(strArr);
        Trace.traceEnd(64L);
        return findStaticMain(arguments.startClass, arguments.startArgs, classLoader);
    }

    public static final void commonInit() {
        Thread.setUncaughtExceptionPreHandler(new LoggingHandler());
        Thread.setDefaultUncaughtExceptionHandler(new KillApplicationHandler());
        TimezoneGetter.setInstance(new TimezoneGetter() { // from class: com.android.internal.os.RuntimeInit.1
            public String getId() {
                return SystemProperties.get("persist.sys.timezone");
            }
        });
        TimeZone.setDefault(null);
        LogManager.getLogManager().reset();
        new AndroidConfig();
        System.setProperty("http.agent", getDefaultUserAgent());
        NetworkManagementSocketTagger.install();
        if (SystemProperties.get("ro.kernel.android.tracing").equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
            Slog.i(TAG, "NOTE: emulator trace profiling enabled");
            Debug.enableEmulatorTraceOutput();
        }
        initialized = true;
    }

    public static final void enableDdms() {
        DdmRegister.registerHandlers();
    }

    private static Runnable findStaticMain(String str, String[] strArr, ClassLoader classLoader) {
        try {
            try {
                Method method = Class.forName(str, true, classLoader).getMethod("main", String[].class);
                int modifiers = method.getModifiers();
                if (Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers)) {
                    return new MethodAndArgsCaller(method, strArr);
                }
                throw new RuntimeException(c.j("Main method is not public and static on ", str));
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(c.j("Missing static main on ", str), e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(c.j("Problem getting static main on ", str), e3);
            }
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException(c.j("Missing class when invoking static main ", str), e4);
        }
    }

    public static final IBinder getApplicationObject() {
        return mApplicationObject;
    }

    private static String getDefaultUserAgent() {
        StringBuilder sbQ = c.q(64, "Dalvik/");
        sbQ.append(System.getProperty("java.vm.version"));
        sbQ.append(" (Linux; U; Android ");
        String str = Build.VERSION.RELEASE;
        if (str.length() <= 0) {
            str = "1.0";
        }
        sbQ.append(str);
        if ("REL".equals(Build.VERSION.CODENAME)) {
            String str2 = Build.MODEL;
            if (str2.length() > 0) {
                sbQ.append("; ");
                sbQ.append(str2);
            }
        }
        String str3 = Build.ID;
        if (str3.length() > 0) {
            sbQ.append(" Build/");
            sbQ.append(str3);
        }
        sbQ.append(")");
        return sbQ.toString();
    }

    public static final void main(String[] strArr) {
        enableDdms();
        if (strArr.length == 2 && strArr[1].equals("application")) {
            redirectLogStreams();
        }
        commonInit();
        nativeFinishInit();
    }

    private static final native void nativeFinishInit();

    private static final native void nativeSetExitWithoutCleanup(boolean z2);

    public static void redirectLogStreams() {
        System.out.close();
        System.setOut(new AndroidPrintStream(4, "System.out"));
        System.err.close();
        System.setErr(new AndroidPrintStream(5, "System.err"));
    }

    public static final void setApplicationObject(IBinder iBinder) {
        mApplicationObject = iBinder;
    }

    public static void wtf(String str, Throwable th, boolean z2) {
        try {
            if (ActivityManager.getService().handleApplicationWtf(mApplicationObject, str, z2, new ApplicationErrorReport.ParcelableCrashInfo(th))) {
                Process.killProcess(Process.myPid());
                System.exit(10);
            }
        } catch (Throwable th2) {
            if (th2 instanceof DeadObjectException) {
                return;
            }
            Slog.e(TAG, "Error reporting WTF", th2);
            Slog.e(TAG, "Original WTF:", th);
        }
    }
}
