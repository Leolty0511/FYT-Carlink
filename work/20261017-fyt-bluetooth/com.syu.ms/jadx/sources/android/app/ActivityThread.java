package android.app;

import android.R;
import android.app.backup.BackupAgent;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.Context;
import android.content.IContentProvider;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.AssetManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDebug;
import android.ddm.DdmHandleAppName;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.hardware.display.DisplayManagerGlobal;
import android.net.IConnectivityManager;
import android.net.Proxy;
import android.net.ProxyProperties;
import android.opengl.GLUtils;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Debug;
import android.os.DropBoxManager;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.renderscript.RenderScript;
import android.security.AndroidKeyStoreProvider;
import android.telephony.PhoneNumberUtils;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.util.EventLog;
import android.util.Log;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SuperNotCalledException;
import android.view.HardwareRenderer;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewRootImpl;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.RuntimeInit;
import com.android.org.conscrypt.OpenSSLSocketImpl;
import com.google.android.collect.Lists;
import dalvik.system.CloseGuard;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Pattern;
import libcore.io.DropBox;
import libcore.io.EventLogger;
import libcore.io.IoUtils;
import o.e;
import u.i;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityThread {
    private static final int ACTIVITY_THREAD_CHECKIN_VERSION = 3;
    private static final boolean DEBUG_BACKUP = false;
    public static final boolean DEBUG_BROADCAST = false;
    public static final boolean DEBUG_CONFIGURATION = false;
    private static final boolean DEBUG_MEMORY_TRIM = false;
    public static final boolean DEBUG_MESSAGES = false;
    private static final boolean DEBUG_PROVIDER = false;
    private static final boolean DEBUG_RESULTS = false;
    private static final boolean DEBUG_SERVICE = false;
    private static final String HEAP_COLUMN = "%13s %8s %8s %8s %8s %8s %8s %8s";
    private static final String HEAP_FULL_COLUMN = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s";
    private static final int LOG_ON_PAUSE_CALLED = 30021;
    private static final int LOG_ON_RESUME_CALLED = 30022;
    private static final long MIN_TIME_BETWEEN_GCS = 5000;
    private static final int SQLITE_MEM_RELEASED_EVENT_LOG_TAG = 75003;
    public static final String TAG = "ActivityThread";
    public static final boolean localLOGV = false;
    private static ActivityThread sCurrentActivityThread;
    public static Handler sMainThreadHandler;
    public static IPackageManager sPackageManager;
    public final ApplicationThread mAppThread;
    public AppBindData mBoundApplication;
    public Configuration mCompatConfiguration;
    public Configuration mConfiguration;
    public int mCurDefaultDisplayDpi;
    public boolean mDensityCompatMode;
    public final H mH;
    public Application mInitialApplication;
    public Instrumentation mInstrumentation;
    public Profiler mProfiler;
    private ContextImpl mSystemContext;
    private static final Bitmap.Config THUMBNAIL_FORMAT = Bitmap.Config.RGB_565;
    private static final Pattern PATTERN_SEMICOLON = Pattern.compile(";");
    private static final ThreadLocal<Intent> sCurrentBroadcastIntent = new ThreadLocal<>();
    public final Looper mLooper = Looper.myLooper();
    public final ArrayMap<IBinder, ActivityClientRecord> mActivities = new ArrayMap<>();
    public ActivityClientRecord mNewActivities = null;
    public int mNumVisibleActivities = 0;
    public final ArrayMap<IBinder, Service> mServices = new ArrayMap<>();
    public final ArrayList<Application> mAllApplications = new ArrayList<>();
    public final ArrayMap<String, BackupAgent> mBackupAgents = new ArrayMap<>();
    public String mInstrumentationAppDir = null;
    public String mInstrumentationAppLibraryDir = null;
    public String mInstrumentationAppPackage = null;
    public String mInstrumentedAppDir = null;
    public String mInstrumentedAppLibraryDir = null;
    public boolean mSystemThread = false;
    public boolean mJitEnabled = false;
    public final ArrayMap<String, WeakReference<LoadedApk>> mPackages = new ArrayMap<>();
    public final ArrayMap<String, WeakReference<LoadedApk>> mResourcePackages = new ArrayMap<>();
    public final ArrayList<ActivityClientRecord> mRelaunchingActivities = new ArrayList<>();
    public Configuration mPendingConfiguration = null;
    public final ArrayMap<ProviderKey, ProviderClientRecord> mProviderMap = new ArrayMap<>();
    public final ArrayMap<IBinder, ProviderRefCount> mProviderRefCountMap = new ArrayMap<>();
    public final ArrayMap<IBinder, ProviderClientRecord> mLocalProviders = new ArrayMap<>();
    public final ArrayMap<ComponentName, ProviderClientRecord> mLocalProvidersByName = new ArrayMap<>();
    public final ArrayMap<Activity, ArrayList<OnActivityPausedListener>> mOnPauseListeners = new ArrayMap<>();
    public final GcIdler mGcIdler = new GcIdler();
    public boolean mGcIdlerScheduled = false;
    public Bundle mCoreSettings = null;
    private Configuration mMainThreadConfig = new Configuration();
    private int mThumbnailWidth = -1;
    private int mThumbnailHeight = -1;
    private Bitmap mAvailThumbnailBitmap = null;
    private Canvas mThumbnailCanvas = null;
    private final ResourcesManager mResourcesManager = ResourcesManager.getInstance();

    public static final class ActivityClientRecord {
        public Activity activity;
        public ActivityInfo activityInfo;
        public boolean autoStopProfiler;
        public CompatibilityInfo compatInfo;
        public Configuration createdConfig;
        public int ident;
        public Intent intent;
        public boolean isForward;
        public Activity.NonConfigurationInstances lastNonConfigurationInstances;
        public View mPendingRemoveWindow;
        public WindowManager mPendingRemoveWindowManager;
        public Configuration newConfig;
        public boolean onlyLocalRequest;
        public LoadedApk packageInfo;
        public int pendingConfigChanges;
        public List<Intent> pendingIntents;
        public List<ResultInfo> pendingResults;
        public ParcelFileDescriptor profileFd;
        public String profileFile;
        public boolean startsNotResumed;
        public Bundle state;
        public IBinder token;
        public Window window;
        public Activity parent = null;
        public String embeddedID = null;
        public boolean paused = false;
        public boolean stopped = false;
        public boolean hideForNow = false;
        public ActivityClientRecord nextIdle = null;

        public boolean isPreHoneycomb() {
            Activity activity = this.activity;
            return activity != null && activity.getApplicationInfo().targetSdkVersion < 11;
        }

        public String toString() {
            Intent intent = this.intent;
            ComponentName component = intent != null ? intent.getComponent() : null;
            StringBuilder sb = new StringBuilder();
            sb.append("ActivityRecord{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" token=");
            sb.append(this.token);
            sb.append(" ");
            sb.append(component == null ? "no component name" : component.toShortString());
            sb.append("}");
            return sb.toString();
        }
    }

    public static final class AppBindData {
        public ApplicationInfo appInfo;
        public CompatibilityInfo compatInfo;
        public Configuration config;
        public int debugMode;
        public boolean enableOpenGlTrace;
        public LoadedApk info;
        public boolean initAutoStopProfiler;
        public ParcelFileDescriptor initProfileFd;
        public String initProfileFile;
        public Bundle instrumentationArgs;
        public ComponentName instrumentationName;
        public IUiAutomationConnection instrumentationUiAutomationConnection;
        public IInstrumentationWatcher instrumentationWatcher;
        public boolean persistent;
        public String processName;
        public List<ProviderInfo> providers;
        public boolean restrictedBackupMode;

        public String toString() {
            return "AppBindData{appInfo=" + this.appInfo + "}";
        }
    }

    public static final class BindServiceData {
        public Intent intent;
        public boolean rebind;
        public IBinder token;

        public String toString() {
            return "BindServiceData{token=" + this.token + " intent=" + this.intent + "}";
        }
    }

    public static final class ContextCleanupInfo {
        public ContextImpl context;
        public String what;
        public String who;
    }

    public static final class CreateBackupAgentData {
        public ApplicationInfo appInfo;
        public int backupMode;
        public CompatibilityInfo compatInfo;

        public String toString() {
            return "CreateBackupAgentData{appInfo=" + this.appInfo + " backupAgent=" + this.appInfo.backupAgentName + " mode=" + this.backupMode + "}";
        }
    }

    public static final class CreateServiceData {
        public CompatibilityInfo compatInfo;
        public ServiceInfo info;
        public Intent intent;
        public IBinder token;

        public String toString() {
            return "CreateServiceData{token=" + this.token + " className=" + this.info.name + " packageName=" + this.info.packageName + " intent=" + this.intent + "}";
        }
    }

    public class DropBoxReporter implements DropBox.Reporter {
        private DropBoxManager dropBox;

        public DropBoxReporter() {
            this.dropBox = (DropBoxManager) ActivityThread.this.getSystemContext().getSystemService(Context.DROPBOX_SERVICE);
        }

        public void addData(String str, byte[] bArr, int i2) {
            this.dropBox.addData(str, bArr, i2);
        }

        public void addText(String str, String str2) {
            this.dropBox.addText(str, str2);
        }
    }

    public static final class DumpComponentInfo {
        public String[] args;
        public ParcelFileDescriptor fd;
        public String prefix;
        public IBinder token;
    }

    public static final class DumpHeapData {
        public ParcelFileDescriptor fd;
        public String path;
    }

    public static class EventLoggingReporter implements EventLogger.Reporter {
        private EventLoggingReporter() {
        }

        public void report(int i2, Object... objArr) {
            EventLog.writeEvent(i2, objArr);
        }
    }

    public final class GcIdler implements MessageQueue.IdleHandler {
        public GcIdler() {
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            ActivityThread.this.doGcIfNeeded();
            return false;
        }
    }

    public class H extends Handler {
        public static final int ACTIVITY_CONFIGURATION_CHANGED = 125;
        public static final int BIND_APPLICATION = 110;
        public static final int BIND_SERVICE = 121;
        public static final int CLEAN_UP_CONTEXT = 119;
        public static final int CONFIGURATION_CHANGED = 118;
        public static final int CREATE_BACKUP_AGENT = 128;
        public static final int CREATE_SERVICE = 114;
        public static final int DESTROY_ACTIVITY = 109;
        public static final int DESTROY_BACKUP_AGENT = 129;
        public static final int DISPATCH_PACKAGE_BROADCAST = 133;
        public static final int DUMP_ACTIVITY = 136;
        public static final int DUMP_HEAP = 135;
        public static final int DUMP_PROVIDER = 141;
        public static final int DUMP_SERVICE = 123;
        public static final int ENABLE_JIT = 132;
        public static final int EXIT_APPLICATION = 111;
        public static final int GC_WHEN_IDLE = 120;
        public static final int HIDE_WINDOW = 106;
        public static final int INSTALL_PROVIDER = 145;
        public static final int LAUNCH_ACTIVITY = 100;
        public static final int LOW_MEMORY = 124;
        public static final int NEW_INTENT = 112;
        public static final int PAUSE_ACTIVITY = 101;
        public static final int PAUSE_ACTIVITY_FINISHING = 102;
        public static final int PROFILER_CONTROL = 127;
        public static final int RECEIVER = 113;
        public static final int RELAUNCH_ACTIVITY = 126;
        public static final int REMOVE_PROVIDER = 131;
        public static final int REQUEST_ASSIST_CONTEXT_EXTRAS = 143;
        public static final int REQUEST_THUMBNAIL = 117;
        public static final int RESUME_ACTIVITY = 107;
        public static final int SCHEDULE_CRASH = 134;
        public static final int SEND_RESULT = 108;
        public static final int SERVICE_ARGS = 115;
        public static final int SET_CORE_SETTINGS = 138;
        public static final int SHOW_WINDOW = 105;
        public static final int SLEEPING = 137;
        public static final int STOP_ACTIVITY_HIDE = 104;
        public static final int STOP_ACTIVITY_SHOW = 103;
        public static final int STOP_SERVICE = 116;
        public static final int SUICIDE = 130;
        public static final int TRANSLUCENT_CONVERSION_COMPLETE = 144;
        public static final int TRIM_MEMORY = 140;
        public static final int UNBIND_SERVICE = 122;
        public static final int UNSTABLE_PROVIDER_DIED = 142;
        public static final int UPDATE_PACKAGE_COMPATIBILITY_INFO = 139;

        private H() {
        }

        private void maybeSnapshot() {
            if (ActivityThread.this.mBoundApplication == null || !e.d()) {
                return;
            }
            ActivityThread activityThread = ActivityThread.this;
            String str = activityThread.mBoundApplication.info.mPackageName;
            PackageInfo packageInfo = null;
            try {
                ContextImpl systemContext = activityThread.getSystemContext();
                if (systemContext == null) {
                    Log.e(ActivityThread.TAG, "cannot get a valid context");
                    return;
                }
                PackageManager packageManager = systemContext.getPackageManager();
                if (packageManager == null) {
                    Log.e(ActivityThread.TAG, "cannot get a valid PackageManager");
                } else {
                    packageInfo = packageManager.getPackageInfo(str, 1);
                    e.f(ActivityThread.this.mBoundApplication.processName, packageInfo);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e(ActivityThread.TAG, "cannot get package info for " + str, e2);
            }
        }

        public String codeToString(int i2) {
            return Integer.toString(i2);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 100:
                    Trace.traceBegin(64L, "activityStart");
                    ActivityClientRecord activityClientRecord = (ActivityClientRecord) message.obj;
                    activityClientRecord.packageInfo = ActivityThread.this.getPackageInfoNoCheck(activityClientRecord.activityInfo.applicationInfo, activityClientRecord.compatInfo);
                    ActivityThread.this.handleLaunchActivity(activityClientRecord, null);
                    Trace.traceEnd(64L);
                    return;
                case 101:
                    Trace.traceBegin(64L, "activityPause");
                    ActivityThread.this.handlePauseActivity((IBinder) message.obj, false, message.arg1 != 0, message.arg2);
                    maybeSnapshot();
                    Trace.traceEnd(64L);
                    return;
                case 102:
                    Trace.traceBegin(64L, "activityPause");
                    ActivityThread.this.handlePauseActivity((IBinder) message.obj, true, message.arg1 != 0, message.arg2);
                    Trace.traceEnd(64L);
                    return;
                case 103:
                    Trace.traceBegin(64L, "activityStop");
                    ActivityThread.this.handleStopActivity((IBinder) message.obj, true, message.arg2);
                    Trace.traceEnd(64L);
                    return;
                case 104:
                    Trace.traceBegin(64L, "activityStop");
                    ActivityThread.this.handleStopActivity((IBinder) message.obj, false, message.arg2);
                    Trace.traceEnd(64L);
                    return;
                case 105:
                    Trace.traceBegin(64L, "activityShowWindow");
                    ActivityThread.this.handleWindowVisibility((IBinder) message.obj, true);
                    Trace.traceEnd(64L);
                    return;
                case 106:
                    Trace.traceBegin(64L, "activityHideWindow");
                    ActivityThread.this.handleWindowVisibility((IBinder) message.obj, false);
                    Trace.traceEnd(64L);
                    return;
                case 107:
                    Trace.traceBegin(64L, "activityResume");
                    ActivityThread.this.handleResumeActivity((IBinder) message.obj, true, message.arg1 != 0, true);
                    Trace.traceEnd(64L);
                    return;
                case 108:
                    Trace.traceBegin(64L, "activityDeliverResult");
                    ActivityThread.this.handleSendResult((ResultData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 109:
                    Trace.traceBegin(64L, "activityDestroy");
                    ActivityThread.this.handleDestroyActivity((IBinder) message.obj, message.arg1 != 0, message.arg2, false);
                    Trace.traceEnd(64L);
                    return;
                case 110:
                    Trace.traceBegin(64L, "bindApplication");
                    ActivityThread.this.handleBindApplication((AppBindData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 111:
                    Application application = ActivityThread.this.mInitialApplication;
                    if (application != null) {
                        application.onTerminate();
                    }
                    Looper.myLooper().quit();
                    return;
                case 112:
                    Trace.traceBegin(64L, "activityNewIntent");
                    ActivityThread.this.handleNewIntent((NewIntentData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 113:
                    Trace.traceBegin(64L, "broadcastReceiveComp");
                    ActivityThread.this.handleReceiver((ReceiverData) message.obj);
                    maybeSnapshot();
                    Trace.traceEnd(64L);
                    return;
                case 114:
                    Trace.traceBegin(64L, "serviceCreate");
                    ActivityThread.this.handleCreateService((CreateServiceData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 115:
                    Trace.traceBegin(64L, "serviceStart");
                    ActivityThread.this.handleServiceArgs((ServiceArgsData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 116:
                    Trace.traceBegin(64L, "serviceStop");
                    ActivityThread.this.handleStopService((IBinder) message.obj);
                    maybeSnapshot();
                    Trace.traceEnd(64L);
                    return;
                case 117:
                    Trace.traceBegin(64L, "requestThumbnail");
                    ActivityThread.this.handleRequestThumbnail((IBinder) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 118:
                    Trace.traceBegin(64L, "configChanged");
                    ActivityThread activityThread = ActivityThread.this;
                    Object obj = message.obj;
                    activityThread.mCurDefaultDisplayDpi = ((Configuration) obj).densityDpi;
                    activityThread.handleConfigurationChanged((Configuration) obj, null);
                    Trace.traceEnd(64L);
                    return;
                case 119:
                    ContextCleanupInfo contextCleanupInfo = (ContextCleanupInfo) message.obj;
                    contextCleanupInfo.context.performFinalCleanup(contextCleanupInfo.who, contextCleanupInfo.what);
                    return;
                case 120:
                    ActivityThread.this.scheduleGcIdler();
                    return;
                case 121:
                    Trace.traceBegin(64L, "serviceBind");
                    ActivityThread.this.handleBindService((BindServiceData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 122:
                    Trace.traceBegin(64L, "serviceUnbind");
                    ActivityThread.this.handleUnbindService((BindServiceData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 123:
                    ActivityThread.this.handleDumpService((DumpComponentInfo) message.obj);
                    return;
                case 124:
                    Trace.traceBegin(64L, "lowMemory");
                    ActivityThread.this.handleLowMemory();
                    Trace.traceEnd(64L);
                    return;
                case 125:
                    Trace.traceBegin(64L, "activityConfigChanged");
                    ActivityThread.this.handleActivityConfigurationChanged((IBinder) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 126:
                    Trace.traceBegin(64L, "activityRestart");
                    ActivityThread.this.handleRelaunchActivity((ActivityClientRecord) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 127:
                    ActivityThread.this.handleProfilerControl(message.arg1 != 0, (ProfilerControlData) message.obj, message.arg2);
                    return;
                case 128:
                    Trace.traceBegin(64L, "backupCreateAgent");
                    ActivityThread.this.handleCreateBackupAgent((CreateBackupAgentData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 129:
                    Trace.traceBegin(64L, "backupDestroyAgent");
                    ActivityThread.this.handleDestroyBackupAgent((CreateBackupAgentData) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 130:
                    Process.killProcess(Process.myPid());
                    return;
                case 131:
                    Trace.traceBegin(64L, "providerRemove");
                    ActivityThread.this.completeRemoveProvider((ProviderRefCount) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 132:
                    ActivityThread.this.ensureJitEnabled();
                    return;
                case 133:
                    Trace.traceBegin(64L, "broadcastPackage");
                    ActivityThread.this.handleDispatchPackageBroadcast(message.arg1, (String[]) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 134:
                    throw new RemoteServiceException((String) message.obj);
                case 135:
                    ActivityThread.handleDumpHeap(message.arg1 != 0, (DumpHeapData) message.obj);
                    return;
                case 136:
                    ActivityThread.this.handleDumpActivity((DumpComponentInfo) message.obj);
                    return;
                case 137:
                    Trace.traceBegin(64L, "sleeping");
                    ActivityThread.this.handleSleeping((IBinder) message.obj, message.arg1 != 0);
                    Trace.traceEnd(64L);
                    return;
                case 138:
                    Trace.traceBegin(64L, "setCoreSettings");
                    ActivityThread.this.handleSetCoreSettings((Bundle) message.obj);
                    Trace.traceEnd(64L);
                    return;
                case 139:
                    ActivityThread.this.handleUpdatePackageCompatibilityInfo((UpdateCompatibilityData) message.obj);
                    return;
                case 140:
                    Trace.traceBegin(64L, "trimMemory");
                    ActivityThread.this.handleTrimMemory(message.arg1);
                    Trace.traceEnd(64L);
                    return;
                case 141:
                    ActivityThread.this.handleDumpProvider((DumpComponentInfo) message.obj);
                    return;
                case 142:
                    ActivityThread.this.handleUnstableProviderDied((IBinder) message.obj, false);
                    return;
                case 143:
                    ActivityThread.this.handleRequestAssistContextExtras((RequestAssistContextExtras) message.obj);
                    return;
                case 144:
                    ActivityThread.this.handleTranslucentConversionComplete((IBinder) message.obj, message.arg1 == 1);
                    return;
                case 145:
                    ActivityThread.this.handleInstallProvider((ProviderInfo) message.obj);
                    return;
                default:
                    return;
            }
        }
    }

    public class Idler implements MessageQueue.IdleHandler {
        private Idler() {
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0015  */
        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            boolean z2;
            ActivityThread activityThread = ActivityThread.this;
            ActivityClientRecord activityClientRecord = activityThread.mNewActivities;
            if (activityThread.mBoundApplication != null) {
                Profiler profiler = activityThread.mProfiler;
                if (profiler.profileFd == null || !profiler.autoStopProfiler) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            if (activityClientRecord != null) {
                activityThread.mNewActivities = null;
                IActivityManager iActivityManager = ActivityManagerNative.getDefault();
                while (true) {
                    Activity activity = activityClientRecord.activity;
                    if (activity != null && !activity.mFinished) {
                        try {
                            iActivityManager.activityIdle(activityClientRecord.token, activityClientRecord.createdConfig, z2);
                            activityClientRecord.createdConfig = null;
                        } catch (RemoteException unused) {
                        }
                    }
                    ActivityClientRecord activityClientRecord2 = activityClientRecord.nextIdle;
                    activityClientRecord.nextIdle = null;
                    if (activityClientRecord2 == null) {
                        break;
                    }
                    activityClientRecord = activityClientRecord2;
                }
            }
            if (z2) {
                ActivityThread.this.mProfiler.stopProfiling();
            }
            ActivityThread.this.ensureJitEnabled();
            return false;
        }
    }

    public static final class NewIntentData {
        public List<Intent> intents;
        public IBinder token;

        public String toString() {
            return "NewIntentData{intents=" + this.intents + " token=" + this.token + "}";
        }
    }

    public static final class Profiler {
        public boolean autoStopProfiler;
        public boolean handlingProfiling;
        public ParcelFileDescriptor profileFd;
        public String profileFile;
        public boolean profiling;

        public void setProfiler(String str, ParcelFileDescriptor parcelFileDescriptor) {
            if (this.profiling) {
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
                return;
            }
            ParcelFileDescriptor parcelFileDescriptor2 = this.profileFd;
            if (parcelFileDescriptor2 != null) {
                try {
                    parcelFileDescriptor2.close();
                } catch (IOException unused2) {
                }
            }
            this.profileFile = str;
            this.profileFd = parcelFileDescriptor;
        }

        public void startProfiling() {
            ParcelFileDescriptor parcelFileDescriptor = this.profileFd;
            if (parcelFileDescriptor == null || this.profiling) {
                return;
            }
            try {
                Debug.startMethodTracing(this.profileFile, parcelFileDescriptor.getFileDescriptor(), 8388608, 0);
                this.profiling = true;
            } catch (RuntimeException unused) {
                Slog.w(ActivityThread.TAG, "Profiling failed on path " + this.profileFile);
                try {
                    this.profileFd.close();
                    this.profileFd = null;
                } catch (IOException e2) {
                    Slog.w(ActivityThread.TAG, "Failure closing profile fd", e2);
                }
            }
        }

        public void stopProfiling() {
            if (this.profiling) {
                this.profiling = false;
                Debug.stopMethodTracing();
                ParcelFileDescriptor parcelFileDescriptor = this.profileFd;
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                    } catch (IOException unused) {
                    }
                }
                this.profileFd = null;
                this.profileFile = null;
            }
        }
    }

    public static final class ProfilerControlData {
        public ParcelFileDescriptor fd;
        public String path;
    }

    public final class ProviderClientRecord {
        public final IActivityManager.ContentProviderHolder mHolder;
        public final ContentProvider mLocalProvider;
        public final String[] mNames;
        public final IContentProvider mProvider;

        public ProviderClientRecord(String[] strArr, IContentProvider iContentProvider, ContentProvider contentProvider, IActivityManager.ContentProviderHolder contentProviderHolder) {
            this.mNames = strArr;
            this.mProvider = iContentProvider;
            this.mLocalProvider = contentProvider;
            this.mHolder = contentProviderHolder;
        }
    }

    public static final class ProviderKey {
        public final String authority;
        public final int userId;

        public ProviderKey(String str, int i2) {
            this.authority = str;
            this.userId = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ProviderKey)) {
                return false;
            }
            ProviderKey providerKey = (ProviderKey) obj;
            return i.a(this.authority, providerKey.authority) && this.userId == providerKey.userId;
        }

        public int hashCode() {
            String str = this.authority;
            return (str != null ? str.hashCode() : 0) ^ this.userId;
        }
    }

    public static final class ProviderRefCount {
        public final ProviderClientRecord client;
        public final IActivityManager.ContentProviderHolder holder;
        public boolean removePending;
        public int stableCount;
        public int unstableCount;

        public ProviderRefCount(IActivityManager.ContentProviderHolder contentProviderHolder, ProviderClientRecord providerClientRecord, int i2, int i3) {
            this.holder = contentProviderHolder;
            this.client = providerClientRecord;
            this.stableCount = i2;
            this.unstableCount = i3;
        }
    }

    public static final class ReceiverData extends BroadcastReceiver.PendingResult {
        public CompatibilityInfo compatInfo;
        public ActivityInfo info;
        public Intent intent;

        public ReceiverData(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, IBinder iBinder, int i3) {
            super(i2, str, bundle, 0, z2, z3, iBinder, i3);
            this.intent = intent;
        }

        public String toString() {
            return "ReceiverData{intent=" + this.intent + " packageName=" + this.info.packageName + " resultCode=" + getResultCode() + " resultData=" + getResultData() + " resultExtras=" + getResultExtras(false) + "}";
        }
    }

    public static final class RequestAssistContextExtras {
        public IBinder activityToken;
        public IBinder requestToken;
        public int requestType;
    }

    public static final class ResultData {
        public List<ResultInfo> results;
        public IBinder token;

        public String toString() {
            return "ResultData{token=" + this.token + " results" + this.results + "}";
        }
    }

    public static final class ServiceArgsData {
        public Intent args;
        public int flags;
        public int startId;
        public boolean taskRemoved;
        public IBinder token;

        public String toString() {
            return "ServiceArgsData{token=" + this.token + " startId=" + this.startId + " args=" + this.args + "}";
        }
    }

    public static class StopInfo implements Runnable {
        public ActivityClientRecord activity;
        public CharSequence description;
        public Bundle state;
        public Bitmap thumbnail;

        private StopInfo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ActivityManagerNative.getDefault().activityStopped(this.activity.token, this.state, this.thumbnail, this.description);
            } catch (RemoteException unused) {
            }
        }
    }

    public static final class UpdateCompatibilityData {
        public CompatibilityInfo info;
        public String pkg;
    }

    public ActivityThread() {
        this.mAppThread = new ApplicationThread();
        this.mH = new H();
    }

    private void attach(boolean z2) {
        sCurrentActivityThread = this;
        this.mSystemThread = z2;
        if (z2) {
            DdmHandleAppName.setAppName("system_process", UserHandle.myUserId());
            try {
                this.mInstrumentation = new Instrumentation();
                Application applicationNewApplication = Instrumentation.newApplication(Application.class, ContextImpl.createAppContext(this, getSystemContext().mPackageInfo));
                this.mAllApplications.add(applicationNewApplication);
                this.mInitialApplication = applicationNewApplication;
                applicationNewApplication.onCreate();
            } catch (Exception e2) {
                throw new RuntimeException("Unable to instantiate Application():" + e2.toString(), e2);
            }
        } else {
            ViewRootImpl.addFirstDrawHandler(new Runnable() { // from class: android.app.ActivityThread.1
                @Override // java.lang.Runnable
                public void run() {
                    ActivityThread.this.ensureJitEnabled();
                }
            });
            DdmHandleAppName.setAppName("<pre-initialized>", UserHandle.myUserId());
            RuntimeInit.b(this.mAppThread.asBinder());
            try {
                ActivityManagerNative.getDefault().attachApplication(this.mAppThread);
            } catch (RemoteException unused) {
            }
        }
        DropBox.setReporter(new DropBoxReporter());
        ViewRootImpl.addConfigCallback(new ComponentCallbacks2() { // from class: android.app.ActivityThread.2
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
                Configuration configuration2;
                synchronized (ActivityThread.this.mResourcesManager) {
                    if (ActivityThread.this.mResourcesManager.applyConfigurationToResourcesLocked(configuration, null) && ((configuration2 = ActivityThread.this.mPendingConfiguration) == null || configuration2.isOtherSeqNewer(configuration))) {
                        ActivityThread activityThread = ActivityThread.this;
                        activityThread.mPendingConfiguration = configuration;
                        activityThread.sendMessage(118, configuration);
                    }
                }
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int i2) {
            }
        });
    }

    public static final void cleanUpPendingRemoveWindows(ActivityClientRecord activityClientRecord) {
        View view = activityClientRecord.mPendingRemoveWindow;
        if (view != null) {
            activityClientRecord.mPendingRemoveWindowManager.removeViewImmediate(view);
            IBinder windowToken = activityClientRecord.mPendingRemoveWindow.getWindowToken();
            if (windowToken != null) {
                WindowManagerGlobal.getInstance().closeAll(windowToken, activityClientRecord.activity.getClass().getName(), "Activity");
            }
        }
        activityClientRecord.mPendingRemoveWindow = null;
        activityClientRecord.mPendingRemoveWindowManager = null;
    }

    private Context createBaseContextForActivity(ActivityClientRecord activityClientRecord, Activity activity) {
        ContextImpl contextImplCreateActivityContext = ContextImpl.createActivityContext(this, activityClientRecord.packageInfo, activityClientRecord.token);
        contextImplCreateActivityContext.setOuterContext(activity);
        String str = SystemProperties.get("debug.second-display.pkg");
        if (str == null || str.isEmpty() || !activityClientRecord.packageInfo.mPackageName.contains(str)) {
            return contextImplCreateActivityContext;
        }
        DisplayManagerGlobal displayManagerGlobal = DisplayManagerGlobal.getInstance();
        for (int i2 : displayManagerGlobal.getDisplayIds()) {
            if (i2 != 0) {
                return contextImplCreateActivityContext.createDisplayContext(displayManagerGlobal.getRealDisplay(i2, activityClientRecord.token));
            }
        }
        return contextImplCreateActivityContext;
    }

    private Bitmap createThumbnailBitmap(ActivityClientRecord activityClientRecord) {
        int dimensionPixelSize;
        Bitmap bitmapCreateBitmap = this.mAvailThumbnailBitmap;
        if (bitmapCreateBitmap == null) {
            try {
                int dimensionPixelSize2 = this.mThumbnailWidth;
                if (dimensionPixelSize2 < 0) {
                    Resources resources = activityClientRecord.activity.getResources();
                    dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.thumbnail_height);
                    this.mThumbnailHeight = dimensionPixelSize;
                    dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.thumbnail_width);
                    this.mThumbnailWidth = dimensionPixelSize2;
                } else {
                    dimensionPixelSize = this.mThumbnailHeight;
                }
                if (dimensionPixelSize2 > 0 && dimensionPixelSize > 0) {
                    bitmapCreateBitmap = Bitmap.createBitmap(activityClientRecord.activity.getResources().getDisplayMetrics(), dimensionPixelSize2, dimensionPixelSize, THUMBNAIL_FORMAT);
                    bitmapCreateBitmap.eraseColor(0);
                }
            } catch (Exception e2) {
                if (this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                    return null;
                }
                throw new RuntimeException("Unable to create thumbnail of " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
            }
        }
        if (bitmapCreateBitmap != null) {
            Canvas canvas = this.mThumbnailCanvas;
            if (canvas == null) {
                canvas = new Canvas();
                this.mThumbnailCanvas = canvas;
            }
            canvas.setBitmap(bitmapCreateBitmap);
            if (!activityClientRecord.activity.onCreateThumbnail(bitmapCreateBitmap, canvas)) {
                this.mAvailThumbnailBitmap = bitmapCreateBitmap;
                bitmapCreateBitmap = null;
            }
            canvas.setBitmap(null);
        }
        return bitmapCreateBitmap;
    }

    public static ActivityThread currentActivityThread() {
        return sCurrentActivityThread;
    }

    public static Application currentApplication() {
        ActivityThread activityThreadCurrentActivityThread = currentActivityThread();
        if (activityThreadCurrentActivityThread != null) {
            return activityThreadCurrentActivityThread.mInitialApplication;
        }
        return null;
    }

    public static String currentPackageName() {
        AppBindData appBindData;
        ActivityThread activityThreadCurrentActivityThread = currentActivityThread();
        if (activityThreadCurrentActivityThread == null || (appBindData = activityThreadCurrentActivityThread.mBoundApplication) == null) {
            return null;
        }
        return appBindData.appInfo.packageName;
    }

    public static String currentProcessName() {
        AppBindData appBindData;
        ActivityThread activityThreadCurrentActivityThread = currentActivityThread();
        if (activityThreadCurrentActivityThread == null || (appBindData = activityThreadCurrentActivityThread.mBoundApplication) == null) {
            return null;
        }
        return appBindData.processName;
    }

    private void deliverNewIntents(ActivityClientRecord activityClientRecord, List<Intent> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Intent intent = list.get(i2);
            intent.setExtrasClassLoader(activityClientRecord.activity.getClassLoader());
            activityClientRecord.activity.mFragments.noteStateNotSaved();
            this.mInstrumentation.callActivityOnNewIntent(activityClientRecord.activity, intent);
        }
    }

    private void deliverResults(ActivityClientRecord activityClientRecord, List<ResultInfo> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ResultInfo resultInfo = list.get(i2);
            try {
                Intent intent = resultInfo.mData;
                if (intent != null) {
                    intent.setExtrasClassLoader(activityClientRecord.activity.getClassLoader());
                }
                activityClientRecord.activity.dispatchActivityResult(resultInfo.mResultWho, resultInfo.mRequestCode, resultInfo.mResultCode, resultInfo.mData);
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                    throw new RuntimeException("Failure delivering result " + resultInfo + " to activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void dumpGraphicsInfo(FileDescriptor fileDescriptor);

    public static void dumpMemInfoTable(PrintWriter printWriter, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4, int i2, String str, long j2, long j3, long j4, long j5, long j6, long j7) {
        String str2;
        Debug.MemoryInfo memoryInfo2 = memoryInfo;
        if (!z2) {
            if (z3) {
                printRow(printWriter, HEAP_FULL_COLUMN, ProxyProperties.LOCAL_EXCL_LIST, "Pss", "Pss", "Shared", "Private", "Shared", "Private", "Swapped", "Heap", "Heap", "Heap");
                printRow(printWriter, HEAP_FULL_COLUMN, ProxyProperties.LOCAL_EXCL_LIST, "Total", "Clean", "Dirty", "Dirty", "Clean", "Clean", "Dirty", "Size", "Alloc", "Free");
                printRow(printWriter, HEAP_FULL_COLUMN, ProxyProperties.LOCAL_EXCL_LIST, "------", "------", "------", "------", "------", "------", "------", "------", "------", "------");
                printRow(printWriter, HEAP_FULL_COLUMN, "Native Heap", Integer.valueOf(memoryInfo2.nativePss), Integer.valueOf(memoryInfo2.nativeSwappablePss), Integer.valueOf(memoryInfo2.nativeSharedDirty), Integer.valueOf(memoryInfo2.nativePrivateDirty), Integer.valueOf(memoryInfo2.nativeSharedClean), Integer.valueOf(memoryInfo2.nativePrivateClean), Integer.valueOf(memoryInfo2.nativeSwappedOut), Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(j4));
                printRow(printWriter, HEAP_FULL_COLUMN, "Dalvik Heap", Integer.valueOf(memoryInfo2.dalvikPss), Integer.valueOf(memoryInfo2.dalvikSwappablePss), Integer.valueOf(memoryInfo2.dalvikSharedDirty), Integer.valueOf(memoryInfo2.dalvikPrivateDirty), Integer.valueOf(memoryInfo2.dalvikSharedClean), Integer.valueOf(memoryInfo2.dalvikPrivateClean), Integer.valueOf(memoryInfo2.dalvikSwappedOut), Long.valueOf(j5), Long.valueOf(j6), Long.valueOf(j7));
            } else {
                printRow(printWriter, HEAP_COLUMN, ProxyProperties.LOCAL_EXCL_LIST, "Pss", "Private", "Private", "Swapped", "Heap", "Heap", "Heap");
                printRow(printWriter, HEAP_COLUMN, ProxyProperties.LOCAL_EXCL_LIST, "Total", "Dirty", "Clean", "Dirty", "Size", "Alloc", "Free");
                printRow(printWriter, HEAP_COLUMN, ProxyProperties.LOCAL_EXCL_LIST, "------", "------", "------", "------", "------", "------", "------", "------");
                printRow(printWriter, HEAP_COLUMN, "Native Heap", Integer.valueOf(memoryInfo2.nativePss), Integer.valueOf(memoryInfo2.nativePrivateDirty), Integer.valueOf(memoryInfo2.nativePrivateClean), Integer.valueOf(memoryInfo2.nativeSwappedOut), Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(j4));
                printRow(printWriter, HEAP_COLUMN, "Dalvik Heap", Integer.valueOf(memoryInfo2.dalvikPss), Integer.valueOf(memoryInfo2.dalvikPrivateDirty), Integer.valueOf(memoryInfo2.dalvikPrivateClean), Integer.valueOf(memoryInfo2.dalvikSwappedOut), Long.valueOf(j5), Long.valueOf(j6), Long.valueOf(j7));
            }
            int i3 = memoryInfo2.otherPss;
            int i4 = memoryInfo2.otherSwappablePss;
            int i5 = memoryInfo2.otherSharedDirty;
            int i6 = memoryInfo2.otherPrivateDirty;
            int i7 = memoryInfo2.otherSharedClean;
            int i8 = memoryInfo2.otherPrivateClean;
            int i9 = 0;
            int i10 = memoryInfo2.otherSwappedOut;
            int i11 = i3;
            int i12 = i6;
            int i13 = i5;
            int i14 = i4;
            while (i9 < 16) {
                int otherPss = memoryInfo2.getOtherPss(i9);
                int otherSwappablePss = memoryInfo2.getOtherSwappablePss(i9);
                int otherSharedDirty = memoryInfo2.getOtherSharedDirty(i9);
                int otherPrivateDirty = memoryInfo2.getOtherPrivateDirty(i9);
                int otherSharedClean = memoryInfo2.getOtherSharedClean(i9);
                int otherPrivateClean = memoryInfo2.getOtherPrivateClean(i9);
                int otherSwappedOut = memoryInfo2.getOtherSwappedOut(i9);
                if (otherPss != 0 || otherSharedDirty != 0 || otherPrivateDirty != 0 || otherSharedClean != 0 || otherPrivateClean != 0 || otherSwappedOut != 0) {
                    if (z3) {
                        printRow(printWriter, HEAP_FULL_COLUMN, Debug.MemoryInfo.getOtherLabel(i9), Integer.valueOf(otherPss), Integer.valueOf(otherSwappablePss), Integer.valueOf(otherSharedDirty), Integer.valueOf(otherPrivateDirty), Integer.valueOf(otherSharedClean), Integer.valueOf(otherPrivateClean), Integer.valueOf(otherSwappedOut), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                    } else {
                        printRow(printWriter, HEAP_COLUMN, Debug.MemoryInfo.getOtherLabel(i9), Integer.valueOf(otherPss), Integer.valueOf(otherPrivateDirty), Integer.valueOf(otherPrivateClean), Integer.valueOf(otherSwappedOut), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                    }
                    i11 -= otherPss;
                    i14 -= otherSwappablePss;
                    i13 -= otherSharedDirty;
                    i12 -= otherPrivateDirty;
                    i7 -= otherSharedClean;
                    i8 -= otherPrivateClean;
                    i10 -= otherSwappedOut;
                }
                i9++;
                memoryInfo2 = memoryInfo;
            }
            if (z3) {
                printRow(printWriter, HEAP_FULL_COLUMN, "Unknown", Integer.valueOf(i11), Integer.valueOf(i14), Integer.valueOf(i13), Integer.valueOf(i12), Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i10), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                str2 = HEAP_COLUMN;
                printRow(printWriter, HEAP_FULL_COLUMN, "TOTAL", Integer.valueOf(memoryInfo.getTotalPss()), Integer.valueOf(memoryInfo.getTotalSwappablePss()), Integer.valueOf(memoryInfo.getTotalSharedDirty()), Integer.valueOf(memoryInfo.getTotalPrivateDirty()), Integer.valueOf(memoryInfo.getTotalSharedClean()), Integer.valueOf(memoryInfo.getTotalPrivateClean()), Integer.valueOf(memoryInfo.getTotalSwappedOut()), Long.valueOf(j2 + j5), Long.valueOf(j3 + j6), Long.valueOf(j4 + j7));
            } else {
                str2 = HEAP_COLUMN;
                printRow(printWriter, str2, "Unknown", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i8), Integer.valueOf(i10), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                printRow(printWriter, str2, "TOTAL", Integer.valueOf(memoryInfo.getTotalPss()), Integer.valueOf(memoryInfo.getTotalPrivateDirty()), Integer.valueOf(memoryInfo.getTotalPrivateClean()), Integer.valueOf(memoryInfo.getTotalSwappedOut()), Long.valueOf(j2 + j5), Long.valueOf(j3 + j6), Long.valueOf(j4 + j7));
            }
            if (z4) {
                printWriter.println(" ");
                printWriter.println(" Dalvik Details");
                for (int i15 = 16; i15 < 21; i15++) {
                    int otherPss2 = memoryInfo.getOtherPss(i15);
                    int otherSwappablePss2 = memoryInfo.getOtherSwappablePss(i15);
                    int otherSharedDirty2 = memoryInfo.getOtherSharedDirty(i15);
                    int otherPrivateDirty2 = memoryInfo.getOtherPrivateDirty(i15);
                    int otherSharedClean2 = memoryInfo.getOtherSharedClean(i15);
                    int otherPrivateClean2 = memoryInfo.getOtherPrivateClean(i15);
                    int otherSwappedOut2 = memoryInfo.getOtherSwappedOut(i15);
                    if (otherPss2 != 0 || otherSharedDirty2 != 0 || otherPrivateDirty2 != 0 || otherSharedClean2 != 0 || otherPrivateClean2 != 0) {
                        if (z3) {
                            printRow(printWriter, HEAP_FULL_COLUMN, Debug.MemoryInfo.getOtherLabel(i15), Integer.valueOf(otherPss2), Integer.valueOf(otherSwappablePss2), Integer.valueOf(otherSharedDirty2), Integer.valueOf(otherPrivateDirty2), Integer.valueOf(otherSharedClean2), Integer.valueOf(otherPrivateClean2), Integer.valueOf(otherSwappedOut2), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                        } else {
                            printRow(printWriter, str2, Debug.MemoryInfo.getOtherLabel(i15), Integer.valueOf(otherPss2), Integer.valueOf(otherPrivateDirty2), Integer.valueOf(otherPrivateClean2), Integer.valueOf(otherSwappedOut2), ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST, ProxyProperties.LOCAL_EXCL_LIST);
                        }
                    }
                }
                return;
            }
            return;
        }
        printWriter.print(3);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(i2);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(str);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(j2);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(j5);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print("N/A,");
        printWriter.print(j2 + j5);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(j3);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(j6);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print("N/A,");
        printWriter.print(j3 + j6);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(j4);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(j7);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print("N/A,");
        printWriter.print(j4 + j7);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.nativePss);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.dalvikPss);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.otherPss);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo.getTotalPss());
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.nativeSwappablePss);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.dalvikSwappablePss);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.otherSwappablePss);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo.getTotalSwappablePss());
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.nativeSharedDirty);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.dalvikSharedDirty);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.otherSharedDirty);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo.getTotalSharedDirty());
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.nativeSharedClean);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.dalvikSharedClean);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.otherSharedClean);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo.getTotalSharedClean());
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.nativePrivateDirty);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.dalvikPrivateDirty);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.otherPrivateDirty);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo.getTotalPrivateDirty());
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.nativePrivateClean);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.dalvikPrivateClean);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo2.otherPrivateClean);
        printWriter.print(PhoneNumberUtils.PAUSE);
        printWriter.print(memoryInfo.getTotalPrivateClean());
        printWriter.print(PhoneNumberUtils.PAUSE);
        for (int i16 = 0; i16 < 16; i16++) {
            printWriter.print(Debug.MemoryInfo.getOtherLabel(i16));
            printWriter.print(PhoneNumberUtils.PAUSE);
            printWriter.print(memoryInfo2.getOtherPss(i16));
            printWriter.print(PhoneNumberUtils.PAUSE);
            printWriter.print(memoryInfo2.getOtherSwappablePss(i16));
            printWriter.print(PhoneNumberUtils.PAUSE);
            printWriter.print(memoryInfo2.getOtherSharedDirty(i16));
            printWriter.print(PhoneNumberUtils.PAUSE);
            printWriter.print(memoryInfo2.getOtherSharedClean(i16));
            printWriter.print(PhoneNumberUtils.PAUSE);
            printWriter.print(memoryInfo2.getOtherPrivateDirty(i16));
            printWriter.print(PhoneNumberUtils.PAUSE);
            printWriter.print(memoryInfo2.getOtherPrivateClean(i16));
            printWriter.print(PhoneNumberUtils.PAUSE);
        }
    }

    public static void freeTextLayoutCachesIfNeeded(int i2) {
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                Canvas.freeTextLayoutCaches();
            }
        }
    }

    public static Intent getIntentBeingBroadcast() {
        return sCurrentBroadcastIntent.get();
    }

    public static IPackageManager getPackageManager() {
        IPackageManager iPackageManager = sPackageManager;
        if (iPackageManager != null) {
            return iPackageManager;
        }
        IPackageManager iPackageManagerAsInterface = IPackageManager.Stub.asInterface(ServiceManager.getService("package"));
        sPackageManager = iPackageManagerAsInterface;
        return iPackageManagerAsInterface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBindApplication(AppBindData appBindData) {
        InstrumentationInfo instrumentationInfo;
        List<ProviderInfo> list;
        this.mBoundApplication = appBindData;
        this.mConfiguration = new Configuration(appBindData.config);
        this.mCompatConfiguration = new Configuration(appBindData.config);
        Profiler profiler = new Profiler();
        this.mProfiler = profiler;
        profiler.profileFile = appBindData.initProfileFile;
        profiler.profileFd = appBindData.initProfileFd;
        profiler.autoStopProfiler = appBindData.initAutoStopProfiler;
        Process.setArgV0(appBindData.processName);
        DdmHandleAppName.setAppName(appBindData.processName, UserHandle.myUserId());
        if (appBindData.persistent && !ActivityManager.isHighEndGfx()) {
            HardwareRenderer.disable(false);
        }
        Profiler profiler2 = this.mProfiler;
        if (profiler2.profileFd != null) {
            profiler2.startProfiling();
        }
        if (appBindData.appInfo.targetSdkVersion <= 12) {
            AsyncTask.setDefaultExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
        }
        TimeZone.setDefault(null);
        Locale.setDefault(appBindData.config.locale);
        this.mResourcesManager.applyConfigurationToResourcesLocked(appBindData.config, appBindData.compatInfo);
        int i2 = appBindData.config.densityDpi;
        this.mCurDefaultDisplayDpi = i2;
        applyCompatConfiguration(i2);
        appBindData.info = getPackageInfoNoCheck(appBindData.appInfo, appBindData.compatInfo);
        if ((appBindData.appInfo.flags & 8192) == 0) {
            this.mDensityCompatMode = true;
            Bitmap.setDefaultDensity(160);
        }
        updateDefaultDensity();
        ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this, appBindData.info);
        if (!Process.isIsolated()) {
            File cacheDir = contextImplCreateAppContext.getCacheDir();
            if (cacheDir != null) {
                System.setProperty("java.io.tmpdir", cacheDir.getAbsolutePath());
                setupGraphicsSupport(appBindData.info, cacheDir);
            } else {
                Log.e(TAG, "Unable to setupGraphicsSupport due to missing cache directory");
            }
        }
        if ((appBindData.appInfo.flags & 129) != 0) {
            StrictMode.conditionallyEnableDebugLogging();
        }
        if (appBindData.appInfo.targetSdkVersion > 9) {
            StrictMode.enableDeathOnNetwork();
        }
        if (appBindData.debugMode != 0) {
            Debug.changeDebugPort(8100);
            if (appBindData.debugMode == 2) {
                Slog.w(TAG, "Application " + appBindData.info.getPackageName() + " is waiting for the debugger on port 8100...");
                IActivityManager iActivityManager = ActivityManagerNative.getDefault();
                try {
                    iActivityManager.showWaitingForDebugger(this.mAppThread, true);
                } catch (RemoteException unused) {
                }
                Debug.waitForDebugger();
                try {
                    iActivityManager.showWaitingForDebugger(this.mAppThread, false);
                } catch (RemoteException unused2) {
                }
            } else {
                Slog.w(TAG, "Application " + appBindData.info.getPackageName() + " can be debugged on port 8100...");
            }
        }
        if (appBindData.enableOpenGlTrace) {
            GLUtils.setTracingLevel(1);
        }
        Trace.setAppTracingAllowed((appBindData.appInfo.flags & 2) != 0);
        IBinder service = ServiceManager.getService(Context.CONNECTIVITY_SERVICE);
        if (service != null) {
            try {
                Proxy.setHttpProxySystemProperty(IConnectivityManager.Stub.asInterface(service).getProxy());
            } catch (RemoteException unused3) {
            }
        }
        if (appBindData.instrumentationName != null) {
            try {
                instrumentationInfo = contextImplCreateAppContext.getPackageManager().getInstrumentationInfo(appBindData.instrumentationName, 0);
            } catch (PackageManager.NameNotFoundException unused4) {
                instrumentationInfo = null;
            }
            if (instrumentationInfo == null) {
                throw new RuntimeException("Unable to find instrumentation info for: " + appBindData.instrumentationName);
            }
            this.mInstrumentationAppDir = instrumentationInfo.sourceDir;
            this.mInstrumentationAppLibraryDir = instrumentationInfo.nativeLibraryDir;
            this.mInstrumentationAppPackage = instrumentationInfo.packageName;
            this.mInstrumentedAppDir = appBindData.info.getAppDir();
            this.mInstrumentedAppLibraryDir = appBindData.info.getLibDir();
            ApplicationInfo applicationInfo = new ApplicationInfo();
            applicationInfo.packageName = instrumentationInfo.packageName;
            applicationInfo.sourceDir = instrumentationInfo.sourceDir;
            applicationInfo.publicSourceDir = instrumentationInfo.publicSourceDir;
            applicationInfo.dataDir = instrumentationInfo.dataDir;
            applicationInfo.nativeLibraryDir = instrumentationInfo.nativeLibraryDir;
            ContextImpl contextImplCreateAppContext2 = ContextImpl.createAppContext(this, getPackageInfo(applicationInfo, appBindData.compatInfo, contextImplCreateAppContext.getClassLoader(), false, true));
            try {
                Instrumentation instrumentation = (Instrumentation) contextImplCreateAppContext2.getClassLoader().loadClass(appBindData.instrumentationName.getClassName()).newInstance();
                this.mInstrumentation = instrumentation;
                instrumentation.init(this, contextImplCreateAppContext2, contextImplCreateAppContext, new ComponentName(instrumentationInfo.packageName, instrumentationInfo.name), appBindData.instrumentationWatcher, appBindData.instrumentationUiAutomationConnection);
                Profiler profiler3 = this.mProfiler;
                if (profiler3.profileFile != null && !instrumentationInfo.handleProfiling && profiler3.profileFd == null) {
                    profiler3.handlingProfiling = true;
                    File file = new File(this.mProfiler.profileFile);
                    file.getParentFile().mkdirs();
                    Debug.startMethodTracing(file.toString(), 8388608);
                }
            } catch (Exception e2) {
                throw new RuntimeException("Unable to instantiate instrumentation " + appBindData.instrumentationName + ": " + e2.toString(), e2);
            }
        } else {
            this.mInstrumentation = new Instrumentation();
        }
        if ((appBindData.appInfo.flags & 1048576) != 0) {
            VMRuntime.getRuntime().clearGrowthLimit();
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            Application applicationMakeApplication = appBindData.info.makeApplication(appBindData.restrictedBackupMode, null);
            this.mInitialApplication = applicationMakeApplication;
            if (!appBindData.restrictedBackupMode && (list = appBindData.providers) != null) {
                installContentProviders(applicationMakeApplication, list);
                this.mH.sendEmptyMessageDelayed(132, 10000L);
            }
            try {
                this.mInstrumentation.onCreate(appBindData.instrumentationArgs);
                try {
                    this.mInstrumentation.callApplicationOnCreate(applicationMakeApplication);
                } catch (Exception e3) {
                    if (!this.mInstrumentation.onException(applicationMakeApplication, e3)) {
                        throw new RuntimeException("Unable to create application " + applicationMakeApplication.getClass().getName() + ": " + e3.toString(), e3);
                    }
                }
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            } catch (Exception e4) {
                throw new RuntimeException("Exception thrown in onCreate() of " + appBindData.instrumentationName + ": " + e4.toString(), e4);
            }
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBindService(BindServiceData bindServiceData) {
        Service service = this.mServices.get(bindServiceData.token);
        if (service != null) {
            try {
                bindServiceData.intent.setExtrasClassLoader(service.getClassLoader());
                try {
                    if (bindServiceData.rebind) {
                        service.onRebind(bindServiceData.intent);
                        ActivityManagerNative.getDefault().serviceDoneExecuting(bindServiceData.token, 0, 0, 0);
                    } else {
                        ActivityManagerNative.getDefault().publishService(bindServiceData.token, bindServiceData.intent, service.onBind(bindServiceData.intent));
                    }
                    ensureJitEnabled();
                } catch (RemoteException unused) {
                }
            } catch (Exception e2) {
                if (this.mInstrumentation.onException(service, e2)) {
                    return;
                }
                throw new RuntimeException("Unable to bind to service " + service + " with " + bindServiceData.intent + ": " + e2.toString(), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void handleCreateBackupAgent(CreateBackupAgentData createBackupAgentData) {
        int i2;
        try {
            if (getPackageManager().getPackageInfo(createBackupAgentData.appInfo.packageName, 0, UserHandle.myUserId()).applicationInfo.uid != Process.myUid()) {
                Slog.w(TAG, "Asked to instantiate non-matching package " + createBackupAgentData.appInfo.packageName);
                return;
            }
            unscheduleGcIdler();
            LoadedApk packageInfoNoCheck = getPackageInfoNoCheck(createBackupAgentData.appInfo, createBackupAgentData.compatInfo);
            String str = packageInfoNoCheck.mPackageName;
            if (str == null) {
                Slog.d(TAG, "Asked to create backup agent for nonexistent package");
                return;
            }
            if (this.mBackupAgents.get(str) != null) {
                Slog.d(TAG, "BackupAgent   for " + str + " already exists");
                return;
            }
            String str2 = createBackupAgentData.appInfo.backupAgentName;
            if (str2 == null && ((i2 = createBackupAgentData.backupMode) == 1 || i2 == 3)) {
                str2 = "android.app.backup.FullBackupAgent";
            }
            IBinder iBinderOnBind = null;
            try {
                try {
                    BackupAgent backupAgent = (BackupAgent) packageInfoNoCheck.getClassLoader().loadClass(str2).newInstance();
                    ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this, packageInfoNoCheck);
                    contextImplCreateAppContext.setOuterContext(backupAgent);
                    backupAgent.attach(contextImplCreateAppContext);
                    backupAgent.onCreate();
                    iBinderOnBind = backupAgent.onBind();
                    this.mBackupAgents.put(str, backupAgent);
                } catch (Exception e2) {
                    throw new RuntimeException("Unable to create BackupAgent " + str2 + ": " + e2.toString(), e2);
                }
            } catch (Exception e3) {
                Slog.e(TAG, "Agent threw during creation: " + e3);
                int i3 = createBackupAgentData.backupMode;
                if (i3 != 2 && i3 != 3) {
                    throw e3;
                }
            }
            try {
                ActivityManagerNative.getDefault().backupAgentCreated(str, iBinderOnBind);
            } catch (RemoteException unused) {
            }
        } catch (RemoteException e4) {
            Slog.e(TAG, "Can't reach package manager", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateService(CreateServiceData createServiceData) {
        unscheduleGcIdler();
        LoadedApk packageInfoNoCheck = getPackageInfoNoCheck(createServiceData.info.applicationInfo, createServiceData.compatInfo);
        Service service = null;
        try {
            service = (Service) packageInfoNoCheck.getClassLoader().loadClass(createServiceData.info.name).newInstance();
        } catch (Exception e2) {
            if (!this.mInstrumentation.onException(null, e2)) {
                throw new RuntimeException("Unable to instantiate service " + createServiceData.info.name + ": " + e2.toString(), e2);
            }
        }
        try {
            ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this, packageInfoNoCheck);
            contextImplCreateAppContext.setOuterContext(service);
            service.attach(contextImplCreateAppContext, this, createServiceData.info.name, createServiceData.token, packageInfoNoCheck.makeApplication(false, this.mInstrumentation), ActivityManagerNative.getDefault());
            service.onCreate();
            this.mServices.put(createServiceData.token, service);
            try {
                ActivityManagerNative.getDefault().serviceDoneExecuting(createServiceData.token, 0, 0, 0);
            } catch (RemoteException unused) {
            }
        } catch (Exception e3) {
            if (this.mInstrumentation.onException(service, e3)) {
                return;
            }
            throw new RuntimeException("Unable to create service " + createServiceData.info.name + ": " + e3.toString(), e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDestroyActivity(IBinder iBinder, boolean z2, int i2, boolean z3) {
        ActivityClientRecord activityClientRecordPerformDestroyActivity = performDestroyActivity(iBinder, z2, i2, z3);
        if (activityClientRecordPerformDestroyActivity != null) {
            cleanUpPendingRemoveWindows(activityClientRecordPerformDestroyActivity);
            WindowManager windowManager = activityClientRecordPerformDestroyActivity.activity.getWindowManager();
            Activity activity = activityClientRecordPerformDestroyActivity.activity;
            View view = activity.mDecor;
            if (view != null) {
                if (activity.mVisibleFromServer) {
                    this.mNumVisibleActivities--;
                }
                IBinder windowToken = view.getWindowToken();
                if (activityClientRecordPerformDestroyActivity.activity.mWindowAdded) {
                    if (activityClientRecordPerformDestroyActivity.onlyLocalRequest) {
                        activityClientRecordPerformDestroyActivity.mPendingRemoveWindow = view;
                        activityClientRecordPerformDestroyActivity.mPendingRemoveWindowManager = windowManager;
                    } else {
                        windowManager.removeViewImmediate(view);
                    }
                }
                if (windowToken != null && activityClientRecordPerformDestroyActivity.mPendingRemoveWindow == null) {
                    WindowManagerGlobal.getInstance().closeAll(windowToken, activityClientRecordPerformDestroyActivity.activity.getClass().getName(), "Activity");
                }
                activityClientRecordPerformDestroyActivity.activity.mDecor = null;
            }
            if (activityClientRecordPerformDestroyActivity.mPendingRemoveWindow == null) {
                WindowManagerGlobal.getInstance().closeAll(iBinder, activityClientRecordPerformDestroyActivity.activity.getClass().getName(), "Activity");
            }
            Context baseContext = activityClientRecordPerformDestroyActivity.activity.getBaseContext();
            if (baseContext instanceof ContextImpl) {
                ((ContextImpl) baseContext).scheduleFinalCleanup(activityClientRecordPerformDestroyActivity.activity.getClass().getName(), "Activity");
            }
        }
        if (z2) {
            try {
                ActivityManagerNative.getDefault().activityDestroyed(iBinder);
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDestroyBackupAgent(CreateBackupAgentData createBackupAgentData) {
        String str = getPackageInfoNoCheck(createBackupAgentData.appInfo, createBackupAgentData.compatInfo).mPackageName;
        BackupAgent backupAgent = this.mBackupAgents.get(str);
        if (backupAgent == null) {
            Slog.w(TAG, "Attempt to destroy unknown backup agent " + createBackupAgentData);
            return;
        }
        try {
            backupAgent.onDestroy();
        } catch (Exception e2) {
            Slog.w(TAG, "Exception thrown in onDestroy by backup agent of " + createBackupAgentData.appInfo);
            e2.printStackTrace();
        }
        this.mBackupAgents.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpActivity(DumpComponentInfo dumpComponentInfo) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            ActivityClientRecord activityClientRecord = this.mActivities.get(dumpComponentInfo.token);
            if (activityClientRecord != null && activityClientRecord.activity != null) {
                u.e eVar = new u.e(new FileOutputStream(dumpComponentInfo.fd.getFileDescriptor()));
                activityClientRecord.activity.dump(dumpComponentInfo.prefix, dumpComponentInfo.fd.getFileDescriptor(), eVar, dumpComponentInfo.args);
                eVar.flush();
            }
        } finally {
            IoUtils.closeQuietly(dumpComponentInfo.fd);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
    }

    public static final void handleDumpHeap(boolean z2, DumpHeapData dumpHeapData) {
        try {
            try {
                if (!z2) {
                    Debug.dumpNativeHeap(dumpHeapData.fd.getFileDescriptor());
                    return;
                }
                try {
                    Debug.dumpHprofData(dumpHeapData.path, dumpHeapData.fd.getFileDescriptor());
                    dumpHeapData.fd.close();
                } catch (IOException unused) {
                    Slog.w(TAG, "Managed heap dump failed on path " + dumpHeapData.path + " -- can the process access this path?");
                    dumpHeapData.fd.close();
                }
            } catch (IOException e2) {
                Slog.w(TAG, "Failure closing profile fd", e2);
            }
        } catch (Throwable th) {
            try {
                dumpHeapData.fd.close();
            } catch (IOException e3) {
                Slog.w(TAG, "Failure closing profile fd", e3);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpProvider(DumpComponentInfo dumpComponentInfo) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            ProviderClientRecord providerClientRecord = this.mLocalProviders.get(dumpComponentInfo.token);
            if (providerClientRecord != null && providerClientRecord.mLocalProvider != null) {
                u.e eVar = new u.e(new FileOutputStream(dumpComponentInfo.fd.getFileDescriptor()));
                providerClientRecord.mLocalProvider.dump(dumpComponentInfo.fd.getFileDescriptor(), eVar, dumpComponentInfo.args);
                eVar.flush();
            }
        } finally {
            IoUtils.closeQuietly(dumpComponentInfo.fd);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpService(DumpComponentInfo dumpComponentInfo) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            Service service = this.mServices.get(dumpComponentInfo.token);
            if (service != null) {
                u.e eVar = new u.e(new FileOutputStream(dumpComponentInfo.fd.getFileDescriptor()));
                service.dump(dumpComponentInfo.fd.getFileDescriptor(), eVar, dumpComponentInfo.args);
                eVar.flush();
            }
        } finally {
            IoUtils.closeQuietly(dumpComponentInfo.fd);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLaunchActivity(ActivityClientRecord activityClientRecord, Intent intent) {
        unscheduleGcIdler();
        ParcelFileDescriptor parcelFileDescriptor = activityClientRecord.profileFd;
        if (parcelFileDescriptor != null) {
            this.mProfiler.setProfiler(activityClientRecord.profileFile, parcelFileDescriptor);
            this.mProfiler.startProfiling();
            this.mProfiler.autoStopProfiler = activityClientRecord.autoStopProfiler;
        }
        handleConfigurationChanged(null, null);
        if (performLaunchActivity(activityClientRecord, intent) == null) {
            try {
                ActivityManagerNative.getDefault().finishActivity(activityClientRecord.token, 0, null);
                return;
            } catch (RemoteException unused) {
                return;
            }
        }
        activityClientRecord.createdConfig = new Configuration(this.mConfiguration);
        Bundle bundle = activityClientRecord.state;
        handleResumeActivity(activityClientRecord.token, false, activityClientRecord.isForward, (activityClientRecord.activity.mFinished || activityClientRecord.startsNotResumed) ? false : true);
        Activity activity = activityClientRecord.activity;
        if (activity.mFinished || !activityClientRecord.startsNotResumed) {
            return;
        }
        try {
            activity.mCalled = false;
            this.mInstrumentation.callActivityOnPause(activity);
            if (activityClientRecord.isPreHoneycomb()) {
                activityClientRecord.state = bundle;
            }
            if (activityClientRecord.activity.mCalled) {
                activityClientRecord.paused = true;
                return;
            }
            throw new SuperNotCalledException("Activity " + activityClientRecord.intent.getComponent().toShortString() + " did not call through to super.onPause()");
        } catch (SuperNotCalledException e2) {
            throw e2;
        } catch (Exception e3) {
            if (!this.mInstrumentation.onException(activityClientRecord.activity, e3)) {
                throw new RuntimeException("Unable to pause activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e3.toString(), e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewIntent(NewIntentData newIntentData) {
        performNewIntents(newIntentData.token, newIntentData.intents);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePauseActivity(IBinder iBinder, boolean z2, boolean z3, int i2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            if (z3) {
                performUserLeavingActivity(activityClientRecord);
            }
            Activity activity = activityClientRecord.activity;
            activity.mConfigChangeFlags = i2 | activity.mConfigChangeFlags;
            performPauseActivity(iBinder, z2, activityClientRecord.isPreHoneycomb());
            if (activityClientRecord.isPreHoneycomb()) {
                QueuedWork.waitToFinish();
            }
            try {
                ActivityManagerNative.getDefault().activityPaused(iBinder);
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReceiver(ReceiverData receiverData) {
        unscheduleGcIdler();
        String className = receiverData.intent.getComponent().getClassName();
        LoadedApk packageInfoNoCheck = getPackageInfoNoCheck(receiverData.info.applicationInfo, receiverData.compatInfo);
        IActivityManager iActivityManager = ActivityManagerNative.getDefault();
        try {
            ClassLoader classLoader = packageInfoNoCheck.getClassLoader();
            receiverData.intent.setExtrasClassLoader(classLoader);
            receiverData.setExtrasClassLoader(classLoader);
            BroadcastReceiver broadcastReceiver = (BroadcastReceiver) classLoader.loadClass(className).newInstance();
            try {
                try {
                    ContextImpl contextImpl = (ContextImpl) packageInfoNoCheck.makeApplication(false, this.mInstrumentation).getBaseContext();
                    ThreadLocal<Intent> threadLocal = sCurrentBroadcastIntent;
                    threadLocal.set(receiverData.intent);
                    broadcastReceiver.setPendingResult(receiverData);
                    broadcastReceiver.onReceive(contextImpl.getReceiverRestrictedContext(), receiverData.intent);
                    threadLocal.set(null);
                } catch (Exception e2) {
                    receiverData.sendFinished(iActivityManager);
                    if (!this.mInstrumentation.onException(broadcastReceiver, e2)) {
                        throw new RuntimeException("Unable to start receiver " + className + ": " + e2.toString(), e2);
                    }
                    sCurrentBroadcastIntent.set(null);
                }
                if (broadcastReceiver.getPendingResult() != null) {
                    receiverData.finish();
                }
            } catch (Throwable th) {
                sCurrentBroadcastIntent.set(null);
                throw th;
            }
        } catch (Exception e3) {
            receiverData.sendFinished(iActivityManager);
            throw new RuntimeException("Unable to instantiate receiver " + className + ": " + e3.toString(), e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRelaunchActivity(ActivityClientRecord activityClientRecord) {
        Configuration configuration;
        unscheduleGcIdler();
        synchronized (this.mResourcesManager) {
            int size = this.mRelaunchingActivities.size();
            IBinder iBinder = activityClientRecord.token;
            int i2 = 0;
            int i3 = 0;
            ActivityClientRecord activityClientRecord2 = null;
            while (i2 < size) {
                ActivityClientRecord activityClientRecord3 = this.mRelaunchingActivities.get(i2);
                if (activityClientRecord3.token == iBinder) {
                    i3 |= activityClientRecord3.pendingConfigChanges;
                    this.mRelaunchingActivities.remove(i2);
                    i2--;
                    size--;
                    activityClientRecord2 = activityClientRecord3;
                }
                i2++;
            }
            if (activityClientRecord2 == null) {
                return;
            }
            Configuration configuration2 = this.mPendingConfiguration;
            if (configuration2 != null) {
                this.mPendingConfiguration = null;
            } else {
                configuration2 = null;
            }
            Configuration configuration3 = activityClientRecord2.createdConfig;
            if (configuration3 != null && (((configuration = this.mConfiguration) == null || (configuration3.isOtherSeqNewer(configuration) && this.mConfiguration.diff(activityClientRecord2.createdConfig) != 0)) && (configuration2 == null || activityClientRecord2.createdConfig.isOtherSeqNewer(configuration2)))) {
                configuration2 = activityClientRecord2.createdConfig;
            }
            if (configuration2 != null) {
                this.mCurDefaultDisplayDpi = configuration2.densityDpi;
                updateDefaultDensity();
                handleConfigurationChanged(configuration2, null);
            }
            ActivityClientRecord activityClientRecord4 = this.mActivities.get(activityClientRecord2.token);
            if (activityClientRecord4 == null) {
                return;
            }
            Activity activity = activityClientRecord4.activity;
            activity.mConfigChangeFlags |= i3;
            activityClientRecord4.onlyLocalRequest = activityClientRecord2.onlyLocalRequest;
            Intent intent = activity.mIntent;
            activity.mChangingConfigurations = true;
            if (!activityClientRecord4.paused) {
                performPauseActivity(activityClientRecord4.token, false, activityClientRecord4.isPreHoneycomb());
            }
            if (activityClientRecord4.state == null && !activityClientRecord4.stopped && !activityClientRecord4.isPreHoneycomb()) {
                Bundle bundle = new Bundle();
                activityClientRecord4.state = bundle;
                bundle.setAllowFds(false);
                this.mInstrumentation.callActivityOnSaveInstanceState(activityClientRecord4.activity, activityClientRecord4.state);
            }
            handleDestroyActivity(activityClientRecord4.token, false, i3, true);
            activityClientRecord4.activity = null;
            activityClientRecord4.window = null;
            activityClientRecord4.hideForNow = false;
            activityClientRecord4.nextIdle = null;
            List<ResultInfo> list = activityClientRecord2.pendingResults;
            if (list != null) {
                List<ResultInfo> list2 = activityClientRecord4.pendingResults;
                if (list2 == null) {
                    activityClientRecord4.pendingResults = list;
                } else {
                    list2.addAll(list);
                }
            }
            List<Intent> list3 = activityClientRecord2.pendingIntents;
            if (list3 != null) {
                List<Intent> list4 = activityClientRecord4.pendingIntents;
                if (list4 == null) {
                    activityClientRecord4.pendingIntents = list3;
                } else {
                    list4.addAll(list3);
                }
            }
            activityClientRecord4.startsNotResumed = activityClientRecord2.startsNotResumed;
            handleLaunchActivity(activityClientRecord4, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRequestThumbnail(IBinder iBinder) {
        CharSequence charSequenceOnCreateDescription;
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        Bitmap bitmapCreateThumbnailBitmap = createThumbnailBitmap(activityClientRecord);
        try {
            charSequenceOnCreateDescription = activityClientRecord.activity.onCreateDescription();
        } catch (Exception e2) {
            if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                throw new RuntimeException("Unable to create description of activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
            }
            charSequenceOnCreateDescription = null;
        }
        try {
            ActivityManagerNative.getDefault().reportThumbnail(iBinder, bitmapCreateThumbnailBitmap, charSequenceOnCreateDescription);
        } catch (RemoteException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSendResult(ResultData resultData) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(resultData.token);
        if (activityClientRecord != null) {
            boolean z2 = !activityClientRecord.paused;
            Activity activity = activityClientRecord.activity;
            if (!activity.mFinished && activity.mDecor != null && activityClientRecord.hideForNow && z2) {
                updateVisibility(activityClientRecord, true);
            }
            if (z2) {
                try {
                    Activity activity2 = activityClientRecord.activity;
                    activity2.mCalled = false;
                    activity2.mTemporaryPause = true;
                    this.mInstrumentation.callActivityOnPause(activity2);
                    if (!activityClientRecord.activity.mCalled) {
                        throw new SuperNotCalledException("Activity " + activityClientRecord.intent.getComponent().toShortString() + " did not call through to super.onPause()");
                    }
                } catch (SuperNotCalledException e2) {
                    throw e2;
                } catch (Exception e3) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e3)) {
                        throw new RuntimeException("Unable to pause activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e3.toString(), e3);
                    }
                }
            }
            deliverResults(activityClientRecord, resultData.results);
            if (z2) {
                activityClientRecord.activity.performResume();
                activityClientRecord.activity.mTemporaryPause = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleServiceArgs(ServiceArgsData serviceArgsData) {
        int iOnStartCommand;
        Service service = this.mServices.get(serviceArgsData.token);
        if (service != null) {
            try {
                Intent intent = serviceArgsData.args;
                if (intent != null) {
                    intent.setExtrasClassLoader(service.getClassLoader());
                }
                if (serviceArgsData.taskRemoved) {
                    service.onTaskRemoved(serviceArgsData.args);
                    iOnStartCommand = 1000;
                } else {
                    iOnStartCommand = service.onStartCommand(serviceArgsData.args, serviceArgsData.flags, serviceArgsData.startId);
                }
                QueuedWork.waitToFinish();
                try {
                    ActivityManagerNative.getDefault().serviceDoneExecuting(serviceArgsData.token, 1, serviceArgsData.startId, iOnStartCommand);
                } catch (RemoteException unused) {
                }
                ensureJitEnabled();
            } catch (Exception e2) {
                if (this.mInstrumentation.onException(service, e2)) {
                    return;
                }
                throw new RuntimeException("Unable to start service " + service + " with " + serviceArgsData.args + ": " + e2.toString(), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetCoreSettings(Bundle bundle) {
        synchronized (this.mResourcesManager) {
            this.mCoreSettings = bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSleeping(IBinder iBinder, boolean z2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord == null) {
            Log.w(TAG, "handleSleeping: no activity for token " + iBinder);
            return;
        }
        if (!z2) {
            if (activityClientRecord.stopped) {
                Activity activity = activityClientRecord.activity;
                if (activity.mVisibleFromServer) {
                    activity.performRestart();
                    activityClientRecord.stopped = false;
                    return;
                }
                return;
            }
            return;
        }
        if (!activityClientRecord.stopped && !activityClientRecord.isPreHoneycomb()) {
            try {
                activityClientRecord.activity.performStop();
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                    throw new RuntimeException("Unable to stop activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                }
            }
            activityClientRecord.stopped = true;
        }
        if (!activityClientRecord.isPreHoneycomb()) {
            QueuedWork.waitToFinish();
        }
        try {
            ActivityManagerNative.getDefault().activitySlept(activityClientRecord.token);
        } catch (RemoteException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopActivity(IBinder iBinder, boolean z2, int i2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        Activity activity = activityClientRecord.activity;
        activity.mConfigChangeFlags = i2 | activity.mConfigChangeFlags;
        StopInfo stopInfo = new StopInfo();
        performStopActivityInner(activityClientRecord, stopInfo, z2, true);
        updateVisibility(activityClientRecord, z2);
        if (!activityClientRecord.isPreHoneycomb()) {
            QueuedWork.waitToFinish();
        }
        stopInfo.activity = activityClientRecord;
        stopInfo.state = activityClientRecord.state;
        this.mH.post(stopInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopService(IBinder iBinder) {
        Service serviceRemove = this.mServices.remove(iBinder);
        if (serviceRemove != null) {
            try {
                serviceRemove.onDestroy();
                Context baseContext = serviceRemove.getBaseContext();
                if (baseContext instanceof ContextImpl) {
                    ((ContextImpl) baseContext).scheduleFinalCleanup(serviceRemove.getClassName(), "Service");
                }
                QueuedWork.waitToFinish();
                try {
                    ActivityManagerNative.getDefault().serviceDoneExecuting(iBinder, 0, 0, 0);
                } catch (RemoteException unused) {
                }
            } catch (Exception e2) {
                if (this.mInstrumentation.onException(serviceRemove, e2)) {
                    return;
                }
                throw new RuntimeException("Unable to stop service " + serviceRemove + ": " + e2.toString(), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnbindService(BindServiceData bindServiceData) {
        Service service = this.mServices.get(bindServiceData.token);
        if (service != null) {
            try {
                bindServiceData.intent.setExtrasClassLoader(service.getClassLoader());
                boolean zOnUnbind = service.onUnbind(bindServiceData.intent);
                try {
                    if (zOnUnbind) {
                        ActivityManagerNative.getDefault().unbindFinished(bindServiceData.token, bindServiceData.intent, zOnUnbind);
                    } else {
                        ActivityManagerNative.getDefault().serviceDoneExecuting(bindServiceData.token, 0, 0, 0);
                    }
                } catch (RemoteException unused) {
                }
            } catch (Exception e2) {
                if (this.mInstrumentation.onException(service, e2)) {
                    return;
                }
                throw new RuntimeException("Unable to unbind to service " + service + " with " + bindServiceData.intent + ": " + e2.toString(), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUpdatePackageCompatibilityInfo(UpdateCompatibilityData updateCompatibilityData) {
        LoadedApk loadedApkPeekPackageInfo = peekPackageInfo(updateCompatibilityData.pkg, false);
        if (loadedApkPeekPackageInfo != null) {
            loadedApkPeekPackageInfo.setCompatibilityInfo(updateCompatibilityData.info);
        }
        LoadedApk loadedApkPeekPackageInfo2 = peekPackageInfo(updateCompatibilityData.pkg, true);
        if (loadedApkPeekPackageInfo2 != null) {
            loadedApkPeekPackageInfo2.setCompatibilityInfo(updateCompatibilityData.info);
        }
        handleConfigurationChanged(this.mConfiguration, updateCompatibilityData.info);
        WindowManagerGlobal.getInstance().reportNewConfiguration(this.mConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWindowVisibility(IBinder iBinder, boolean z2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord == null) {
            Log.w(TAG, "handleWindowVisibility: no activity for token " + iBinder);
            return;
        }
        if (!z2 && !activityClientRecord.stopped) {
            performStopActivityInner(activityClientRecord, null, z2, false);
        } else if (z2 && activityClientRecord.stopped) {
            unscheduleGcIdler();
            activityClientRecord.activity.performRestart();
            activityClientRecord.stopped = false;
        }
        if (activityClientRecord.activity.mDecor != null) {
            updateVisibility(activityClientRecord, z2);
        }
    }

    private final void incProviderRefLocked(ProviderRefCount providerRefCount, boolean z2) {
        int i2 = 0;
        try {
            if (z2) {
                int i3 = providerRefCount.stableCount + 1;
                providerRefCount.stableCount = i3;
                if (i3 != 1) {
                    return;
                }
                if (providerRefCount.removePending) {
                    providerRefCount.removePending = false;
                    this.mH.removeMessages(131, providerRefCount);
                    i2 = -1;
                }
                ActivityManagerNative.getDefault().refContentProvider(providerRefCount.holder.connection, 1, i2);
            } else {
                int i4 = providerRefCount.unstableCount + 1;
                providerRefCount.unstableCount = i4;
                if (i4 != 1) {
                    return;
                }
                if (providerRefCount.removePending) {
                    providerRefCount.removePending = false;
                    this.mH.removeMessages(131, providerRefCount);
                    return;
                }
                ActivityManagerNative.getDefault().refContentProvider(providerRefCount.holder.connection, 0, 1);
            }
        } catch (RemoteException unused) {
        }
    }

    private void installContentProviders(Context context, List<ProviderInfo> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<ProviderInfo> it = list.iterator();
        while (it.hasNext()) {
            IActivityManager.ContentProviderHolder contentProviderHolderInstallProvider = installProvider(context, null, it.next(), false, true, true);
            if (contentProviderHolderInstallProvider != null) {
                contentProviderHolderInstallProvider.noReleaseNeeded = true;
                arrayList.add(contentProviderHolderInstallProvider);
            }
        }
        try {
            ActivityManagerNative.getDefault().publishContentProviders(getApplicationThread(), arrayList);
        } catch (RemoteException unused) {
        }
    }

    private IActivityManager.ContentProviderHolder installProvider(Context context, IActivityManager.ContentProviderHolder contentProviderHolder, ProviderInfo providerInfo, boolean z2, boolean z3, boolean z4) {
        IContentProvider iContentProvider;
        IActivityManager.ContentProviderHolder contentProviderHolder2;
        ContentProvider contentProvider = null;
        if (contentProviderHolder == null || (iContentProvider = contentProviderHolder.provider) == null) {
            if (z2) {
                Slog.d(TAG, "Loading provider " + providerInfo.authority + ": " + providerInfo.name);
            }
            ApplicationInfo applicationInfo = providerInfo.applicationInfo;
            if (!context.getPackageName().equals(applicationInfo.packageName)) {
                Application application = this.mInitialApplication;
                if (application == null || !application.getPackageName().equals(applicationInfo.packageName)) {
                    try {
                        context = context.createPackageContext(applicationInfo.packageName, 1);
                    } catch (PackageManager.NameNotFoundException unused) {
                        context = null;
                    }
                } else {
                    context = this.mInitialApplication;
                }
            }
            if (context == null) {
                Slog.w(TAG, "Unable to get context for package " + applicationInfo.packageName + " while loading content provider " + providerInfo.name);
                return null;
            }
            try {
                ContentProvider contentProvider2 = (ContentProvider) context.getClassLoader().loadClass(providerInfo.name).newInstance();
                iContentProvider = contentProvider2.getIContentProvider();
                if (iContentProvider == null) {
                    Slog.e(TAG, "Failed to instantiate class " + providerInfo.name + " from sourceDir " + providerInfo.applicationInfo.sourceDir);
                    return null;
                }
                contentProvider2.attachInfo(context, providerInfo);
                contentProvider = contentProvider2;
            } catch (Exception e2) {
                if (this.mInstrumentation.onException(null, e2)) {
                    return null;
                }
                throw new RuntimeException("Unable to get provider " + providerInfo.name + ": " + e2.toString(), e2);
            }
        }
        synchronized (this.mProviderMap) {
            IBinder iBinderAsBinder = iContentProvider.asBinder();
            if (contentProvider != null) {
                ComponentName componentName = new ComponentName(providerInfo.packageName, providerInfo.name);
                ProviderClientRecord providerClientRecordInstallProviderAuthoritiesLocked = this.mLocalProvidersByName.get(componentName);
                if (providerClientRecordInstallProviderAuthoritiesLocked == null) {
                    IActivityManager.ContentProviderHolder contentProviderHolder3 = new IActivityManager.ContentProviderHolder(providerInfo);
                    contentProviderHolder3.provider = iContentProvider;
                    contentProviderHolder3.noReleaseNeeded = true;
                    providerClientRecordInstallProviderAuthoritiesLocked = installProviderAuthoritiesLocked(iContentProvider, contentProvider, contentProviderHolder3);
                    this.mLocalProviders.put(iBinderAsBinder, providerClientRecordInstallProviderAuthoritiesLocked);
                    this.mLocalProvidersByName.put(componentName, providerClientRecordInstallProviderAuthoritiesLocked);
                }
                contentProviderHolder2 = providerClientRecordInstallProviderAuthoritiesLocked.mHolder;
            } else {
                ProviderRefCount providerRefCount = this.mProviderRefCountMap.get(iBinderAsBinder);
                if (providerRefCount == null) {
                    ProviderClientRecord providerClientRecordInstallProviderAuthoritiesLocked2 = installProviderAuthoritiesLocked(iContentProvider, contentProvider, contentProviderHolder);
                    if (z3) {
                        providerRefCount = new ProviderRefCount(contentProviderHolder, providerClientRecordInstallProviderAuthoritiesLocked2, 1000, 1000);
                    } else {
                        providerRefCount = z4 ? new ProviderRefCount(contentProviderHolder, providerClientRecordInstallProviderAuthoritiesLocked2, 1, 0) : new ProviderRefCount(contentProviderHolder, providerClientRecordInstallProviderAuthoritiesLocked2, 0, 1);
                    }
                    this.mProviderRefCountMap.put(iBinderAsBinder, providerRefCount);
                } else if (!z3) {
                    incProviderRefLocked(providerRefCount, z4);
                    try {
                        ActivityManagerNative.getDefault().removeContentProvider(contentProviderHolder.connection, z4);
                    } catch (RemoteException unused2) {
                    }
                }
                contentProviderHolder2 = providerRefCount.holder;
            }
        }
        return contentProviderHolder2;
    }

    private ProviderClientRecord installProviderAuthoritiesLocked(IContentProvider iContentProvider, ContentProvider contentProvider, IActivityManager.ContentProviderHolder contentProviderHolder) {
        String[] strArrSplit = PATTERN_SEMICOLON.split(contentProviderHolder.info.authority);
        int userId = UserHandle.getUserId(contentProviderHolder.info.applicationInfo.uid);
        ProviderClientRecord providerClientRecord = new ProviderClientRecord(strArrSplit, iContentProvider, contentProvider, contentProviderHolder);
        for (String str : strArrSplit) {
            ProviderKey providerKey = new ProviderKey(str, userId);
            if (this.mProviderMap.get(providerKey) != null) {
                Slog.w(TAG, "Content provider " + providerClientRecord.mHolder.info.name + " already published as " + str);
            } else {
                this.mProviderMap.put(providerKey, providerClientRecord);
            }
        }
        return providerClientRecord;
    }

    public static void main(String[] strArr) {
        e.e();
        CloseGuard.setEnabled(false);
        Environment.initForCurrentUser();
        EventLogger.setReporter(new EventLoggingReporter());
        Security.addProvider(new AndroidKeyStoreProvider());
        Process.setArgV0("<pre-initialized>");
        Looper.prepareMainLooper();
        ActivityThread activityThread = new ActivityThread();
        activityThread.attach(false);
        if (sMainThreadHandler == null) {
            sMainThreadHandler = activityThread.getHandler();
        }
        AsyncTask.init();
        Looper.loop();
        throw new RuntimeException("Main thread loop unexpectedly exited");
    }

    private static void performConfigurationChanged(ComponentCallbacks2 componentCallbacks2, Configuration configuration) {
        Configuration configuration2;
        int iDiff;
        Activity activity = componentCallbacks2 instanceof Activity ? (Activity) componentCallbacks2 : null;
        if (activity != null) {
            activity.mCalled = false;
        }
        boolean z2 = true;
        if (activity != null && (configuration2 = activity.mCurrentConfig) != null && ((iDiff = configuration2.diff(configuration)) == 0 || (iDiff & (~activity.mActivityInfo.getRealConfigChanged())) != 0)) {
            z2 = false;
        }
        if (z2) {
            componentCallbacks2.onConfigurationChanged(configuration);
            if (activity != null) {
                if (activity.mCalled) {
                    activity.mConfigChangeFlags = 0;
                    activity.mCurrentConfig = new Configuration(configuration);
                } else {
                    throw new SuperNotCalledException("Activity " + activity.getLocalClassName() + " did not call through to super.onConfigurationChanged()");
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:80:0x01ae  */
    /* JADX WARN: Instruction removed from duplicated block: B:80:0x01ae, please report this as an issue */
    private Activity performLaunchActivity(ActivityClientRecord activityClientRecord, Intent intent) {
        Activity activityNewActivity;
        Activity activity;
        ComponentName componentName;
        String str;
        ActivityThread activityThread;
        boolean z2;
        ActivityClientRecord activityClientRecord2;
        Bundle bundle;
        ActivityInfo activityInfo = activityClientRecord.activityInfo;
        if (activityClientRecord.packageInfo == null) {
            activityClientRecord.packageInfo = getPackageInfo(activityInfo.applicationInfo, activityClientRecord.compatInfo, 1);
        }
        ComponentName component = activityClientRecord.intent.getComponent();
        if (component == null) {
            component = activityClientRecord.intent.resolveActivity(this.mInitialApplication.getPackageManager());
            activityClientRecord.intent.setComponent(component);
        }
        if (activityClientRecord.activityInfo.targetActivity != null) {
            ActivityInfo activityInfo2 = activityClientRecord.activityInfo;
            component = new ComponentName(activityInfo2.packageName, activityInfo2.targetActivity);
        }
        ComponentName componentName2 = component;
        try {
            ClassLoader classLoader = activityClientRecord.packageInfo.getClassLoader();
            activityNewActivity = this.mInstrumentation.newActivity(classLoader, componentName2.getClassName(), activityClientRecord.intent);
            try {
                StrictMode.incrementExpectedActivityCount(activityNewActivity.getClass());
                activityClientRecord.intent.setExtrasClassLoader(classLoader);
                Bundle bundle2 = activityClientRecord.state;
                if (bundle2 != null) {
                    bundle2.setClassLoader(classLoader);
                }
            } catch (Exception e2) {
                e = e2;
                if (!this.mInstrumentation.onException(activityNewActivity, e)) {
                    throw new RuntimeException("Unable to instantiate activity " + componentName2 + ": " + e.toString(), e);
                }
            }
        } catch (Exception e3) {
            e = e3;
            activityNewActivity = null;
        }
        Activity activity2 = activityNewActivity;
        try {
            try {
                Application applicationMakeApplication = activityClientRecord.packageInfo.makeApplication(false, this.mInstrumentation);
                if (activity2 != null) {
                    Context contextCreateBaseContextForActivity = createBaseContextForActivity(activityClientRecord, activity2);
                    try {
                        componentName = componentName2;
                        str = ": ";
                        try {
                            try {
                                activity2.attach(contextCreateBaseContextForActivity, this, getInstrumentation(), activityClientRecord.token, activityClientRecord.ident, applicationMakeApplication, activityClientRecord.intent, activityClientRecord.activityInfo, activityClientRecord.activityInfo.loadLabel(contextCreateBaseContextForActivity.getPackageManager()), activityClientRecord.parent, activityClientRecord.embeddedID, activityClientRecord.lastNonConfigurationInstances, new Configuration(this.mCompatConfiguration));
                                if (intent != null) {
                                    activity = activity2;
                                    try {
                                        activity.mIntent = intent;
                                    } catch (Exception e4) {
                                        e = e4;
                                        activityThread = this;
                                        if (!activityThread.mInstrumentation.onException(activity, e)) {
                                            throw new RuntimeException("Unable to start activity " + componentName + str + e.toString(), e);
                                        }
                                        return activity;
                                    }
                                } else {
                                    activity = activity2;
                                }
                                activityClientRecord2 = activityClientRecord;
                                activityClientRecord2.lastNonConfigurationInstances = null;
                                activity.mStartedActivity = false;
                                int themeResource = activityClientRecord2.activityInfo.getThemeResource();
                                if (themeResource != 0) {
                                    activity.setTheme(themeResource);
                                }
                                activity.mCalled = false;
                                activityThread = this;
                                try {
                                    activityThread.mInstrumentation.callActivityOnCreate(activity, activityClientRecord2.state);
                                    if (!activity.mCalled) {
                                        throw new SuperNotCalledException("Activity " + activityClientRecord2.intent.getComponent().toShortString() + " did not call through to super.onCreate()");
                                    }
                                    activityClientRecord2.activity = activity;
                                    z2 = true;
                                    activityClientRecord2.stopped = true;
                                    if (!activity.mFinished) {
                                        activity.performStart();
                                        activityClientRecord2.stopped = false;
                                    }
                                    if (!activityClientRecord2.activity.mFinished && (bundle = activityClientRecord2.state) != null) {
                                        activityThread.mInstrumentation.callActivityOnRestoreInstanceState(activity, bundle);
                                    }
                                    if (!activityClientRecord2.activity.mFinished) {
                                        activity.mCalled = false;
                                        activityThread.mInstrumentation.callActivityOnPostCreate(activity, activityClientRecord2.state);
                                        if (!activity.mCalled) {
                                            throw new SuperNotCalledException("Activity " + activityClientRecord2.intent.getComponent().toShortString() + " did not call through to super.onPostCreate()");
                                        }
                                    }
                                } catch (SuperNotCalledException e5) {
                                    throw e5;
                                } catch (Exception e6) {
                                    e = e6;
                                    if (!activityThread.mInstrumentation.onException(activity, e)) {
                                        throw new RuntimeException("Unable to start activity " + componentName + str + e.toString(), e);
                                    }
                                }
                            } catch (Exception e7) {
                                e = e7;
                                activityThread = this;
                                activity = activity2;
                            }
                        } catch (SuperNotCalledException e8) {
                            throw e8;
                        }
                    } catch (Exception e9) {
                        e = e9;
                        activity = activity2;
                        componentName = componentName2;
                        activityThread = this;
                        str = ": ";
                    }
                } else {
                    activity = activity2;
                    z2 = true;
                    activityClientRecord2 = activityClientRecord;
                    activityThread = this;
                }
                activityClientRecord2.paused = z2;
                activityThread.mActivities.put(activityClientRecord2.token, activityClientRecord2);
            } catch (Exception e10) {
                e = e10;
                activity = activity2;
                componentName = componentName2;
                str = ": ";
                activityThread = this;
            }
            return activity;
        } catch (SuperNotCalledException e11) {
            throw e11;
        }
    }

    private void performStopActivityInner(ActivityClientRecord activityClientRecord, StopInfo stopInfo, boolean z2, boolean z3) {
        if (activityClientRecord != null) {
            if (!z2 && activityClientRecord.stopped) {
                if (activityClientRecord.activity.mFinished) {
                    return;
                }
                RuntimeException runtimeException = new RuntimeException("Performing stop of activity that is not resumed: " + activityClientRecord.intent.getComponent().toShortString());
                Slog.e(TAG, runtimeException.getMessage(), runtimeException);
            }
            if (stopInfo != null) {
                try {
                    stopInfo.thumbnail = null;
                    stopInfo.description = activityClientRecord.activity.onCreateDescription();
                } catch (Exception e2) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                        throw new RuntimeException("Unable to save state of activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                    }
                }
            }
            if (!activityClientRecord.activity.mFinished && z3 && activityClientRecord.state == null) {
                Bundle bundle = new Bundle();
                bundle.setAllowFds(false);
                this.mInstrumentation.callActivityOnSaveInstanceState(activityClientRecord.activity, bundle);
                activityClientRecord.state = bundle;
            }
            if (!z2) {
                try {
                    activityClientRecord.activity.performStop();
                } catch (Exception e3) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e3)) {
                        throw new RuntimeException("Unable to stop activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e3.toString(), e3);
                    }
                }
                activityClientRecord.stopped = true;
            }
            activityClientRecord.paused = true;
        }
    }

    public static void printRow(PrintWriter printWriter, String str, Object... objArr) {
        printWriter.println(String.format(str, objArr));
    }

    private static String safeToComponentShortString(Intent intent) {
        ComponentName component = intent.getComponent();
        return component == null ? "[Unknown]" : component.toShortString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int i2, Object obj) {
        sendMessage(i2, obj, 0, 0, false);
    }

    private void setupGraphicsSupport(LoadedApk loadedApk, File file) {
        if (Process.isIsolated()) {
            return;
        }
        try {
            String[] packagesForUid = getPackageManager().getPackagesForUid(Process.myUid());
            if (packagesForUid == null || packagesForUid.length != 1) {
                return;
            }
            HardwareRenderer.setupDiskCache(file);
            RenderScript.setupDiskCache(file);
        } catch (RemoteException unused) {
        }
    }

    public static ActivityThread systemMain() {
        HardwareRenderer.disable(true);
        ActivityThread activityThread = new ActivityThread();
        activityThread.attach(true);
        return activityThread;
    }

    private void updateDefaultDensity() {
        int i2 = this.mCurDefaultDisplayDpi;
        if (i2 == 0 || i2 == DisplayMetrics.DENSITY_DEVICE || this.mDensityCompatMode) {
            return;
        }
        Slog.i(TAG, "Switching default density from " + DisplayMetrics.DENSITY_DEVICE + " to " + this.mCurDefaultDisplayDpi);
        DisplayMetrics.DENSITY_DEVICE = this.mCurDefaultDisplayDpi;
        Bitmap.setDefaultDensity(160);
    }

    private void updateVisibility(ActivityClientRecord activityClientRecord, boolean z2) {
        Activity activity = activityClientRecord.activity;
        View view = activity.mDecor;
        if (view != null) {
            if (!z2) {
                if (activity.mVisibleFromServer) {
                    activity.mVisibleFromServer = false;
                    this.mNumVisibleActivities--;
                    view.setVisibility(4);
                    return;
                }
                return;
            }
            if (!activity.mVisibleFromServer) {
                activity.mVisibleFromServer = true;
                this.mNumVisibleActivities++;
                if (activity.mVisibleFromClient) {
                    activity.makeVisible();
                }
            }
            Configuration configuration = activityClientRecord.newConfig;
            if (configuration != null) {
                performConfigurationChanged(activityClientRecord.activity, configuration);
                freeTextLayoutCachesIfNeeded(activityClientRecord.activity.mCurrentConfig.diff(activityClientRecord.newConfig));
                activityClientRecord.newConfig = null;
            }
        }
    }

    public final IContentProvider acquireExistingProvider(Context context, String str, int i2, boolean z2) {
        synchronized (this.mProviderMap) {
            ProviderClientRecord providerClientRecord = this.mProviderMap.get(new ProviderKey(str, i2));
            if (providerClientRecord == null) {
                return null;
            }
            IContentProvider iContentProvider = providerClientRecord.mProvider;
            IBinder iBinderAsBinder = iContentProvider.asBinder();
            if (iBinderAsBinder.isBinderAlive()) {
                ProviderRefCount providerRefCount = this.mProviderRefCountMap.get(iBinderAsBinder);
                if (providerRefCount != null) {
                    incProviderRefLocked(providerRefCount, z2);
                }
                return iContentProvider;
            }
            Log.i(TAG, "Acquiring provider " + str + " for user " + i2 + ": existing object's process dead");
            handleUnstableProviderDiedLocked(iBinderAsBinder, true);
            return null;
        }
    }

    public final IContentProvider acquireProvider(Context context, String str, int i2, boolean z2) {
        IActivityManager.ContentProviderHolder contentProvider;
        IContentProvider iContentProviderAcquireExistingProvider = acquireExistingProvider(context, str, i2, z2);
        if (iContentProviderAcquireExistingProvider != null) {
            return iContentProviderAcquireExistingProvider;
        }
        try {
            contentProvider = ActivityManagerNative.getDefault().getContentProvider(getApplicationThread(), str, i2, z2);
        } catch (RemoteException unused) {
            contentProvider = null;
        }
        if (contentProvider != null) {
            return installProvider(context, contentProvider, contentProvider.info, true, contentProvider.noReleaseNeeded, z2).provider;
        }
        Slog.e(TAG, "Failed to find provider info for " + str);
        return null;
    }

    public final void appNotRespondingViaProvider(IBinder iBinder) {
        synchronized (this.mProviderMap) {
            ProviderRefCount providerRefCount = this.mProviderRefCountMap.get(iBinder);
            if (providerRefCount != null) {
                try {
                    ActivityManagerNative.getDefault().appNotRespondingViaProvider(providerRefCount.holder.connection);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public final Configuration applyCompatConfiguration(int i2) {
        Configuration configuration = this.mConfiguration;
        if (this.mCompatConfiguration == null) {
            this.mCompatConfiguration = new Configuration();
        }
        this.mCompatConfiguration.setTo(this.mConfiguration);
        return this.mResourcesManager.applyCompatConfiguration(i2, this.mCompatConfiguration) ? this.mCompatConfiguration : configuration;
    }

    public Configuration applyConfigCompatMainThread(int i2, Configuration configuration, CompatibilityInfo compatibilityInfo) {
        if (configuration == null) {
            return null;
        }
        if (compatibilityInfo.supportsScreen()) {
            return configuration;
        }
        this.mMainThreadConfig.setTo(configuration);
        Configuration configuration2 = this.mMainThreadConfig;
        compatibilityInfo.applyToConfiguration(i2, configuration2);
        return configuration2;
    }

    public final void applyConfigurationToResources(Configuration configuration) {
        synchronized (this.mResourcesManager) {
            this.mResourcesManager.applyConfigurationToResourcesLocked(configuration, null);
        }
    }

    public ArrayList<ComponentCallbacks2> collectComponentCallbacks(boolean z2, Configuration configuration) {
        int i2;
        ArrayList<ComponentCallbacks2> arrayList = new ArrayList<>();
        synchronized (this.mResourcesManager) {
            int size = this.mAllApplications.size();
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(this.mAllApplications.get(i3));
            }
            int size2 = this.mActivities.size();
            for (int i4 = 0; i4 < size2; i4++) {
                ActivityClientRecord activityClientRecordValueAt = this.mActivities.valueAt(i4);
                Activity activity = activityClientRecordValueAt.activity;
                if (activity != null) {
                    Configuration configurationApplyConfigCompatMainThread = applyConfigCompatMainThread(this.mCurDefaultDisplayDpi, configuration, activityClientRecordValueAt.packageInfo.getCompatibilityInfo());
                    if (!activityClientRecordValueAt.activity.mFinished && (z2 || !activityClientRecordValueAt.paused)) {
                        arrayList.add(activity);
                    } else if (configurationApplyConfigCompatMainThread != null) {
                        activityClientRecordValueAt.newConfig = configurationApplyConfigCompatMainThread;
                    }
                }
            }
            int size3 = this.mServices.size();
            for (int i5 = 0; i5 < size3; i5++) {
                arrayList.add(this.mServices.valueAt(i5));
            }
        }
        synchronized (this.mProviderMap) {
            int size4 = this.mLocalProviders.size();
            for (i2 = 0; i2 < size4; i2++) {
                arrayList.add(this.mLocalProviders.valueAt(i2).mLocalProvider);
            }
        }
        return arrayList;
    }

    public final void completeRemoveProvider(ProviderRefCount providerRefCount) {
        synchronized (this.mProviderMap) {
            if (providerRefCount.removePending) {
                providerRefCount.removePending = false;
                IBinder iBinderAsBinder = providerRefCount.holder.provider.asBinder();
                if (this.mProviderRefCountMap.get(iBinderAsBinder) == providerRefCount) {
                    this.mProviderRefCountMap.remove(iBinderAsBinder);
                }
                for (int size = this.mProviderMap.size() - 1; size >= 0; size--) {
                    if (this.mProviderMap.valueAt(size).mProvider.asBinder() == iBinderAsBinder) {
                        this.mProviderMap.removeAt(size);
                    }
                }
                try {
                    ActivityManagerNative.getDefault().removeContentProvider(providerRefCount.holder.connection, false);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public void doGcIfNeeded() {
        this.mGcIdlerScheduled = false;
        if (BinderInternal.b() + 5000 < SystemClock.uptimeMillis()) {
            BinderInternal.a("bg");
        }
    }

    public void ensureJitEnabled() {
        if (this.mJitEnabled) {
            return;
        }
        this.mJitEnabled = true;
        VMRuntime.getRuntime().startJitCompilation();
    }

    public final void finishInstrumentation(int i2, Bundle bundle) {
        IActivityManager iActivityManager = ActivityManagerNative.getDefault();
        Profiler profiler = this.mProfiler;
        if (profiler.profileFile != null && profiler.handlingProfiling && profiler.profileFd == null) {
            Debug.stopMethodTracing();
        }
        try {
            iActivityManager.finishInstrumentation(this.mAppThread, i2, bundle);
        } catch (RemoteException unused) {
        }
    }

    public final Activity getActivity(IBinder iBinder) {
        return this.mActivities.get(iBinder).activity;
    }

    public Application getApplication() {
        return this.mInitialApplication;
    }

    public ApplicationThread getApplicationThread() {
        return this.mAppThread;
    }

    public final Handler getHandler() {
        return this.mH;
    }

    public Instrumentation getInstrumentation() {
        return this.mInstrumentation;
    }

    public int getIntCoreSetting(String str, int i2) {
        synchronized (this.mResourcesManager) {
            Bundle bundle = this.mCoreSettings;
            if (bundle == null) {
                return i2;
            }
            return bundle.getInt(str, i2);
        }
    }

    public Looper getLooper() {
        return this.mLooper;
    }

    public final LoadedApk getPackageInfo(String str, CompatibilityInfo compatibilityInfo, int i2) {
        return getPackageInfo(str, compatibilityInfo, i2, UserHandle.myUserId());
    }

    public final LoadedApk getPackageInfoNoCheck(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo) {
        return getPackageInfo(applicationInfo, compatibilityInfo, null, false, true);
    }

    public String getProcessName() {
        return this.mBoundApplication.processName;
    }

    public String getProfileFilePath() {
        return this.mProfiler.profileFile;
    }

    public ContextImpl getSystemContext() {
        ContextImpl contextImpl;
        synchronized (this) {
            if (this.mSystemContext == null) {
                this.mSystemContext = ContextImpl.createSystemContext(this);
            }
            contextImpl = this.mSystemContext;
        }
        return contextImpl;
    }

    public Resources getTopLevelResources(String str, int i2, Configuration configuration, LoadedApk loadedApk) {
        return this.mResourcesManager.getTopLevelResources(str, i2, configuration, loadedApk.getCompatibilityInfo(), null);
    }

    public final void handleActivityConfigurationChanged(IBinder iBinder) {
        Activity activity;
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord == null || (activity = activityClientRecord.activity) == null) {
            return;
        }
        performConfigurationChanged(activity, this.mCompatConfiguration);
        freeTextLayoutCachesIfNeeded(activityClientRecord.activity.mCurrentConfig.diff(this.mCompatConfiguration));
    }

    public final void handleConfigurationChanged(Configuration configuration, CompatibilityInfo compatibilityInfo) {
        synchronized (this.mResourcesManager) {
            Configuration configuration2 = this.mPendingConfiguration;
            if (configuration2 != null) {
                if (!configuration2.isOtherSeqNewer(configuration)) {
                    configuration = this.mPendingConfiguration;
                    this.mCurDefaultDisplayDpi = configuration.densityDpi;
                    updateDefaultDensity();
                }
                this.mPendingConfiguration = null;
            }
            if (configuration == null) {
                return;
            }
            this.mResourcesManager.applyConfigurationToResourcesLocked(configuration, compatibilityInfo);
            if (this.mConfiguration == null) {
                this.mConfiguration = new Configuration();
            }
            if (this.mConfiguration.isOtherSeqNewer(configuration) || compatibilityInfo != null) {
                int iDiff = this.mConfiguration.diff(configuration);
                this.mConfiguration.updateFrom(configuration);
                Configuration configurationApplyCompatConfiguration = applyCompatConfiguration(this.mCurDefaultDisplayDpi);
                ArrayList<ComponentCallbacks2> arrayListCollectComponentCallbacks = collectComponentCallbacks(false, configurationApplyCompatConfiguration);
                WindowManagerGlobal.getInstance().trimLocalMemory();
                freeTextLayoutCachesIfNeeded(iDiff);
                if (arrayListCollectComponentCallbacks != null) {
                    int size = arrayListCollectComponentCallbacks.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        performConfigurationChanged(arrayListCollectComponentCallbacks.get(i2), configurationApplyCompatConfiguration);
                    }
                }
            }
        }
    }

    public final void handleDispatchPackageBroadcast(int i2, String[] strArr) {
        WeakReference<LoadedApk> weakReference;
        WeakReference<LoadedApk> weakReference2;
        boolean z2 = false;
        if (strArr != null) {
            for (int length = strArr.length - 1; length >= 0; length--) {
                if (!z2 && (((weakReference = this.mPackages.get(strArr[length])) != null && weakReference.get() != null) || ((weakReference2 = this.mResourcePackages.get(strArr[length])) != null && weakReference2.get() != null))) {
                    z2 = true;
                }
                this.mPackages.remove(strArr[length]);
                this.mResourcePackages.remove(strArr[length]);
            }
        }
        ApplicationPackageManager.handlePackageBroadcast(i2, strArr, z2);
    }

    public void handleInstallProvider(ProviderInfo providerInfo) {
        installContentProviders(this.mInitialApplication, Lists.newArrayList(providerInfo));
    }

    public final void handleLowMemory() {
        ArrayList<ComponentCallbacks2> arrayListCollectComponentCallbacks = collectComponentCallbacks(true, null);
        int size = arrayListCollectComponentCallbacks.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayListCollectComponentCallbacks.get(i2).onLowMemory();
        }
        if (Process.myUid() != 1000) {
            EventLog.writeEvent(SQLITE_MEM_RELEASED_EVENT_LOG_TAG, SQLiteDatabase.releaseMemory());
        }
        Canvas.freeCaches();
        Canvas.freeTextLayoutCaches();
        BinderInternal.a("mem");
    }

    public final void handleProfilerControl(boolean z2, ProfilerControlData profilerControlData, int i2) {
        try {
            try {
                if (!z2) {
                    this.mProfiler.stopProfiling();
                    return;
                }
                try {
                    this.mProfiler.setProfiler(profilerControlData.path, profilerControlData.fd);
                    Profiler profiler = this.mProfiler;
                    profiler.autoStopProfiler = false;
                    profiler.startProfiling();
                    profilerControlData.fd.close();
                } catch (RuntimeException unused) {
                    Slog.w(TAG, "Profiling failed on path " + profilerControlData.path + " -- can the process access this path?");
                    profilerControlData.fd.close();
                }
            } catch (Throwable th) {
                try {
                    profilerControlData.fd.close();
                } catch (IOException e2) {
                    Slog.w(TAG, "Failure closing profile fd", e2);
                }
                throw th;
            }
        } catch (IOException e3) {
            Slog.w(TAG, "Failure closing profile fd", e3);
        }
    }

    public void handleRequestAssistContextExtras(RequestAssistContextExtras requestAssistContextExtras) {
        Bundle bundle = new Bundle();
        ActivityClientRecord activityClientRecord = this.mActivities.get(requestAssistContextExtras.activityToken);
        if (activityClientRecord != null) {
            activityClientRecord.activity.getApplication().dispatchOnProvideAssistData(activityClientRecord.activity, bundle);
            activityClientRecord.activity.onProvideAssistData(bundle);
        }
        if (bundle.isEmpty()) {
            bundle = null;
        }
        try {
            ActivityManagerNative.getDefault().reportAssistContextExtras(requestAssistContextExtras.requestToken, bundle);
        } catch (RemoteException unused) {
        }
    }

    public final void handleResumeActivity(IBinder iBinder, boolean z2, boolean z3, boolean z4) {
        unscheduleGcIdler();
        ActivityClientRecord activityClientRecordPerformResumeActivity = performResumeActivity(iBinder, z2);
        try {
            if (activityClientRecordPerformResumeActivity != null) {
                Activity activity = activityClientRecordPerformResumeActivity.activity;
                int i2 = z3 ? 256 : 0;
                boolean zWillActivityBeVisible = !activity.mStartedActivity;
                if (!zWillActivityBeVisible) {
                    try {
                        zWillActivityBeVisible = ActivityManagerNative.getDefault().willActivityBeVisible(activity.getActivityToken());
                    } catch (RemoteException unused) {
                    }
                }
                if (activityClientRecordPerformResumeActivity.window == null && !activity.mFinished && zWillActivityBeVisible) {
                    Window window = activityClientRecordPerformResumeActivity.activity.getWindow();
                    activityClientRecordPerformResumeActivity.window = window;
                    View decorView = window.getDecorView();
                    decorView.setVisibility(4);
                    WindowManager windowManager = activity.getWindowManager();
                    WindowManager.LayoutParams attributes = activityClientRecordPerformResumeActivity.window.getAttributes();
                    activity.mDecor = decorView;
                    attributes.type = 1;
                    attributes.softInputMode |= i2;
                    if (activity.mVisibleFromClient) {
                        activity.mWindowAdded = true;
                        windowManager.addView(decorView, attributes);
                    }
                } else if (!zWillActivityBeVisible) {
                    activityClientRecordPerformResumeActivity.hideForNow = true;
                }
                cleanUpPendingRemoveWindows(activityClientRecordPerformResumeActivity);
                Activity activity2 = activityClientRecordPerformResumeActivity.activity;
                if (!activity2.mFinished && zWillActivityBeVisible && activity2.mDecor != null && !activityClientRecordPerformResumeActivity.hideForNow) {
                    Configuration configuration = activityClientRecordPerformResumeActivity.newConfig;
                    if (configuration != null) {
                        performConfigurationChanged(activity2, configuration);
                        freeTextLayoutCachesIfNeeded(activityClientRecordPerformResumeActivity.activity.mCurrentConfig.diff(activityClientRecordPerformResumeActivity.newConfig));
                        activityClientRecordPerformResumeActivity.newConfig = null;
                    }
                    WindowManager.LayoutParams attributes2 = activityClientRecordPerformResumeActivity.window.getAttributes();
                    int i3 = attributes2.softInputMode;
                    if ((i3 & 256) != i2) {
                        attributes2.softInputMode = i2 | (i3 & (-257));
                        if (activityClientRecordPerformResumeActivity.activity.mVisibleFromClient) {
                            activity.getWindowManager().updateViewLayout(activityClientRecordPerformResumeActivity.window.getDecorView(), attributes2);
                        }
                    }
                    Activity activity3 = activityClientRecordPerformResumeActivity.activity;
                    activity3.mVisibleFromServer = true;
                    this.mNumVisibleActivities++;
                    if (activity3.mVisibleFromClient) {
                        activity3.makeVisible();
                    }
                }
                if (!activityClientRecordPerformResumeActivity.onlyLocalRequest) {
                    activityClientRecordPerformResumeActivity.nextIdle = this.mNewActivities;
                    this.mNewActivities = activityClientRecordPerformResumeActivity;
                    Looper.myQueue().addIdleHandler(new Idler());
                }
                activityClientRecordPerformResumeActivity.onlyLocalRequest = false;
                if (!z4) {
                } else {
                    ActivityManagerNative.getDefault().activityResumed(iBinder);
                }
            } else {
                ActivityManagerNative.getDefault().finishActivity(iBinder, 0, null);
            }
        } catch (RemoteException unused2) {
        }
    }

    public void handleTranslucentConversionComplete(IBinder iBinder, boolean z2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            activityClientRecord.activity.onTranslucentConversionComplete(z2);
        }
    }

    public final void handleTrimMemory(int i2) {
        WindowManagerGlobal windowManagerGlobal = WindowManagerGlobal.getInstance();
        windowManagerGlobal.startTrimMemory(i2);
        ArrayList<ComponentCallbacks2> arrayListCollectComponentCallbacks = collectComponentCallbacks(true, null);
        int size = arrayListCollectComponentCallbacks.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayListCollectComponentCallbacks.get(i3).onTrimMemory(i2);
        }
        windowManagerGlobal.endTrimMemory();
    }

    public final void handleUnstableProviderDied(IBinder iBinder, boolean z2) {
        synchronized (this.mProviderMap) {
            handleUnstableProviderDiedLocked(iBinder, z2);
        }
    }

    public final void handleUnstableProviderDiedLocked(IBinder iBinder, boolean z2) {
        ProviderRefCount providerRefCount = this.mProviderRefCountMap.get(iBinder);
        if (providerRefCount != null) {
            this.mProviderRefCountMap.remove(iBinder);
            for (int size = this.mProviderMap.size() - 1; size >= 0; size--) {
                ProviderClientRecord providerClientRecordValueAt = this.mProviderMap.valueAt(size);
                if (providerClientRecordValueAt != null && providerClientRecordValueAt.mProvider.asBinder() == iBinder) {
                    Slog.i(TAG, "Removing dead content provider:" + providerClientRecordValueAt.mProvider.toString());
                    this.mProviderMap.removeAt(size);
                }
            }
            if (z2) {
                try {
                    ActivityManagerNative.getDefault().unstableProviderDied(providerRefCount.holder.connection);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public void installSystemApplicationInfo(ApplicationInfo applicationInfo) {
        synchronized (this) {
            getSystemContext().installSystemApplicationInfo(applicationInfo);
            this.mProfiler = new Profiler();
        }
    }

    public final void installSystemProviders(List<ProviderInfo> list) {
        if (list != null) {
            installContentProviders(this.mInitialApplication, list);
        }
    }

    public boolean isProfiling() {
        Profiler profiler = this.mProfiler;
        return (profiler == null || profiler.profileFile == null || profiler.profileFd != null) ? false : true;
    }

    public final LoadedApk peekPackageInfo(String str, boolean z2) {
        LoadedApk loadedApk;
        synchronized (this.mResourcesManager) {
            try {
                WeakReference<LoadedApk> weakReference = z2 ? this.mPackages.get(str) : this.mResourcePackages.get(str);
                loadedApk = weakReference != null ? weakReference.get() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return loadedApk;
    }

    public final ActivityClientRecord performDestroyActivity(IBinder iBinder, boolean z2) {
        return performDestroyActivity(iBinder, z2, 0, false);
    }

    public final void performNewIntents(IBinder iBinder, List<Intent> list) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            boolean z2 = !activityClientRecord.paused;
            if (z2) {
                Activity activity = activityClientRecord.activity;
                activity.mTemporaryPause = true;
                this.mInstrumentation.callActivityOnPause(activity);
            }
            deliverNewIntents(activityClientRecord, list);
            if (z2) {
                activityClientRecord.activity.performResume();
                activityClientRecord.activity.mTemporaryPause = false;
            }
        }
    }

    public final Bundle performPauseActivity(IBinder iBinder, boolean z2, boolean z3) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            return performPauseActivity(activityClientRecord, z2, z3);
        }
        return null;
    }

    public final void performRestartActivity(IBinder iBinder) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord.stopped) {
            activityClientRecord.activity.performRestart();
            activityClientRecord.stopped = false;
        }
    }

    public final ActivityClientRecord performResumeActivity(IBinder iBinder, boolean z2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            Activity activity = activityClientRecord.activity;
            if (!activity.mFinished) {
                if (z2) {
                    activityClientRecord.hideForNow = false;
                    activity.mStartedActivity = false;
                }
                try {
                    activity.mFragments.noteStateNotSaved();
                    List<Intent> list = activityClientRecord.pendingIntents;
                    if (list != null) {
                        deliverNewIntents(activityClientRecord, list);
                        activityClientRecord.pendingIntents = null;
                    }
                    List<ResultInfo> list2 = activityClientRecord.pendingResults;
                    if (list2 != null) {
                        deliverResults(activityClientRecord, list2);
                        activityClientRecord.pendingResults = null;
                    }
                    activityClientRecord.activity.performResume();
                    EventLog.writeEvent(LOG_ON_RESUME_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName());
                    activityClientRecord.paused = false;
                    activityClientRecord.stopped = false;
                    activityClientRecord.state = null;
                } catch (Exception e2) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                        throw new RuntimeException("Unable to resume activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                    }
                }
            }
        }
        return activityClientRecord;
    }

    public final void performStopActivity(IBinder iBinder, boolean z2) {
        performStopActivityInner(this.mActivities.get(iBinder), null, false, z2);
    }

    public final void performUserLeavingActivity(ActivityClientRecord activityClientRecord) {
        this.mInstrumentation.callActivityOnUserLeaving(activityClientRecord.activity);
    }

    public void registerOnActivityPausedListener(Activity activity, OnActivityPausedListener onActivityPausedListener) {
        synchronized (this.mOnPauseListeners) {
            ArrayList<OnActivityPausedListener> arrayList = this.mOnPauseListeners.get(activity);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mOnPauseListeners.put(activity, arrayList);
            }
            arrayList.add(onActivityPausedListener);
        }
    }

    public final boolean releaseProvider(IContentProvider iContentProvider, boolean z2) {
        boolean z3 = false;
        z3 = false;
        if (iContentProvider == null) {
            return false;
        }
        IBinder iBinderAsBinder = iContentProvider.asBinder();
        synchronized (this.mProviderMap) {
            ProviderRefCount providerRefCount = this.mProviderRefCountMap.get(iBinderAsBinder);
            if (providerRefCount == null) {
                return false;
            }
            try {
                if (z2) {
                    int i2 = providerRefCount.stableCount;
                    if (i2 == 0) {
                        return false;
                    }
                    int i3 = i2 - 1;
                    providerRefCount.stableCount = i3;
                    if (i3 == 0) {
                        z2 = providerRefCount.unstableCount == 0;
                        ActivityManagerNative.getDefault().refContentProvider(providerRefCount.holder.connection, -1, z2 ? 1 : 0);
                        z3 = z2;
                    }
                } else {
                    int i4 = providerRefCount.unstableCount;
                    if (i4 == 0) {
                        return false;
                    }
                    int i5 = i4 - 1;
                    providerRefCount.unstableCount = i5;
                    if (i5 == 0) {
                        z2 = providerRefCount.stableCount == 0;
                        if (!z2) {
                            ActivityManagerNative.getDefault().refContentProvider(providerRefCount.holder.connection, 0, -1);
                        }
                        z3 = z2;
                    }
                }
            } catch (RemoteException unused) {
            }
            if (z3) {
                if (providerRefCount.removePending) {
                    Slog.w(TAG, "Duplicate remove pending of provider " + providerRefCount.holder.info.name);
                } else {
                    providerRefCount.removePending = true;
                    this.mH.sendMessage(this.mH.obtainMessage(131, providerRefCount));
                }
            }
            return true;
        }
    }

    public final void requestRelaunchActivity(IBinder iBinder, List<ResultInfo> list, List<Intent> list2, int i2, boolean z2, Configuration configuration, boolean z3) {
        ActivityClientRecord activityClientRecord;
        synchronized (this.mResourcesManager) {
            int i3 = 0;
            while (true) {
                if (i3 >= this.mRelaunchingActivities.size()) {
                    activityClientRecord = null;
                    break;
                }
                activityClientRecord = this.mRelaunchingActivities.get(i3);
                if (activityClientRecord.token == iBinder) {
                    if (list != null) {
                        List<ResultInfo> list3 = activityClientRecord.pendingResults;
                        if (list3 != null) {
                            list3.addAll(list);
                        } else {
                            activityClientRecord.pendingResults = list;
                        }
                    }
                    if (list2 == null) {
                        break;
                    }
                    List<Intent> list4 = activityClientRecord.pendingIntents;
                    if (list4 == null) {
                        activityClientRecord.pendingIntents = list2;
                        break;
                    } else {
                        list4.addAll(list2);
                        break;
                    }
                }
                i3++;
            }
            if (activityClientRecord == null) {
                activityClientRecord = new ActivityClientRecord();
                activityClientRecord.token = iBinder;
                activityClientRecord.pendingResults = list;
                activityClientRecord.pendingIntents = list2;
                if (!z3) {
                    ActivityClientRecord activityClientRecord2 = this.mActivities.get(iBinder);
                    if (activityClientRecord2 != null) {
                        activityClientRecord.startsNotResumed = activityClientRecord2.paused;
                    }
                    activityClientRecord.onlyLocalRequest = true;
                }
                this.mRelaunchingActivities.add(activityClientRecord);
                sendMessage(126, activityClientRecord);
            }
            if (z3) {
                activityClientRecord.startsNotResumed = z2;
                activityClientRecord.onlyLocalRequest = false;
            }
            if (configuration != null) {
                activityClientRecord.createdConfig = configuration;
            }
            activityClientRecord.pendingConfigChanges |= i2;
        }
    }

    public final ActivityInfo resolveActivityInfo(Intent intent) {
        ActivityInfo activityInfoResolveActivityInfo = intent.resolveActivityInfo(this.mInitialApplication.getPackageManager(), 1024);
        if (activityInfoResolveActivityInfo == null) {
            Instrumentation.checkStartActivityResult(-2, intent);
        }
        return activityInfoResolveActivityInfo;
    }

    public final void scheduleContextCleanup(ContextImpl contextImpl, String str, String str2) {
        ContextCleanupInfo contextCleanupInfo = new ContextCleanupInfo();
        contextCleanupInfo.context = contextImpl;
        contextCleanupInfo.who = str;
        contextCleanupInfo.what = str2;
        sendMessage(119, contextCleanupInfo);
    }

    public void scheduleGcIdler() {
        if (!this.mGcIdlerScheduled) {
            this.mGcIdlerScheduled = true;
            Looper.myQueue().addIdleHandler(this.mGcIdler);
        }
        this.mH.removeMessages(120);
    }

    public final void sendActivityResult(IBinder iBinder, String str, int i2, int i3, Intent intent) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ResultInfo(str, i2, i3, intent));
        this.mAppThread.scheduleSendResult(iBinder, arrayList);
    }

    public final Activity startActivityNow(Activity activity, String str, Intent intent, ActivityInfo activityInfo, IBinder iBinder, Bundle bundle, Activity.NonConfigurationInstances nonConfigurationInstances) {
        ActivityClientRecord activityClientRecord = new ActivityClientRecord();
        activityClientRecord.token = iBinder;
        activityClientRecord.ident = 0;
        activityClientRecord.intent = intent;
        activityClientRecord.state = bundle;
        activityClientRecord.parent = activity;
        activityClientRecord.embeddedID = str;
        activityClientRecord.activityInfo = activityInfo;
        activityClientRecord.lastNonConfigurationInstances = nonConfigurationInstances;
        return performLaunchActivity(activityClientRecord, null);
    }

    public void unregisterOnActivityPausedListener(Activity activity, OnActivityPausedListener onActivityPausedListener) {
        synchronized (this.mOnPauseListeners) {
            ArrayList<OnActivityPausedListener> arrayList = this.mOnPauseListeners.get(activity);
            if (arrayList != null) {
                arrayList.remove(onActivityPausedListener);
            }
        }
    }

    public void unscheduleGcIdler() {
        if (this.mGcIdlerScheduled) {
            this.mGcIdlerScheduled = false;
            Looper.myQueue().removeIdleHandler(this.mGcIdler);
        }
        this.mH.removeMessages(120);
    }

    private ActivityClientRecord performDestroyActivity(IBinder iBinder, boolean z2, int i2, boolean z3) {
        Class<?> cls;
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            cls = activityClientRecord.activity.getClass();
            Activity activity = activityClientRecord.activity;
            activity.mConfigChangeFlags = i2 | activity.mConfigChangeFlags;
            if (z2) {
                activity.mFinished = true;
            }
            if (!activityClientRecord.paused) {
                try {
                    activity.mCalled = false;
                    this.mInstrumentation.callActivityOnPause(activity);
                    EventLog.writeEvent(LOG_ON_PAUSE_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName());
                    if (!activityClientRecord.activity.mCalled) {
                        throw new SuperNotCalledException("Activity " + safeToComponentShortString(activityClientRecord.intent) + " did not call through to super.onPause()");
                    }
                    activityClientRecord.paused = true;
                } catch (SuperNotCalledException e2) {
                    throw e2;
                } catch (Exception e3) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e3)) {
                        throw new RuntimeException("Unable to pause activity " + safeToComponentShortString(activityClientRecord.intent) + ": " + e3.toString(), e3);
                    }
                }
            }
            if (!activityClientRecord.stopped) {
                try {
                    activityClientRecord.activity.performStop();
                } catch (SuperNotCalledException e4) {
                    throw e4;
                } catch (Exception e5) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e5)) {
                        throw new RuntimeException("Unable to stop activity " + safeToComponentShortString(activityClientRecord.intent) + ": " + e5.toString(), e5);
                    }
                }
                activityClientRecord.stopped = true;
            }
            if (z3) {
                try {
                    activityClientRecord.lastNonConfigurationInstances = activityClientRecord.activity.retainNonConfigurationInstances();
                } catch (Exception e6) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e6)) {
                        throw new RuntimeException("Unable to retain activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e6.toString(), e6);
                    }
                }
            }
            try {
                Activity activity2 = activityClientRecord.activity;
                activity2.mCalled = false;
                this.mInstrumentation.callActivityOnDestroy(activity2);
                if (!activityClientRecord.activity.mCalled) {
                    throw new SuperNotCalledException("Activity " + safeToComponentShortString(activityClientRecord.intent) + " did not call through to super.onDestroy()");
                }
                Window window = activityClientRecord.window;
                if (window != null) {
                    window.closeAllPanels();
                }
            } catch (SuperNotCalledException e7) {
                throw e7;
            } catch (Exception e8) {
                if (!this.mInstrumentation.onException(activityClientRecord.activity, e8)) {
                    throw new RuntimeException("Unable to destroy activity " + safeToComponentShortString(activityClientRecord.intent) + ": " + e8.toString(), e8);
                }
            }
        } else {
            cls = null;
        }
        this.mActivities.remove(iBinder);
        StrictMode.decrementExpectedActivityCount(cls);
        return activityClientRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int i2, Object obj, int i3) {
        sendMessage(i2, obj, i3, 0, false);
    }

    public final LoadedApk getPackageInfo(String str, CompatibilityInfo compatibilityInfo, int i2, int i3) {
        ApplicationInfo applicationInfo;
        Resources resources;
        synchronized (this.mResourcesManager) {
            try {
                WeakReference<LoadedApk> weakReference = (i2 & 1) != 0 ? this.mPackages.get(str) : this.mResourcePackages.get(str);
                LoadedApk loadedApk = weakReference != null ? weakReference.get() : null;
                if (loadedApk == null || !((resources = loadedApk.mResources) == null || resources.getAssets().isUpToDate())) {
                    try {
                        applicationInfo = getPackageManager().getApplicationInfo(str, 1024, i3);
                    } catch (RemoteException unused) {
                        applicationInfo = null;
                    }
                    if (applicationInfo != null) {
                        return getPackageInfo(applicationInfo, compatibilityInfo, i2);
                    }
                    return null;
                }
                if (loadedApk.isSecurityViolation() && (i2 & 2) == 0) {
                    throw new SecurityException("Requesting code from " + str + " to be run in process " + this.mBoundApplication.processName + "/" + this.mBoundApplication.appInfo.uid);
                }
                return loadedApk;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int i2, Object obj, int i3, int i4) {
        sendMessage(i2, obj, i3, i4, false);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d7 A[LOOP:0: B:37:0x00d5->B:38:0x00d7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x00e9, please report this as an issue */
    public final Bundle performPauseActivity(ActivityClientRecord activityClientRecord, boolean z2, boolean z3) {
        Exception e2;
        Bundle bundle;
        ArrayList<OnActivityPausedListener> arrayListRemove;
        int size;
        Bundle bundle2 = null;
        if (activityClientRecord.paused) {
            if (activityClientRecord.activity.mFinished) {
                return null;
            }
            RuntimeException runtimeException = new RuntimeException("Performing pause of activity that is not resumed: " + activityClientRecord.intent.getComponent().toShortString());
            Slog.e(TAG, runtimeException.getMessage(), runtimeException);
        }
        if (z2) {
            activityClientRecord.activity.mFinished = true;
        }
        try {
            try {
                if (!activityClientRecord.activity.mFinished && z3) {
                    bundle = new Bundle();
                    try {
                        bundle.setAllowFds(false);
                        this.mInstrumentation.callActivityOnSaveInstanceState(activityClientRecord.activity, bundle);
                        activityClientRecord.state = bundle;
                        bundle2 = bundle;
                    } catch (Exception e3) {
                        e2 = e3;
                        if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                            throw new RuntimeException("Unable to pause activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                        }
                        bundle2 = bundle;
                    }
                }
                Activity activity = activityClientRecord.activity;
                activity.mCalled = false;
                this.mInstrumentation.callActivityOnPause(activity);
                EventLog.writeEvent(LOG_ON_PAUSE_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName());
                if (!activityClientRecord.activity.mCalled) {
                    throw new SuperNotCalledException("Activity " + activityClientRecord.intent.getComponent().toShortString() + " did not call through to super.onPause()");
                }
                activityClientRecord.paused = true;
                synchronized (this.mOnPauseListeners) {
                    arrayListRemove = this.mOnPauseListeners.remove(activityClientRecord.activity);
                }
                if (arrayListRemove != null) {
                    size = arrayListRemove.size();
                } else {
                    size = 0;
                }
                for (int i2 = 0; i2 < size; i2++) {
                    arrayListRemove.get(i2).onPaused(activityClientRecord.activity);
                }
                return bundle2;
            } catch (Exception e4) {
                Bundle bundle3 = bundle2;
                e2 = e4;
                bundle = bundle3;
            }
            if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                bundle2 = bundle;
                activityClientRecord.paused = true;
                synchronized (this.mOnPauseListeners) {
                    arrayListRemove = this.mOnPauseListeners.remove(activityClientRecord.activity);
                    if (arrayListRemove != null) {
                        size = arrayListRemove.size();
                    } else {
                        size = 0;
                    }
                    while (i2 < size) {
                        arrayListRemove.get(i2).onPaused(activityClientRecord.activity);
                    }
                    return bundle2;
                }
            }
            throw new RuntimeException("Unable to pause activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
        } catch (SuperNotCalledException e5) {
            throw e5;
        }
    }

    public class ApplicationThread extends ApplicationThreadNative {
        private static final String DB_INFO_FORMAT = "  %8s %8s %14s %14s  %s";
        private static final String ONE_COUNT_COLUMN = "%21s %8d";
        private static final String TWO_COUNT_COLUMNS = "%21s %8d %21s %8d";
        private int mLastProcessState;

        private ApplicationThread() {
            this.mLastProcessState = -1;
        }

        private void updatePendingConfiguration(Configuration configuration) {
            synchronized (ActivityThread.this.mResourcesManager) {
                Configuration configuration2 = ActivityThread.this.mPendingConfiguration;
                if (configuration2 == null || configuration2.isOtherSeqNewer(configuration)) {
                    ActivityThread.this.mPendingConfiguration = configuration;
                }
            }
        }

        @Override // android.app.IApplicationThread
        public final void bindApplication(String str, ApplicationInfo applicationInfo, List<ProviderInfo> list, ComponentName componentName, String str2, ParcelFileDescriptor parcelFileDescriptor, boolean z2, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i2, boolean z3, boolean z4, boolean z5, Configuration configuration, CompatibilityInfo compatibilityInfo, Map<String, IBinder> map, Bundle bundle2) {
            if (map != null) {
                ServiceManager.initServiceCache(map);
            }
            setCoreSettings(bundle2);
            AppBindData appBindData = new AppBindData();
            appBindData.processName = str;
            appBindData.appInfo = applicationInfo;
            appBindData.providers = list;
            appBindData.instrumentationName = componentName;
            appBindData.instrumentationArgs = bundle;
            appBindData.instrumentationWatcher = iInstrumentationWatcher;
            appBindData.instrumentationUiAutomationConnection = iUiAutomationConnection;
            appBindData.debugMode = i2;
            appBindData.enableOpenGlTrace = z3;
            appBindData.restrictedBackupMode = z4;
            appBindData.persistent = z5;
            appBindData.config = configuration;
            appBindData.compatInfo = compatibilityInfo;
            appBindData.initProfileFile = str2;
            appBindData.initProfileFd = parcelFileDescriptor;
            appBindData.initAutoStopProfiler = false;
            ActivityThread.this.sendMessage(110, appBindData);
        }

        @Override // android.app.IApplicationThread
        public void clearDnsCache() {
            InetAddress.clearDnsCache();
        }

        @Override // android.app.IApplicationThread
        public void dispatchPackageBroadcast(int i2, String[] strArr) {
            ActivityThread.this.sendMessage(133, strArr, i2);
        }

        @Override // android.app.IApplicationThread
        public void dumpActivity(FileDescriptor fileDescriptor, IBinder iBinder, String str, String[] strArr) {
            DumpComponentInfo dumpComponentInfo = new DumpComponentInfo();
            try {
                dumpComponentInfo.fd = ParcelFileDescriptor.dup(fileDescriptor);
                dumpComponentInfo.token = iBinder;
                dumpComponentInfo.prefix = str;
                dumpComponentInfo.args = strArr;
                ActivityThread.this.sendMessage(136, dumpComponentInfo, 0, 0, true);
            } catch (IOException e2) {
                Slog.w(ActivityThread.TAG, "dumpActivity failed", e2);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpDbInfo(FileDescriptor fileDescriptor, String[] strArr) {
            u.e eVar = new u.e(new FileOutputStream(fileDescriptor));
            SQLiteDebug.dump(new PrintWriterPrinter(eVar), strArr);
            eVar.flush();
        }

        @Override // android.app.IApplicationThread
        public void dumpGfxInfo(FileDescriptor fileDescriptor, String[] strArr) {
            ActivityThread.this.dumpGraphicsInfo(fileDescriptor);
            WindowManagerGlobal.getInstance().dumpGfxInfo(fileDescriptor);
        }

        @Override // android.app.IApplicationThread
        public void dumpHeap(boolean z2, String str, ParcelFileDescriptor parcelFileDescriptor) {
            DumpHeapData dumpHeapData = new DumpHeapData();
            dumpHeapData.path = str;
            dumpHeapData.fd = parcelFileDescriptor;
            ActivityThread.this.sendMessage(135, dumpHeapData, z2 ? 1 : 0, 0, true);
        }

        @Override // android.app.IApplicationThread
        public void dumpMemInfo(FileDescriptor fileDescriptor, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4, String[] strArr) {
            u.e eVar = new u.e(new FileOutputStream(fileDescriptor));
            try {
                dumpMemInfo(eVar, memoryInfo, z2, z3, z4);
            } finally {
                eVar.flush();
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpProvider(FileDescriptor fileDescriptor, IBinder iBinder, String[] strArr) {
            DumpComponentInfo dumpComponentInfo = new DumpComponentInfo();
            try {
                dumpComponentInfo.fd = ParcelFileDescriptor.dup(fileDescriptor);
                dumpComponentInfo.token = iBinder;
                dumpComponentInfo.args = strArr;
                ActivityThread.this.sendMessage(141, dumpComponentInfo, 0, 0, true);
            } catch (IOException e2) {
                Slog.w(ActivityThread.TAG, "dumpProvider failed", e2);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpService(FileDescriptor fileDescriptor, IBinder iBinder, String[] strArr) {
            DumpComponentInfo dumpComponentInfo = new DumpComponentInfo();
            try {
                dumpComponentInfo.fd = ParcelFileDescriptor.dup(fileDescriptor);
                dumpComponentInfo.token = iBinder;
                dumpComponentInfo.args = strArr;
                ActivityThread.this.sendMessage(123, dumpComponentInfo, 0, 0, true);
            } catch (IOException e2) {
                Slog.w(ActivityThread.TAG, "dumpService failed", e2);
            }
        }

        @Override // android.app.IApplicationThread
        public void processInBackground() {
            ActivityThread.this.mH.removeMessages(120);
            H h2 = ActivityThread.this.mH;
            h2.sendMessage(h2.obtainMessage(120));
        }

        @Override // android.app.IApplicationThread
        public void profilerControl(boolean z2, String str, ParcelFileDescriptor parcelFileDescriptor, int i2) {
            ProfilerControlData profilerControlData = new ProfilerControlData();
            profilerControlData.path = str;
            profilerControlData.fd = parcelFileDescriptor;
            ActivityThread.this.sendMessage(127, profilerControlData, z2 ? 1 : 0, i2);
        }

        @Override // android.app.IApplicationThread
        public void requestAssistContextExtras(IBinder iBinder, IBinder iBinder2, int i2) {
            RequestAssistContextExtras requestAssistContextExtras = new RequestAssistContextExtras();
            requestAssistContextExtras.activityToken = iBinder;
            requestAssistContextExtras.requestToken = iBinder2;
            requestAssistContextExtras.requestType = i2;
            ActivityThread.this.sendMessage(143, requestAssistContextExtras);
        }

        @Override // android.app.IApplicationThread
        public void requestThumbnail(IBinder iBinder) {
            ActivityThread.this.sendMessage(117, iBinder);
        }

        @Override // android.app.IApplicationThread
        public void scheduleActivityConfigurationChanged(IBinder iBinder) {
            ActivityThread.this.sendMessage(125, iBinder);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleBindService(IBinder iBinder, Intent intent, boolean z2, int i2) {
            updateProcessState(i2, false);
            BindServiceData bindServiceData = new BindServiceData();
            bindServiceData.token = iBinder;
            bindServiceData.intent = intent;
            bindServiceData.rebind = z2;
            ActivityThread.this.sendMessage(121, bindServiceData);
        }

        @Override // android.app.IApplicationThread
        public void scheduleConfigurationChanged(Configuration configuration) {
            updatePendingConfiguration(configuration);
            ActivityThread.this.sendMessage(118, configuration);
        }

        @Override // android.app.IApplicationThread
        public void scheduleCrash(String str) {
            ActivityThread.this.sendMessage(134, str);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleCreateBackupAgent(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, int i2) {
            CreateBackupAgentData createBackupAgentData = new CreateBackupAgentData();
            createBackupAgentData.appInfo = applicationInfo;
            createBackupAgentData.compatInfo = compatibilityInfo;
            createBackupAgentData.backupMode = i2;
            ActivityThread.this.sendMessage(128, createBackupAgentData);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleCreateService(IBinder iBinder, ServiceInfo serviceInfo, CompatibilityInfo compatibilityInfo, int i2) {
            updateProcessState(i2, false);
            CreateServiceData createServiceData = new CreateServiceData();
            createServiceData.token = iBinder;
            createServiceData.info = serviceInfo;
            createServiceData.compatInfo = compatibilityInfo;
            ActivityThread.this.sendMessage(114, createServiceData);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleDestroyActivity(IBinder iBinder, boolean z2, int i2) {
            ActivityThread.this.sendMessage(109, iBinder, z2 ? 1 : 0, i2);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleDestroyBackupAgent(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo) {
            CreateBackupAgentData createBackupAgentData = new CreateBackupAgentData();
            createBackupAgentData.appInfo = applicationInfo;
            createBackupAgentData.compatInfo = compatibilityInfo;
            ActivityThread.this.sendMessage(129, createBackupAgentData);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleExit() {
            ActivityThread.this.sendMessage(111, null);
        }

        @Override // android.app.IApplicationThread
        public void scheduleInstallProvider(ProviderInfo providerInfo) {
            ActivityThread.this.sendMessage(145, providerInfo);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleLaunchActivity(Intent intent, IBinder iBinder, int i2, ActivityInfo activityInfo, Configuration configuration, CompatibilityInfo compatibilityInfo, int i3, Bundle bundle, List<ResultInfo> list, List<Intent> list2, boolean z2, boolean z3, String str, ParcelFileDescriptor parcelFileDescriptor, boolean z4) {
            updateProcessState(i3, false);
            ActivityClientRecord activityClientRecord = new ActivityClientRecord();
            activityClientRecord.token = iBinder;
            activityClientRecord.ident = i2;
            activityClientRecord.intent = intent;
            activityClientRecord.activityInfo = activityInfo;
            activityClientRecord.compatInfo = compatibilityInfo;
            activityClientRecord.state = bundle;
            activityClientRecord.pendingResults = list;
            activityClientRecord.pendingIntents = list2;
            activityClientRecord.startsNotResumed = z2;
            activityClientRecord.isForward = z3;
            activityClientRecord.profileFile = str;
            activityClientRecord.profileFd = parcelFileDescriptor;
            activityClientRecord.autoStopProfiler = z4;
            updatePendingConfiguration(configuration);
            ActivityThread.this.sendMessage(100, activityClientRecord);
        }

        @Override // android.app.IApplicationThread
        public void scheduleLowMemory() {
            ActivityThread.this.sendMessage(124, null);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleNewIntent(List<Intent> list, IBinder iBinder) {
            NewIntentData newIntentData = new NewIntentData();
            newIntentData.intents = list;
            newIntentData.token = iBinder;
            ActivityThread.this.sendMessage(112, newIntentData);
        }

        @Override // android.app.IApplicationThread
        public final void schedulePauseActivity(IBinder iBinder, boolean z2, boolean z3, int i2) {
            ActivityThread.this.sendMessage(z2 ? 102 : 101, iBinder, z3 ? 1 : 0, i2);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleReceiver(Intent intent, ActivityInfo activityInfo, CompatibilityInfo compatibilityInfo, int i2, String str, Bundle bundle, boolean z2, int i3, int i4) {
            updateProcessState(i4, false);
            ReceiverData receiverData = new ReceiverData(intent, i2, str, bundle, z2, false, ActivityThread.this.mAppThread.asBinder(), i3);
            receiverData.info = activityInfo;
            receiverData.compatInfo = compatibilityInfo;
            ActivityThread.this.sendMessage(113, receiverData);
        }

        @Override // android.app.IApplicationThread
        public void scheduleRegisteredReceiver(IIntentReceiver iIntentReceiver, Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3, int i4) {
            updateProcessState(i4, false);
            iIntentReceiver.performReceive(intent, i2, str, bundle, z2, z3, i3);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleRelaunchActivity(IBinder iBinder, List<ResultInfo> list, List<Intent> list2, int i2, boolean z2, Configuration configuration) {
            ActivityThread.this.requestRelaunchActivity(iBinder, list, list2, i2, z2, configuration, true);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleResumeActivity(IBinder iBinder, int i2, boolean z2) {
            updateProcessState(i2, false);
            ActivityThread.this.sendMessage(107, iBinder, z2 ? 1 : 0);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleSendResult(IBinder iBinder, List<ResultInfo> list) {
            ResultData resultData = new ResultData();
            resultData.token = iBinder;
            resultData.results = list;
            ActivityThread.this.sendMessage(108, resultData);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleServiceArgs(IBinder iBinder, boolean z2, int i2, int i3, Intent intent) {
            ServiceArgsData serviceArgsData = new ServiceArgsData();
            serviceArgsData.token = iBinder;
            serviceArgsData.taskRemoved = z2;
            serviceArgsData.startId = i2;
            serviceArgsData.flags = i3;
            serviceArgsData.args = intent;
            ActivityThread.this.sendMessage(115, serviceArgsData);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleSleeping(IBinder iBinder, boolean z2) {
            ActivityThread.this.sendMessage(137, iBinder, z2 ? 1 : 0);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleStopActivity(IBinder iBinder, boolean z2, int i2) {
            ActivityThread.this.sendMessage(z2 ? 103 : 104, iBinder, 0, i2);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleStopService(IBinder iBinder) {
            ActivityThread.this.sendMessage(116, iBinder);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleSuicide() {
            ActivityThread.this.sendMessage(130, null);
        }

        @Override // android.app.IApplicationThread
        public void scheduleTranslucentConversionComplete(IBinder iBinder, boolean z2) {
            ActivityThread.this.sendMessage(144, iBinder, z2 ? 1 : 0);
        }

        @Override // android.app.IApplicationThread
        public void scheduleTrimMemory(int i2) {
            ActivityThread.this.sendMessage(140, null, i2);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleUnbindService(IBinder iBinder, Intent intent) {
            BindServiceData bindServiceData = new BindServiceData();
            bindServiceData.token = iBinder;
            bindServiceData.intent = intent;
            ActivityThread.this.sendMessage(122, bindServiceData);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleWindowVisibility(IBinder iBinder, boolean z2) {
            ActivityThread.this.sendMessage(z2 ? 105 : 106, iBinder);
        }

        @Override // android.app.IApplicationThread
        public void setCoreSettings(Bundle bundle) {
            ActivityThread.this.sendMessage(138, bundle);
        }

        @Override // android.app.IApplicationThread
        public void setHttpProxy(String str, String str2, String str3, String str4) {
            Proxy.setHttpProxySystemProperty(str, str2, str3, str4);
        }

        @Override // android.app.IApplicationThread
        public void setProcessState(int i2) {
            updateProcessState(i2, true);
        }

        @Override // android.app.IApplicationThread
        public void setSchedulingGroup(int i2) {
            try {
                Process.setProcessGroup(Process.myPid(), i2);
            } catch (Exception e2) {
                Slog.w(ActivityThread.TAG, "Failed setting process group to " + i2, e2);
            }
        }

        @Override // android.app.IApplicationThread
        public void unstableProviderDied(IBinder iBinder) {
            ActivityThread.this.sendMessage(142, iBinder);
        }

        @Override // android.app.IApplicationThread
        public void updatePackageCompatibilityInfo(String str, CompatibilityInfo compatibilityInfo) {
            UpdateCompatibilityData updateCompatibilityData = new UpdateCompatibilityData();
            updateCompatibilityData.pkg = str;
            updateCompatibilityData.info = compatibilityInfo;
            ActivityThread.this.sendMessage(139, updateCompatibilityData);
        }

        public void updateProcessState(int i2, boolean z2) {
            synchronized (this) {
                if (this.mLastProcessState != i2) {
                    this.mLastProcessState = i2;
                }
            }
        }

        @Override // android.app.IApplicationThread
        public void updateTimeZone() {
            TimeZone.setDefault(null);
        }

        private void dumpMemInfo(PrintWriter printWriter, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4) {
            long nativeHeapSize = Debug.getNativeHeapSize() / 1024;
            long nativeHeapAllocatedSize = Debug.getNativeHeapAllocatedSize() / 1024;
            long nativeHeapFreeSize = Debug.getNativeHeapFreeSize() / 1024;
            Runtime runtime = Runtime.getRuntime();
            long j2 = runtime.totalMemory() / 1024;
            long jFreeMemory = runtime.freeMemory() / 1024;
            long j3 = j2 - jFreeMemory;
            long viewInstanceCount = ViewDebug.getViewInstanceCount();
            long viewRootImplCount = ViewDebug.getViewRootImplCount();
            long jCountInstancesOfClass = Debug.countInstancesOfClass(ContextImpl.class);
            long jCountInstancesOfClass2 = Debug.countInstancesOfClass(Activity.class);
            int globalAssetCount = AssetManager.getGlobalAssetCount();
            int globalAssetManagerCount = AssetManager.getGlobalAssetManagerCount();
            int binderLocalObjectCount = Debug.getBinderLocalObjectCount();
            int binderProxyObjectCount = Debug.getBinderProxyObjectCount();
            int binderDeathObjectCount = Debug.getBinderDeathObjectCount();
            long jCountInstancesOfClass3 = Debug.countInstancesOfClass(OpenSSLSocketImpl.class);
            SQLiteDebug.PagerStats databaseInfo = SQLiteDebug.getDatabaseInfo();
            int iMyPid = Process.myPid();
            AppBindData appBindData = ActivityThread.this.mBoundApplication;
            ActivityThread.dumpMemInfoTable(printWriter, memoryInfo, z2, z3, z4, iMyPid, appBindData != null ? appBindData.processName : "unknown", nativeHeapSize, nativeHeapAllocatedSize, nativeHeapFreeSize, j2, j3, jFreeMemory);
            if (z2) {
                printWriter.print(viewInstanceCount);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(viewRootImplCount);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(jCountInstancesOfClass);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(jCountInstancesOfClass2);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(globalAssetCount);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(globalAssetManagerCount);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(binderLocalObjectCount);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(binderProxyObjectCount);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(binderDeathObjectCount);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(jCountInstancesOfClass3);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(databaseInfo.memoryUsed / 1024);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(databaseInfo.memoryUsed / 1024);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(databaseInfo.pageCacheOverflow / 1024);
                printWriter.print(PhoneNumberUtils.PAUSE);
                printWriter.print(databaseInfo.largestMemAlloc / 1024);
                for (int i2 = 0; i2 < databaseInfo.dbStats.size(); i2++) {
                    SQLiteDebug.DbStats dbStats = databaseInfo.dbStats.get(i2);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(dbStats.dbName);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(dbStats.pageSize);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(dbStats.dbSize);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(dbStats.lookaside);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(dbStats.cache);
                    printWriter.print(PhoneNumberUtils.PAUSE);
                    printWriter.print(dbStats.cache);
                }
                printWriter.println();
                return;
            }
            printWriter.println(" ");
            printWriter.println(" Objects");
            ActivityThread.printRow(printWriter, TWO_COUNT_COLUMNS, "Views:", Long.valueOf(viewInstanceCount), "ViewRootImpl:", Long.valueOf(viewRootImplCount));
            ActivityThread.printRow(printWriter, TWO_COUNT_COLUMNS, "AppContexts:", Long.valueOf(jCountInstancesOfClass), "Activities:", Long.valueOf(jCountInstancesOfClass2));
            ActivityThread.printRow(printWriter, TWO_COUNT_COLUMNS, "Assets:", Integer.valueOf(globalAssetCount), "AssetManagers:", Integer.valueOf(globalAssetManagerCount));
            ActivityThread.printRow(printWriter, TWO_COUNT_COLUMNS, "Local Binders:", Integer.valueOf(binderLocalObjectCount), "Proxy Binders:", Integer.valueOf(binderProxyObjectCount));
            ActivityThread.printRow(printWriter, ONE_COUNT_COLUMN, "Death Recipients:", Integer.valueOf(binderDeathObjectCount));
            ActivityThread.printRow(printWriter, ONE_COUNT_COLUMN, "OpenSSL Sockets:", Long.valueOf(jCountInstancesOfClass3));
            printWriter.println(" ");
            printWriter.println(" SQL");
            ActivityThread.printRow(printWriter, ONE_COUNT_COLUMN, "MEMORY_USED:", Integer.valueOf(databaseInfo.memoryUsed / 1024));
            ActivityThread.printRow(printWriter, TWO_COUNT_COLUMNS, "PAGECACHE_OVERFLOW:", Integer.valueOf(databaseInfo.pageCacheOverflow / 1024), "MALLOC_SIZE:", Integer.valueOf(databaseInfo.largestMemAlloc / 1024));
            printWriter.println(" ");
            int size = databaseInfo.dbStats.size();
            if (size > 0) {
                printWriter.println(" DATABASES");
                int i3 = 5;
                ActivityThread.printRow(printWriter, DB_INFO_FORMAT, "pgsz", "dbsz", "Lookaside(b)", "cache", "Dbname");
                int i4 = 0;
                while (i4 < size) {
                    SQLiteDebug.DbStats dbStats2 = databaseInfo.dbStats.get(i4);
                    Object[] objArr = new Object[i3];
                    long j4 = dbStats2.pageSize;
                    objArr[0] = j4 > 0 ? String.valueOf(j4) : " ";
                    int i5 = i4;
                    long j5 = dbStats2.dbSize;
                    objArr[1] = j5 > 0 ? String.valueOf(j5) : " ";
                    int i6 = dbStats2.lookaside;
                    objArr[2] = i6 > 0 ? String.valueOf(i6) : " ";
                    objArr[3] = dbStats2.cache;
                    objArr[4] = dbStats2.dbName;
                    ActivityThread.printRow(printWriter, DB_INFO_FORMAT, objArr);
                    i4 = i5 + 1;
                    i3 = 5;
                }
            }
            String assetAllocations = AssetManager.getAssetAllocations();
            if (assetAllocations != null) {
                printWriter.println(" ");
                printWriter.println(" Asset Allocations");
                printWriter.print(assetAllocations);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int i2, Object obj, int i3, int i4, boolean z2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.obj = obj;
        messageObtain.arg1 = i3;
        messageObtain.arg2 = i4;
        if (z2) {
            messageObtain.setAsynchronous(true);
        }
        this.mH.sendMessage(messageObtain);
    }

    public final LoadedApk getPackageInfo(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, int i2) {
        int i3;
        AppBindData appBindData;
        boolean z2 = (i2 & 1) != 0;
        boolean z3 = z2 && (i3 = applicationInfo.uid) != 0 && i3 != 1000 && ((appBindData = this.mBoundApplication) == null || !UserHandle.isSameApp(i3, appBindData.appInfo.uid));
        if ((i2 & 3) == 1 && z3) {
            String str = "Requesting code from " + applicationInfo.packageName + " (with uid " + applicationInfo.uid + ")";
            if (this.mBoundApplication != null) {
                str = str + " to be run in process " + this.mBoundApplication.processName + " (with uid " + this.mBoundApplication.appInfo.uid + ")";
            }
            throw new SecurityException(str);
        }
        return getPackageInfo(applicationInfo, compatibilityInfo, null, z3, z2);
    }

    private LoadedApk getPackageInfo(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, ClassLoader classLoader, boolean z2, boolean z3) {
        WeakReference<LoadedApk> weakReference;
        LoadedApk loadedApk;
        Resources resources;
        synchronized (this.mResourcesManager) {
            try {
                if (z3) {
                    weakReference = this.mPackages.get(applicationInfo.packageName);
                } else {
                    weakReference = this.mResourcePackages.get(applicationInfo.packageName);
                }
                loadedApk = weakReference != null ? weakReference.get() : null;
                if (loadedApk == null || ((resources = loadedApk.mResources) != null && !resources.getAssets().isUpToDate())) {
                    LoadedApk loadedApk2 = new LoadedApk(this, applicationInfo, compatibilityInfo, classLoader, z2, z3 && (applicationInfo.flags & 4) != 0);
                    if (z3) {
                        this.mPackages.put(applicationInfo.packageName, new WeakReference<>(loadedApk2));
                    } else {
                        this.mResourcePackages.put(applicationInfo.packageName, new WeakReference<>(loadedApk2));
                    }
                    loadedApk = loadedApk2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return loadedApk;
    }
}
