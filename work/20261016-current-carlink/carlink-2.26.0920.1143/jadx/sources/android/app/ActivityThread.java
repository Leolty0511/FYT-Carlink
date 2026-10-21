package android.app;

import android.app.assist.AssistContent;
import android.app.assist.AssistStructure;
import android.app.backup.BackupAgent;
import android.app.job.JobInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.Context;
import android.content.IContentProvider;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.AppCloneUserInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
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
import android.net.ConnectivityManager;
import android.net.IConnectivityManager;
import android.net.Proxy;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.AsyncTask;
import android.os.BaseBundle;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.DropBoxManager;
import android.os.Environment;
import android.os.GraphicsEnvironment;
import android.os.Handler;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.TransactionTooLargeException;
import android.os.UserHandle;
import android.provider.CallLog;
import android.provider.FontsContract;
import android.provider.MediaStore;
import android.provider.Settings;
import android.renderscript.RenderScriptCacheDir;
import android.security.NetworkSecurityPolicy;
import android.security.net.config.NetworkSecurityConfigProvider;
import android.service.notification.ZenModeConfig;
import android.util.ArrayMap;
import android.util.CheckTime;
import android.util.DisplayMetrics;
import android.util.EventLog;
import android.util.Log;
import android.util.LogWriter;
import android.util.Pair;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseIntArray;
import android.util.SuperNotCalledException;
import android.view.ContextThemeWrapper;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewRootImpl;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.webkit.WebView;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.content.ReferrerIntent;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.RuntimeInit;
import com.android.internal.os.SomeArgs;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.IndentingPrintWriter;
import com.android.org.conscrypt.OpenSSLSocketImpl;
import com.android.org.conscrypt.TrustedCertificateStore;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.CloseGuard;
import dalvik.system.VMDebug;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import libcore.io.DropBox;
import libcore.io.EventLogger;
import libcore.io.IoUtils;
import libcore.net.event.NetworkEventDispatcher;
import org.apache.harmony.dalvik.ddmc.DdmVmInternal;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityThread {
    private static final int ACTIVITY_THREAD_CHECKIN_VERSION = 4;
    private static final boolean DEBUG_BACKUP = false;
    public static final boolean DEBUG_BROADCAST = false;
    public static final boolean DEBUG_CONFIGURATION = false;
    private static final boolean DEBUG_MEMORY_TRIM = false;
    static final boolean DEBUG_MESSAGES = false;
    private static final boolean DEBUG_ORDER = false;
    private static final boolean DEBUG_PROVIDER = false;
    private static final boolean DEBUG_RESULTS = false;
    private static final boolean DEBUG_SERVICE = false;
    private static final int DONT_REPORT = 2;
    private static final String HEAP_COLUMN = "%13s %8s %8s %8s %8s %8s %8s %8s";
    private static final String HEAP_FULL_COLUMN = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s";
    public static final long INVALID_PROC_STATE_SEQ = -1;
    private static final int LOG_AM_ON_PAUSE_CALLED = 30021;
    private static final int LOG_AM_ON_RESUME_CALLED = 30022;
    private static final int LOG_AM_ON_STOP_CALLED = 30049;
    private static final long MIN_TIME_BETWEEN_GCS = 5000;
    private static final String ONE_COUNT_COLUMN = "%21s %8d";
    private static final String ONE_COUNT_COLUMN_HEADER = "%21s %8s";
    private static final boolean REPORT_TO_ACTIVITY = true;
    public static final int SERVICE_DONE_EXECUTING_ANON = 0;
    public static final int SERVICE_DONE_EXECUTING_START = 1;
    public static final int SERVICE_DONE_EXECUTING_STOP = 2;
    private static final int SQLITE_MEM_RELEASED_EVENT_LOG_TAG = 75003;
    public static final String TAG = "ActivityThread";
    private static final String TWO_COUNT_COLUMNS = "%21s %8d %21s %8d";
    private static final int USER_LEAVING = 1;
    static final boolean localLOGV = false;
    private static volatile ActivityThread sCurrentActivityThread;
    static volatile Handler sMainThreadHandler;
    static volatile IPackageManager sPackageManager;
    final ApplicationThread mAppThread;
    AppBindData mBoundApplication;
    Configuration mCompatConfiguration;
    Configuration mConfiguration;
    int mCurDefaultDisplayDpi;
    boolean mDensityCompatMode;
    final H mH;
    Application mInitialApplication;
    Instrumentation mInstrumentation;
    private int mLastSessionId;
    Profiler mProfiler;
    private ContextImpl mSystemContext;
    private ContextImpl mSystemUiContext;
    private static final Bitmap.Config THUMBNAIL_FORMAT = Bitmap.Config.RGB_565;
    private static final ThreadLocal<Intent> sCurrentBroadcastIntent = new ThreadLocal<>();
    private final Object mNetworkPolicyLock = new Object();

    @GuardedBy("mNetworkPolicyLock")
    private long mNetworkBlockSeq = -1;
    final Looper mLooper = Looper.myLooper();
    final ArrayMap<IBinder, ActivityClientRecord> mActivities = new ArrayMap<>();
    ActivityClientRecord mNewActivities = null;
    int mNumVisibleActivities = 0;
    ArrayList<WeakReference<AssistStructure>> mLastAssistStructures = new ArrayList<>();
    final ArrayMap<IBinder, Service> mServices = new ArrayMap<>();
    final ArrayList<Application> mAllApplications = new ArrayList<>();
    final ArrayMap<String, BackupAgent> mBackupAgents = new ArrayMap<>();
    String mInstrumentationPackageName = null;
    String mInstrumentationAppDir = null;
    String[] mInstrumentationSplitAppDirs = null;
    String mInstrumentationLibDir = null;
    String mInstrumentedAppDir = null;
    String[] mInstrumentedSplitAppDirs = null;
    String mInstrumentedLibDir = null;
    boolean mSystemThread = false;
    boolean mJitEnabled = false;
    boolean mSomeActivitiesChanged = false;
    boolean mUpdatingSystemConfig = false;

    @GuardedBy("mResourcesManager")
    final ArrayMap<String, WeakReference<LoadedApk>> mPackages = new ArrayMap<>();

    @GuardedBy("mResourcesManager")
    final ArrayMap<String, WeakReference<LoadedApk>> mResourcePackages = new ArrayMap<>();

    @GuardedBy("mResourcesManager")
    final ArrayList<ActivityClientRecord> mRelaunchingActivities = new ArrayList<>();

    @GuardedBy("mResourcesManager")
    Configuration mPendingConfiguration = null;

    @GuardedBy("mResourcesManager")
    int mLifecycleSeq = 0;
    final ArrayMap<ProviderKey, ProviderClientRecord> mProviderMap = new ArrayMap<>();
    final ArrayMap<IBinder, ProviderRefCount> mProviderRefCountMap = new ArrayMap<>();
    final ArrayMap<IBinder, ProviderClientRecord> mLocalProviders = new ArrayMap<>();
    final ArrayMap<ComponentName, ProviderClientRecord> mLocalProvidersByName = new ArrayMap<>();
    final ArrayMap<Activity, ArrayList<OnActivityPausedListener>> mOnPauseListeners = new ArrayMap<>();
    final GcIdler mGcIdler = new GcIdler();
    boolean mGcIdlerScheduled = false;
    Bundle mCoreSettings = null;
    private Configuration mMainThreadConfig = new Configuration();
    private int mThumbnailWidth = -1;
    private int mThumbnailHeight = -1;
    private Bitmap mAvailThumbnailBitmap = null;
    private Canvas mThumbnailCanvas = null;
    private final ResourcesManager mResourcesManager = ResourcesManager.getInstance();

    public static final class ActivityClientRecord {
        Activity activity;
        ActivityInfo activityInfo;
        CompatibilityInfo compatInfo;
        Configuration createdConfig;
        int ident;
        Intent intent;
        boolean isForward;
        Activity.NonConfigurationInstances lastNonConfigurationInstances;
        Window mPendingRemoveWindow;
        WindowManager mPendingRemoveWindowManager;
        boolean mPreserveWindow;
        Configuration newConfig;
        boolean onlyLocalRequest;
        Configuration overrideConfig;
        LoadedApk packageInfo;
        int pendingConfigChanges;
        List<ReferrerIntent> pendingIntents;
        List<ResultInfo> pendingResults;
        PersistableBundle persistentState;
        ProfilerInfo profilerInfo;
        String referrer;
        boolean startsNotResumed;
        Bundle state;
        IBinder token;
        IVoiceInteractor voiceInteractor;
        Window window;
        private Configuration tmpConfig = new Configuration();
        int relaunchSeq = 0;
        int lastProcessedSeq = 0;
        Activity parent = null;
        String embeddedID = null;
        boolean paused = false;
        boolean stopped = false;
        boolean hideForNow = false;
        ActivityClientRecord nextIdle = null;
        ViewRootImpl.ActivityConfigCallback configCallback = new b(this);

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(Configuration configuration, int i2) {
            Activity activity = this.activity;
            if (activity == null) {
                throw new IllegalStateException("Received config update for non-existing activity");
            }
            activity.mMainThread.handleActivityConfigurationChanged(new ActivityConfigChangeData(this.token, configuration), i2);
        }

        public String getStateString() {
            StringBuilder sb = new StringBuilder("ActivityClientRecord{paused=");
            sb.append(this.paused);
            sb.append(", stopped=");
            sb.append(this.stopped);
            sb.append(", hideForNow=");
            sb.append(this.hideForNow);
            sb.append(", startsNotResumed=");
            sb.append(this.startsNotResumed);
            sb.append(", isForward=");
            sb.append(this.isForward);
            sb.append(", pendingConfigChanges=");
            sb.append(this.pendingConfigChanges);
            sb.append(", onlyLocalRequest=");
            sb.append(this.onlyLocalRequest);
            sb.append(", preserveWindow=");
            sb.append(this.mPreserveWindow);
            if (this.activity != null) {
                sb.append(", Activity{resumed=");
                sb.append(this.activity.mResumed);
                sb.append(", stopped=");
                sb.append(this.activity.mStopped);
                sb.append(", finished=");
                sb.append(this.activity.isFinishing());
                sb.append(", destroyed=");
                sb.append(this.activity.isDestroyed());
                sb.append(", startedActivity=");
                sb.append(this.activity.mStartedActivity);
                sb.append(", temporaryPause=");
                sb.append(this.activity.mTemporaryPause);
                sb.append(", changingConfigurations=");
                sb.append(this.activity.mChangingConfigurations);
                sb.append("}");
            }
            sb.append("}");
            return sb.toString();
        }

        public boolean isPersistable() {
            return this.activityInfo.persistableMode == 2;
        }

        public boolean isPreHoneycomb() {
            Activity activity = this.activity;
            return activity != null && activity.getApplicationInfo().targetSdkVersion < 11;
        }

        public String toString() {
            Intent intent = this.intent;
            ComponentName component = intent != null ? intent.getComponent() : null;
            StringBuilder sb = new StringBuilder("ActivityRecord{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" token=");
            sb.append(this.token);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            return android.accessibilityservice.c.n(sb, component == null ? "no component name" : component.toShortString(), "}");
        }
    }

    public static final class ActivityConfigChangeData {
        final IBinder activityToken;
        final Configuration overrideConfig;

        public ActivityConfigChangeData(IBinder iBinder, Configuration configuration) {
            this.activityToken = iBinder;
            this.overrideConfig = configuration;
        }
    }

    public static final class AppBindData {
        ApplicationInfo appInfo;
        String buildSerial;
        CompatibilityInfo compatInfo;
        Configuration config;
        int debugMode;
        boolean enableBinderTracking;
        LoadedApk info;
        ProfilerInfo initProfilerInfo;
        Bundle instrumentationArgs;
        ComponentName instrumentationName;
        IUiAutomationConnection instrumentationUiAutomationConnection;
        IInstrumentationWatcher instrumentationWatcher;
        boolean persistent;
        String processName;
        List<ProviderInfo> providers;
        boolean restrictedBackupMode;
        boolean trackAllocation;

        public String toString() {
            return "AppBindData{appInfo=" + this.appInfo + "}";
        }
    }

    public static final class BindServiceData {
        Intent intent;
        boolean rebind;
        IBinder token;

        public String toString() {
            return "BindServiceData{token=" + this.token + " intent=" + this.intent + "}";
        }
    }

    public static final class ContextCleanupInfo {
        ContextImpl context;
        String what;
        String who;
    }

    public static final class CreateBackupAgentData {
        ApplicationInfo appInfo;
        int backupMode;
        CompatibilityInfo compatInfo;

        public String toString() {
            StringBuilder sb = new StringBuilder("CreateBackupAgentData{appInfo=");
            sb.append(this.appInfo);
            sb.append(" backupAgent=");
            sb.append(this.appInfo.backupAgentName);
            sb.append(" mode=");
            return android.accessibilityservice.c.m(sb, this.backupMode, "}");
        }
    }

    public static final class CreateServiceData {
        CompatibilityInfo compatInfo;
        ServiceInfo info;
        Intent intent;
        IBinder token;

        public String toString() {
            return "CreateServiceData{token=" + this.token + " className=" + this.info.name + " packageName=" + this.info.packageName + " intent=" + this.intent + "}";
        }
    }

    public class DropBoxReporter implements DropBox.Reporter {
        private DropBoxManager dropBox;

        public DropBoxReporter() {
        }

        private synchronized void ensureInitialized() {
            if (this.dropBox == null) {
                this.dropBox = (DropBoxManager) ActivityThread.this.getSystemContext().getSystemService(Context.DROPBOX_SERVICE);
            }
        }

        public void addData(String str, byte[] bArr, int i2) {
            ensureInitialized();
            this.dropBox.addData(str, bArr, i2);
        }

        public void addText(String str, String str2) {
            ensureInitialized();
            this.dropBox.addText(str, str2);
        }
    }

    public static final class DumpComponentInfo {
        String[] args;
        ParcelFileDescriptor fd;
        String prefix;
        IBinder token;
    }

    public static final class DumpHeapData {
        ParcelFileDescriptor fd;
        public boolean mallocInfo;
        public boolean managed;
        String path;
        public boolean runGc;
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
        public static final int ACTIVITY_MOVED_TO_DISPLAY = 157;
        public static final int APPLICATION_INFO_CHANGED = 156;
        public static final int ATTACH_AGENT = 155;
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
        public static final int ENTER_ANIMATION_COMPLETE = 149;
        public static final int EXIT_APPLICATION = 111;
        public static final int GC_WHEN_IDLE = 120;
        public static final int HIDE_WINDOW = 106;
        public static final int INSTALL_PROVIDER = 145;
        public static final int LAUNCH_ACTIVITY = 100;
        public static final int LOCAL_VOICE_INTERACTION_STARTED = 154;
        public static final int LOW_MEMORY = 124;
        public static final int MULTI_WINDOW_MODE_CHANGED = 152;
        public static final int NEW_INTENT = 112;
        public static final int ON_NEW_ACTIVITY_OPTIONS = 146;
        public static final int PAUSE_ACTIVITY = 101;
        public static final int PAUSE_ACTIVITY_FINISHING = 102;
        public static final int PICTURE_IN_PICTURE_MODE_CHANGED = 153;
        public static final int PROFILER_CONTROL = 127;
        public static final int RECEIVER = 113;
        public static final int RELAUNCH_ACTIVITY = 126;
        public static final int REMOVE_PROVIDER = 131;
        public static final int REQUEST_ASSIST_CONTEXT_EXTRAS = 143;
        public static final int RESUME_ACTIVITY = 107;
        public static final int SCHEDULE_CRASH = 134;
        public static final int SEND_RESULT = 108;
        public static final int SERVICE_ARGS = 115;
        public static final int SET_CORE_SETTINGS = 138;
        public static final int SHOW_WINDOW = 105;
        public static final int SLEEPING = 137;
        public static final int START_BINDER_TRACKING = 150;
        public static final int STOP_ACTIVITY_HIDE = 104;
        public static final int STOP_ACTIVITY_SHOW = 103;
        public static final int STOP_BINDER_TRACKING_AND_DUMP = 151;
        public static final int STOP_SERVICE = 116;
        public static final int SUICIDE = 130;
        public static final int TRANSLUCENT_CONVERSION_COMPLETE = 144;
        public static final int TRIM_MEMORY = 140;
        public static final int UNBIND_SERVICE = 122;
        public static final int UNSTABLE_PROVIDER_DIED = 142;
        public static final int UPDATE_PACKAGE_COMPATIBILITY_INFO = 139;

        private H() {
        }

        public String codeToString(int i2) {
            return Integer.toString(i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 100:
                    Trace.traceBegin(64L, "activityStart");
                    ActivityClientRecord activityClientRecord = (ActivityClientRecord) message.obj;
                    activityClientRecord.packageInfo = ActivityThread.this.getPackageInfoNoCheck(activityClientRecord.activityInfo.applicationInfo, activityClientRecord.compatInfo);
                    ActivityThread.this.handleLaunchActivity(activityClientRecord, null, "LAUNCH_ACTIVITY");
                    Trace.traceEnd(64L);
                    break;
                case 101:
                    Trace.traceBegin(64L, "activityPause");
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    ActivityThread activityThread = ActivityThread.this;
                    IBinder iBinder = (IBinder) someArgs.arg1;
                    int i2 = someArgs.argi1;
                    activityThread.handlePauseActivity(iBinder, false, (i2 & 1) != 0, someArgs.argi2, (i2 & 2) != 0, someArgs.argi3);
                    Trace.traceEnd(64L);
                    break;
                case 102:
                    Trace.traceBegin(64L, "activityPause");
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    ActivityThread activityThread2 = ActivityThread.this;
                    IBinder iBinder2 = (IBinder) someArgs2.arg1;
                    int i3 = someArgs2.argi1;
                    activityThread2.handlePauseActivity(iBinder2, true, (i3 & 1) != 0, someArgs2.argi2, (i3 & 2) != 0, someArgs2.argi3);
                    Trace.traceEnd(64L);
                    break;
                case 103:
                    Trace.traceBegin(64L, "activityStop");
                    SomeArgs someArgs3 = (SomeArgs) message.obj;
                    ActivityThread.this.handleStopActivity((IBinder) someArgs3.arg1, true, someArgs3.argi2, someArgs3.argi3);
                    Trace.traceEnd(64L);
                    break;
                case 104:
                    Trace.traceBegin(64L, "activityStop");
                    SomeArgs someArgs4 = (SomeArgs) message.obj;
                    ActivityThread.this.handleStopActivity((IBinder) someArgs4.arg1, false, someArgs4.argi2, someArgs4.argi3);
                    Trace.traceEnd(64L);
                    break;
                case 105:
                    Trace.traceBegin(64L, "activityShowWindow");
                    ActivityThread.this.handleWindowVisibility((IBinder) message.obj, true);
                    Trace.traceEnd(64L);
                    break;
                case 106:
                    Trace.traceBegin(64L, "activityHideWindow");
                    ActivityThread.this.handleWindowVisibility((IBinder) message.obj, false);
                    Trace.traceEnd(64L);
                    break;
                case 107:
                    Trace.traceBegin(64L, "activityResume");
                    SomeArgs someArgs5 = (SomeArgs) message.obj;
                    ActivityThread.this.handleResumeActivity((IBinder) someArgs5.arg1, true, someArgs5.argi1 != 0, true, someArgs5.argi3, "RESUME_ACTIVITY");
                    Trace.traceEnd(64L);
                    break;
                case 108:
                    Trace.traceBegin(64L, "activityDeliverResult");
                    ActivityThread.this.handleSendResult((ResultData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 109:
                    Trace.traceBegin(64L, "activityDestroy");
                    ActivityThread.this.handleDestroyActivity((IBinder) message.obj, message.arg1 != 0, message.arg2, false);
                    Trace.traceEnd(64L);
                    break;
                case 110:
                    Trace.traceBegin(64L, "bindApplication");
                    ActivityThread.this.handleBindApplication((AppBindData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 111:
                    Application application = ActivityThread.this.mInitialApplication;
                    if (application != null) {
                        application.onTerminate();
                    }
                    Looper.myLooper().quit();
                    break;
                case 112:
                    Trace.traceBegin(64L, "activityNewIntent");
                    ActivityThread.this.handleNewIntent((NewIntentData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 113:
                    Trace.traceBegin(64L, "broadcastReceiveComp");
                    ActivityThread.this.handleReceiver((ReceiverData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 114:
                    Trace.traceBegin(64L, "serviceCreate: ".concat(String.valueOf(message.obj)));
                    ActivityThread.this.handleCreateService((CreateServiceData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 115:
                    Trace.traceBegin(64L, "serviceStart: ".concat(String.valueOf(message.obj)));
                    ActivityThread.this.handleServiceArgs((ServiceArgsData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 116:
                    Trace.traceBegin(64L, "serviceStop");
                    ActivityThread.this.handleStopService((IBinder) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 118:
                    Trace.traceBegin(64L, "configChanged");
                    ActivityThread activityThread3 = ActivityThread.this;
                    Object obj = message.obj;
                    activityThread3.mCurDefaultDisplayDpi = ((Configuration) obj).densityDpi;
                    activityThread3.mUpdatingSystemConfig = true;
                    try {
                        activityThread3.handleConfigurationChanged((Configuration) obj, null);
                        ActivityThread.this.mUpdatingSystemConfig = false;
                        Trace.traceEnd(64L);
                    } catch (Throwable th) {
                        ActivityThread.this.mUpdatingSystemConfig = false;
                        throw th;
                    }
                    break;
                case 119:
                    ContextCleanupInfo contextCleanupInfo = (ContextCleanupInfo) message.obj;
                    contextCleanupInfo.context.performFinalCleanup(contextCleanupInfo.who, contextCleanupInfo.what);
                    break;
                case 120:
                    ActivityThread.this.scheduleGcIdler();
                    break;
                case 121:
                    Trace.traceBegin(64L, "serviceBind");
                    ActivityThread.this.handleBindService((BindServiceData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 122:
                    Trace.traceBegin(64L, "serviceUnbind");
                    ActivityThread.this.handleUnbindService((BindServiceData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 123:
                    ActivityThread.this.handleDumpService((DumpComponentInfo) message.obj);
                    break;
                case 124:
                    Trace.traceBegin(64L, "lowMemory");
                    ActivityThread.this.handleLowMemory();
                    Trace.traceEnd(64L);
                    break;
                case 125:
                    Trace.traceBegin(64L, "activityConfigChanged");
                    ActivityThread.this.handleActivityConfigurationChanged((ActivityConfigChangeData) message.obj, -1);
                    Trace.traceEnd(64L);
                    break;
                case 126:
                    Trace.traceBegin(64L, "activityRestart");
                    ActivityThread.this.handleRelaunchActivity((ActivityClientRecord) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 127:
                    ActivityThread.this.handleProfilerControl(message.arg1 != 0, (ProfilerInfo) message.obj, message.arg2);
                    break;
                case 128:
                    Trace.traceBegin(64L, "backupCreateAgent");
                    ActivityThread.this.handleCreateBackupAgent((CreateBackupAgentData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 129:
                    Trace.traceBegin(64L, "backupDestroyAgent");
                    ActivityThread.this.handleDestroyBackupAgent((CreateBackupAgentData) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 130:
                    Process.killProcess(Process.myPid());
                    break;
                case 131:
                    Trace.traceBegin(64L, "providerRemove");
                    ActivityThread.this.completeRemoveProvider((ProviderRefCount) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 132:
                    ActivityThread.this.ensureJitEnabled();
                    break;
                case 133:
                    Trace.traceBegin(64L, "broadcastPackage");
                    ActivityThread.this.handleDispatchPackageBroadcast(message.arg1, (String[]) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 134:
                    throw new RemoteServiceException((String) message.obj);
                case 135:
                    ActivityThread.handleDumpHeap((DumpHeapData) message.obj);
                    break;
                case 136:
                    ActivityThread.this.handleDumpActivity((DumpComponentInfo) message.obj);
                    break;
                case 137:
                    Trace.traceBegin(64L, "sleeping");
                    ActivityThread.this.handleSleeping((IBinder) message.obj, message.arg1 != 0);
                    Trace.traceEnd(64L);
                    break;
                case 138:
                    Trace.traceBegin(64L, "setCoreSettings");
                    ActivityThread.this.handleSetCoreSettings((Bundle) message.obj);
                    Trace.traceEnd(64L);
                    break;
                case 139:
                    ActivityThread.this.handleUpdatePackageCompatibilityInfo((UpdateCompatibilityData) message.obj);
                    break;
                case 140:
                    Trace.traceBegin(64L, "trimMemory");
                    ActivityThread.this.handleTrimMemory(message.arg1);
                    Trace.traceEnd(64L);
                    break;
                case 141:
                    ActivityThread.this.handleDumpProvider((DumpComponentInfo) message.obj);
                    break;
                case 142:
                    ActivityThread.this.handleUnstableProviderDied((IBinder) message.obj, false);
                    break;
                case 143:
                    ActivityThread.this.handleRequestAssistContextExtras((RequestAssistContextExtras) message.obj);
                    break;
                case 144:
                    ActivityThread.this.handleTranslucentConversionComplete((IBinder) message.obj, message.arg1 == 1);
                    break;
                case 145:
                    ActivityThread.this.handleInstallProvider((ProviderInfo) message.obj);
                    break;
                case 146:
                    Pair pair = (Pair) message.obj;
                    ActivityThread.this.onNewActivityOptions((IBinder) pair.first, (ActivityOptions) pair.second);
                    break;
                case 149:
                    ActivityThread.this.handleEnterAnimationComplete((IBinder) message.obj);
                    break;
                case 150:
                    ActivityThread.this.handleStartBinderTracking();
                    break;
                case 151:
                    ActivityThread.this.handleStopBinderTrackingAndDump((ParcelFileDescriptor) message.obj);
                    break;
                case 152:
                    ActivityThread activityThread4 = ActivityThread.this;
                    Object obj2 = message.obj;
                    activityThread4.handleMultiWindowModeChanged((IBinder) ((SomeArgs) obj2).arg1, ((SomeArgs) obj2).argi1 == 1, (Configuration) ((SomeArgs) obj2).arg2);
                    break;
                case 153:
                    ActivityThread activityThread5 = ActivityThread.this;
                    Object obj3 = message.obj;
                    activityThread5.handlePictureInPictureModeChanged((IBinder) ((SomeArgs) obj3).arg1, ((SomeArgs) obj3).argi1 == 1, (Configuration) ((SomeArgs) obj3).arg2);
                    break;
                case 154:
                    ActivityThread activityThread6 = ActivityThread.this;
                    Object obj4 = message.obj;
                    activityThread6.handleLocalVoiceInteractionStarted((IBinder) ((SomeArgs) obj4).arg1, (IVoiceInteractor) ((SomeArgs) obj4).arg2);
                    break;
                case 155:
                    ActivityThread.handleAttachAgent((String) message.obj);
                    break;
                case 156:
                    ActivityThread activityThread7 = ActivityThread.this;
                    activityThread7.mUpdatingSystemConfig = true;
                    try {
                        activityThread7.handleApplicationInfoChanged((ApplicationInfo) message.obj);
                        ActivityThread.this.mUpdatingSystemConfig = false;
                    } catch (Throwable th2) {
                        ActivityThread.this.mUpdatingSystemConfig = false;
                        throw th2;
                    }
                    break;
                case 157:
                    Trace.traceBegin(64L, "activityMovedToDisplay");
                    ActivityThread.this.handleActivityConfigurationChanged((ActivityConfigChangeData) message.obj, message.arg1);
                    Trace.traceEnd(64L);
                    break;
            }
            Object obj5 = message.obj;
            if (obj5 instanceof SomeArgs) {
                ((SomeArgs) obj5).recycle();
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
                IActivityManager service = ActivityManager.getService();
                while (true) {
                    Activity activity = activityClientRecord.activity;
                    if (activity != null && !activity.mFinished) {
                        try {
                            service.activityIdle(activityClientRecord.token, activityClientRecord.createdConfig, z2);
                            activityClientRecord.createdConfig = null;
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
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
        boolean andPause;
        List<ReferrerIntent> intents;
        IBinder token;

        public String toString() {
            StringBuilder sb = new StringBuilder("NewIntentData{intents=");
            sb.append(this.intents);
            sb.append(" token=");
            sb.append(this.token);
            sb.append(" andPause=");
            return android.accessibilityservice.c.o(sb, this.andPause, "}");
        }
    }

    public static final class Profiler {
        boolean autoStopProfiler;
        boolean handlingProfiling;
        ParcelFileDescriptor profileFd;
        String profileFile;
        boolean profiling;
        int samplingInterval;
        boolean streamingOutput;

        public void setProfiler(ProfilerInfo profilerInfo) {
            ParcelFileDescriptor parcelFileDescriptor = profilerInfo.profileFd;
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
            this.profileFile = profilerInfo.profileFile;
            this.profileFd = parcelFileDescriptor;
            this.samplingInterval = profilerInfo.samplingInterval;
            this.autoStopProfiler = profilerInfo.autoStopProfiler;
            this.streamingOutput = profilerInfo.streamingOutput;
        }

        public void startProfiling() {
            if (this.profileFd == null || this.profiling) {
                return;
            }
            try {
                int i2 = SystemProperties.getInt("debug.traceview-buffer-size-mb", 8);
                String str = this.profileFile;
                FileDescriptor fileDescriptor = this.profileFd.getFileDescriptor();
                int i3 = i2 * 1024 * 1024;
                int i4 = this.samplingInterval;
                VMDebug.startMethodTracing(str, fileDescriptor, i3, 0, i4 != 0, i4, this.streamingOutput);
                this.profiling = true;
            } catch (RuntimeException unused) {
                Slog.w("ActivityThread", "Profiling failed on path " + this.profileFile);
                try {
                    this.profileFd.close();
                    this.profileFd = null;
                } catch (IOException e2) {
                    Slog.w("ActivityThread", "Failure closing profile fd", e2);
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

    public final class ProviderClientRecord {
        final ContentProviderHolder mHolder;
        final ContentProvider mLocalProvider;
        final String[] mNames;
        final IContentProvider mProvider;

        public ProviderClientRecord(String[] strArr, IContentProvider iContentProvider, ContentProvider contentProvider, ContentProviderHolder contentProviderHolder) {
            this.mNames = strArr;
            this.mProvider = iContentProvider;
            this.mLocalProvider = contentProvider;
            this.mHolder = contentProviderHolder;
        }
    }

    public static final class ProviderKey {
        final String authority;
        final int userId;

        public ProviderKey(String str, int i2) {
            this.authority = str;
            this.userId = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ProviderKey)) {
                return false;
            }
            ProviderKey providerKey = (ProviderKey) obj;
            return Objects.equals(this.authority, providerKey.authority) && this.userId == providerKey.userId;
        }

        public int hashCode() {
            String str = this.authority;
            return (str != null ? str.hashCode() : 0) ^ this.userId;
        }
    }

    public static final class ProviderRefCount {
        public final ProviderClientRecord client;
        public final ContentProviderHolder holder;
        public boolean removePending;
        public int stableCount;
        public int unstableCount;

        public ProviderRefCount(ContentProviderHolder contentProviderHolder, ProviderClientRecord providerClientRecord, int i2, int i3) {
            this.holder = contentProviderHolder;
            this.client = providerClientRecord;
            this.stableCount = i2;
            this.unstableCount = i3;
        }
    }

    public static final class ReceiverData extends BroadcastReceiver.PendingResult {
        CompatibilityInfo compatInfo;
        ActivityInfo info;
        Intent intent;
        long receiveTime;

        public ReceiverData(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, IBinder iBinder, int i3) {
            super(i2, str, bundle, 0, z2, z3, iBinder, i3, intent.getFlags());
            this.intent = intent;
            this.receiveTime = CheckTime.getTime();
        }

        public String toString() {
            return "ReceiverData{intent=" + this.intent + " packageName=" + this.info.packageName + " resultCode=" + getResultCode() + " resultData=" + getResultData() + " resultExtras=" + getResultExtras(false) + "}";
        }
    }

    public static final class RequestAssistContextExtras {
        IBinder activityToken;
        int flags;
        IBinder requestToken;
        int requestType;
        int sessionId;
    }

    public static final class ResultData {
        List<ResultInfo> results;
        IBinder token;

        public String toString() {
            return "ResultData{token=" + this.token + " results" + this.results + "}";
        }
    }

    public static final class ServiceArgsData {
        Intent args;
        int flags;
        int startId;
        boolean taskRemoved;
        IBinder token;

        public String toString() {
            return "ServiceArgsData{token=" + this.token + " startId=" + this.startId + " args=" + this.args + "}";
        }
    }

    public static class StopInfo implements Runnable {
        ActivityClientRecord activity;
        CharSequence description;
        PersistableBundle persistentState;
        Bundle state;

        private StopInfo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ActivityManager.getService().activityStopped(this.activity.token, this.state, this.persistentState, this.description);
            } catch (RemoteException e2) {
                IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(new LogWriter(5, "ActivityThread"), "  ");
                indentingPrintWriter.println("Bundle stats:");
                BaseBundle.dumpStats(indentingPrintWriter, this.state);
                indentingPrintWriter.println("PersistableBundle stats:");
                BaseBundle.dumpStats(indentingPrintWriter, this.persistentState);
                if (!(e2 instanceof TransactionTooLargeException) || this.activity.packageInfo.getTargetSdkVersion() >= 24) {
                    throw e2.rethrowFromSystemServer();
                }
                Log.e("ActivityThread", "App sent too much data in instance state, so it was ignored", e2);
            }
        }
    }

    public static final class UpdateCompatibilityData {
        CompatibilityInfo info;
        String pkg;
    }

    public ActivityThread() {
        this.mAppThread = new ApplicationThread();
        this.mH = new H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustIntentForAppClone(Intent intent) {
        if (Intent.ACTION_PACKAGE_REMOVED.equals(intent.getAction()) || Intent.ACTION_PACKAGE_ADDED.equals(intent.getAction())) {
            if (isNeedAdjustHomeActivity(currentPackageName())) {
                int intExtra = intent.getIntExtra(Intent.EXTRA_USER_HANDLE, -1);
                if (AppCloneUserInfo.isAppCloneUserId(intExtra)) {
                    intent.setData(Uri.fromParts("package", AppCloneUserInfo.addCloneTag(intent.getData().getSchemeSpecificPart(), intExtra), null));
                    return;
                }
                return;
            }
            return;
        }
        if (("com.android.launcher.action.INSTALL_SHORTCUT".equals(intent.getAction()) || Intent.ACTION_CREATE_SHORTCUT.equals(intent.getAction())) && !isNeedAdjustHomeActivity(currentPackageName())) {
            Intent intent2 = (Intent) intent.getExtra(Intent.EXTRA_SHORTCUT_INTENT);
            if (intent2.getComponent() != null) {
                intent2.setComponent(new ComponentName(AppCloneUserInfo.removeCloneTag(intent2.getComponent().getPackageName()), intent2.getComponent().getClassName()));
            }
            intent.putExtra(Intent.EXTRA_SHORTCUT_INTENT, intent2);
        }
    }

    private void attach(boolean z2) {
        sCurrentActivityThread = this;
        this.mSystemThread = z2;
        if (z2) {
            DdmHandleAppName.setAppName("system_process", UserHandle.myUserId());
            try {
                this.mInstrumentation = new Instrumentation();
                this.mInitialApplication = ContextImpl.createAppContext(this, getSystemContext().mPackageInfo).mPackageInfo.makeApplication(true, null);
                Trace.traceBegin(64L, "mInitialApplication onCreate");
                this.mInitialApplication.onCreate();
                Trace.traceEnd(64L);
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
            RuntimeInit.setApplicationObject(this.mAppThread.asBinder());
            final IActivityManager service = ActivityManager.getService();
            try {
                try {
                    Trace.traceBegin(64L, "attachApplication");
                    service.attachApplication(this.mAppThread);
                    Trace.traceEnd(64L);
                    BinderInternal.addGcWatcher(new Runnable() { // from class: android.app.ActivityThread.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ActivityThread.this.mSomeActivitiesChanged) {
                                Runtime runtime = Runtime.getRuntime();
                                if (runtime.totalMemory() - runtime.freeMemory() > (runtime.maxMemory() * 3) / 4) {
                                    ActivityThread activityThread = ActivityThread.this;
                                    activityThread.mSomeActivitiesChanged = false;
                                    try {
                                        service.releaseSomeActivities(activityThread.mAppThread);
                                    } catch (RemoteException e3) {
                                        throw e3.rethrowFromSystemServer();
                                    }
                                }
                            }
                        }
                    });
                } catch (RemoteException e3) {
                    throw e3.rethrowFromSystemServer();
                }
            } catch (Throwable th) {
                Trace.traceEnd(64L);
                throw th;
            }
        }
        DropBox.setReporter(new DropBoxReporter());
        ViewRootImpl.addConfigCallback(new ViewRootImpl.ConfigChangedCallback() { // from class: android.app.a
            @Override // android.view.ViewRootImpl.ConfigChangedCallback
            public final void onConfigurationChanged(Configuration configuration) {
                this.f11a.lambda$attach$0(configuration);
            }
        });
    }

    private void callCallActivityOnSaveInstanceState(ActivityClientRecord activityClientRecord) {
        Bundle bundle = new Bundle();
        activityClientRecord.state = bundle;
        bundle.setAllowFds(false);
        if (!activityClientRecord.isPersistable()) {
            this.mInstrumentation.callActivityOnSaveInstanceState(activityClientRecord.activity, activityClientRecord.state);
            return;
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        activityClientRecord.persistentState = persistableBundle;
        this.mInstrumentation.callActivityOnSaveInstanceState(activityClientRecord.activity, activityClientRecord.state, persistableBundle);
    }

    private void checkAndBlockForNetworkAccess() {
        synchronized (this.mNetworkPolicyLock) {
            if (this.mNetworkBlockSeq != -1) {
                try {
                    ActivityManager.getService().waitForNetworkStateUpdate(this.mNetworkBlockSeq);
                    this.mNetworkBlockSeq = -1L;
                } catch (RemoteException unused) {
                }
            }
        }
    }

    private static boolean checkAndUpdateLifecycleSeq(int i2, ActivityClientRecord activityClientRecord, String str) {
        if (activityClientRecord == null) {
            return true;
        }
        if (i2 < activityClientRecord.lastProcessedSeq) {
            return false;
        }
        activityClientRecord.lastProcessedSeq = i2;
        return true;
    }

    public static final void cleanUpPendingRemoveWindows(ActivityClientRecord activityClientRecord, boolean z2) {
        if (!activityClientRecord.mPreserveWindow || z2) {
            Window window = activityClientRecord.mPendingRemoveWindow;
            if (window != null) {
                activityClientRecord.mPendingRemoveWindowManager.removeViewImmediate(window.getDecorView());
                IBinder windowToken = activityClientRecord.mPendingRemoveWindow.getDecorView().getWindowToken();
                if (windowToken != null) {
                    WindowManagerGlobal.getInstance().closeAll(windowToken, activityClientRecord.activity.getClass().getName(), "Activity");
                }
            }
            activityClientRecord.mPendingRemoveWindow = null;
            activityClientRecord.mPendingRemoveWindowManager = null;
        }
    }

    private ContextImpl createBaseContextForActivity(ActivityClientRecord activityClientRecord) {
        try {
            int activityDisplayId = ActivityManager.getService().getActivityDisplayId(activityClientRecord.token);
            Trace.traceBegin(64L, "createActivityContext");
            ContextImpl contextImplCreateActivityContext = ContextImpl.createActivityContext(this, activityClientRecord.packageInfo, activityClientRecord.activityInfo, activityClientRecord.token, activityDisplayId, activityClientRecord.overrideConfig);
            Trace.traceEnd(64L);
            DisplayManagerGlobal displayManagerGlobal = DisplayManagerGlobal.getInstance();
            String str = SystemProperties.get("debug.second-display.pkg");
            if (str == null || str.isEmpty() || !activityClientRecord.packageInfo.mPackageName.contains(str)) {
                return contextImplCreateActivityContext;
            }
            for (int i2 : displayManagerGlobal.getDisplayIds()) {
                if (i2 != 0) {
                    return (ContextImpl) contextImplCreateActivityContext.createDisplayContext(displayManagerGlobal.getCompatibleDisplay(i2, contextImplCreateActivityContext.getResources()));
                }
            }
            return contextImplCreateActivityContext;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private static Configuration createNewConfigAndUpdateIfNotNull(Configuration configuration, Configuration configuration2) {
        if (configuration2 == null) {
            return configuration;
        }
        Configuration configuration3 = new Configuration(configuration);
        Trace.traceBegin(64L, "updateFrom");
        configuration3.updateFrom(configuration2);
        Trace.traceEnd(64L);
        return configuration3;
    }

    private Bitmap createThumbnailBitmap(ActivityClientRecord activityClientRecord) {
        int i2;
        Bitmap bitmapCreateBitmap = this.mAvailThumbnailBitmap;
        if (bitmapCreateBitmap == null) {
            try {
                int i3 = this.mThumbnailWidth;
                if (i3 < 0) {
                    Resources resources = activityClientRecord.activity.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(17104898);
                    this.mThumbnailWidth = dimensionPixelSize;
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(17104897);
                    this.mThumbnailHeight = dimensionPixelSize2;
                    i2 = dimensionPixelSize2;
                    i3 = dimensionPixelSize;
                } else {
                    i2 = this.mThumbnailHeight;
                }
                if (i3 > 0 && i2 > 0) {
                    bitmapCreateBitmap = Bitmap.createBitmap(activityClientRecord.activity.getResources().getDisplayMetrics(), i3, i2, THUMBNAIL_FORMAT);
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

    public static String currentOpPackageName() {
        ActivityThread activityThreadCurrentActivityThread = currentActivityThread();
        if (activityThreadCurrentActivityThread == null || activityThreadCurrentActivityThread.getApplication() == null) {
            return null;
        }
        return activityThreadCurrentActivityThread.getApplication().getOpPackageName();
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

    private void deliverNewIntents(ActivityClientRecord activityClientRecord, List<ReferrerIntent> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ReferrerIntent referrerIntent = list.get(i2);
            referrerIntent.setExtrasClassLoader(activityClientRecord.activity.getClassLoader());
            referrerIntent.prepareToEnterProcess();
            activityClientRecord.activity.mFragments.noteStateNotSaved();
            this.mInstrumentation.callActivityOnNewIntent(activityClientRecord.activity, referrerIntent);
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
                    resultInfo.mData.prepareToEnterProcess();
                }
                activityClientRecord.activity.dispatchActivityResult(resultInfo.mResultWho, resultInfo.mRequestCode, resultInfo.mResultCode, resultInfo.mData);
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                    throw new RuntimeException("Failure delivering result " + resultInfo + " to activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x06fb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x06fd  */
    /* JADX WARN: Code duplicated, block: B:111:0x0733  */
    /* JADX WARN: Code duplicated, block: B:113:0x0748  */
    /* JADX WARN: Code duplicated, block: B:115:0x076e  */
    /* JADX WARN: Code duplicated, block: B:61:0x04c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:64:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:65:0x04fd  */
    /* JADX WARN: Code duplicated, block: B:67:0x0513  */
    /* JADX WARN: Code duplicated, block: B:69:0x0537  */
    /* JADX WARN: Code duplicated, block: B:70:0x053a  */
    public static void dumpMemInfoTable(PrintWriter printWriter, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4, boolean z5, int i2, String str, long j2, long j3, long j4, long j5, long j6, long j7) {
        Object obj;
        int i3;
        int i4;
        if (z2) {
            printWriter.print(4);
            printWriter.print(',');
            printWriter.print(i2);
            printWriter.print(',');
            printWriter.print(str);
            printWriter.print(',');
            printWriter.print(j2);
            printWriter.print(',');
            printWriter.print(j5);
            printWriter.print(',');
            printWriter.print("N/A,");
            printWriter.print(j2 + j5);
            printWriter.print(',');
            printWriter.print(j3);
            printWriter.print(',');
            printWriter.print(j6);
            printWriter.print(',');
            printWriter.print("N/A,");
            printWriter.print(j3 + j6);
            printWriter.print(',');
            printWriter.print(j4);
            printWriter.print(',');
            printWriter.print(j7);
            printWriter.print(',');
            printWriter.print("N/A,");
            printWriter.print(j4 + j7);
            printWriter.print(',');
            printWriter.print(memoryInfo.nativePss);
            printWriter.print(',');
            printWriter.print(memoryInfo.dalvikPss);
            printWriter.print(',');
            printWriter.print(memoryInfo.otherPss);
            printWriter.print(',');
            printWriter.print(memoryInfo.getTotalPss());
            printWriter.print(',');
            printWriter.print(memoryInfo.nativeSwappablePss);
            printWriter.print(',');
            printWriter.print(memoryInfo.dalvikSwappablePss);
            printWriter.print(',');
            printWriter.print(memoryInfo.otherSwappablePss);
            printWriter.print(',');
            printWriter.print(memoryInfo.getTotalSwappablePss());
            printWriter.print(',');
            printWriter.print(memoryInfo.nativeSharedDirty);
            printWriter.print(',');
            printWriter.print(memoryInfo.dalvikSharedDirty);
            printWriter.print(',');
            printWriter.print(memoryInfo.otherSharedDirty);
            printWriter.print(',');
            printWriter.print(memoryInfo.getTotalSharedDirty());
            printWriter.print(',');
            printWriter.print(memoryInfo.nativeSharedClean);
            printWriter.print(',');
            printWriter.print(memoryInfo.dalvikSharedClean);
            printWriter.print(',');
            printWriter.print(memoryInfo.otherSharedClean);
            printWriter.print(',');
            printWriter.print(memoryInfo.getTotalSharedClean());
            printWriter.print(',');
            printWriter.print(memoryInfo.nativePrivateDirty);
            printWriter.print(',');
            printWriter.print(memoryInfo.dalvikPrivateDirty);
            printWriter.print(',');
            printWriter.print(memoryInfo.otherPrivateDirty);
            printWriter.print(',');
            printWriter.print(memoryInfo.getTotalPrivateDirty());
            printWriter.print(',');
            printWriter.print(memoryInfo.nativePrivateClean);
            printWriter.print(',');
            printWriter.print(memoryInfo.dalvikPrivateClean);
            printWriter.print(',');
            printWriter.print(memoryInfo.otherPrivateClean);
            printWriter.print(',');
            printWriter.print(memoryInfo.getTotalPrivateClean());
            printWriter.print(',');
            printWriter.print(memoryInfo.nativeSwappedOut);
            printWriter.print(',');
            printWriter.print(memoryInfo.dalvikSwappedOut);
            printWriter.print(',');
            printWriter.print(memoryInfo.otherSwappedOut);
            printWriter.print(',');
            printWriter.print(memoryInfo.getTotalSwappedOut());
            printWriter.print(',');
            if (memoryInfo.hasSwappedOutPss) {
                printWriter.print(memoryInfo.nativeSwappedOutPss);
                printWriter.print(',');
                printWriter.print(memoryInfo.dalvikSwappedOutPss);
                printWriter.print(',');
                printWriter.print(memoryInfo.otherSwappedOutPss);
                printWriter.print(',');
                printWriter.print(memoryInfo.getTotalSwappedOutPss());
                printWriter.print(',');
            } else {
                printWriter.print("N/A,");
                printWriter.print("N/A,");
                printWriter.print("N/A,");
                printWriter.print("N/A,");
            }
            for (int i5 = 0; i5 < 17; i5++) {
                printWriter.print(Debug.MemoryInfo.getOtherLabel(i5));
                printWriter.print(',');
                printWriter.print(memoryInfo.getOtherPss(i5));
                printWriter.print(',');
                printWriter.print(memoryInfo.getOtherSwappablePss(i5));
                printWriter.print(',');
                printWriter.print(memoryInfo.getOtherSharedDirty(i5));
                printWriter.print(',');
                printWriter.print(memoryInfo.getOtherSharedClean(i5));
                printWriter.print(',');
                printWriter.print(memoryInfo.getOtherPrivateDirty(i5));
                printWriter.print(',');
                printWriter.print(memoryInfo.getOtherPrivateClean(i5));
                printWriter.print(',');
                printWriter.print(memoryInfo.getOtherSwappedOut(i5));
                printWriter.print(',');
                if (memoryInfo.hasSwappedOutPss) {
                    printWriter.print(memoryInfo.getOtherSwappedOutPss(i5));
                    printWriter.print(',');
                } else {
                    printWriter.print("N/A,");
                }
            }
            return;
        }
        if (z5) {
            obj = "------";
        } else {
            if (z3) {
                Object[] objArr = new Object[11];
                objArr[0] = "";
                objArr[1] = "Pss";
                objArr[2] = "Pss";
                objArr[3] = "Shared";
                objArr[4] = "Private";
                objArr[5] = "Shared";
                objArr[6] = "Private";
                objArr[7] = memoryInfo.hasSwappedOutPss ? "SwapPss" : "Swap";
                objArr[8] = "Heap";
                objArr[9] = "Heap";
                objArr[10] = "Heap";
                printRow(printWriter, HEAP_FULL_COLUMN, objArr);
                printRow(printWriter, HEAP_FULL_COLUMN, "", "Total", "Clean", "Dirty", "Dirty", "Clean", "Clean", "Dirty", "Size", "Alloc", "Free");
                printRow(printWriter, HEAP_FULL_COLUMN, "", "------", "------", "------", "------", "------", "------", "------", "------", "------", "------");
                Object[] objArr2 = new Object[11];
                objArr2[0] = "Native Heap";
                objArr2[1] = Integer.valueOf(memoryInfo.nativePss);
                objArr2[2] = Integer.valueOf(memoryInfo.nativeSwappablePss);
                objArr2[3] = Integer.valueOf(memoryInfo.nativeSharedDirty);
                objArr2[4] = Integer.valueOf(memoryInfo.nativePrivateDirty);
                objArr2[5] = Integer.valueOf(memoryInfo.nativeSharedClean);
                objArr2[6] = Integer.valueOf(memoryInfo.nativePrivateClean);
                objArr2[7] = Integer.valueOf(memoryInfo.hasSwappedOutPss ? memoryInfo.nativeSwappedOutPss : memoryInfo.nativeSwappedOut);
                objArr2[8] = Long.valueOf(j2);
                objArr2[9] = Long.valueOf(j3);
                objArr2[10] = Long.valueOf(j4);
                printRow(printWriter, HEAP_FULL_COLUMN, objArr2);
                Object[] objArr3 = new Object[11];
                objArr3[0] = "Dalvik Heap";
                objArr3[1] = Integer.valueOf(memoryInfo.dalvikPss);
                objArr3[2] = Integer.valueOf(memoryInfo.dalvikSwappablePss);
                objArr3[3] = Integer.valueOf(memoryInfo.dalvikSharedDirty);
                objArr3[4] = Integer.valueOf(memoryInfo.dalvikPrivateDirty);
                objArr3[5] = Integer.valueOf(memoryInfo.dalvikSharedClean);
                objArr3[6] = Integer.valueOf(memoryInfo.dalvikPrivateClean);
                objArr3[7] = Integer.valueOf(memoryInfo.hasSwappedOutPss ? memoryInfo.dalvikSwappedOutPss : memoryInfo.dalvikSwappedOut);
                objArr3[8] = Long.valueOf(j5);
                objArr3[9] = Long.valueOf(j6);
                objArr3[10] = Long.valueOf(j7);
                printRow(printWriter, HEAP_FULL_COLUMN, objArr3);
            } else {
                Object[] objArr4 = new Object[8];
                objArr4[0] = "";
                objArr4[1] = "Pss";
                objArr4[2] = "Private";
                objArr4[3] = "Private";
                objArr4[4] = memoryInfo.hasSwappedOutPss ? "SwapPss" : "Swap";
                objArr4[5] = "Heap";
                objArr4[6] = "Heap";
                objArr4[7] = "Heap";
                printRow(printWriter, HEAP_COLUMN, objArr4);
                printRow(printWriter, HEAP_COLUMN, "", "Total", "Dirty", "Clean", "Dirty", "Size", "Alloc", "Free");
                printRow(printWriter, HEAP_COLUMN, "", "------", "------", "------", "------", "------", "------", "------", "------");
                Object[] objArr5 = new Object[8];
                objArr5[0] = "Native Heap";
                objArr5[1] = Integer.valueOf(memoryInfo.nativePss);
                objArr5[2] = Integer.valueOf(memoryInfo.nativePrivateDirty);
                objArr5[3] = Integer.valueOf(memoryInfo.nativePrivateClean);
                objArr5[4] = Integer.valueOf(memoryInfo.hasSwappedOutPss ? memoryInfo.nativeSwappedOutPss : memoryInfo.nativeSwappedOut);
                objArr5[5] = Long.valueOf(j2);
                objArr5[6] = Long.valueOf(j3);
                objArr5[7] = Long.valueOf(j4);
                printRow(printWriter, HEAP_COLUMN, objArr5);
                Object[] objArr6 = new Object[8];
                objArr6[0] = "Dalvik Heap";
                objArr6[1] = Integer.valueOf(memoryInfo.dalvikPss);
                objArr6[2] = Integer.valueOf(memoryInfo.dalvikPrivateDirty);
                objArr6[3] = Integer.valueOf(memoryInfo.dalvikPrivateClean);
                objArr6[4] = Integer.valueOf(memoryInfo.hasSwappedOutPss ? memoryInfo.dalvikSwappedOutPss : memoryInfo.dalvikSwappedOut);
                objArr6[5] = Long.valueOf(j5);
                objArr6[6] = Long.valueOf(j6);
                objArr6[7] = Long.valueOf(j7);
                printRow(printWriter, HEAP_COLUMN, objArr6);
            }
            int i6 = memoryInfo.otherPss;
            int i7 = memoryInfo.otherSwappablePss;
            int i8 = memoryInfo.otherSharedDirty;
            int i9 = memoryInfo.otherPrivateDirty;
            int i10 = memoryInfo.otherSharedClean;
            int i11 = memoryInfo.otherPrivateClean;
            int i12 = memoryInfo.otherSwappedOut;
            obj = "------";
            int i13 = memoryInfo.otherSwappedOutPss;
            int i14 = i6;
            int i15 = i8;
            int i16 = i7;
            for (int i17 = 0; i17 < 17; i17++) {
                int otherPss = memoryInfo.getOtherPss(i17);
                int otherSwappablePss = memoryInfo.getOtherSwappablePss(i17);
                int otherSharedDirty = memoryInfo.getOtherSharedDirty(i17);
                int otherPrivateDirty = memoryInfo.getOtherPrivateDirty(i17);
                int otherSharedClean = memoryInfo.getOtherSharedClean(i17);
                int otherPrivateClean = memoryInfo.getOtherPrivateClean(i17);
                int otherSwappedOut = memoryInfo.getOtherSwappedOut(i17);
                int otherSwappedOutPss = memoryInfo.getOtherSwappedOutPss(i17);
                if (otherPss != 0 || otherSharedDirty != 0 || otherPrivateDirty != 0 || otherSharedClean != 0 || otherPrivateClean != 0) {
                    if (z3) {
                        Object[] objArr7 = new Object[11];
                        objArr7[0] = Debug.MemoryInfo.getOtherLabel(i17);
                        objArr7[1] = Integer.valueOf(otherPss);
                        objArr7[2] = Integer.valueOf(otherSwappablePss);
                        objArr7[3] = Integer.valueOf(otherSharedDirty);
                        objArr7[4] = Integer.valueOf(otherPrivateDirty);
                        objArr7[5] = Integer.valueOf(otherSharedClean);
                        objArr7[6] = Integer.valueOf(otherPrivateClean);
                        if (memoryInfo.hasSwappedOutPss) {
                            i4 = otherSwappedOutPss;
                        } else {
                            i4 = otherSwappedOut;
                        }
                        objArr7[7] = Integer.valueOf(i4);
                        objArr7[8] = "";
                        objArr7[9] = "";
                        objArr7[10] = "";
                        printRow(printWriter, HEAP_FULL_COLUMN, objArr7);
                    } else {
                        Object[] objArr8 = new Object[8];
                        objArr8[0] = Debug.MemoryInfo.getOtherLabel(i17);
                        objArr8[1] = Integer.valueOf(otherPss);
                        objArr8[2] = Integer.valueOf(otherPrivateDirty);
                        objArr8[3] = Integer.valueOf(otherPrivateClean);
                        if (memoryInfo.hasSwappedOutPss) {
                            i3 = otherSwappedOutPss;
                        } else {
                            i3 = otherSwappedOut;
                        }
                        objArr8[4] = Integer.valueOf(i3);
                        objArr8[5] = "";
                        objArr8[6] = "";
                        objArr8[7] = "";
                        printRow(printWriter, HEAP_COLUMN, objArr8);
                    }
                    i14 -= otherPss;
                    i16 -= otherSwappablePss;
                    i15 -= otherSharedDirty;
                    i9 -= otherPrivateDirty;
                    i10 -= otherSharedClean;
                    i11 -= otherPrivateClean;
                    i12 -= otherSwappedOut;
                    i13 -= otherSwappedOutPss;
                } else if ((memoryInfo.hasSwappedOutPss ? otherSwappedOutPss : otherSwappedOut) != 0) {
                    if (z3) {
                        Object[] objArr9 = new Object[11];
                        objArr9[0] = Debug.MemoryInfo.getOtherLabel(i17);
                        objArr9[1] = Integer.valueOf(otherPss);
                        objArr9[2] = Integer.valueOf(otherSwappablePss);
                        objArr9[3] = Integer.valueOf(otherSharedDirty);
                        objArr9[4] = Integer.valueOf(otherPrivateDirty);
                        objArr9[5] = Integer.valueOf(otherSharedClean);
                        objArr9[6] = Integer.valueOf(otherPrivateClean);
                        if (memoryInfo.hasSwappedOutPss) {
                            i4 = otherSwappedOutPss;
                        } else {
                            i4 = otherSwappedOut;
                        }
                        objArr9[7] = Integer.valueOf(i4);
                        objArr9[8] = "";
                        objArr9[9] = "";
                        objArr9[10] = "";
                        printRow(printWriter, HEAP_FULL_COLUMN, objArr9);
                    } else {
                        Object[] objArr10 = new Object[8];
                        objArr10[0] = Debug.MemoryInfo.getOtherLabel(i17);
                        objArr10[1] = Integer.valueOf(otherPss);
                        objArr10[2] = Integer.valueOf(otherPrivateDirty);
                        objArr10[3] = Integer.valueOf(otherPrivateClean);
                        if (memoryInfo.hasSwappedOutPss) {
                            i3 = otherSwappedOutPss;
                        } else {
                            i3 = otherSwappedOut;
                        }
                        objArr10[4] = Integer.valueOf(i3);
                        objArr10[5] = "";
                        objArr10[6] = "";
                        objArr10[7] = "";
                        printRow(printWriter, HEAP_COLUMN, objArr10);
                    }
                    i14 -= otherPss;
                    i16 -= otherSwappablePss;
                    i15 -= otherSharedDirty;
                    i9 -= otherPrivateDirty;
                    i10 -= otherSharedClean;
                    i11 -= otherPrivateClean;
                    i12 -= otherSwappedOut;
                    i13 -= otherSwappedOutPss;
                }
            }
            if (z3) {
                Object[] objArr11 = new Object[11];
                objArr11[0] = "Unknown";
                objArr11[1] = Integer.valueOf(i14);
                objArr11[2] = Integer.valueOf(i16);
                objArr11[3] = Integer.valueOf(i15);
                objArr11[4] = Integer.valueOf(i9);
                objArr11[5] = Integer.valueOf(i10);
                objArr11[6] = Integer.valueOf(i11);
                if (memoryInfo.hasSwappedOutPss) {
                    i12 = i13;
                }
                objArr11[7] = Integer.valueOf(i12);
                objArr11[8] = "";
                objArr11[9] = "";
                objArr11[10] = "";
                printRow(printWriter, HEAP_FULL_COLUMN, objArr11);
                Object[] objArr12 = new Object[11];
                objArr12[0] = "TOTAL";
                objArr12[1] = Integer.valueOf(memoryInfo.getTotalPss());
                objArr12[2] = Integer.valueOf(memoryInfo.getTotalSwappablePss());
                objArr12[3] = Integer.valueOf(memoryInfo.getTotalSharedDirty());
                objArr12[4] = Integer.valueOf(memoryInfo.getTotalPrivateDirty());
                objArr12[5] = Integer.valueOf(memoryInfo.getTotalSharedClean());
                objArr12[6] = Integer.valueOf(memoryInfo.getTotalPrivateClean());
                objArr12[7] = Integer.valueOf(memoryInfo.hasSwappedOutPss ? memoryInfo.getTotalSwappedOutPss() : memoryInfo.getTotalSwappedOut());
                objArr12[8] = Long.valueOf(j2 + j5);
                objArr12[9] = Long.valueOf(j3 + j6);
                objArr12[10] = Long.valueOf(j4 + j7);
                printRow(printWriter, HEAP_FULL_COLUMN, objArr12);
            } else {
                Object[] objArr13 = new Object[8];
                objArr13[0] = "Unknown";
                objArr13[1] = Integer.valueOf(i14);
                objArr13[2] = Integer.valueOf(i9);
                objArr13[3] = Integer.valueOf(i11);
                if (memoryInfo.hasSwappedOutPss) {
                    i12 = i13;
                }
                objArr13[4] = Integer.valueOf(i12);
                objArr13[5] = "";
                objArr13[6] = "";
                objArr13[7] = "";
                printRow(printWriter, HEAP_COLUMN, objArr13);
                Object[] objArr14 = new Object[8];
                objArr14[0] = "TOTAL";
                objArr14[1] = Integer.valueOf(memoryInfo.getTotalPss());
                objArr14[2] = Integer.valueOf(memoryInfo.getTotalPrivateDirty());
                objArr14[3] = Integer.valueOf(memoryInfo.getTotalPrivateClean());
                objArr14[4] = Integer.valueOf(memoryInfo.hasSwappedOutPss ? memoryInfo.getTotalSwappedOutPss() : memoryInfo.getTotalSwappedOut());
                objArr14[5] = Long.valueOf(j2 + j5);
                objArr14[6] = Long.valueOf(j3 + j6);
                objArr14[7] = Long.valueOf(j4 + j7);
                printRow(printWriter, HEAP_COLUMN, objArr14);
            }
            if (z4) {
                printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                printWriter.println(" Dalvik Details");
                for (int i18 = 17; i18 < 31; i18++) {
                    int otherPss2 = memoryInfo.getOtherPss(i18);
                    int otherSwappablePss2 = memoryInfo.getOtherSwappablePss(i18);
                    int otherSharedDirty2 = memoryInfo.getOtherSharedDirty(i18);
                    int otherPrivateDirty2 = memoryInfo.getOtherPrivateDirty(i18);
                    int otherSharedClean2 = memoryInfo.getOtherSharedClean(i18);
                    int otherPrivateClean2 = memoryInfo.getOtherPrivateClean(i18);
                    int otherSwappedOut2 = memoryInfo.getOtherSwappedOut(i18);
                    int otherSwappedOutPss2 = memoryInfo.getOtherSwappedOutPss(i18);
                    if (otherPss2 == 0 && otherSharedDirty2 == 0 && otherPrivateDirty2 == 0 && otherSharedClean2 == 0 && otherPrivateClean2 == 0) {
                        if ((memoryInfo.hasSwappedOutPss ? otherSwappedOutPss2 : otherSwappedOut2) != 0) {
                            if (z3) {
                                Object[] objArr15 = new Object[11];
                                objArr15[0] = Debug.MemoryInfo.getOtherLabel(i18);
                                objArr15[1] = Integer.valueOf(otherPss2);
                                objArr15[2] = Integer.valueOf(otherSwappablePss2);
                                objArr15[3] = Integer.valueOf(otherSharedDirty2);
                                objArr15[4] = Integer.valueOf(otherPrivateDirty2);
                                objArr15[5] = Integer.valueOf(otherSharedClean2);
                                objArr15[6] = Integer.valueOf(otherPrivateClean2);
                                if (memoryInfo.hasSwappedOutPss) {
                                    otherSwappedOut2 = otherSwappedOutPss2;
                                }
                                objArr15[7] = Integer.valueOf(otherSwappedOut2);
                                objArr15[8] = "";
                                objArr15[9] = "";
                                objArr15[10] = "";
                                printRow(printWriter, HEAP_FULL_COLUMN, objArr15);
                            } else {
                                Object[] objArr16 = new Object[8];
                                objArr16[0] = Debug.MemoryInfo.getOtherLabel(i18);
                                objArr16[1] = Integer.valueOf(otherPss2);
                                objArr16[2] = Integer.valueOf(otherPrivateDirty2);
                                objArr16[3] = Integer.valueOf(otherPrivateClean2);
                                if (memoryInfo.hasSwappedOutPss) {
                                    otherSwappedOut2 = otherSwappedOutPss2;
                                }
                                objArr16[4] = Integer.valueOf(otherSwappedOut2);
                                objArr16[5] = "";
                                objArr16[6] = "";
                                objArr16[7] = "";
                                printRow(printWriter, HEAP_COLUMN, objArr16);
                            }
                        }
                    } else if (z3) {
                        Object[] objArr17 = new Object[11];
                        objArr17[0] = Debug.MemoryInfo.getOtherLabel(i18);
                        objArr17[1] = Integer.valueOf(otherPss2);
                        objArr17[2] = Integer.valueOf(otherSwappablePss2);
                        objArr17[3] = Integer.valueOf(otherSharedDirty2);
                        objArr17[4] = Integer.valueOf(otherPrivateDirty2);
                        objArr17[5] = Integer.valueOf(otherSharedClean2);
                        objArr17[6] = Integer.valueOf(otherPrivateClean2);
                        if (memoryInfo.hasSwappedOutPss) {
                            otherSwappedOut2 = otherSwappedOutPss2;
                        }
                        objArr17[7] = Integer.valueOf(otherSwappedOut2);
                        objArr17[8] = "";
                        objArr17[9] = "";
                        objArr17[10] = "";
                        printRow(printWriter, HEAP_FULL_COLUMN, objArr17);
                    } else {
                        Object[] objArr18 = new Object[8];
                        objArr18[0] = Debug.MemoryInfo.getOtherLabel(i18);
                        objArr18[1] = Integer.valueOf(otherPss2);
                        objArr18[2] = Integer.valueOf(otherPrivateDirty2);
                        objArr18[3] = Integer.valueOf(otherPrivateClean2);
                        if (memoryInfo.hasSwappedOutPss) {
                            otherSwappedOut2 = otherSwappedOutPss2;
                        }
                        objArr18[4] = Integer.valueOf(otherSwappedOut2);
                        objArr18[5] = "";
                        objArr18[6] = "";
                        objArr18[7] = "";
                        printRow(printWriter, HEAP_COLUMN, objArr18);
                    }
                }
            }
        }
        printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        printWriter.println(" App Summary");
        printRow(printWriter, ONE_COUNT_COLUMN_HEADER, "", "Pss(KB)");
        printRow(printWriter, ONE_COUNT_COLUMN_HEADER, "", obj);
        printRow(printWriter, ONE_COUNT_COLUMN, "Java Heap:", Integer.valueOf(memoryInfo.getSummaryJavaHeap()));
        printRow(printWriter, ONE_COUNT_COLUMN, "Native Heap:", Integer.valueOf(memoryInfo.getSummaryNativeHeap()));
        printRow(printWriter, ONE_COUNT_COLUMN, "Code:", Integer.valueOf(memoryInfo.getSummaryCode()));
        printRow(printWriter, ONE_COUNT_COLUMN, "Stack:", Integer.valueOf(memoryInfo.getSummaryStack()));
        printRow(printWriter, ONE_COUNT_COLUMN, "Graphics:", Integer.valueOf(memoryInfo.getSummaryGraphics()));
        printRow(printWriter, ONE_COUNT_COLUMN, "Private Other:", Integer.valueOf(memoryInfo.getSummaryPrivateOther()));
        printRow(printWriter, ONE_COUNT_COLUMN, "System:", Integer.valueOf(memoryInfo.getSummarySystem()));
        printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        if (memoryInfo.hasSwappedOutPss) {
            printRow(printWriter, TWO_COUNT_COLUMNS, "TOTAL:", Integer.valueOf(memoryInfo.getSummaryTotalPss()), "TOTAL SWAP PSS:", Integer.valueOf(memoryInfo.getSummaryTotalSwapPss()));
        } else {
            printRow(printWriter, TWO_COUNT_COLUMNS, "TOTAL:", Integer.valueOf(memoryInfo.getSummaryTotalPss()), "TOTAL SWAP (KB):", Integer.valueOf(memoryInfo.getSummaryTotalSwap()));
        }
    }

    public static void freeTextLayoutCachesIfNeeded(int i2) {
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                Canvas.freeTextLayoutCaches();
            }
        }
    }

    private String getInstrumentationLibrary(ApplicationInfo applicationInfo, InstrumentationInfo instrumentationInfo) {
        String str;
        if (applicationInfo.primaryCpuAbi != null && (str = applicationInfo.secondaryCpuAbi) != null) {
            String instructionSet = VMRuntime.getInstructionSet(str);
            String str2 = SystemProperties.get("ro.dalvik.vm.isa." + instructionSet);
            if (!str2.isEmpty()) {
                instructionSet = str2;
            }
            if (VMRuntime.getRuntime().vmInstructionSet().equals(instructionSet)) {
                return instrumentationInfo.secondaryNativeLibraryDir;
            }
        }
        return instrumentationInfo.nativeLibraryDir;
    }

    public static Intent getIntentBeingBroadcast() {
        return sCurrentBroadcastIntent.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLifecycleSeq() {
        int i2;
        synchronized (this.mResourcesManager) {
            i2 = this.mLifecycleSeq;
            this.mLifecycleSeq = i2 + 1;
        }
        return i2;
    }

    public static IPackageManager getPackageManager() {
        if (sPackageManager != null) {
            return sPackageManager;
        }
        sPackageManager = IPackageManager.Stub.asInterface(ServiceManager.getService("package"));
        return sPackageManager;
    }

    public static final void handleAttachAgent(String str) {
        try {
            VMDebug.attachAgent(str);
        } catch (IOException unused) {
            Slog.e("ActivityThread", "Attaching agent failed: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBindApplication(AppBindData appBindData) {
        Boolean bool;
        InstrumentationInfo instrumentationInfo;
        int i2;
        VMRuntime.registerSensitiveThread();
        if (appBindData.trackAllocation) {
            DdmVmInternal.enableRecentAllocations(true);
        }
        Process.setStartTimes(SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
        this.mBoundApplication = appBindData;
        this.mConfiguration = new Configuration(appBindData.config);
        this.mCompatConfiguration = new Configuration(appBindData.config);
        Profiler profiler = new Profiler();
        this.mProfiler = profiler;
        ProfilerInfo profilerInfo = appBindData.initProfilerInfo;
        if (profilerInfo != null) {
            profiler.profileFile = profilerInfo.profileFile;
            profiler.profileFd = profilerInfo.profileFd;
            profiler.samplingInterval = profilerInfo.samplingInterval;
            profiler.autoStopProfiler = profilerInfo.autoStopProfiler;
            profiler.streamingOutput = profilerInfo.streamingOutput;
        }
        Process.setArgV0(appBindData.processName);
        DdmHandleAppName.setAppName(appBindData.processName, UserHandle.myUserId());
        Profiler profiler2 = this.mProfiler;
        if (profiler2.profileFd != null) {
            profiler2.startProfiling();
        }
        if (appBindData.appInfo.targetSdkVersion <= 12) {
            AsyncTask.setDefaultExecutor(AsyncTask.THREAD_POOL_EXECUTOR);
        }
        Message.updateCheckRecycle(appBindData.appInfo.targetSdkVersion);
        TimeZone.setDefault(null);
        LocaleList.setDefault(appBindData.config.getLocales());
        synchronized (this.mResourcesManager) {
            this.mResourcesManager.applyConfigurationToResourcesLocked(appBindData.config, appBindData.compatInfo);
            int i3 = appBindData.config.densityDpi;
            this.mCurDefaultDisplayDpi = i3;
            applyCompatConfiguration(i3);
        }
        appBindData.info = getPackageInfoNoCheck(appBindData.appInfo, appBindData.compatInfo);
        if ((appBindData.appInfo.flags & 8192) == 0) {
            this.mDensityCompatMode = true;
            Bitmap.setDefaultDensity(160);
        }
        updateDefaultDensity();
        String string = this.mCoreSettings.getString(Settings.System.TIME_12_24);
        if (string != null) {
            bool = "24".equals(string) ? Boolean.TRUE : Boolean.FALSE;
        } else {
            bool = null;
        }
        DateFormat.set24HourTimePref(bool);
        View.mDebugViewAttributes = this.mCoreSettings.getInt(Settings.Global.DEBUG_VIEW_ATTRIBUTES, 0) != 0;
        if ((appBindData.appInfo.flags & 129) != 0) {
            StrictMode.conditionallyEnableDebugLogging();
        }
        if (appBindData.appInfo.targetSdkVersion >= 11) {
            StrictMode.enableDeathOnNetwork();
        }
        if (appBindData.appInfo.targetSdkVersion >= 24) {
            StrictMode.enableDeathOnFileUriExposure();
        }
        try {
            Field declaredField = Build.class.getDeclaredField("SERIAL");
            declaredField.setAccessible(true);
            declaredField.set(Build.class, appBindData.buildSerial);
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        if (appBindData.debugMode != 0) {
            Debug.changeDebugPort(8100);
            if (appBindData.debugMode == 2) {
                Slog.w("ActivityThread", "Application " + appBindData.info.getPackageName() + " is waiting for the debugger on port 8100...");
                IActivityManager service = ActivityManager.getService();
                try {
                    service.showWaitingForDebugger(this.mAppThread, true);
                    Debug.waitForDebugger();
                    try {
                        service.showWaitingForDebugger(this.mAppThread, false);
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                } catch (RemoteException e3) {
                    throw e3.rethrowFromSystemServer();
                }
            } else {
                Slog.w("ActivityThread", "Application " + appBindData.info.getPackageName() + " can be debugged on port 8100...");
            }
        }
        boolean z2 = (appBindData.appInfo.flags & 2) != 0;
        Trace.setAppTracingAllowed(z2);
        if (z2 && appBindData.enableBinderTracking) {
            Binder.enableTracing();
        }
        Trace.traceBegin(64L, "Setup proxies");
        IBinder service2 = ServiceManager.getService(Context.CONNECTIVITY_SERVICE);
        if (service2 != null) {
            try {
                Proxy.setHttpProxySystemProperty(IConnectivityManager.Stub.asInterface(service2).getProxyForNetwork(null));
            } catch (RemoteException e4) {
                Trace.traceEnd(64L);
                throw e4.rethrowFromSystemServer();
            }
        }
        Trace.traceEnd(64L);
        if (appBindData.instrumentationName != null) {
            try {
                InstrumentationInfo instrumentationInfo2 = new ApplicationPackageManager(null, getPackageManager()).getInstrumentationInfo(appBindData.instrumentationName, 0);
                this.mInstrumentationPackageName = instrumentationInfo2.packageName;
                this.mInstrumentationAppDir = instrumentationInfo2.sourceDir;
                this.mInstrumentationSplitAppDirs = instrumentationInfo2.splitSourceDirs;
                this.mInstrumentationLibDir = getInstrumentationLibrary(appBindData.appInfo, instrumentationInfo2);
                this.mInstrumentedAppDir = appBindData.info.getAppDir();
                this.mInstrumentedSplitAppDirs = appBindData.info.getSplitAppDirs();
                this.mInstrumentedLibDir = appBindData.info.getLibDir();
                instrumentationInfo = instrumentationInfo2;
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new RuntimeException("Unable to find instrumentation info for: " + appBindData.instrumentationName);
            }
        } else {
            instrumentationInfo = null;
        }
        Context contextCreateAppContext = ContextImpl.createAppContext(this, appBindData.info);
        updateLocaleListFromAppContext(contextCreateAppContext, this.mResourcesManager.getConfiguration().getLocales());
        if (!Process.isIsolated()) {
            setupGraphicsSupport(contextCreateAppContext);
        }
        if (SystemProperties.getBoolean("dalvik.vm.usejitprofiles", false)) {
            BaseDexClassLoader.setReporter(DexLoadReporter.getInstance());
        }
        Trace.traceBegin(64L, "NetworkSecurityConfigProvider.install");
        NetworkSecurityConfigProvider.install(contextCreateAppContext);
        Trace.traceEnd(64L);
        if (instrumentationInfo != null) {
            ApplicationInfo applicationInfo = new ApplicationInfo();
            instrumentationInfo.copyTo(applicationInfo);
            applicationInfo.initForUser(UserHandle.myUserId());
            ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this, getPackageInfo(applicationInfo, appBindData.compatInfo, contextCreateAppContext.getClassLoader(), false, true, false));
            try {
                this.mInstrumentation = (Instrumentation) contextImplCreateAppContext.getClassLoader().loadClass(appBindData.instrumentationName.getClassName()).newInstance();
                this.mInstrumentation.init(this, contextImplCreateAppContext, contextCreateAppContext, new ComponentName(instrumentationInfo.packageName, instrumentationInfo.name), appBindData.instrumentationWatcher, appBindData.instrumentationUiAutomationConnection);
                Profiler profiler3 = this.mProfiler;
                if (profiler3.profileFile != null && !instrumentationInfo.handleProfiling && profiler3.profileFd == null) {
                    profiler3.handlingProfiling = true;
                    File file = new File(this.mProfiler.profileFile);
                    file.getParentFile().mkdirs();
                    Debug.startMethodTracing(file.toString(), 8388608);
                }
            } catch (Exception e5) {
                throw new RuntimeException("Unable to instantiate instrumentation " + appBindData.instrumentationName + ": " + e5.toString(), e5);
            }
        } else {
            this.mInstrumentation = new Instrumentation();
        }
        if ((appBindData.appInfo.flags & 1048576) != 0) {
            VMRuntime.getRuntime().clearGrowthLimit();
        } else {
            VMRuntime.getRuntime().clampGrowthLimit();
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            long time = CheckTime.getTime();
            Application applicationMakeApplication = appBindData.info.makeApplication(appBindData.restrictedBackupMode, null);
            CheckTime.checkTime(time, "handleBindApplication : makeApplication");
            this.mInitialApplication = applicationMakeApplication;
            if (!appBindData.restrictedBackupMode && !ArrayUtils.isEmpty(appBindData.providers)) {
                long time2 = CheckTime.getTime();
                installContentProviders(applicationMakeApplication, appBindData.providers);
                this.mH.sendEmptyMessageDelayed(132, JobInfo.MIN_BACKOFF_MILLIS);
                CheckTime.checkTime(time2, "handleBindApplication : installContentProviders");
            }
            long time3 = CheckTime.getTime();
            try {
                this.mInstrumentation.onCreate(appBindData.instrumentationArgs);
                try {
                    this.mInstrumentation.callApplicationOnCreate(applicationMakeApplication);
                    CheckTime.checkTime(time3, "handleBindApplication : callApplicationOnCreate");
                } catch (Exception e6) {
                    if (!this.mInstrumentation.onException(applicationMakeApplication, e6)) {
                        throw new RuntimeException("Unable to create application " + applicationMakeApplication.getClass().getName() + ": " + e6.toString(), e6);
                    }
                }
                if (appBindData.appInfo.targetSdkVersion <= 26 || StrictMode.getThreadPolicy().equals(threadPolicy)) {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                }
                FontsContract.setApplicationContextForResources(contextCreateAppContext);
                try {
                    Bundle bundle = getPackageManager().getApplicationInfo(appBindData.appInfo.packageName, 128, UserHandle.myUserId()).metaData;
                    if (bundle == null || (i2 = bundle.getInt(ApplicationInfo.METADATA_PRELOADED_FONTS, 0)) == 0) {
                        return;
                    }
                    appBindData.info.getResources().preloadFonts(i2);
                } catch (RemoteException e7) {
                    throw e7.rethrowFromSystemServer();
                }
            } catch (Exception e8) {
                throw new RuntimeException("Exception thrown in onCreate() of " + appBindData.instrumentationName + ": " + e8.toString(), e8);
            }
        } catch (Throwable th) {
            if (appBindData.appInfo.targetSdkVersion <= 26 || StrictMode.getThreadPolicy().equals(threadPolicy)) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBindService(BindServiceData bindServiceData) {
        Service service = this.mServices.get(bindServiceData.token);
        if (service != null) {
            try {
                bindServiceData.intent.setExtrasClassLoader(service.getClassLoader());
                bindServiceData.intent.prepareToEnterProcess();
                try {
                    if (bindServiceData.rebind) {
                        service.onRebind(bindServiceData.intent);
                        ActivityManager.getService().serviceDoneExecuting(bindServiceData.token, 0, 0, 0);
                    } else {
                        ActivityManager.getService().publishService(bindServiceData.token, bindServiceData.intent, service.onBind(bindServiceData.intent));
                    }
                    ensureJitEnabled();
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Exception e3) {
                if (this.mInstrumentation.onException(service, e3)) {
                    return;
                }
                throw new RuntimeException("Unable to bind to service " + service + " with " + bindServiceData.intent + ": " + e3.toString(), e3);
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
        Exception e2;
        IBinder iBinderOnBind;
        IBinder iBinderOnBind2;
        int i2;
        try {
            if (getPackageManager().getPackageInfo(createBackupAgentData.appInfo.packageName, 0, UserHandle.myUserId()).applicationInfo.uid != Process.myUid()) {
                Slog.w("ActivityThread", "Asked to instantiate non-matching package " + createBackupAgentData.appInfo.packageName);
                return;
            }
            unscheduleGcIdler();
            LoadedApk packageInfoNoCheck = getPackageInfoNoCheck(createBackupAgentData.appInfo, createBackupAgentData.compatInfo);
            String str = packageInfoNoCheck.mPackageName;
            if (str == null) {
                Slog.d("ActivityThread", "Asked to create backup agent for nonexistent package");
                return;
            }
            String str2 = createBackupAgentData.appInfo.backupAgentName;
            if (str2 == null && ((i2 = createBackupAgentData.backupMode) == 1 || i2 == 3)) {
                str2 = "android.app.backup.FullBackupAgent";
            }
            try {
                BackupAgent backupAgent = this.mBackupAgents.get(str);
                if (backupAgent != null) {
                    iBinderOnBind2 = backupAgent.onBind();
                } else {
                    try {
                        BackupAgent backupAgent2 = (BackupAgent) packageInfoNoCheck.getClassLoader().loadClass(str2).newInstance();
                        ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this, packageInfoNoCheck);
                        contextImplCreateAppContext.setOuterContext(backupAgent2);
                        backupAgent2.attach(contextImplCreateAppContext);
                        backupAgent2.onCreate();
                        iBinderOnBind = backupAgent2.onBind();
                        try {
                            this.mBackupAgents.put(str, backupAgent2);
                        } catch (Exception e3) {
                            e2 = e3;
                            Slog.e("ActivityThread", "Agent threw during creation: " + e2);
                            int i3 = createBackupAgentData.backupMode;
                            if (i3 != 2 && i3 != 3) {
                                throw e2;
                            }
                        }
                    } catch (Exception e4) {
                        e2 = e4;
                        iBinderOnBind = null;
                    }
                    iBinderOnBind2 = iBinderOnBind;
                }
                try {
                    ActivityManager.getService().backupAgentCreated(str, iBinderOnBind2);
                } catch (RemoteException e5) {
                    throw e5.rethrowFromSystemServer();
                }
            } catch (Exception e6) {
                StringBuilder sbV = android.accessibilityservice.c.v("Unable to create BackupAgent ", str2, ": ");
                sbV.append(e6.toString());
                throw new RuntimeException(sbV.toString(), e6);
            }
        } catch (RemoteException e7) {
            throw e7.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCreateService(CreateServiceData createServiceData) {
        Service service;
        unscheduleGcIdler();
        LoadedApk packageInfoNoCheck = getPackageInfoNoCheck(createServiceData.info.applicationInfo, createServiceData.compatInfo);
        try {
            service = (Service) packageInfoNoCheck.getClassLoader().loadClass(createServiceData.info.name).newInstance();
        } catch (Exception e2) {
            if (!this.mInstrumentation.onException(null, e2)) {
                throw new RuntimeException("Unable to instantiate service " + createServiceData.info.name + ": " + e2.toString(), e2);
            }
            service = null;
        }
        try {
            ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this, packageInfoNoCheck);
            contextImplCreateAppContext.setOuterContext(service);
            service.attach(contextImplCreateAppContext, this, createServiceData.info.name, createServiceData.token, packageInfoNoCheck.makeApplication(false, this.mInstrumentation), ActivityManager.getService());
            service.onCreate();
            this.mServices.put(createServiceData.token, service);
            try {
                ActivityManager.getService().serviceDoneExecuting(createServiceData.token, 0, 0, 0);
            } catch (RemoteException e3) {
                throw e3.rethrowFromSystemServer();
            }
        } catch (Exception e4) {
            if (this.mInstrumentation.onException(service, e4)) {
                return;
            }
            throw new RuntimeException("Unable to create service " + createServiceData.info.name + ": " + e4.toString(), e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDestroyActivity(IBinder iBinder, boolean z2, int i2, boolean z3) {
        ActivityClientRecord activityClientRecordPerformDestroyActivity = performDestroyActivity(iBinder, z2, i2, z3);
        if (activityClientRecordPerformDestroyActivity != null) {
            cleanUpPendingRemoveWindows(activityClientRecordPerformDestroyActivity, z2);
            WindowManager windowManager = activityClientRecordPerformDestroyActivity.activity.getWindowManager();
            Activity activity = activityClientRecordPerformDestroyActivity.activity;
            View view = activity.mDecor;
            if (view != null) {
                if (activity.mVisibleFromServer) {
                    this.mNumVisibleActivities--;
                }
                IBinder windowToken = view.getWindowToken();
                if (activityClientRecordPerformDestroyActivity.activity.mWindowAdded) {
                    if (activityClientRecordPerformDestroyActivity.mPreserveWindow) {
                        Window window = activityClientRecordPerformDestroyActivity.window;
                        activityClientRecordPerformDestroyActivity.mPendingRemoveWindow = window;
                        activityClientRecordPerformDestroyActivity.mPendingRemoveWindowManager = windowManager;
                        window.clearContentView();
                    } else {
                        windowManager.removeViewImmediate(view);
                    }
                }
                if (windowToken != null && activityClientRecordPerformDestroyActivity.mPendingRemoveWindow == null) {
                    WindowManagerGlobal.getInstance().closeAll(windowToken, activityClientRecordPerformDestroyActivity.activity.getClass().getName(), "Activity");
                } else if (activityClientRecordPerformDestroyActivity.mPendingRemoveWindow != null) {
                    WindowManagerGlobal.getInstance().closeAllExceptView(iBinder, view, activityClientRecordPerformDestroyActivity.activity.getClass().getName(), "Activity");
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
                ActivityManager.getService().activityDestroyed(iBinder);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        this.mSomeActivitiesChanged = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDestroyBackupAgent(CreateBackupAgentData createBackupAgentData) {
        String str = getPackageInfoNoCheck(createBackupAgentData.appInfo, createBackupAgentData.compatInfo).mPackageName;
        BackupAgent backupAgent = this.mBackupAgents.get(str);
        if (backupAgent == null) {
            Slog.w("ActivityThread", "Attempt to destroy unknown backup agent " + createBackupAgentData);
            return;
        }
        try {
            backupAgent.onDestroy();
        } catch (Exception e2) {
            Slog.w("ActivityThread", "Exception thrown in onDestroy by backup agent of " + createBackupAgentData.appInfo);
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
                FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(dumpComponentInfo.fd.getFileDescriptor()));
                activityClientRecord.activity.dump(dumpComponentInfo.prefix, dumpComponentInfo.fd.getFileDescriptor(), fastPrintWriter, dumpComponentInfo.args);
                fastPrintWriter.flush();
            }
        } finally {
            IoUtils.closeQuietly(dumpComponentInfo.fd);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
    }

    public static void handleDumpHeap(DumpHeapData dumpHeapData) {
        if (dumpHeapData.runGc) {
            System.gc();
            System.runFinalization();
            System.gc();
        }
        try {
            if (dumpHeapData.managed) {
                try {
                    try {
                        Debug.dumpHprofData(dumpHeapData.path, dumpHeapData.fd.getFileDescriptor());
                        dumpHeapData.fd.close();
                    } catch (IOException unused) {
                        Slog.w("ActivityThread", "Managed heap dump failed on path " + dumpHeapData.path + " -- can the process access this path?");
                        dumpHeapData.fd.close();
                    }
                } catch (Throwable th) {
                    try {
                        dumpHeapData.fd.close();
                    } catch (IOException e2) {
                        Slog.w("ActivityThread", "Failure closing profile fd", e2);
                    }
                    throw th;
                }
            } else if (dumpHeapData.mallocInfo) {
                Debug.dumpNativeMallocInfo(dumpHeapData.fd.getFileDescriptor());
            } else {
                Debug.dumpNativeHeap(dumpHeapData.fd.getFileDescriptor());
            }
        } catch (IOException e3) {
            Slog.w("ActivityThread", "Failure closing profile fd", e3);
        }
        try {
            ActivityManager.getService().dumpHeapFinished(dumpHeapData.path);
        } catch (RemoteException e4) {
            throw e4.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDumpProvider(DumpComponentInfo dumpComponentInfo) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            ProviderClientRecord providerClientRecord = this.mLocalProviders.get(dumpComponentInfo.token);
            if (providerClientRecord != null && providerClientRecord.mLocalProvider != null) {
                FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(dumpComponentInfo.fd.getFileDescriptor()));
                providerClientRecord.mLocalProvider.dump(dumpComponentInfo.fd.getFileDescriptor(), fastPrintWriter, dumpComponentInfo.args);
                fastPrintWriter.flush();
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
                FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(dumpComponentInfo.fd.getFileDescriptor()));
                service.dump(dumpComponentInfo.fd.getFileDescriptor(), fastPrintWriter, dumpComponentInfo.args);
                fastPrintWriter.flush();
            }
        } finally {
            IoUtils.closeQuietly(dumpComponentInfo.fd);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEnterAnimationComplete(IBinder iBinder) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            activityClientRecord.activity.dispatchEnterAnimationComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLaunchActivity(ActivityClientRecord activityClientRecord, Intent intent, String str) {
        unscheduleGcIdler();
        this.mSomeActivitiesChanged = true;
        ProfilerInfo profilerInfo = activityClientRecord.profilerInfo;
        if (profilerInfo != null) {
            this.mProfiler.setProfiler(profilerInfo);
            this.mProfiler.startProfiling();
        }
        handleConfigurationChanged(null, null);
        if (!ThreadedRenderer.sRendererDisabled) {
            GraphicsEnvironment.earlyInitEGL();
        }
        WindowManagerGlobal.initialize();
        if (performLaunchActivity(activityClientRecord, intent) == null) {
            try {
                ActivityManager.getService().finishActivity(activityClientRecord.token, 0, null, 0);
                return;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        activityClientRecord.createdConfig = new Configuration(this.mConfiguration);
        reportSizeConfigurations(activityClientRecord);
        Bundle bundle = activityClientRecord.state;
        Trace.traceBegin(64L, "handleResumeActivity");
        handleResumeActivity(activityClientRecord.token, false, activityClientRecord.isForward, (activityClientRecord.activity.mFinished || activityClientRecord.startsNotResumed) ? false : true, activityClientRecord.lastProcessedSeq, str);
        Trace.traceEnd(64L);
        if (activityClientRecord.activity.mFinished || !activityClientRecord.startsNotResumed) {
            return;
        }
        performPauseActivityIfNeeded(activityClientRecord, str);
        if (activityClientRecord.isPreHoneycomb()) {
            activityClientRecord.state = bundle;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLocalVoiceInteractionStarted(IBinder iBinder, IVoiceInteractor iVoiceInteractor) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            activityClientRecord.voiceInteractor = iVoiceInteractor;
            activityClientRecord.activity.setVoiceInteractor(iVoiceInteractor);
            if (iVoiceInteractor == null) {
                activityClientRecord.activity.onLocalVoiceInteractionStopped();
            } else {
                activityClientRecord.activity.onLocalVoiceInteractionStarted();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMultiWindowModeChanged(IBinder iBinder, boolean z2, Configuration configuration) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            Configuration configuration2 = new Configuration(this.mConfiguration);
            if (configuration != null) {
                configuration2.updateFrom(configuration);
            }
            activityClientRecord.activity.dispatchMultiWindowModeChanged(z2, configuration2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewIntent(NewIntentData newIntentData) {
        performNewIntents(newIntentData.token, newIntentData.intents, newIntentData.andPause);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePauseActivity(IBinder iBinder, boolean z2, boolean z3, int i2, boolean z4, int i3) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (checkAndUpdateLifecycleSeq(i3, activityClientRecord, "pauseActivity") && activityClientRecord != null) {
            if (z3) {
                performUserLeavingActivity(activityClientRecord);
            }
            Activity activity = activityClientRecord.activity;
            activity.mConfigChangeFlags = i2 | activity.mConfigChangeFlags;
            performPauseActivity(iBinder, z2, activityClientRecord.isPreHoneycomb(), "handlePauseActivity");
            if (activityClientRecord.isPreHoneycomb()) {
                QueuedWork.waitToFinish();
            }
            if (!z4) {
                try {
                    ActivityManager.getService().activityPaused(iBinder);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            this.mSomeActivitiesChanged = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePictureInPictureModeChanged(IBinder iBinder, boolean z2, Configuration configuration) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            Configuration configuration2 = new Configuration(this.mConfiguration);
            if (configuration != null) {
                configuration2.updateFrom(configuration);
            }
            activityClientRecord.activity.dispatchPictureInPictureModeChanged(z2, configuration2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReceiver(ReceiverData receiverData) {
        unscheduleGcIdler();
        String className = receiverData.intent.getComponent().getClassName();
        LoadedApk packageInfoNoCheck = getPackageInfoNoCheck(receiverData.info.applicationInfo, receiverData.compatInfo);
        IActivityManager service = ActivityManager.getService();
        try {
            ContextImpl contextImpl = (ContextImpl) packageInfoNoCheck.makeApplication(false, this.mInstrumentation).getBaseContext();
            String str = receiverData.info.splitName;
            if (str != null) {
                contextImpl = (ContextImpl) contextImpl.createContextForSplit(str);
            }
            ClassLoader classLoader = contextImpl.getClassLoader();
            receiverData.intent.setExtrasClassLoader(classLoader);
            receiverData.intent.prepareToEnterProcess();
            receiverData.setExtrasClassLoader(classLoader);
            BroadcastReceiver broadcastReceiver = (BroadcastReceiver) classLoader.loadClass(className).newInstance();
            try {
                try {
                    ThreadLocal<Intent> threadLocal = sCurrentBroadcastIntent;
                    threadLocal.set(receiverData.intent);
                    broadcastReceiver.setPendingResult(receiverData);
                    long time = CheckTime.getTime();
                    broadcastReceiver.onReceive(contextImpl.getReceiverRestrictedContext(), receiverData.intent);
                    if (CheckTime.checkTime(time, className + " onReceive")) {
                        Slog.w("ActivityThread", className + " running onReceive took long time");
                    }
                    threadLocal.set(null);
                } catch (Exception e2) {
                    receiverData.sendFinished(service);
                    if (!this.mInstrumentation.onException(broadcastReceiver, e2)) {
                        throw new RuntimeException("Unable to start receiver " + className + ": " + e2.toString(), e2);
                    }
                    sCurrentBroadcastIntent.set(null);
                }
                if (broadcastReceiver.getPendingResult() != null) {
                    receiverData.finish();
                }
                if (CheckTime.checkTime(receiverData.receiveTime, android.accessibilityservice.c.D(className, " scheduleReceive"), 500L)) {
                    Slog.w("ActivityThread", "Main thread can not be idle for a long time.");
                }
            } catch (Throwable th) {
                sCurrentBroadcastIntent.set(null);
                throw th;
            }
        } catch (Exception e3) {
            receiverData.sendFinished(service);
            StringBuilder sbV = android.accessibilityservice.c.v("Unable to instantiate receiver ", className, ": ");
            sbV.append(e3.toString());
            throw new RuntimeException(sbV.toString(), e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRelaunchActivity(ActivityClientRecord activityClientRecord) {
        Configuration configuration;
        unscheduleGcIdler();
        this.mSomeActivitiesChanged = true;
        synchronized (this.mResourcesManager) {
            int size = this.mRelaunchingActivities.size();
            IBinder iBinder = activityClientRecord.token;
            ActivityClientRecord activityClientRecord2 = null;
            int i2 = 0;
            int i3 = 0;
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
            int i4 = activityClientRecord2.lastProcessedSeq;
            int i5 = activityClientRecord2.relaunchSeq;
            if (i4 > i5) {
                Slog.wtf("ActivityThread", "For some reason target: " + activityClientRecord2 + " has lower sequence: " + activityClientRecord2.relaunchSeq + " than current sequence: " + activityClientRecord2.lastProcessedSeq);
            } else {
                activityClientRecord2.lastProcessedSeq = i5;
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
                if (activityClientRecord2.onlyLocalRequest) {
                    return;
                }
                try {
                    ActivityManager.getService().activityRelaunched(activityClientRecord2.token);
                    return;
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            Activity activity = activityClientRecord4.activity;
            activity.mConfigChangeFlags |= i3;
            boolean z2 = activityClientRecord2.onlyLocalRequest;
            activityClientRecord4.onlyLocalRequest = z2;
            boolean z3 = activityClientRecord2.mPreserveWindow;
            activityClientRecord4.mPreserveWindow = z3;
            activityClientRecord4.lastProcessedSeq = activityClientRecord2.lastProcessedSeq;
            activityClientRecord4.relaunchSeq = activityClientRecord2.relaunchSeq;
            Intent intent = activity.mIntent;
            activity.mChangingConfigurations = true;
            if (z3 || z2) {
                try {
                    WindowManagerGlobal.getWindowSession().prepareToReplaceWindows(activityClientRecord4.token, !activityClientRecord4.onlyLocalRequest);
                } catch (RemoteException e3) {
                    throw e3.rethrowFromSystemServer();
                }
            }
            if (!activityClientRecord4.paused) {
                performPauseActivity(activityClientRecord4.token, false, activityClientRecord4.isPreHoneycomb(), "handleRelaunchActivity");
            }
            if (activityClientRecord4.state == null && !activityClientRecord4.stopped && !activityClientRecord4.isPreHoneycomb()) {
                callCallActivityOnSaveInstanceState(activityClientRecord4);
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
            List<ReferrerIntent> list3 = activityClientRecord2.pendingIntents;
            if (list3 != null) {
                List<ReferrerIntent> list4 = activityClientRecord4.pendingIntents;
                if (list4 == null) {
                    activityClientRecord4.pendingIntents = list3;
                } else {
                    list4.addAll(list3);
                }
            }
            activityClientRecord4.startsNotResumed = activityClientRecord2.startsNotResumed;
            activityClientRecord4.overrideConfig = activityClientRecord2.overrideConfig;
            handleLaunchActivity(activityClientRecord4, intent, "handleRelaunchActivity");
            if (activityClientRecord2.onlyLocalRequest) {
                return;
            }
            try {
                ActivityManager.getService().activityRelaunched(activityClientRecord4.token);
                Window window = activityClientRecord4.window;
                if (window != null) {
                    window.reportActivityRelaunched();
                }
            } catch (RemoteException e4) {
                throw e4.rethrowFromSystemServer();
            }
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
            checkAndBlockForNetworkAccess();
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
                    serviceArgsData.args.prepareToEnterProcess();
                }
                if (serviceArgsData.taskRemoved) {
                    service.onTaskRemoved(serviceArgsData.args);
                    iOnStartCommand = 1000;
                } else {
                    iOnStartCommand = service.onStartCommand(serviceArgsData.args, serviceArgsData.flags, serviceArgsData.startId);
                }
                QueuedWork.waitToFinish();
                try {
                    ActivityManager.getService().serviceDoneExecuting(serviceArgsData.token, 1, serviceArgsData.startId, iOnStartCommand);
                    ensureJitEnabled();
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Exception e3) {
                if (this.mInstrumentation.onException(service, e3)) {
                    return;
                }
                throw new RuntimeException("Unable to start service " + service + " with " + serviceArgsData.args + ": " + e3.toString(), e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetCoreSettings(Bundle bundle) {
        synchronized (this.mResourcesManager) {
            this.mCoreSettings = bundle;
        }
        onCoreSettingsChange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSleeping(IBinder iBinder, boolean z2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord == null) {
            Log.w("ActivityThread", "handleSleeping: no activity for token " + iBinder);
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
            if (!activityClientRecord.activity.mFinished && activityClientRecord.state == null) {
                callCallActivityOnSaveInstanceState(activityClientRecord);
            }
            try {
                activityClientRecord.activity.performStop(false);
            } catch (Exception e2) {
                if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                    throw new RuntimeException("Unable to stop activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                }
            }
            activityClientRecord.stopped = true;
            EventLog.writeEvent(LOG_AM_ON_STOP_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName(), "sleeping");
        }
        if (!activityClientRecord.isPreHoneycomb()) {
            QueuedWork.waitToFinish();
        }
        try {
            ActivityManager.getService().activitySlept(activityClientRecord.token);
        } catch (RemoteException e3) {
            throw e3.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStartBinderTracking() {
        Binder.enableTracing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopActivity(IBinder iBinder, boolean z2, int i2, int i3) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord == null) {
            Log.w("ActivityThread", "handleStopActivity: no activity for token:" + iBinder);
        } else if (checkAndUpdateLifecycleSeq(i3, activityClientRecord, "stopActivity")) {
            Activity activity = activityClientRecord.activity;
            activity.mConfigChangeFlags = i2 | activity.mConfigChangeFlags;
            StopInfo stopInfo = new StopInfo();
            performStopActivityInner(activityClientRecord, stopInfo, z2, true, "handleStopActivity");
            updateVisibility(activityClientRecord, z2);
            if (!activityClientRecord.isPreHoneycomb()) {
                QueuedWork.waitToFinish();
            }
            stopInfo.activity = activityClientRecord;
            stopInfo.state = activityClientRecord.state;
            stopInfo.persistentState = activityClientRecord.persistentState;
            this.mH.post(stopInfo);
            this.mSomeActivitiesChanged = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopBinderTrackingAndDump(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            Binder.disableTracing();
            Binder.getTransactionTracker().writeTracesToFile(parcelFileDescriptor);
        } finally {
            IoUtils.closeQuietly(parcelFileDescriptor);
            Binder.getTransactionTracker().clearTraces();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopService(IBinder iBinder) {
        int i2;
        Service serviceRemove = this.mServices.remove(iBinder);
        try {
            if (serviceRemove != null) {
                serviceRemove.onDestroy();
                serviceRemove.detachAndCleanUp();
                Context baseContext = serviceRemove.getBaseContext();
                if (baseContext instanceof ContextImpl) {
                    ((ContextImpl) baseContext).scheduleFinalCleanup(serviceRemove.getClassName(), "Service");
                }
                QueuedWork.waitToFinish();
                i2 = 2;
            } else {
                Slog.i("ActivityThread", "handleStopService: token=" + iBinder + " not found.");
                i2 = 0;
            }
            try {
                ActivityManager.getService().serviceDoneExecuting(iBinder, i2, 0, 0);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        } catch (Exception e3) {
            if (this.mInstrumentation.onException(serviceRemove, e3)) {
                Slog.i("ActivityThread", "handleStopService: exception for " + iBinder, e3);
            } else {
                throw new RuntimeException("Unable to stop service " + serviceRemove + ": " + e3.toString(), e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUnbindService(BindServiceData bindServiceData) {
        Service service = this.mServices.get(bindServiceData.token);
        if (service != null) {
            try {
                bindServiceData.intent.setExtrasClassLoader(service.getClassLoader());
                bindServiceData.intent.prepareToEnterProcess();
                boolean zOnUnbind = service.onUnbind(bindServiceData.intent);
                try {
                    if (zOnUnbind) {
                        ActivityManager.getService().unbindFinished(bindServiceData.token, bindServiceData.intent, zOnUnbind);
                    } else {
                        ActivityManager.getService().serviceDoneExecuting(bindServiceData.token, 0, 0, 0);
                    }
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            } catch (Exception e3) {
                if (this.mInstrumentation.onException(service, e3)) {
                    return;
                }
                throw new RuntimeException("Unable to unbind to service " + service + " with " + bindServiceData.intent + ": " + e3.toString(), e3);
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
            Log.w("ActivityThread", "handleWindowVisibility: no activity for token " + iBinder);
            return;
        }
        if (!z2 && !activityClientRecord.stopped) {
            performStopActivityInner(activityClientRecord, null, z2, false, "handleWindowVisibility");
        } else if (z2 && activityClientRecord.stopped) {
            unscheduleGcIdler();
            activityClientRecord.activity.performRestart();
            activityClientRecord.stopped = false;
        }
        if (activityClientRecord.activity.mDecor != null) {
            updateVisibility(activityClientRecord, z2);
        }
        this.mSomeActivitiesChanged = true;
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
                ActivityManager.getService().refContentProvider(providerRefCount.holder.connection, 1, i2);
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
                ActivityManager.getService().refContentProvider(providerRefCount.holder.connection, 0, 1);
            }
        } catch (RemoteException unused) {
        }
    }

    private void installContentProviders(Context context, List<ProviderInfo> list) {
        ArrayList<ContentProviderHolder> arrayList = new ArrayList();
        Iterator<ProviderInfo> it = list.iterator();
        while (it.hasNext()) {
            ContentProviderHolder contentProviderHolderInstallProvider = installProvider(context, null, it.next(), false, true, true);
            if (contentProviderHolderInstallProvider != null) {
                contentProviderHolderInstallProvider.noReleaseNeeded = true;
                arrayList.add(contentProviderHolderInstallProvider);
            }
        }
        try {
            ActivityManager.getService().publishContentProviders(getApplicationThread(), arrayList);
            if (SystemProperties.get("persist.support.securetest").equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                for (ContentProviderHolder contentProviderHolder : arrayList) {
                    Log.i("ActivityThread", "add content provider authority:" + contentProviderHolder.info.authority + ", provider binder:" + contentProviderHolder.provider.asBinder());
                    String[] strArr = {"sms", PhoneConstants.APN_TYPE_MMS, "mms-sms", CallLog.AUTHORITY, "contacts;com.android.contacts", "icc", MediaStore.AUTHORITY, null};
                    int i2 = 0;
                    while (true) {
                        String str = strArr[i2];
                        if (str != null) {
                            if (str.equals(contentProviderHolder.info.authority)) {
                                ServiceManager.addService(contentProviderHolder.info.authority, contentProviderHolder.provider.asBinder());
                            }
                            i2++;
                        }
                    }
                }
            }
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private ContentProviderHolder installProvider(Context context, ContentProviderHolder contentProviderHolder, ProviderInfo providerInfo, boolean z2, boolean z3, boolean z4) {
        IContentProvider iContentProvider;
        ContentProviderHolder contentProviderHolder2;
        ContentProvider contentProvider = null;
        if (contentProviderHolder == null || (iContentProvider = contentProviderHolder.provider) == null) {
            if (z2) {
                Slog.d("ActivityThread", "Loading provider " + providerInfo.authority + ": " + providerInfo.name);
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
                Slog.w("ActivityThread", "Unable to get context for package " + applicationInfo.packageName + " while loading content provider " + providerInfo.name);
                return null;
            }
            String str = providerInfo.splitName;
            if (str != null) {
                try {
                    context = context.createContextForSplit(str);
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new RuntimeException(e2);
                }
            }
            try {
                ContentProvider contentProvider2 = (ContentProvider) context.getClassLoader().loadClass(providerInfo.name).newInstance();
                iContentProvider = contentProvider2.getIContentProvider();
                if (iContentProvider == null) {
                    Slog.e("ActivityThread", "Failed to instantiate class " + providerInfo.name + " from sourceDir " + providerInfo.applicationInfo.sourceDir);
                    return null;
                }
                contentProvider2.attachInfo(context, providerInfo);
                contentProvider = contentProvider2;
            } catch (Exception e3) {
                if (this.mInstrumentation.onException(null, e3)) {
                    return null;
                }
                throw new RuntimeException("Unable to get provider " + providerInfo.name + ": " + e3.toString(), e3);
            }
        }
        synchronized (this.mProviderMap) {
            IBinder iBinderAsBinder = iContentProvider.asBinder();
            if (contentProvider != null) {
                ComponentName componentName = new ComponentName(providerInfo.packageName, providerInfo.name);
                ProviderClientRecord providerClientRecordInstallProviderAuthoritiesLocked = this.mLocalProvidersByName.get(componentName);
                if (providerClientRecordInstallProviderAuthoritiesLocked == null) {
                    ContentProviderHolder contentProviderHolder3 = new ContentProviderHolder(providerInfo);
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
                    Trace.traceBegin(64L, "installProviderAuthoritiesLocked");
                    ProviderClientRecord providerClientRecordInstallProviderAuthoritiesLocked2 = installProviderAuthoritiesLocked(iContentProvider, contentProvider, contentProviderHolder);
                    Trace.traceEnd(64L);
                    if (z3) {
                        providerRefCount = new ProviderRefCount(contentProviderHolder, providerClientRecordInstallProviderAuthoritiesLocked2, 1000, 1000);
                    } else {
                        providerRefCount = z4 ? new ProviderRefCount(contentProviderHolder, providerClientRecordInstallProviderAuthoritiesLocked2, 1, 0) : new ProviderRefCount(contentProviderHolder, providerClientRecordInstallProviderAuthoritiesLocked2, 0, 1);
                    }
                    this.mProviderRefCountMap.put(iBinderAsBinder, providerRefCount);
                } else if (!z3) {
                    incProviderRefLocked(providerRefCount, z4);
                    try {
                        ActivityManager.getService().removeContentProvider(contentProviderHolder.connection, z4);
                    } catch (RemoteException unused2) {
                    }
                }
                contentProviderHolder2 = providerRefCount.holder;
            }
        }
        return contentProviderHolder2;
    }

    private ProviderClientRecord installProviderAuthoritiesLocked(IContentProvider iContentProvider, ContentProvider contentProvider, ContentProviderHolder contentProviderHolder) {
        String[] strArrSplit = contentProviderHolder.info.authority.split(";");
        int userId = UserHandle.getUserId(contentProviderHolder.info.applicationInfo.uid);
        if (iContentProvider != null) {
            for (String str : strArrSplit) {
                str.getClass();
                switch (str) {
                    case "com.android.contacts":
                    case "com.android.calendar":
                    case "call_log":
                    case "call_log_shadow":
                    case "telephony":
                    case "downloads":
                    case "com.android.blockednumber":
                        Binder.allowBlocking(iContentProvider.asBinder());
                        break;
                }
            }
        }
        ProviderClientRecord providerClientRecord = new ProviderClientRecord(strArrSplit, iContentProvider, contentProvider, contentProviderHolder);
        for (String str2 : strArrSplit) {
            ProviderKey providerKey = new ProviderKey(str2, userId);
            if (this.mProviderMap.get(providerKey) != null) {
                Slog.w("ActivityThread", "Content provider " + providerClientRecord.mHolder.info.name + " already published as " + str2);
            } else {
                this.mProviderMap.put(providerKey, providerClientRecord);
            }
        }
        return providerClientRecord;
    }

    private boolean isNeedAdjustHomeActivity(String str) {
        if (str == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        try {
            getPackageManager().getHomeActivities(arrayList);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ActivityInfo activityInfo = ((ResolveInfo) arrayList.get(i2)).activityInfo;
                if (str.equals(activityInfo.packageName) && !str.equals("com.android.launcher3") && !str.equals("com.android.sprdlauncher3") && !str.equals("com.android.settings")) {
                    android.accessibilityservice.c.C(new StringBuilder("3rd home app :"), activityInfo.packageName, "ActivityThread");
                    return true;
                }
            }
            return false;
        } catch (RemoteException e2) {
            Log.e("ActivityThread", "getHomeActivities ERROR :" + e2);
            return false;
        }
    }

    public static boolean isSystem() {
        if (sCurrentActivityThread != null) {
            return sCurrentActivityThread.mSystemThread;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$attach$0(Configuration configuration) {
        synchronized (this.mResourcesManager) {
            if (this.mResourcesManager.applyConfigurationToResourcesLocked(configuration, null)) {
                updateLocaleListFromAppContext(this.mInitialApplication.getApplicationContext(), this.mResourcesManager.getConfiguration().getLocales());
                Configuration configuration2 = this.mPendingConfiguration;
                if (configuration2 == null || configuration2.isOtherSeqNewer(configuration)) {
                    this.mPendingConfiguration = configuration;
                    sendMessage(118, configuration);
                }
            }
        }
    }

    public static void main(String[] strArr) {
        Trace.traceBegin(64L, "ActivityThreadMain");
        CloseGuard.setEnabled(false);
        Environment.initForCurrentUser();
        EventLogger.setReporter(new EventLoggingReporter());
        TrustedCertificateStore.setDefaultUserDirectory(Environment.getUserConfigDirectory(UserHandle.myUserId()));
        Process.setArgV0("<pre-initialized>");
        Looper.prepareMainLooper();
        ActivityThread activityThread = new ActivityThread();
        activityThread.attach(false);
        if (sMainThreadHandler == null) {
            sMainThreadHandler = activityThread.getHandler();
        }
        Trace.traceEnd(64L);
        Looper.loop();
        throw new RuntimeException("Main thread loop unexpectedly exited");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void nDumpGraphicsInfo(FileDescriptor fileDescriptor);

    private void onCoreSettingsChange() {
        boolean z2 = this.mCoreSettings.getInt(Settings.Global.DEBUG_VIEW_ATTRIBUTES, 0) != 0;
        if (z2 != View.mDebugViewAttributes) {
            View.mDebugViewAttributes = z2;
            requestRelaunchAllActivities();
        }
    }

    private Configuration performActivityConfigurationChanged(Activity activity, Configuration configuration, Configuration configuration2, int i2, boolean z2) {
        int iDiffPublicOnly;
        if (activity == null) {
            throw new IllegalArgumentException("No activity provided.");
        }
        IBinder activityToken = activity.getActivityToken();
        if (activityToken == null) {
            throw new IllegalArgumentException("Activity token not set. Is the activity attached?");
        }
        Configuration configuration3 = activity.mCurrentConfig;
        boolean z3 = true;
        if (configuration3 != null && (((iDiffPublicOnly = configuration3.diffPublicOnly(configuration)) == 0 && this.mResourcesManager.isSameResourcesOverrideConfig(activityToken, configuration2)) || (this.mUpdatingSystemConfig && (iDiffPublicOnly & (~activity.mActivityInfo.getRealConfigChanged())) != 0))) {
            z3 = false;
        }
        if (!z3 && !z2) {
            return null;
        }
        Configuration overrideConfiguration = activity.getOverrideConfiguration();
        Configuration configurationCreateNewConfigAndUpdateIfNotNull = createNewConfigAndUpdateIfNotNull(configuration2, overrideConfiguration);
        Trace.traceBegin(64L, "updateResourcesForActivity");
        this.mResourcesManager.updateResourcesForActivity(activityToken, configurationCreateNewConfigAndUpdateIfNotNull, i2, z2);
        Trace.traceEnd(64L);
        activity.mConfigChangeFlags = 0;
        activity.mCurrentConfig = new Configuration(configuration);
        Configuration configurationCreateNewConfigAndUpdateIfNotNull2 = createNewConfigAndUpdateIfNotNull(configuration, overrideConfiguration);
        if (z2) {
            activity.dispatchMovedToDisplay(i2, configurationCreateNewConfigAndUpdateIfNotNull2);
        }
        if (z3) {
            activity.mCalled = false;
            Trace.traceBegin(64L, "onConfigurationChanged");
            activity.onConfigurationChanged(configurationCreateNewConfigAndUpdateIfNotNull2);
            Trace.traceEnd(64L);
            if (!activity.mCalled) {
                throw new SuperNotCalledException("Activity " + activity.getLocalClassName() + " did not call through to super.onConfigurationChanged()");
            }
        }
        return configurationCreateNewConfigAndUpdateIfNotNull2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void performConfigurationChanged(ComponentCallbacks2 componentCallbacks2, Configuration configuration) {
        componentCallbacks2.onConfigurationChanged(createNewConfigAndUpdateIfNotNull(configuration, componentCallbacks2 instanceof ContextThemeWrapper ? ((ContextThemeWrapper) componentCallbacks2).getOverrideConfiguration() : null));
    }

    private void performConfigurationChangedForActivity(ActivityClientRecord activityClientRecord, Configuration configuration) {
        performConfigurationChangedForActivity(activityClientRecord, configuration, activityClientRecord.activity.getDisplay().getDisplayId(), false);
    }

    /* JADX WARN: Code duplicated, block: B:142:0x02c1 A[Catch: all -> 0x02e7, TRY_ENTER, TryCatch #5 {all -> 0x02e7, blocks: (B:62:0x016c, B:64:0x017f, B:67:0x0188, B:69:0x0191, B:70:0x019f, B:72:0x01a5, B:74:0x01ab, B:76:0x01af, B:78:0x01b3, B:79:0x01bb, B:81:0x01bf, B:82:0x01c4, B:84:0x01ca, B:86:0x01d2, B:88:0x01e3, B:91:0x01e9, B:92:0x0209, B:87:0x01dc, B:128:0x0296, B:93:0x020a, B:94:0x022a, B:138:0x02b2, B:142:0x02c1, B:143:0x02e2, B:146:0x02e6, B:63:0x0176), top: B:152:0x0089 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:142:0x02c1, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [android.app.Instrumentation] */
    /* JADX WARN: Type inference failed for: r0v46, types: [android.app.Instrumentation] */
    /* JADX WARN: Type inference failed for: r1v7, types: [android.app.Instrumentation] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.app.ContextImpl, android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18, types: [android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v19, types: [android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7, types: [android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44 */
    /* JADX WARN: Type inference failed for: r3v45 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.app.ActivityThread] */
    /* JADX WARN: Type inference failed for: r4v10, types: [android.app.Instrumentation] */
    /* JADX WARN: Type inference failed for: r4v15, types: [android.app.Instrumentation] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.app.Activity, android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [long] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5, types: [long] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r9v3, types: [android.app.Instrumentation] */
    /* JADX WARN: Type inference failed for: r9v4, types: [android.app.Instrumentation] */
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
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    private Activity performLaunchActivity(ActivityClientRecord activityClientRecord, Intent intent) throws Throwable {
        Activity activityNewActivity;
        ?? r3;
        String str;
        boolean zOnException;
        ?? r5;
        ?? r2;
        ?? r4;
        boolean z2;
        ?? r6;
        ActivityClientRecord activityClientRecord2;
        ActivityThread activityThread;
        Window window;
        ActivityThread activityThread2;
        String str2 = "Unable to start activity ";
        Trace.traceBegin(64L, "performLaunchActivity");
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
        ComponentName componentName = component;
        ?? CreateBaseContextForActivity = createBaseContextForActivity(activityClientRecord);
        try {
            ClassLoader classLoader = CreateBaseContextForActivity.getClassLoader();
            activityNewActivity = this.mInstrumentation.newActivity(classLoader, componentName.getClassName(), activityClientRecord.intent);
            try {
                StrictMode.incrementExpectedActivityCount(activityNewActivity.getClass());
                activityClientRecord.intent.setExtrasClassLoader(classLoader);
                activityClientRecord.intent.prepareToEnterProcess();
                Bundle bundle = activityClientRecord.state;
                r3 = bundle;
                if (bundle != null) {
                    bundle.setClassLoader(classLoader);
                    r3 = bundle;
                }
            } catch (Exception e2) {
                e = e2;
                boolean zOnException2 = this.mInstrumentation.onException(activityNewActivity, e);
                r3 = zOnException2;
                if (!zOnException2) {
                    throw new RuntimeException("Unable to instantiate activity " + componentName + ": " + e.toString(), e);
                }
            }
        } catch (Exception e3) {
            e = e3;
            activityNewActivity = null;
        }
        ?? r7 = activityNewActivity;
        try {
            try {
                Trace.traceBegin(64L, "makeApplication");
                Application applicationMakeApplication = activityClientRecord.packageInfo.makeApplication(false, this.mInstrumentation);
                try {
                    if (r7 != 0) {
                        CharSequence charSequenceLoadLabel = activityClientRecord.activityInfo.loadLabel(CreateBaseContextForActivity.getPackageManager());
                        Configuration configuration = new Configuration(this.mCompatConfiguration);
                        if (activityClientRecord.overrideConfig != null) {
                            Trace.traceBegin(64L, "updateFrom");
                            configuration.updateFrom(activityClientRecord.overrideConfig);
                            Trace.traceEnd(64L);
                        }
                        Window window2 = activityClientRecord.mPendingRemoveWindow;
                        if (window2 == null || !activityClientRecord.mPreserveWindow) {
                            window = null;
                        } else {
                            activityClientRecord.mPendingRemoveWindow = null;
                            activityClientRecord.mPendingRemoveWindowManager = null;
                            window = window2;
                        }
                        CreateBaseContextForActivity.setOuterContext(r7);
                        Trace.traceBegin(64L, "activity attach");
                        try {
                            try {
                                try {
                                    try {
                                        componentName = componentName;
                                        str2 = "Unable to start activity ";
                                        str = ": ";
                                        try {
                                            try {
                                                r7.attach(CreateBaseContextForActivity, this, getInstrumentation(), activityClientRecord.token, activityClientRecord.ident, applicationMakeApplication, activityClientRecord.intent, activityClientRecord.activityInfo, charSequenceLoadLabel, activityClientRecord.parent, activityClientRecord.embeddedID, activityClientRecord.lastNonConfigurationInstances, configuration, activityClientRecord.referrer, activityClientRecord.voiceInteractor, window, activityClientRecord.configCallback);
                                                Trace.traceEnd(64L);
                                                if (intent != null) {
                                                    CreateBaseContextForActivity = r7;
                                                    try {
                                                        CreateBaseContextForActivity.mIntent = intent;
                                                        CreateBaseContextForActivity = CreateBaseContextForActivity;
                                                    } catch (Exception e4) {
                                                        e = e4;
                                                        r3 = this;
                                                        r7 = 64;
                                                        zOnException = r3.mInstrumentation.onException(CreateBaseContextForActivity, e);
                                                        r2 = CreateBaseContextForActivity;
                                                        r5 = r7;
                                                        if (!zOnException) {
                                                            throw new RuntimeException(str2 + componentName + str + e.toString(), e);
                                                        }
                                                        Trace.traceEnd(r5);
                                                        Trace.traceEnd(r5);
                                                        return r2;
                                                    }
                                                } else {
                                                    CreateBaseContextForActivity = r7;
                                                }
                                                activityClientRecord2 = activityClientRecord;
                                                activityClientRecord2.lastNonConfigurationInstances = null;
                                                checkAndBlockForNetworkAccess();
                                                CreateBaseContextForActivity.mStartedActivity = false;
                                                int themeResource = activityClientRecord2.activityInfo.getThemeResource();
                                                if (themeResource != 0) {
                                                    r7 = 64;
                                                    try {
                                                        Trace.traceBegin(64L, "activity setTheme");
                                                        CreateBaseContextForActivity.setTheme(themeResource);
                                                        Trace.traceEnd(64L);
                                                        r7 = r7;
                                                    } catch (SuperNotCalledException e5) {
                                                        throw e5;
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                        r3 = this;
                                                        zOnException = r3.mInstrumentation.onException(CreateBaseContextForActivity, e);
                                                        r2 = CreateBaseContextForActivity;
                                                        r5 = r7;
                                                        if (!zOnException) {
                                                            throw new RuntimeException(str2 + componentName + str + e.toString(), e);
                                                        }
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        Trace.traceEnd(r7);
                                                        throw th;
                                                    }
                                                } else {
                                                    r7 = 64;
                                                }
                                                CreateBaseContextForActivity.mCalled = false;
                                                Trace.traceBegin(r7, "callActivityOnCreate");
                                                if (activityClientRecord.isPersistable()) {
                                                    activityThread = this;
                                                    activityThread.mInstrumentation.callActivityOnCreate(CreateBaseContextForActivity, activityClientRecord2.state, activityClientRecord2.persistentState);
                                                } else {
                                                    activityThread = this;
                                                    activityThread.mInstrumentation.callActivityOnCreate(CreateBaseContextForActivity, activityClientRecord2.state);
                                                }
                                                Trace.traceEnd(r7);
                                                if (!CreateBaseContextForActivity.mCalled) {
                                                    throw new SuperNotCalledException("Activity " + activityClientRecord2.intent.getComponent().toShortString() + " did not call through to super.onCreate()");
                                                }
                                                activityClientRecord2.activity = CreateBaseContextForActivity;
                                                z2 = true;
                                                activityClientRecord2.stopped = true;
                                                if (!CreateBaseContextForActivity.mFinished) {
                                                    Trace.traceBegin(r7, "performStart");
                                                    CreateBaseContextForActivity.performStart();
                                                    Trace.traceEnd(r7);
                                                    activityClientRecord2.stopped = false;
                                                }
                                                if (!activityClientRecord2.activity.mFinished) {
                                                    if (activityClientRecord.isPersistable()) {
                                                        Bundle bundle2 = activityClientRecord2.state;
                                                        if (bundle2 != null || activityClientRecord2.persistentState != null) {
                                                            activityThread.mInstrumentation.callActivityOnRestoreInstanceState(CreateBaseContextForActivity, bundle2, activityClientRecord2.persistentState);
                                                        }
                                                    } else {
                                                        Bundle bundle3 = activityClientRecord2.state;
                                                        if (bundle3 != null) {
                                                            activityThread.mInstrumentation.callActivityOnRestoreInstanceState(CreateBaseContextForActivity, bundle3);
                                                        }
                                                    }
                                                }
                                                r4 = CreateBaseContextForActivity;
                                                r6 = r7;
                                                if (!activityClientRecord2.activity.mFinished) {
                                                    CreateBaseContextForActivity.mCalled = false;
                                                    if (activityClientRecord.isPersistable()) {
                                                        activityThread.mInstrumentation.callActivityOnPostCreate(CreateBaseContextForActivity, activityClientRecord2.state, activityClientRecord2.persistentState);
                                                    } else {
                                                        activityThread.mInstrumentation.callActivityOnPostCreate(CreateBaseContextForActivity, activityClientRecord2.state);
                                                    }
                                                    if (!CreateBaseContextForActivity.mCalled) {
                                                        throw new SuperNotCalledException("Activity " + activityClientRecord2.intent.getComponent().toShortString() + " did not call through to super.onPostCreate()");
                                                    }
                                                    r4 = CreateBaseContextForActivity;
                                                    r6 = r7;
                                                }
                                            } catch (Exception e7) {
                                                e = e7;
                                                r3 = this;
                                                r7 = 64;
                                                CreateBaseContextForActivity = r7;
                                                zOnException = r3.mInstrumentation.onException(CreateBaseContextForActivity, e);
                                                r2 = CreateBaseContextForActivity;
                                                r5 = r7;
                                                if (!zOnException) {
                                                    throw new RuntimeException(str2 + componentName + str + e.toString(), e);
                                                }
                                                Trace.traceEnd(r5);
                                                Trace.traceEnd(r5);
                                                return r2;
                                            }
                                        } catch (SuperNotCalledException e8) {
                                            throw e8;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            r7 = 64;
                                        }
                                    } catch (SuperNotCalledException e9) {
                                        e = e9;
                                        throw e;
                                    } catch (Exception e10) {
                                        e = e10;
                                        activityThread2 = this;
                                        str = ": ";
                                        CreateBaseContextForActivity = r7;
                                        r3 = activityThread2;
                                        r7 = 64;
                                        zOnException = r3.mInstrumentation.onException(CreateBaseContextForActivity, e);
                                        r2 = CreateBaseContextForActivity;
                                        r5 = r7;
                                        if (!zOnException) {
                                            throw new RuntimeException(str2 + componentName + str + e.toString(), e);
                                        }
                                        Trace.traceEnd(r5);
                                        Trace.traceEnd(r5);
                                        return r2;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        r7 = 64;
                                        Trace.traceEnd(r7);
                                        throw th;
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                    activityThread2 = this;
                                }
                            } catch (Exception e12) {
                                e = e12;
                                CreateBaseContextForActivity = r7;
                                componentName = componentName;
                                str2 = "Unable to start activity ";
                                str = ": ";
                                r3 = this;
                            }
                        } catch (SuperNotCalledException e13) {
                            e = e13;
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } else {
                        r4 = r7;
                        z2 = true;
                        r6 = 64;
                        activityClientRecord2 = activityClientRecord;
                        activityThread = this;
                    }
                    activityClientRecord2.paused = z2;
                    activityThread.mActivities.put(activityClientRecord2.token, activityClientRecord2);
                    r2 = r4;
                    r5 = r6;
                } catch (SuperNotCalledException e14) {
                    throw e14;
                } catch (Exception e15) {
                    e = e15;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (SuperNotCalledException e16) {
            throw e16;
        } catch (Exception e17) {
            e = e17;
            CreateBaseContextForActivity = r7;
            componentName = componentName;
            r7 = 64;
            str2 = "Unable to start activity ";
            str = ": ";
            r3 = this;
            zOnException = r3.mInstrumentation.onException(CreateBaseContextForActivity, e);
            r2 = CreateBaseContextForActivity;
            r5 = r7;
            if (!zOnException) {
                throw new RuntimeException(str2 + componentName + str + e.toString(), e);
            }
            Trace.traceEnd(r5);
            Trace.traceEnd(r5);
            return r2;
        } catch (Throwable th6) {
            th = th6;
            r7 = 64;
        }
        Trace.traceEnd(r5);
        Trace.traceEnd(r5);
        return r2;
    }

    private void performPauseActivityIfNeeded(ActivityClientRecord activityClientRecord, String str) {
        if (activityClientRecord.paused) {
            return;
        }
        try {
            Activity activity = activityClientRecord.activity;
            activity.mCalled = false;
            this.mInstrumentation.callActivityOnPause(activity);
            EventLog.writeEvent(LOG_AM_ON_PAUSE_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName(), str);
            if (activityClientRecord.activity.mCalled) {
                activityClientRecord.paused = true;
                return;
            }
            throw new SuperNotCalledException("Activity " + safeToComponentShortString(activityClientRecord.intent) + " did not call through to super.onPause()");
        } catch (SuperNotCalledException e2) {
            throw e2;
        } catch (Exception e3) {
            if (!this.mInstrumentation.onException(activityClientRecord.activity, e3)) {
                throw new RuntimeException("Unable to pause activity " + safeToComponentShortString(activityClientRecord.intent) + ": " + e3.toString(), e3);
            }
        }
    }

    private void performStopActivityInner(ActivityClientRecord activityClientRecord, StopInfo stopInfo, boolean z2, boolean z3, String str) {
        if (activityClientRecord != null) {
            if (!z2 && activityClientRecord.stopped) {
                if (activityClientRecord.activity.mFinished) {
                    return;
                }
                RuntimeException runtimeException = new RuntimeException("Performing stop of activity that is already stopped: " + activityClientRecord.intent.getComponent().toShortString());
                Slog.e("ActivityThread", runtimeException.getMessage(), runtimeException);
                Slog.e("ActivityThread", activityClientRecord.getStateString());
            }
            performPauseActivityIfNeeded(activityClientRecord, str);
            if (stopInfo != null) {
                try {
                    stopInfo.description = activityClientRecord.activity.onCreateDescription();
                } catch (Exception e2) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                        throw new RuntimeException("Unable to save state of activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                    }
                }
            }
            if (!activityClientRecord.activity.mFinished && z3 && activityClientRecord.state == null) {
                callCallActivityOnSaveInstanceState(activityClientRecord);
            }
            if (z2) {
                return;
            }
            try {
                activityClientRecord.activity.performStop(false);
            } catch (Exception e3) {
                if (!this.mInstrumentation.onException(activityClientRecord.activity, e3)) {
                    throw new RuntimeException("Unable to stop activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e3.toString(), e3);
                }
            }
            activityClientRecord.stopped = true;
            EventLog.writeEvent(LOG_AM_ON_STOP_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName(), str);
        }
    }

    public static void printRow(PrintWriter printWriter, String str, Object... objArr) {
        printWriter.println(String.format(str, objArr));
    }

    private void reportSizeConfigurations(ActivityClientRecord activityClientRecord) {
        Configuration[] sizeConfigurations = activityClientRecord.activity.getResources().getSizeConfigurations();
        if (sizeConfigurations == null) {
            return;
        }
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        SparseIntArray sparseIntArray3 = new SparseIntArray();
        for (int length = sizeConfigurations.length - 1; length >= 0; length--) {
            Configuration configuration = sizeConfigurations[length];
            int i2 = configuration.screenHeightDp;
            if (i2 != 0) {
                sparseIntArray2.put(i2, 0);
            }
            int i3 = configuration.screenWidthDp;
            if (i3 != 0) {
                sparseIntArray.put(i3, 0);
            }
            int i4 = configuration.smallestScreenWidthDp;
            if (i4 != 0) {
                sparseIntArray3.put(i4, 0);
            }
        }
        try {
            ActivityManager.getService().reportSizeConfigurations(activityClientRecord.token, sparseIntArray.copyKeys(), sparseIntArray2.copyKeys(), sparseIntArray3.copyKeys());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private void requestRelaunchAllActivities() {
        for (Map.Entry<IBinder, ActivityClientRecord> entry : this.mActivities.entrySet()) {
            if (!entry.getValue().activity.mFinished) {
                try {
                    ActivityManager.getService().requestActivityRelaunch(entry.getKey());
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
        }
    }

    private static String safeToComponentShortString(Intent intent) {
        ComponentName component = intent.getComponent();
        return component == null ? "[Unknown]" : component.toShortString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int i2, Object obj) {
        sendMessage(i2, obj, 0, 0, false);
    }

    private void setupGraphicsSupport(Context context) {
        Trace.traceBegin(64L, "setupGraphicsSupport");
        if (!ZenModeConfig.SYSTEM_AUTHORITY.equals(context.getPackageName())) {
            File cacheDir = context.getCacheDir();
            if (cacheDir != null) {
                System.setProperty("java.io.tmpdir", cacheDir.getAbsolutePath());
            } else {
                Log.v("ActivityThread", "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory");
            }
            File codeCacheDir = context.createDeviceProtectedStorageContext().getCodeCacheDir();
            if (codeCacheDir != null) {
                try {
                    if (getPackageManager().getPackagesForUid(Process.myUid()) != null) {
                        ThreadedRenderer.setupDiskCache(codeCacheDir);
                        RenderScriptCacheDir.setupDiskCache(codeCacheDir);
                    }
                } catch (RemoteException e2) {
                    Trace.traceEnd(64L);
                    throw e2.rethrowFromSystemServer();
                }
            } else {
                Log.w("ActivityThread", "Unable to use shader/script cache: missing code-cache directory");
            }
        }
        GraphicsEnvironment.chooseDriver(context);
        Trace.traceEnd(64L);
    }

    public static ActivityThread systemMain() {
        if (ActivityManager.isHighEndGfx()) {
            ThreadedRenderer.enableForegroundTrimming();
        } else {
            ThreadedRenderer.disable(true);
        }
        ActivityThread activityThread = new ActivityThread();
        activityThread.attach(true);
        return activityThread;
    }

    private void updateDefaultDensity() {
        int i2 = this.mCurDefaultDisplayDpi;
        if (this.mDensityCompatMode || i2 == 0 || i2 == DisplayMetrics.DENSITY_DEVICE) {
            return;
        }
        DisplayMetrics.DENSITY_DEVICE = i2;
        Bitmap.setDefaultDensity(i2);
    }

    private void updateLocaleListFromAppContext(Context context, LocaleList localeList) {
        Locale locale = context.getResources().getConfiguration().getLocales().get(0);
        int size = localeList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (locale.equals(localeList.get(i2))) {
                LocaleList.setDefault(localeList, i2);
                return;
            }
        }
        LocaleList.setDefault(new LocaleList(locale, localeList));
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
                performConfigurationChangedForActivity(activityClientRecord, configuration);
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
            Log.i("ActivityThread", "Acquiring provider " + str + " for user " + i2 + ": existing object's process dead");
            handleUnstableProviderDiedLocked(iBinderAsBinder, true);
            return null;
        }
    }

    public final IContentProvider acquireProvider(Context context, String str, int i2, boolean z2) {
        Trace.traceBegin(64L, "acquireExistingProvider");
        IContentProvider iContentProviderAcquireExistingProvider = acquireExistingProvider(context, str, i2, z2);
        Trace.traceEnd(64L);
        if (iContentProviderAcquireExistingProvider != null) {
            return iContentProviderAcquireExistingProvider;
        }
        try {
            ContentProviderHolder contentProvider = ActivityManager.getService().getContentProvider(getApplicationThread(), str, i2, z2);
            if (contentProvider == null) {
                Slog.e("ActivityThread", "Failed to find provider info for " + str);
                return null;
            }
            Trace.traceBegin(64L, "installProvider");
            ContentProviderHolder contentProviderHolderInstallProvider = installProvider(context, contentProvider, contentProvider.info, true, contentProvider.noReleaseNeeded, z2);
            Trace.traceEnd(64L);
            return contentProviderHolderInstallProvider.provider;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public final void appNotRespondingViaProvider(IBinder iBinder) {
        synchronized (this.mProviderMap) {
            ProviderRefCount providerRefCount = this.mProviderRefCountMap.get(iBinder);
            if (providerRefCount != null) {
                try {
                    ActivityManager.getService().appNotRespondingViaProvider(providerRefCount.holder.connection);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
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
        return this.mResourcesManager.applyCompatConfigurationLocked(i2, this.mCompatConfiguration) ? this.mCompatConfiguration : configuration;
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
                    ActivityManager.getService().removeContentProvider(providerRefCount.holder.connection, false);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public void doGcIfNeeded() {
        this.mGcIdlerScheduled = false;
        if (BinderInternal.getLastGcTime() + 5000 < SystemClock.uptimeMillis()) {
            BinderInternal.forceGc("bg");
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
        IActivityManager service = ActivityManager.getService();
        Profiler profiler = this.mProfiler;
        if (profiler.profileFile != null && profiler.handlingProfiling && profiler.profileFd == null) {
            Debug.stopMethodTracing();
        }
        try {
            service.finishInstrumentation(this.mAppThread, i2, bundle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
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
        return getPackageInfo(applicationInfo, compatibilityInfo, null, false, true, false);
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

    public ContextImpl getSystemUiContext() {
        ContextImpl contextImpl;
        synchronized (this) {
            if (this.mSystemUiContext == null) {
                this.mSystemUiContext = ContextImpl.createSystemUiContext(getSystemContext());
            }
            contextImpl = this.mSystemUiContext;
        }
        return contextImpl;
    }

    public Resources getTopLevelResources(String str, String[] strArr, String[] strArr2, String[] strArr3, int i2, LoadedApk loadedApk) {
        return this.mResourcesManager.getResources(null, str, strArr, strArr2, strArr3, i2, null, loadedApk.getCompatibilityInfo(), loadedApk.getClassLoader());
    }

    public void handleActivityConfigurationChanged(ActivityConfigChangeData activityConfigChangeData, int i2) {
        Activity activity;
        ActivityClientRecord activityClientRecord = this.mActivities.get(activityConfigChangeData.activityToken);
        if (activityClientRecord == null || (activity = activityClientRecord.activity) == null) {
            return;
        }
        boolean z2 = (i2 == -1 || i2 == activity.getDisplay().getDisplayId()) ? false : true;
        activityClientRecord.overrideConfig = activityConfigChangeData.overrideConfig;
        View view = activityClientRecord.activity.mDecor;
        ViewRootImpl viewRootImpl = view != null ? view.getViewRootImpl() : null;
        if (z2) {
            Configuration configurationPerformConfigurationChangedForActivity = performConfigurationChangedForActivity(activityClientRecord, this.mCompatConfiguration, i2, true);
            if (viewRootImpl != null) {
                viewRootImpl.onMovedToDisplay(i2, configurationPerformConfigurationChangedForActivity);
            }
        } else {
            performConfigurationChangedForActivity(activityClientRecord, this.mCompatConfiguration);
        }
        if (viewRootImpl != null) {
            viewRootImpl.updateConfiguration(i2);
        }
        this.mSomeActivitiesChanged = true;
    }

    public void handleApplicationInfoChanged(ApplicationInfo applicationInfo) {
        LoadedApk loadedApk;
        LoadedApk loadedApk2;
        synchronized (this.mResourcesManager) {
            WeakReference<LoadedApk> weakReference = this.mPackages.get(applicationInfo.packageName);
            loadedApk = weakReference != null ? weakReference.get() : null;
            WeakReference<LoadedApk> weakReference2 = this.mResourcePackages.get(applicationInfo.packageName);
            loadedApk2 = weakReference2 != null ? weakReference2.get() : null;
        }
        if (loadedApk != null) {
            ArrayList arrayList = new ArrayList();
            LoadedApk.makePaths(this, loadedApk.getApplicationInfo(), arrayList);
            loadedApk.updateApplicationInfo(applicationInfo, arrayList);
        }
        if (loadedApk2 != null) {
            ArrayList arrayList2 = new ArrayList();
            LoadedApk.makePaths(this, loadedApk2.getApplicationInfo(), arrayList2);
            loadedApk2.updateApplicationInfo(applicationInfo, arrayList2);
        }
        synchronized (this.mResourcesManager) {
            this.mResourcesManager.applyNewResourceDirsLocked(applicationInfo.sourceDir, applicationInfo.resourceDirs);
        }
        ApplicationPackageManager.configurationChanged();
        Configuration configuration = new Configuration();
        Configuration configuration2 = this.mConfiguration;
        configuration.assetsSeq = (configuration2 != null ? configuration2.assetsSeq : 0) + 1;
        handleConfigurationChanged(configuration, null);
        requestRelaunchAllActivities();
    }

    public final void handleConfigurationChanged(Configuration configuration, CompatibilityInfo compatibilityInfo) {
        Configuration configuration2;
        boolean z2 = (configuration == null || (configuration2 = this.mConfiguration) == null || configuration2.diffPublicOnly(configuration) != 0) ? false : true;
        ContextImpl systemContext = getSystemContext();
        synchronized (this.mResourcesManager) {
            Configuration configuration3 = this.mPendingConfiguration;
            if (configuration3 != null) {
                if (!configuration3.isOtherSeqNewer(configuration)) {
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
            updateLocaleListFromAppContext(this.mInitialApplication.getApplicationContext(), this.mResourcesManager.getConfiguration().getLocales());
            if (this.mConfiguration == null) {
                this.mConfiguration = new Configuration();
            }
            if (this.mConfiguration.isOtherSeqNewer(configuration) || compatibilityInfo != null) {
                int iUpdateFrom = this.mConfiguration.updateFrom(configuration);
                Configuration configurationApplyCompatConfiguration = applyCompatConfiguration(this.mCurDefaultDisplayDpi);
                Resources.Theme theme = systemContext.getTheme();
                if ((theme.getChangingConfigurations() & iUpdateFrom) != 0) {
                    theme.rebase();
                }
                Resources.Theme theme2 = getSystemUiContext().getTheme();
                if ((theme2.getChangingConfigurations() & iUpdateFrom) != 0) {
                    theme2.rebase();
                }
                ArrayList<ComponentCallbacks2> arrayListCollectComponentCallbacks = collectComponentCallbacks(false, configurationApplyCompatConfiguration);
                freeTextLayoutCachesIfNeeded(iUpdateFrom);
                if (arrayListCollectComponentCallbacks != null) {
                    int size = arrayListCollectComponentCallbacks.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ComponentCallbacks2 componentCallbacks2 = arrayListCollectComponentCallbacks.get(i2);
                        if (componentCallbacks2 instanceof Activity) {
                            performConfigurationChangedForActivity(this.mActivities.get(((Activity) componentCallbacks2).getActivityToken()), configurationApplyCompatConfiguration);
                        } else if (!z2) {
                            performConfigurationChanged(componentCallbacks2, configurationApplyCompatConfiguration);
                        }
                    }
                }
            }
        }
    }

    public final void handleDispatchPackageBroadcast(int i2, String[] strArr) {
        WeakReference<LoadedApk> weakReference;
        WeakReference<LoadedApk> weakReference2;
        boolean z2 = false;
        if (i2 == 0 || i2 == 2) {
            boolean z3 = i2 == 0;
            if (strArr != null) {
                synchronized (this.mResourcesManager) {
                    for (int length = strArr.length - 1; length >= 0; length--) {
                        if (!z2 && (((weakReference = this.mPackages.get(strArr[length])) != null && weakReference.get() != null) || ((weakReference2 = this.mResourcePackages.get(strArr[length])) != null && weakReference2.get() != null))) {
                            z2 = true;
                        }
                        if (z3) {
                            this.mPackages.remove(strArr[length]);
                            this.mResourcePackages.remove(strArr[length]);
                        }
                    }
                }
            }
        } else if (i2 == 3 && strArr != null) {
            synchronized (this.mResourcesManager) {
                for (int length2 = strArr.length - 1; length2 >= 0; length2--) {
                    WeakReference<LoadedApk> weakReference3 = this.mPackages.get(strArr[length2]);
                    LoadedApk loadedApk = weakReference3 != null ? weakReference3.get() : null;
                    if (loadedApk != null) {
                        z2 = true;
                    } else {
                        WeakReference<LoadedApk> weakReference4 = this.mResourcePackages.get(strArr[length2]);
                        LoadedApk loadedApk2 = weakReference4 != null ? weakReference4.get() : null;
                        if (loadedApk2 != null) {
                            z2 = true;
                        }
                        loadedApk = loadedApk2;
                    }
                    if (loadedApk != null) {
                        try {
                            String str = strArr[length2];
                            ApplicationInfo applicationInfo = sPackageManager.getApplicationInfo(str, 1024, UserHandle.myUserId());
                            if (this.mActivities.size() > 0) {
                                for (ActivityClientRecord activityClientRecord : this.mActivities.values()) {
                                    if (activityClientRecord.activityInfo.applicationInfo.packageName.equals(str)) {
                                        activityClientRecord.activityInfo.applicationInfo = applicationInfo;
                                        activityClientRecord.packageInfo = loadedApk;
                                    }
                                }
                            }
                            loadedApk.updateApplicationInfo(applicationInfo, sPackageManager.getPreviousCodePaths(str));
                        } catch (RemoteException unused) {
                        }
                    }
                }
            }
        }
        ApplicationPackageManager.handlePackageBroadcast(i2, strArr, z2);
    }

    public void handleInstallProvider(ProviderInfo providerInfo) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            installContentProviders(this.mInitialApplication, Arrays.asList(providerInfo));
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
        }
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
        BinderInternal.forceGc("mem");
    }

    public final void handleProfilerControl(boolean z2, ProfilerInfo profilerInfo, int i2) {
        try {
            if (!z2) {
                this.mProfiler.stopProfiling();
                return;
            }
            try {
                this.mProfiler.setProfiler(profilerInfo);
                this.mProfiler.startProfiling();
            } catch (RuntimeException unused) {
                Slog.w("ActivityThread", "Profiling failed on path " + profilerInfo.profileFile + " -- can the process access this path?");
            }
        } finally {
            profilerInfo.closeFd();
        }
    }

    public void handleRequestAssistContextExtras(RequestAssistContextExtras requestAssistContextExtras) {
        Uri uriOnProvideReferrer;
        boolean z2 = requestAssistContextExtras.requestType == 2;
        int i2 = this.mLastSessionId;
        int i3 = requestAssistContextExtras.sessionId;
        if (i2 != i3) {
            this.mLastSessionId = i3;
            for (int size = this.mLastAssistStructures.size() - 1; size >= 0; size--) {
                AssistStructure assistStructure = this.mLastAssistStructures.get(size).get();
                if (assistStructure != null) {
                    assistStructure.clearSendChannel();
                }
                this.mLastAssistStructures.remove(size);
            }
        }
        Bundle bundle = new Bundle();
        AssistStructure assistStructure2 = null;
        AssistContent assistContent = z2 ? null : new AssistContent();
        long jUptimeMillis = SystemClock.uptimeMillis();
        ActivityClientRecord activityClientRecord = this.mActivities.get(requestAssistContextExtras.activityToken);
        if (activityClientRecord != null) {
            if (z2) {
                uriOnProvideReferrer = null;
            } else {
                activityClientRecord.activity.getApplication().dispatchOnProvideAssistData(activityClientRecord.activity, bundle);
                activityClientRecord.activity.onProvideAssistData(bundle);
                uriOnProvideReferrer = activityClientRecord.activity.onProvideReferrer();
            }
            if (requestAssistContextExtras.requestType == 1 || z2) {
                assistStructure2 = new AssistStructure(activityClientRecord.activity, z2, requestAssistContextExtras.flags);
                Intent intent = activityClientRecord.activity.getIntent();
                Window window = activityClientRecord.window;
                boolean z3 = window == null || (window.getAttributes().flags & 8192) == 0;
                if (intent == null || !z3) {
                    if (!z2) {
                        assistContent.setDefaultIntent(new Intent());
                    }
                } else if (!z2) {
                    Intent intent2 = new Intent(intent);
                    intent2.setFlags(intent2.getFlags() & (-67));
                    intent2.removeUnsafeExtras();
                    assistContent.setDefaultIntent(intent2);
                }
                if (!z2) {
                    activityClientRecord.activity.onProvideAssistContent(assistContent);
                }
            }
        } else {
            uriOnProvideReferrer = null;
        }
        AssistStructure assistStructure3 = assistStructure2 == null ? new AssistStructure() : assistStructure2;
        assistStructure3.setAcquisitionStartTime(jUptimeMillis);
        assistStructure3.setAcquisitionEndTime(SystemClock.uptimeMillis());
        this.mLastAssistStructures.add(new WeakReference<>(assistStructure3));
        try {
            ActivityManager.getService().reportAssistContextExtras(requestAssistContextExtras.requestToken, bundle, assistStructure3, assistContent, uriOnProvideReferrer);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x015a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleResumeActivity(android.os.IBinder r17, boolean r18, boolean r19, boolean r20, int r21, java.lang.String r22) {
        /*
            Method dump skipped, instruction units count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.app.ActivityThread.handleResumeActivity(android.os.IBinder, boolean, boolean, boolean, int, java.lang.String):void");
    }

    public void handleTranslucentConversionComplete(IBinder iBinder, boolean z2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            activityClientRecord.activity.onTranslucentConversionComplete(z2);
        }
    }

    public final void handleTrimMemory(int i2) {
        ArrayList<ComponentCallbacks2> arrayListCollectComponentCallbacks = collectComponentCallbacks(true, null);
        int size = arrayListCollectComponentCallbacks.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayListCollectComponentCallbacks.get(i3).onTrimMemory(i2);
        }
        WindowManagerGlobal.getInstance().trimMemory(i2);
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
                    Slog.i("ActivityThread", "Removing dead content provider:" + providerClientRecordValueAt.mProvider.toString());
                    this.mProviderMap.removeAt(size);
                }
            }
            if (z2) {
                try {
                    ActivityManager.getService().unstableProviderDied(providerRefCount.holder.connection);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public void installSystemApplicationInfo(ApplicationInfo applicationInfo, ClassLoader classLoader) {
        synchronized (this) {
            getSystemContext().installSystemApplicationInfo(applicationInfo, classLoader);
            getSystemUiContext().installSystemApplicationInfo(applicationInfo, classLoader);
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

    public void onNewActivityOptions(IBinder iBinder, ActivityOptions activityOptions) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            activityClientRecord.activity.onNewActivityOptions(activityOptions);
        }
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

    public void performNewIntents(IBinder iBinder, List<ReferrerIntent> list, boolean z2) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord == null) {
            return;
        }
        boolean z3 = !activityClientRecord.paused;
        if (z3) {
            Activity activity = activityClientRecord.activity;
            activity.mTemporaryPause = true;
            this.mInstrumentation.callActivityOnPause(activity);
        }
        checkAndBlockForNetworkAccess();
        deliverNewIntents(activityClientRecord, list);
        if (z3) {
            activityClientRecord.activity.performResume();
            activityClientRecord.activity.mTemporaryPause = false;
        }
        if (activityClientRecord.paused && z2) {
            performResumeActivity(iBinder, false, "performNewIntents");
            performPauseActivityIfNeeded(activityClientRecord, "performNewIntents");
        }
    }

    public final Bundle performPauseActivity(IBinder iBinder, boolean z2, boolean z3, String str) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            return performPauseActivity(activityClientRecord, z2, z3, str);
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

    public final ActivityClientRecord performResumeActivity(IBinder iBinder, boolean z2, String str) {
        ActivityClientRecord activityClientRecord = this.mActivities.get(iBinder);
        if (activityClientRecord != null) {
            Activity activity = activityClientRecord.activity;
            if (!activity.mFinished) {
                if (z2) {
                    activityClientRecord.hideForNow = false;
                    activity.mStartedActivity = false;
                }
                try {
                    try {
                        activity.onStateNotSaved();
                        activityClientRecord.activity.mFragments.noteStateNotSaved();
                        checkAndBlockForNetworkAccess();
                        List<ReferrerIntent> list = activityClientRecord.pendingIntents;
                        if (list != null) {
                            deliverNewIntents(activityClientRecord, list);
                            activityClientRecord.pendingIntents = null;
                        }
                        List<ResultInfo> list2 = activityClientRecord.pendingResults;
                        if (list2 != null) {
                            deliverResults(activityClientRecord, list2);
                            activityClientRecord.pendingResults = null;
                        }
                        Trace.traceBegin(64L, "performResume");
                        activityClientRecord.activity.performResume();
                        synchronized (this.mResourcesManager) {
                            for (int size = this.mRelaunchingActivities.size() - 1; size >= 0; size--) {
                                ActivityClientRecord activityClientRecord2 = this.mRelaunchingActivities.get(size);
                                if (activityClientRecord2.token == activityClientRecord.token && activityClientRecord2.onlyLocalRequest && activityClientRecord2.startsNotResumed) {
                                    activityClientRecord2.startsNotResumed = false;
                                }
                            }
                        }
                        EventLog.writeEvent(LOG_AM_ON_RESUME_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName(), str);
                        activityClientRecord.paused = false;
                        activityClientRecord.stopped = false;
                        activityClientRecord.state = null;
                        activityClientRecord.persistentState = null;
                    } catch (Exception e2) {
                        if (!this.mInstrumentation.onException(activityClientRecord.activity, e2)) {
                            throw new RuntimeException("Unable to resume activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e2.toString(), e2);
                        }
                    }
                    Trace.traceEnd(64L);
                } catch (Throwable th) {
                    Trace.traceEnd(64L);
                    throw th;
                }
            }
        }
        return activityClientRecord;
    }

    public final void performStopActivity(IBinder iBinder, boolean z2, String str) {
        performStopActivityInner(this.mActivities.get(iBinder), null, false, z2, str);
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
                        ActivityManager.getService().refContentProvider(providerRefCount.holder.connection, -1, z2 ? 1 : 0);
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
                            ActivityManager.getService().refContentProvider(providerRefCount.holder.connection, 0, -1);
                        }
                        z3 = z2;
                    }
                }
            } catch (RemoteException unused) {
            }
            if (z3) {
                if (providerRefCount.removePending) {
                    Slog.w("ActivityThread", "Duplicate remove pending of provider " + providerRefCount.holder.info.name);
                } else {
                    providerRefCount.removePending = true;
                    this.mH.sendMessage(this.mH.obtainMessage(131, providerRefCount));
                }
            }
            return true;
        }
    }

    public final void requestRelaunchActivity(IBinder iBinder, List<ResultInfo> list, List<ReferrerIntent> list2, int i2, boolean z2, Configuration configuration, Configuration configuration2, boolean z3, boolean z4) {
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
                    if (list2 != null) {
                        List<ReferrerIntent> list4 = activityClientRecord.pendingIntents;
                        if (list4 != null) {
                            list4.addAll(list2);
                        } else {
                            activityClientRecord.pendingIntents = list2;
                        }
                    }
                    if (activityClientRecord.onlyLocalRequest || !z3) {
                        break;
                        break;
                    }
                    try {
                        ActivityManager.getService().activityRelaunched(iBinder);
                        break;
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
                i3++;
            }
            if (activityClientRecord == null) {
                activityClientRecord = new ActivityClientRecord();
                activityClientRecord.token = iBinder;
                activityClientRecord.pendingResults = list;
                activityClientRecord.pendingIntents = list2;
                activityClientRecord.mPreserveWindow = z4;
                if (!z3) {
                    ActivityClientRecord activityClientRecord2 = this.mActivities.get(iBinder);
                    if (activityClientRecord2 != null) {
                        activityClientRecord.startsNotResumed = activityClientRecord2.paused;
                        activityClientRecord.overrideConfig = activityClientRecord2.overrideConfig;
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
            if (configuration2 != null) {
                activityClientRecord.overrideConfig = configuration2;
            }
            activityClientRecord.pendingConfigChanges |= i2;
            activityClientRecord.relaunchSeq = getLifecycleSeq();
        }
    }

    public final ActivityInfo resolveActivityInfo(Intent intent) {
        ActivityInfo activityInfoResolveActivityInfo = intent.resolveActivityInfo(this.mInitialApplication.getPackageManager(), 1024);
        if (activityInfoResolveActivityInfo == null) {
            Instrumentation.checkStartActivityResult(-92, intent);
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

    public void stopProfiling() {
        Profiler profiler = this.mProfiler;
        if (profiler != null) {
            profiler.stopProfiling();
        }
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
            performPauseActivityIfNeeded(activityClientRecord, "destroy");
            if (!activityClientRecord.stopped) {
                try {
                    activityClientRecord.activity.performStop(activityClientRecord.mPreserveWindow);
                } catch (SuperNotCalledException e2) {
                    throw e2;
                } catch (Exception e3) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e3)) {
                        throw new RuntimeException("Unable to stop activity " + safeToComponentShortString(activityClientRecord.intent) + ": " + e3.toString(), e3);
                    }
                }
                activityClientRecord.stopped = true;
                EventLog.writeEvent(LOG_AM_ON_STOP_CALLED, Integer.valueOf(UserHandle.myUserId()), activityClientRecord.activity.getComponentName().getClassName(), "destroy");
            }
            if (z3) {
                try {
                    activityClientRecord.lastNonConfigurationInstances = activityClientRecord.activity.retainNonConfigurationInstances();
                } catch (Exception e4) {
                    if (!this.mInstrumentation.onException(activityClientRecord.activity, e4)) {
                        throw new RuntimeException("Unable to retain activity " + activityClientRecord.intent.getComponent().toShortString() + ": " + e4.toString(), e4);
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
            } catch (SuperNotCalledException e5) {
                throw e5;
            } catch (Exception e6) {
                if (!this.mInstrumentation.onException(activityClientRecord.activity, e6)) {
                    throw new RuntimeException("Unable to destroy activity " + safeToComponentShortString(activityClientRecord.intent) + ": " + e6.toString(), e6);
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
        WeakReference<LoadedApk> weakReference;
        Resources resources;
        boolean z2 = UserHandle.myUserId() != i3;
        synchronized (this.mResourcesManager) {
            try {
                if (z2) {
                    weakReference = null;
                } else {
                    weakReference = (i2 & 1) != 0 ? this.mPackages.get(str) : this.mResourcePackages.get(str);
                }
                LoadedApk loadedApk = weakReference != null ? weakReference.get() : null;
                if (loadedApk == null || !((resources = loadedApk.mResources) == null || resources.getAssets().isUpToDate())) {
                    try {
                        ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(str, 268436480, i3);
                        if (applicationInfo != null) {
                            return getPackageInfo(applicationInfo, compatibilityInfo, i2);
                        }
                        return null;
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
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

    public final Bundle performPauseActivity(ActivityClientRecord activityClientRecord, boolean z2, boolean z3, String str) {
        ArrayList<OnActivityPausedListener> arrayListRemove;
        if (activityClientRecord.paused) {
            if (activityClientRecord.activity.mFinished) {
                return null;
            }
            RuntimeException runtimeException = new RuntimeException("Performing pause of activity that is not resumed: " + activityClientRecord.intent.getComponent().toShortString());
            Slog.e("ActivityThread", runtimeException.getMessage(), runtimeException);
        }
        if (z2) {
            activityClientRecord.activity.mFinished = true;
        }
        if (!activityClientRecord.activity.mFinished && z3) {
            callCallActivityOnSaveInstanceState(activityClientRecord);
        }
        performPauseActivityIfNeeded(activityClientRecord, str);
        synchronized (this.mOnPauseListeners) {
            arrayListRemove = this.mOnPauseListeners.remove(activityClientRecord.activity);
        }
        int size = arrayListRemove != null ? arrayListRemove.size() : 0;
        for (int i2 = 0; i2 < size; i2++) {
            arrayListRemove.get(i2).onPaused(activityClientRecord.activity);
        }
        if (activityClientRecord.activity.mFinished || !z3) {
            return null;
        }
        return activityClientRecord.state;
    }

    private Configuration performConfigurationChangedForActivity(ActivityClientRecord activityClientRecord, Configuration configuration, int i2, boolean z2) {
        activityClientRecord.tmpConfig.setTo(configuration);
        if (activityClientRecord.overrideConfig != null) {
            activityClientRecord.tmpConfig.updateFrom(activityClientRecord.overrideConfig);
        }
        Trace.traceBegin(64L, "performConfigurationChanged");
        Configuration configurationPerformActivityConfigurationChanged = performActivityConfigurationChanged(activityClientRecord.activity, activityClientRecord.tmpConfig, activityClientRecord.overrideConfig, i2, z2);
        Trace.traceEnd(64L);
        freeTextLayoutCachesIfNeeded(activityClientRecord.activity.mCurrentConfig.diff(activityClientRecord.tmpConfig));
        return configurationPerformActivityConfigurationChanged;
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

    public class ApplicationThread extends IApplicationThread.Stub {
        private static final String DB_INFO_FORMAT = "  %8s %8s %14s %14s  %s";
        private int mLastProcessState;

        private ApplicationThread() {
            this.mLastProcessState = -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dumpDatabaseInfo(ParcelFileDescriptor parcelFileDescriptor, String[] strArr) {
            FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
            SQLiteDebug.dump(new PrintWriterPrinter(fastPrintWriter), strArr);
            fastPrintWriter.flush();
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
        public void attachAgent(String str) {
            ActivityThread.this.sendMessage(155, str);
        }

        @Override // android.app.IApplicationThread
        public final void bindApplication(String str, ApplicationInfo applicationInfo, List<ProviderInfo> list, ComponentName componentName, ProfilerInfo profilerInfo, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i2, boolean z2, boolean z3, boolean z4, boolean z5, Configuration configuration, CompatibilityInfo compatibilityInfo, Map map, Bundle bundle2, String str2) {
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
            appBindData.enableBinderTracking = z2;
            appBindData.trackAllocation = z3;
            appBindData.restrictedBackupMode = z4;
            appBindData.persistent = z5;
            appBindData.config = configuration;
            appBindData.compatInfo = compatibilityInfo;
            appBindData.initProfilerInfo = profilerInfo;
            appBindData.buildSerial = str2;
            ActivityThread.this.sendMessage(110, appBindData);
        }

        @Override // android.app.IApplicationThread
        public void clearDnsCache() {
            InetAddress.clearDnsCache();
            NetworkEventDispatcher.getInstance().onNetworkConfigurationChanged();
        }

        @Override // android.app.IApplicationThread
        public void dispatchPackageBroadcast(int i2, String[] strArr) {
            ActivityThread.this.sendMessage(133, strArr, i2);
        }

        @Override // android.app.IApplicationThread
        public void dumpActivity(ParcelFileDescriptor parcelFileDescriptor, IBinder iBinder, String str, String[] strArr) {
            DumpComponentInfo dumpComponentInfo = new DumpComponentInfo();
            try {
                try {
                    dumpComponentInfo.fd = parcelFileDescriptor.dup();
                    dumpComponentInfo.token = iBinder;
                    dumpComponentInfo.prefix = str;
                    dumpComponentInfo.args = strArr;
                    ActivityThread.this.sendMessage(136, (Object) dumpComponentInfo, 0, 0, true);
                } catch (IOException e2) {
                    Slog.w("ActivityThread", "dumpActivity failed", e2);
                }
            } finally {
                IoUtils.closeQuietly(parcelFileDescriptor);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpDbInfo(ParcelFileDescriptor parcelFileDescriptor, final String[] strArr) {
            try {
                if (!ActivityThread.this.mSystemThread) {
                    dumpDatabaseInfo(parcelFileDescriptor, strArr);
                    IoUtils.closeQuietly(parcelFileDescriptor);
                    return;
                }
                try {
                    final ParcelFileDescriptor parcelFileDescriptorDup = parcelFileDescriptor.dup();
                    IoUtils.closeQuietly(parcelFileDescriptor);
                    AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: android.app.ActivityThread.ApplicationThread.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ApplicationThread.this.dumpDatabaseInfo(parcelFileDescriptorDup, strArr);
                            } finally {
                                IoUtils.closeQuietly(parcelFileDescriptorDup);
                            }
                        }
                    });
                } catch (IOException unused) {
                    Log.w("ActivityThread", "Could not dup FD " + parcelFileDescriptor.getFileDescriptor().getInt$());
                    IoUtils.closeQuietly(parcelFileDescriptor);
                }
            } catch (Throwable th) {
                IoUtils.closeQuietly(parcelFileDescriptor);
                throw th;
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpGfxInfo(ParcelFileDescriptor parcelFileDescriptor, String[] strArr) {
            ActivityThread.this.nDumpGraphicsInfo(parcelFileDescriptor.getFileDescriptor());
            WindowManagerGlobal.getInstance().dumpGfxInfo(parcelFileDescriptor.getFileDescriptor(), strArr);
            IoUtils.closeQuietly(parcelFileDescriptor);
        }

        @Override // android.app.IApplicationThread
        public void dumpHeap(boolean z2, boolean z3, boolean z4, String str, ParcelFileDescriptor parcelFileDescriptor) {
            DumpHeapData dumpHeapData = new DumpHeapData();
            dumpHeapData.managed = z2;
            dumpHeapData.mallocInfo = z3;
            dumpHeapData.runGc = z4;
            dumpHeapData.path = str;
            dumpHeapData.fd = parcelFileDescriptor;
            ActivityThread.this.sendMessage(135, (Object) dumpHeapData, 0, 0, true);
        }

        @Override // android.app.IApplicationThread
        public void dumpMemInfo(ParcelFileDescriptor parcelFileDescriptor, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String[] strArr) {
            FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
            try {
                dumpMemInfo(fastPrintWriter, memoryInfo, z2, z3, z4, z5, z6);
            } finally {
                fastPrintWriter.flush();
                IoUtils.closeQuietly(parcelFileDescriptor);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpProvider(ParcelFileDescriptor parcelFileDescriptor, IBinder iBinder, String[] strArr) {
            DumpComponentInfo dumpComponentInfo = new DumpComponentInfo();
            try {
                try {
                    dumpComponentInfo.fd = parcelFileDescriptor.dup();
                    dumpComponentInfo.token = iBinder;
                    dumpComponentInfo.args = strArr;
                    ActivityThread.this.sendMessage(141, (Object) dumpComponentInfo, 0, 0, true);
                } catch (IOException e2) {
                    Slog.w("ActivityThread", "dumpProvider failed", e2);
                }
            } finally {
                IoUtils.closeQuietly(parcelFileDescriptor);
            }
        }

        @Override // android.app.IApplicationThread
        public void dumpService(ParcelFileDescriptor parcelFileDescriptor, IBinder iBinder, String[] strArr) {
            DumpComponentInfo dumpComponentInfo = new DumpComponentInfo();
            try {
                try {
                    dumpComponentInfo.fd = parcelFileDescriptor.dup();
                    dumpComponentInfo.token = iBinder;
                    dumpComponentInfo.args = strArr;
                    ActivityThread.this.sendMessage(123, (Object) dumpComponentInfo, 0, 0, true);
                } catch (IOException e2) {
                    Slog.w("ActivityThread", "dumpService failed", e2);
                }
            } finally {
                IoUtils.closeQuietly(parcelFileDescriptor);
            }
        }

        @Override // android.app.IApplicationThread
        public void handleTrustStorageUpdate() {
            NetworkSecurityPolicy.getInstance().handleTrustStorageUpdate();
        }

        @Override // android.app.IApplicationThread
        public void notifyCleartextNetwork(byte[] bArr) {
            if (StrictMode.vmCleartextNetworkEnabled()) {
                StrictMode.onCleartextNetworkDetected(bArr);
            }
        }

        @Override // android.app.IApplicationThread
        public void processInBackground() {
            ActivityThread.this.mH.removeMessages(120);
            H h2 = ActivityThread.this.mH;
            h2.sendMessage(h2.obtainMessage(120));
        }

        @Override // android.app.IApplicationThread
        public void profilerControl(boolean z2, ProfilerInfo profilerInfo, int i2) {
            ActivityThread.this.sendMessage(127, profilerInfo, z2 ? 1 : 0, i2);
        }

        @Override // android.app.IApplicationThread
        public void requestAssistContextExtras(IBinder iBinder, IBinder iBinder2, int i2, int i3, int i4) {
            RequestAssistContextExtras requestAssistContextExtras = new RequestAssistContextExtras();
            requestAssistContextExtras.activityToken = iBinder;
            requestAssistContextExtras.requestToken = iBinder2;
            requestAssistContextExtras.requestType = i2;
            requestAssistContextExtras.sessionId = i3;
            requestAssistContextExtras.flags = i4;
            ActivityThread.this.sendMessage(143, requestAssistContextExtras);
        }

        @Override // android.app.IApplicationThread
        public void scheduleActivityConfigurationChanged(IBinder iBinder, Configuration configuration) {
            ActivityThread.this.sendMessage(125, new ActivityConfigChangeData(iBinder, configuration));
        }

        @Override // android.app.IApplicationThread
        public void scheduleActivityMovedToDisplay(IBinder iBinder, int i2, Configuration configuration) {
            ActivityThread.this.sendMessage(157, new ActivityConfigChangeData(iBinder, configuration), i2);
        }

        @Override // android.app.IApplicationThread
        public void scheduleApplicationInfoChanged(ApplicationInfo applicationInfo) {
            ActivityThread.this.sendMessage(156, applicationInfo);
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
        public void scheduleEnterAnimationComplete(IBinder iBinder) {
            ActivityThread.this.sendMessage(149, iBinder);
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
        public final void scheduleLaunchActivity(Intent intent, IBinder iBinder, int i2, ActivityInfo activityInfo, Configuration configuration, Configuration configuration2, CompatibilityInfo compatibilityInfo, String str, IVoiceInteractor iVoiceInteractor, int i3, Bundle bundle, PersistableBundle persistableBundle, List<ResultInfo> list, List<ReferrerIntent> list2, boolean z2, boolean z3, ProfilerInfo profilerInfo) {
            updateProcessState(i3, false);
            ActivityClientRecord activityClientRecord = new ActivityClientRecord();
            activityClientRecord.token = iBinder;
            activityClientRecord.ident = i2;
            activityClientRecord.intent = intent;
            activityClientRecord.referrer = str;
            activityClientRecord.voiceInteractor = iVoiceInteractor;
            activityClientRecord.activityInfo = activityInfo;
            activityClientRecord.compatInfo = compatibilityInfo;
            activityClientRecord.state = bundle;
            activityClientRecord.persistentState = persistableBundle;
            activityClientRecord.pendingResults = list;
            activityClientRecord.pendingIntents = list2;
            activityClientRecord.startsNotResumed = z2;
            activityClientRecord.isForward = z3;
            activityClientRecord.profilerInfo = profilerInfo;
            activityClientRecord.overrideConfig = configuration2;
            updatePendingConfiguration(configuration);
            ActivityThread.this.sendMessage(100, activityClientRecord);
        }

        @Override // android.app.IApplicationThread
        public void scheduleLocalVoiceInteractionStarted(IBinder iBinder, IVoiceInteractor iVoiceInteractor) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = iBinder;
            someArgsObtain.arg2 = iVoiceInteractor;
            ActivityThread.this.sendMessage(154, someArgsObtain);
        }

        @Override // android.app.IApplicationThread
        public void scheduleLowMemory() {
            ActivityThread.this.sendMessage(124, null);
        }

        @Override // android.app.IApplicationThread
        public void scheduleMultiWindowModeChanged(IBinder iBinder, boolean z2, Configuration configuration) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = iBinder;
            someArgsObtain.arg2 = configuration;
            someArgsObtain.argi1 = z2 ? 1 : 0;
            ActivityThread.this.sendMessage(152, someArgsObtain);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleNewIntent(List<ReferrerIntent> list, IBinder iBinder, boolean z2) {
            NewIntentData newIntentData = new NewIntentData();
            newIntentData.intents = list;
            newIntentData.token = iBinder;
            newIntentData.andPause = z2;
            ActivityThread.this.sendMessage(112, newIntentData);
        }

        @Override // android.app.IApplicationThread
        public void scheduleOnNewActivityOptions(IBinder iBinder, Bundle bundle) {
            ActivityThread.this.sendMessage(146, new Pair(iBinder, ActivityOptions.fromBundle(bundle)));
        }

        @Override // android.app.IApplicationThread
        public final void schedulePauseActivity(IBinder iBinder, boolean z2, boolean z3, int i2, boolean z4) {
            ActivityThread.this.sendMessage(z2 ? 102 : 101, iBinder, (z3 ? 1 : 0) | (z4 ? 2 : 0), i2, ActivityThread.this.getLifecycleSeq());
        }

        @Override // android.app.IApplicationThread
        public void schedulePictureInPictureModeChanged(IBinder iBinder, boolean z2, Configuration configuration) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = iBinder;
            someArgsObtain.arg2 = configuration;
            someArgsObtain.argi1 = z2 ? 1 : 0;
            ActivityThread.this.sendMessage(153, someArgsObtain);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleReceiver(Intent intent, ActivityInfo activityInfo, CompatibilityInfo compatibilityInfo, int i2, String str, Bundle bundle, boolean z2, int i3, int i4) {
            ActivityThread.this.adjustIntentForAppClone(intent);
            updateProcessState(i4, false);
            ReceiverData receiverData = new ReceiverData(intent, i2, str, bundle, z2, false, ActivityThread.this.mAppThread.asBinder(), i3);
            receiverData.info = activityInfo;
            receiverData.compatInfo = compatibilityInfo;
            ActivityThread.this.sendMessage(113, receiverData);
        }

        @Override // android.app.IApplicationThread
        public void scheduleRegisteredReceiver(IIntentReceiver iIntentReceiver, Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3, int i4) {
            ActivityThread.this.adjustIntentForAppClone(intent);
            updateProcessState(i4, false);
            iIntentReceiver.performReceive(intent, i2, str, bundle, z2, z3, i3);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleRelaunchActivity(IBinder iBinder, List<ResultInfo> list, List<ReferrerIntent> list2, int i2, boolean z2, Configuration configuration, Configuration configuration2, boolean z3) {
            ActivityThread.this.requestRelaunchActivity(iBinder, list, list2, i2, z2, configuration, configuration2, true, z3);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleResumeActivity(IBinder iBinder, int i2, boolean z2, Bundle bundle) {
            int lifecycleSeq = ActivityThread.this.getLifecycleSeq();
            updateProcessState(i2, false);
            ActivityThread.this.sendMessage(107, iBinder, z2 ? 1 : 0, 0, lifecycleSeq);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleSendResult(IBinder iBinder, List<ResultInfo> list) {
            ResultData resultData = new ResultData();
            resultData.token = iBinder;
            resultData.results = list;
            ActivityThread.this.sendMessage(108, resultData);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleServiceArgs(IBinder iBinder, ParceledListSlice parceledListSlice) {
            List list = parceledListSlice.getList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                ServiceStartArgs serviceStartArgs = (ServiceStartArgs) list.get(i2);
                ServiceArgsData serviceArgsData = new ServiceArgsData();
                serviceArgsData.token = iBinder;
                serviceArgsData.taskRemoved = serviceStartArgs.taskRemoved;
                serviceArgsData.startId = serviceStartArgs.startId;
                serviceArgsData.flags = serviceStartArgs.flags;
                serviceArgsData.args = serviceStartArgs.args;
                ActivityThread.this.sendMessage(115, serviceArgsData);
            }
        }

        @Override // android.app.IApplicationThread
        public final void scheduleSleeping(IBinder iBinder, boolean z2) {
            ActivityThread.this.sendMessage(137, iBinder, z2 ? 1 : 0);
        }

        @Override // android.app.IApplicationThread
        public final void scheduleStopActivity(IBinder iBinder, boolean z2, int i2) {
            ActivityThread.this.sendMessage(z2 ? 103 : 104, iBinder, 0, i2, ActivityThread.this.getLifecycleSeq());
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
        public void setHttpProxy(String str, String str2, String str3, Uri uri) {
            ConnectivityManager connectivityManagerFrom = ConnectivityManager.from(ActivityThread.this.getSystemContext());
            if (connectivityManagerFrom.getBoundNetworkForProcess() != null) {
                Proxy.setHttpProxySystemProperty(connectivityManagerFrom.getDefaultProxy());
            } else {
                Proxy.setHttpProxySystemProperty(str, str2, str3, uri);
            }
        }

        @Override // android.app.IApplicationThread
        public void setNetworkBlockSeq(long j2) {
            synchronized (ActivityThread.this.mNetworkPolicyLock) {
                ActivityThread.this.mNetworkBlockSeq = j2;
            }
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
                Slog.w("ActivityThread", "Failed setting process group to " + i2, e2);
            }
        }

        @Override // android.app.IApplicationThread
        public void startBinderTracking() {
            ActivityThread.this.sendMessage(150, null);
        }

        @Override // android.app.IApplicationThread
        public void stopBinderTrackingAndDump(ParcelFileDescriptor parcelFileDescriptor) {
            try {
                ActivityThread.this.sendMessage(151, parcelFileDescriptor.dup());
            } catch (IOException unused) {
            } finally {
                IoUtils.closeQuietly(parcelFileDescriptor);
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
                    VMRuntime.getRuntime().updateProcessState(i2 <= 6 ? 0 : 1);
                }
            }
        }

        @Override // android.app.IApplicationThread
        public final void updateTimePrefs(int i2) {
            Boolean bool;
            if (i2 == 0) {
                bool = Boolean.FALSE;
            } else {
                bool = i2 == 1 ? Boolean.TRUE : null;
            }
            DateFormat.set24HourTimePref(bool);
        }

        @Override // android.app.IApplicationThread
        public void updateTimeZone() {
            TimeZone.setDefault(null);
        }

        private void dumpMemInfo(PrintWriter printWriter, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
            long nativeHeapSize = Debug.getNativeHeapSize() / 1024;
            long nativeHeapAllocatedSize = Debug.getNativeHeapAllocatedSize() / 1024;
            long nativeHeapFreeSize = Debug.getNativeHeapFreeSize() / 1024;
            Runtime runtime = Runtime.getRuntime();
            runtime.gc();
            long j2 = runtime.totalMemory() / 1024;
            long jFreeMemory = runtime.freeMemory() / 1024;
            long j3 = j2 - jFreeMemory;
            long[] jArrCountInstancesOfClasses = VMDebug.countInstancesOfClasses(new Class[]{ContextImpl.class, Activity.class, WebView.class, OpenSSLSocketImpl.class}, true);
            long j4 = jArrCountInstancesOfClasses[0];
            long j5 = jArrCountInstancesOfClasses[1];
            long j6 = jArrCountInstancesOfClasses[2];
            long j7 = jArrCountInstancesOfClasses[3];
            long viewInstanceCount = ViewDebug.getViewInstanceCount();
            long viewRootImplCount = ViewDebug.getViewRootImplCount();
            int globalAssetCount = AssetManager.getGlobalAssetCount();
            int globalAssetManagerCount = AssetManager.getGlobalAssetManagerCount();
            int binderLocalObjectCount = Debug.getBinderLocalObjectCount();
            int binderProxyObjectCount = Debug.getBinderProxyObjectCount();
            int binderDeathObjectCount = Debug.getBinderDeathObjectCount();
            long globalAllocSize = Parcel.getGlobalAllocSize();
            long globalAllocCount = Parcel.getGlobalAllocCount();
            SQLiteDebug.PagerStats databaseInfo = SQLiteDebug.getDatabaseInfo();
            int iMyPid = Process.myPid();
            AppBindData appBindData = ActivityThread.this.mBoundApplication;
            ActivityThread.dumpMemInfoTable(printWriter, memoryInfo, z2, z3, z4, z5, iMyPid, appBindData != null ? appBindData.processName : "unknown", nativeHeapSize, nativeHeapAllocatedSize, nativeHeapFreeSize, j2, j3, jFreeMemory);
            if (z2) {
                printWriter.print(viewInstanceCount);
                printWriter.print(',');
                printWriter.print(viewRootImplCount);
                printWriter.print(',');
                printWriter.print(j4);
                printWriter.print(',');
                printWriter.print(j5);
                printWriter.print(',');
                printWriter.print(globalAssetCount);
                printWriter.print(',');
                printWriter.print(globalAssetManagerCount);
                printWriter.print(',');
                printWriter.print(binderLocalObjectCount);
                printWriter.print(',');
                printWriter.print(binderProxyObjectCount);
                printWriter.print(',');
                printWriter.print(binderDeathObjectCount);
                printWriter.print(',');
                printWriter.print(j7);
                printWriter.print(',');
                printWriter.print(databaseInfo.memoryUsed / 1024);
                printWriter.print(',');
                printWriter.print(databaseInfo.memoryUsed / 1024);
                printWriter.print(',');
                printWriter.print(databaseInfo.pageCacheOverflow / 1024);
                printWriter.print(',');
                printWriter.print(databaseInfo.largestMemAlloc / 1024);
                for (int i2 = 0; i2 < databaseInfo.dbStats.size(); i2++) {
                    SQLiteDebug.DbStats dbStats = databaseInfo.dbStats.get(i2);
                    printWriter.print(',');
                    printWriter.print(dbStats.dbName);
                    printWriter.print(',');
                    printWriter.print(dbStats.pageSize);
                    printWriter.print(',');
                    printWriter.print(dbStats.dbSize);
                    printWriter.print(',');
                    printWriter.print(dbStats.lookaside);
                    printWriter.print(',');
                    printWriter.print(dbStats.cache);
                    printWriter.print(',');
                    printWriter.print(dbStats.cache);
                }
                printWriter.println();
                return;
            }
            printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            printWriter.println(" Objects");
            ActivityThread.printRow(printWriter, ActivityThread.TWO_COUNT_COLUMNS, "Views:", Long.valueOf(viewInstanceCount), "ViewRootImpl:", Long.valueOf(viewRootImplCount));
            ActivityThread.printRow(printWriter, ActivityThread.TWO_COUNT_COLUMNS, "AppContexts:", Long.valueOf(j4), "Activities:", Long.valueOf(j5));
            ActivityThread.printRow(printWriter, ActivityThread.TWO_COUNT_COLUMNS, "Assets:", Integer.valueOf(globalAssetCount), "AssetManagers:", Integer.valueOf(globalAssetManagerCount));
            ActivityThread.printRow(printWriter, ActivityThread.TWO_COUNT_COLUMNS, "Local Binders:", Integer.valueOf(binderLocalObjectCount), "Proxy Binders:", Integer.valueOf(binderProxyObjectCount));
            ActivityThread.printRow(printWriter, ActivityThread.TWO_COUNT_COLUMNS, "Parcel memory:", Long.valueOf(globalAllocSize / 1024), "Parcel count:", Long.valueOf(globalAllocCount));
            ActivityThread.printRow(printWriter, ActivityThread.TWO_COUNT_COLUMNS, "Death Recipients:", Integer.valueOf(binderDeathObjectCount), "OpenSSL Sockets:", Long.valueOf(j7));
            ActivityThread.printRow(printWriter, ActivityThread.ONE_COUNT_COLUMN, "WebViews:", Long.valueOf(j6));
            printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            printWriter.println(" SQL");
            ActivityThread.printRow(printWriter, ActivityThread.ONE_COUNT_COLUMN, "MEMORY_USED:", Integer.valueOf(databaseInfo.memoryUsed / 1024));
            ActivityThread.printRow(printWriter, ActivityThread.TWO_COUNT_COLUMNS, "PAGECACHE_OVERFLOW:", Integer.valueOf(databaseInfo.pageCacheOverflow / 1024), "MALLOC_SIZE:", Integer.valueOf(databaseInfo.largestMemAlloc / 1024));
            printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            int size = databaseInfo.dbStats.size();
            if (size > 0) {
                printWriter.println(" DATABASES");
                ActivityThread.printRow(printWriter, DB_INFO_FORMAT, "pgsz", "dbsz", "Lookaside(b)", "cache", "Dbname");
                for (int i3 = 0; i3 < size; i3++) {
                    SQLiteDebug.DbStats dbStats2 = databaseInfo.dbStats.get(i3);
                    Object[] objArr = new Object[5];
                    long j8 = dbStats2.pageSize;
                    objArr[0] = j8 > 0 ? String.valueOf(j8) : WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
                    long j9 = dbStats2.dbSize;
                    objArr[1] = j9 > 0 ? String.valueOf(j9) : WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
                    int i4 = dbStats2.lookaside;
                    objArr[2] = i4 > 0 ? String.valueOf(i4) : WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
                    objArr[3] = dbStats2.cache;
                    objArr[4] = dbStats2.dbName;
                    ActivityThread.printRow(printWriter, DB_INFO_FORMAT, objArr);
                }
            }
            String assetAllocations = AssetManager.getAssetAllocations();
            if (assetAllocations != null) {
                printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                printWriter.println(" Asset Allocations");
                printWriter.print(assetAllocations);
            }
            if (z6) {
                AppBindData appBindData2 = ActivityThread.this.mBoundApplication;
                boolean z7 = !(appBindData2 == null || (2 & appBindData2.appInfo.flags) == 0) || Build.IS_DEBUGGABLE;
                printWriter.println(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                printWriter.println(" Unreachable memory");
                printWriter.print(Debug.getUnreachableMemory(100, z7));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage(int i2, Object obj, int i3, int i4, int i5) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.argi1 = i3;
        someArgsObtain.argi2 = i4;
        someArgsObtain.argi3 = i5;
        messageObtain.obj = someArgsObtain;
        this.mH.sendMessage(messageObtain);
    }

    public final LoadedApk getPackageInfo(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, int i2) {
        int i3;
        AppBindData appBindData;
        boolean z2 = (i2 & 1) != 0;
        boolean z3 = z2 && (i3 = applicationInfo.uid) != 0 && i3 != 1000 && ((appBindData = this.mBoundApplication) == null || !UserHandle.isSameApp(i3, appBindData.appInfo.uid));
        boolean z4 = z2 && (1073741824 & i2) != 0;
        if ((i2 & 3) == 1 && z3) {
            StringBuilder sb = new StringBuilder("Requesting code from ");
            sb.append(applicationInfo.packageName);
            sb.append(" (with uid ");
            String strM = android.accessibilityservice.c.m(sb, applicationInfo.uid, ")");
            if (this.mBoundApplication != null) {
                StringBuilder sbU = android.accessibilityservice.c.u(strM, " to be run in process ");
                sbU.append(this.mBoundApplication.processName);
                sbU.append(" (with uid ");
                strM = android.accessibilityservice.c.m(sbU, this.mBoundApplication.appInfo.uid, ")");
            }
            throw new SecurityException(strM);
        }
        return getPackageInfo(applicationInfo, compatibilityInfo, null, z3, z2, z4);
    }

    private LoadedApk getPackageInfo(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, ClassLoader classLoader, boolean z2, boolean z3, boolean z4) {
        WeakReference<LoadedApk> weakReference;
        LoadedApk loadedApk;
        Resources resources;
        boolean z5 = UserHandle.myUserId() != UserHandle.getUserId(applicationInfo.uid);
        synchronized (this.mResourcesManager) {
            try {
                if (z5) {
                    weakReference = null;
                } else if (z3) {
                    weakReference = this.mPackages.get(applicationInfo.packageName);
                } else {
                    weakReference = this.mResourcePackages.get(applicationInfo.packageName);
                }
                loadedApk = weakReference != null ? weakReference.get() : null;
                if (loadedApk == null || ((resources = loadedApk.mResources) != null && !resources.getAssets().isUpToDate())) {
                    LoadedApk loadedApk2 = new LoadedApk(this, applicationInfo, compatibilityInfo, classLoader, z2, z3 && (applicationInfo.flags & 4) != 0, z4);
                    if (this.mSystemThread && ZenModeConfig.SYSTEM_AUTHORITY.equals(applicationInfo.packageName)) {
                        loadedApk2.installSystemApplicationInfo(applicationInfo, getSystemContext().mPackageInfo.getClassLoader());
                    }
                    if (!z5) {
                        if (z3) {
                            this.mPackages.put(applicationInfo.packageName, new WeakReference<>(loadedApk2));
                        } else {
                            this.mResourcePackages.put(applicationInfo.packageName, new WeakReference<>(loadedApk2));
                        }
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
